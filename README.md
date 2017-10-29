# SHW
Visible light communication controller on a PSoC.

The device sends messages by modulating its LED, the messages to be picked up by another device and decoded. The modulation used is a novel scheme named ARPWM. A received ARPWM signal is de-modulated as a common PAM signal.

The repository is in an active state, where improvements are being made on the device, mainly on the receiver side.


## Schematics
The PSoC allows for programming dedicated hardware funcionality using logic gates and various components. A few examples are given here.

### Example 1:
Counter with a startup delay, triggering an ISR to load a packet payload byte to a shift register.
![alt text](images/cnt1.png?raw=true "Counter with startup delay")

### Example 2:
Generating a slotted schedule to trigger various tasks, using a counter and a look-up table.
![alt text](images/slots.PNG?raw=true "Slotted schedule")

### Example 3:
Two analog thresholds are implemented with DACs and analog comparators. The DAC outputs are fed through external capacitors to reduce voltage ripple. When both comparator outputs are HIGH, the signal *th_detect* goes HIGH, triggering an ISR (which is disconnected in the figure). This is used to detect channel activity, thereof especially a start of a packet preamble being transmitted by another device.
![alt text](images/th.PNG?raw=true "Thresholds")

### Example 4:
A set of counters. The one on the left is keeping track of the bits-per-symbol count. The right one counts transmitted symbols, and initiates a *compensation* check after each *compensation frame*.
![alt text](images/tx_schem_cnt_sym.png?raw=true "Thresholds")
