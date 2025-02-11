## open-r

Sony Aibo programmable interface.

## Introduction

OPEN-R is the very lowest available environment for AIBO development.   You won't get any closer to the wires.  It requires Unix or Linux, depends on the GCC compiler, and assumes familiarity with C++ programming.  You'll need to run a variant of Linux, or install Cygwin onto a Windows PC. OPEN-R runs on top of Sony's Aperios, a peculiar message oriented cooperative multitasking operating system.   Code gets placed into objects, which communicate by sending messages to one another.   Generally, you'll receive a message, process it, and immediately return.  Failing to return quickly can make AIBO unresponsive. For example, OPEN-R can periodically send messages containing the latest camera image capture.  You'd process it, perhaps looking for the ball, then return.   Later OPEN-R might send a message requesting a servo position update.  You could setup to move the head, if tracking the ball, before again returning.
