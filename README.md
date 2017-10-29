# SHW
Visible light communication controller on a PSoC.

The device sends messages by modulating its LED, the messages to be picked up by another device and decoded. The modulation used is a novel scheme named ARPWM. A received ARPWM signal is de-modulated as a common PAM signal.

The repository is in an active state, where improvements are being made on the device, mainly on the receiver side.


## Schematics
The PSoC allows for programming dedicated hardware funcionality using logic gates and various components. A few examples are given here.

Example 1:
Counter with a startup delay, triggering an ISR to load a packet payload byte to a shift register.
![alt text](images/cnt1.png?raw=true "Counter with startup delay")

Example 2:
Generating a slotted schedule to trigger various tasks, using a counter and a look-up table.
![alt text](images/slots.png?raw=true "Slotted schedule")
