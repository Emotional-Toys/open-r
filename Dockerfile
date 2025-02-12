#
# This builds a docker container with GCC 13.3 and GCC 3.3.6
# GCC 3.3.6 is built from source - which may take a while (quite a while in fact)
# 
# GCC 3.3.6 is installed in /usr/local/gcc-3.3.6 (you can run it side-along with GCC 13.3) and is set as the default environment
# 
# CMake stays in version 3.25
#
#FROM gcc:13.3
FROM debian:stable-slim

# Supply when building so it matches your local, see 'build.sh'
# --build-arg USER_ID=`id -u`
# --build-arg GROUP_ID=`id -g`

ARG USER_ID=1000
ARG GROUP_ID=1000

#
# Image has CMake 3.18.4 (default installed - part of base image)
# GCC 3.3.6 in /usr/local/bin
# GCC 10.2 in /usr/bin/gcc.orig
#

RUN groupadd --gid $USER_ID build
RUN useradd -m -p dummy --uid $USER_ID --gid $GROUP_ID builder


RUN apt update -qq && \
apt install -y -qq --no-install-recommends software-properties-common gpgv2 && \
apt install -qq -y --no-install-recommends cmake 
#doxygen \
#file \
#flex \
#gperf \
#iputils-ping \
#libmpfr-dev \
#libmpc-dev


#
# Install testrunner from sources - using GCC 13.3
#
WORKDIR /usr/src
RUN chmod 777 /usr/src
#RUN git clone https://github.com/gnilk/testrunner
#RUN cd testrunner; mkdir bld; cd bld; cmake ..; make -j; make install


#
# Download and install GCC 3.3.6
#
# COPY --chown=$USER_ID:$GROUP_ID --chmod=774 bin/gcc-3.3.6.tar.gz /usr/src

RUN wget https://ftp.gnu.org/gnu/gcc/gcc-3.3.6/gcc-3.3.6.tar.bz2
RUN tar xzvf gcc-3.3.6.tar.gz
RUN mkdir gcc_build
WORKDIR /usr/src/gcc_build
RUN ../gcc-3.3.6/configure --disable-multilib --prefix=/usr/local/gcc-3.3.6
RUN make -j
RUN make install

#
# Copy and install binutils 2.15
#

COPY --chown=$USER_ID:$GROUP_ID --chmod=774 deps/binutils-2.15 /usr/src/binutils
WORKDIR /usr/src/binutils
RUN ../binutils/configure --prefix=/usr/local/binutils
RUN make -j
# Note: I've seen segfaults when building - so let's just issue another one - as the build can catch up..
RUN make -j
RUN make install

#
# Download and install newlib 1.15.0
#

RUN wget ftp://sourceware.org/pub/newlib/newlib-1.15.0.tar.gz
RUN tar xzvf newlib-1.15.0.tar.gz
RUN mkdir newlib_build
WORKDIR /usr/src/newlib_build
RUN ../newlib-1.15.0/configure --prefix=/usr/local/newlib
RUN make -j
# Note: I've seen segfaults when building - so let's just issue another one - as the build can catch up..
RUN make -j
RUN make install

#
# Switch to regular user
#

USER builder
WORKDIR /home/builder

# 
# Set up the project
# Note: 'proj' is a mount-point; you are supposed to run with -v <project>:/proj
#
ENV PROJECT_HOME=/proj
ENV PATH="/usr/local/gcc-3.3.6/bin:$PATH"
ENV CC=/usr/local/gcc-3.3.6/bin/gcc
ENV CXX=/usr/local/gcc-3.3.6/bin/g++
WORKDIR /proj/bld


# ENTRYPOINT [ "sh","-c","pwd;cmake ..;make clean; make -j"]