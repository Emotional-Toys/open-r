### The "R-CODE Plug-In for the OPEN-R SDK" is covered by the OPEN-R SDK's END-USER LICENSE AGREEMENT.

#### The development kit

File-system format

* +--OPEN_R_SDK
   -  +--OPEN-R
         - +--MS_ERS7
         -   |  +--RCODE
         -   |     |
         -   |     +--Eng
         -   |        +--OPEN-R  (MS Image for R-CODE Plug-In English edition)
         -   |
   -  +--include
         - +--OPENR         (header files for RMain & RPlugIn)

#### A sample program

File system format

*   +--sample
   -   +--RMain
      -   |  +--src
      *   |
   -   +--RPlugIn
      -   |  Makefile
      -   |  README.txt
      -   |
   -   +--MS
   -   +--RPlugIn
   -   +--echo_client 
           
_Note 1_: Sample includes RMain (R-CODE main object) source code. But you cannot make the RMain object by using the OPEN-R SDK. Disclosing the RMain source code will help you to make R-CODE Plug-Ins.

_Note 2_: Sony will not answer any questions regarding "R-CODE Plug-In for the OPEN-R SDK."


####  How to use the "R-CODE Plug-In the OPEN-R SDK" sample MS image. 

* Step 1. Copy OPEN_R_SDK/OPEN_R/MS_ERS7/RCODE/Eng/OPEN-R to your AIBO Programming Memory Stick.

* Step 2. Copy sample/RPlugIn/MS/OPEN-R to that AIBO Programming Memory Stick.

* Step 3. Boot AIBO with that AIBO Programming Memory Stick. Also see sample/RPlugIn/README.md.
