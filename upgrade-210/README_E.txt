======================================================================
OPEN-R Version 1.1.3 FlashUpdater for ERS-210
======================================================================

   This program upgrades the OPEN-R software within the AIBO ERS-210
   core unit to version 1.1.3.

   To run a software created with the OPEN-R SDK on an ERS-210, you
   must first upgrade its internal OPEN-R software.

      [Note]

         Upgrading the OPEN-R software is not necessary if a sticker
         indicating "OPEN-R Ver 1.1.2" or "OPEN-R Ver 1.1.3" is
         attached to the core unit.

Procedure for upgrading the OPEN-R software

   1. Charge AIBO's battery pack fully before performing this upgrade.
      Otherwise upgrading may not be successful.

   2. Copy the OPEN-R directory onto an empty AIBO Programming Memory
      Stick.

       [Note]

         Do not use a Memory Stick other than an AIBO Programming
         Memory Stick.  If you do, upgrading will not be successful
         and AIBO will not be able to power down.  If this happens,
         remove the Memory Stick, perform the procedure in
         "Troubleshooting" to remove the battery pack, and then
         reinsert the battery pack.

   3. Insert the AIBO Programming Memory Stick into your AIBO.

   4. Press the pause button on AIBO's chest.

      The chest light lights up green, and after about 10 seconds,
      beeps are emitted to indicate the upgrade is in progress.  The
      upgrade normally takes about one minute.  When the beeps stop
      and the chest light turns off, the upgrade is completed.

      Do not remove the Memory Stick or the battery pack until the
      upgrade is completed.

Troubleshooting

   If you experience any of the following difficulties, use this
   troubleshooting guide to remedy the problem.

    - A short beep is emitted about 10 seconds after pressing the
      pause button, and AIBO enters pause mode immediately.

       <Remedy>
          AIBO's internal OPEN-R software has already been upgraded to
          Version 1.1.3.  There is no need to upgrade the software.

    - Short beeps are emitted repeatedly and AIBO's chest light
      flashes green.

       <Remedy>
          AIBO's internal OPEN-R software cannot be upgraded with this
          program.  Your AIBO is not an ERS-210, or its internal
          OPEN-R software has a version higher than 1.1.3.  Press the
          pause button to pause AIBO.

    - Short beeps are emitted repeatedly and AIBO's chest light
      alternates between green and orange.

       <Remedy>
          This indicates some error.  The most likely case is that the
          power of the internal battery pack is too low.  Press the
          pause button to pause AIBO and charge the battery pack to
          full capacity.

    - The upgrade does not start after you press the pause button and
      AIBO does not enter pause mode even after you press the pause
      button again.

       <Remedy>
          The contents of the AIBO Programming Memory Stick may be
          damaged, or you are using a Memory Stick other than an AIBO
          Programming Memory Stick.  Unlock the battery pack and
          remove the battery.  To unlock the battery pack, insert a
          pin or other pointed object into the battery pack unlock
          hole on the core unit.  (For details on the location of the
          battery pack unlock hole, refer to AIBO ERS-210 Operating
          Instructions.)

    - After performing the upgrade, AIBO emits a sad melody and then
      enters pause mode immediately afterwards when you press the
      pause button.

       <Remedy>
          Upgrading is done halfway and discontinued for some reason.
          Try upgrading again.
