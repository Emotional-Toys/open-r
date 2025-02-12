## open-r

Sony Aibo programmable interface.

### Introduction

OPEN-R is the very lowest available environment for AIBO development.   You won't get any closer to the wires.  It requires Unix or Linux, depends on the GCC compiler, and assumes familiarity with C++ programming.  You'll need to run a variant of Linux, or install Cygwin onto a Windows PC. OPEN-R runs on top of Sony's Aperios, a peculiar message oriented cooperative multitasking operating system.   Code gets placed into objects, which communicate by sending messages to one another.   Generally, you'll receive a message, process it, and immediately return.  Failing to return quickly can make AIBO unresponsive. For example, OPEN-R can periodically send messages containing the latest camera image capture.  You'd process it, perhaps looking for the ball, then return.   Later OPEN-R might send a message requesting a servo position update.  You could setup to move the head, if tracking the ball, before again returning.

### Dockerbuilds

`podman build -t open_r_sdk .`

### Documentation and Sample Code

Before going too far, download the documentation and samples to see if OPEN-R is for you.

    OPEN-R Documentation (OPEN_R_SDK-docE-1.1.5-r1.tar.gz)  ~2.4 MBytes
    OPEN-R Samples (OPEN_R_SDK-sample-1.1.5-r2.tar.gz)   ~3.8 MBytes

If just starting out with AIBO programming, I highly recommend first checking out AiboPet's YART instead.


3. OPEN-R on Windows

You must first install Cygwin, a Linux environment for Windows, then the OPEN-R SDK.   The compilers are precompiled, so its not exceedingly painful.    See these tutorials...

    Cygwin Install Tutorial
    Install OPEN-R on Cygwin



4. OPEN-R on Linux

For Linux you'll need to do a full build.   The following tutorial shows the steps...

    Install OPEN-R on Linux



5. Flash Update for -old- ERS-210's

OPEN-R programs will not work on old ERS-210's.   If you try, the AIBO will freeze and even ignore the pause button.  You'll need to eject the battery manually to shutdown (stick unwound paperclip into hole near battery).

Download the updater (upgrade-OPEN-R-1.1.3-r2.zip) ~4.1 MBytes

See file README_E.txt within the zipfile for instructions.


6. RCode Plugin for OPEN-R

Sony made available a plugin for OPEN-R to build the R-Code compiler, and allow extending it.

    RCode Plugin for OPEN-R (R-CODE-plugin-r1.tar.gz)  ~7.7 MBytes



7. OPEN-R BBS Archive

The original OPEN-R SDE BBS contains a variety of useful information on OPEN-R.  

    OPEN-R BBS archive (Old_SDE_BBS.zip)  691 KBytes
