### Changes per version of this codebase

Changes since OPEN-R SDK 1.1.5 r4

* WLAN Driver adjustment

Changes since OPEN-R SDK 1.1.5 r3

* Support ERS-7M3

Changes since OPEN-R SDK 1.1.5 r2

* Protect EEPROM after calling OPENR::Fatal()
  - After calling OPENR::Fatal(), data will not be written to the EEPROM 
    in AIBO's hardware in order to protect it during the power-down
     sequence.

* Support TCPGateway for RoboCup
  - TCPGateway has a flow control function for each connection.
    This function is used in RoboCup and the limit can be set 
    using an environment valuable.
    Please see tcpgw-robocup.txt for more details.

Changes since OPEN-R SDK 1.1.5 r1

* High-current detection threshold for ERS-7
  - ERS-7 constantly checks the current from its battery. When the 
    current gets higher than the threshold limit, ERS-7 will shut down.
    The high-current detection threshold of OPEN-R SDK 1.1.5 r1 is too
    conservative and therefore ERS-7 is more likely to shut down when 
    maneuvering around a certain obstacle, or walking on a high friction 
    surface.
    The high-current detection threshold in the OPEN-R SDK 1.1.5 r2 has 
    been changed and ERS-7 is less likely to shut down.


* Battery plunger lock
  - Battery plunger is locked during startup and shutdown for EEPROM 
    protection.
