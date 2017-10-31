# SHW
Visible light communication controller on a PSoC.

The device sends messages by modulating its LED, the messages to be picked up by another device and decoded. The modulation used is a novel scheme named ARPWM. A received ARPWM signal is de-modulated as a common PAM signal.

The repository is in an active state, where improvements are being made on the device, mainly on the receiver side.

## TX Subsystem
When transmitting a packet, the following task pipeline is triggerer:
![alt text](images/tx/tx_tasks4.png?raw=true "Transmission task pipeline")

The data to be transmitted (payload) is fed through a hardware CRC block that calculates the checksum. The payload is further encoded with a Hamming(7,4,3) error correcting code. The resulting Hamming words are chopped into ARPWM symbols, L-number of bits per symbol, the number L being controlled by the system's dimming level. Upon transmitting each *compensation frame* of length 20 symbols, the device injects data-less *compensation symbols* into the transmission stream in order to maintain a non-flickering long-term average light intensity. When the whole payload has been fed through the chain, the CRC checksum is appended to the payload bits, getting wrapped in Hamming and converted to symbols in the same way as the payload.

## Schematic Examples
The PSoC allows for programming dedicated hardware funcionality using logic gates and various components. A few examples are given here.

### Example 1:
Counter with a startup delay, triggering an ISR to load a packet payload byte to a shift register.
![alt text](images/cnt1.png?raw=true "Counter with startup delay")

### Example 2:
Generating a slotted schedule to trigger various tasks, using a counter and a look-up table.
![alt text](images/slots.PNG?raw=true "Slotted schedule")

### Example 3:
Two analog thresholds are implemented with DACs and analog comparators. The DAC outputs are fed through external capacitors to reduce voltage ripple. The PSoC uses two 8-bit DACs to emulate a 12-bit DAC, which increases the ripple. When both comparator outputs are HIGH, the signal *th_detect* goes HIGH, triggering an ISR (which is disconnected in the figure). This is used to detect channel activity, thereof especially a start of a packet preamble being transmitted by another device.
![alt text](images/th.PNG?raw=true "Thresholds")

### Example 4:
A set of counters. The one on the left is keeping track of the bits-per-symbol count. The right one counts transmitted symbols, and initiates a *compensation* check after each *compensation frame*.
![alt text](images/tx_schem_cnt_sym.png?raw=true "Thresholds")
