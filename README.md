# SHW
Visible light communication controller on a PSoC.

* Updates throughout the week of 30.10.2017-5.11.2017

Are you looking for a guide on how a PSoC can be used to implement a low-cost [VLC](https://en.wikipedia.org/wiki/Visible_light_communication) controller? If yes, you are in luck. Throughout this document we will attempt to share how the programmable arrays of the PSoC are used to perform a chain of shift operations on data, providing a basis for a communication system. We use VLC in this project, but the idea is applicable to other forms of communication as well.

The device sends messages by modulating its LED, the messages to be picked up by another device and decoded. The modulation used is a novel scheme named ARPWM. A received ARPWM signal is de-modulated as a the well known [PAM](https://en.wikipedia.org/wiki/Pulse-amplitude_modulation) signal.

The repository is in an active state, where improvements are being made on the device, mainly on the receiver side. Details of theoretical concepts are not discussed here, but are readily [*googlable*](https://www.google.com/) for the interested reader.

## TX Subsystem
When transmitting a packet, the following task pipeline is triggered:
![alt text](images/tx/tx_tasks4.png?raw=true "Transmission task pipeline")

The data to be transmitted (payload) is fed through a hardware [CRC](https://en.wikipedia.org/wiki/Cyclic_redundancy_check) block that calculates the checksum. The payload is further encoded with a [Hamming(7,4,3)](https://en.wikipedia.org/wiki/Hamming_code) error correcting code. The resulting Hamming words are chopped into ARPWM symbols, L-number of bits per symbol, the number L being controlled by the system's dimming level. Upon transmitting each *compensation frame* of length 20 symbols, the device injects data-less *compensation symbols* into the transmission stream in order to maintain a non-flickering long-term average light intensity. When the whole payload has been fed through the chain, the CRC checksum is appended to the payload bits, getting wrapped in Hamming and converted to symbols in the same way as the payload.

### Payload to Hamming
A [MUX](https://en.wikipedia.org/wiki/Multiplexer) and a [shift register](https://en.wikipedia.org/wiki/Shift_register) are implemented on the PSoC to enable shifting of individual bits from a writeable control register. A data bit is shifted out from the control register on the rising edge (hi) of a shift clock. The MUX output is switched at the subsequent falling edge (lo) of the same shift clock.

![alt text](images/tx/shift_clock_ex.PNG?raw=true "Selecting payload bit")

The packet payload is fed to a control register *CREG_PAY* via a DMA. A counter *SEL_PAY_OUT* and a MUX select the current payload bit to be fed to a Hamming look-up table.

![alt text](images/tx/pay_sel.PNG?raw=true "Selecting payload bit")

A shift register implemented by daisy-chainging [D flip-flops](https://en.wikipedia.org/wiki/Flip-flop_%28electronics%29#D_flip-flop) feeds the payload bits into a Hamming look-up table. The output Hamming codewords are hardcoded into the table. The table outputs are connected to a status register *SREG_HAM_OUT* to allow for a DMA transfer. The Hamming words are 7-bit, hence the bit *status_0* of *SREG_HAM_OUT* is connected to a logic low signal (0).

![alt text](images/tx/pay_shift.PNG?raw=true "Shifting payload bits")

The Hamming codewords are realized using the generator matrix:

G:

    1 0 0 0 1 1 1
    
    0 1 0 0 1 1 0
    
    0 0 1 0 1 0 1
    
    0 0 0 1 0 1 1
    

The corresponding parity matrix is:

H:

    1 1 1 0 1 0 0
    
    1 1 0 1 0 1 0
    
    1 0 1 1 0 0 1
    

The parity matrix is used for decoding the Hamming words on the receiver side. The [syndrome decoding](https://en.wikipedia.org/wiki/Decoding_methods#Syndrome_decoding) method is used on the receiver.

To signal that a Hamming word is formed, we count the shifted payload bits with the following circuit:

![alt text](images/tx/ham_cnt_in.PNG?raw=true "Counting payload bits to Hamming")

After every 4 shifts, an [SR flip-flop](http://www.learnabout-electronics.org/Digital/dig52.php) is set, indicating a ready Hamming word. The SR-flipflop is reset when the codeword is transferred via a DMA channel, discussed later on.

The control logic for this part is shown in the following schematics.

![alt text](images/tx/pay_en.PNG?raw=true "Enabling the *pay* section")

The payload bits are shifted on signal *pay_shift_hi*. The first *pay_shift_hi* each period enables *pay_shift_lo*, to make sure the *hi* occurs before the *lo* (the *hi* and *lo* refer to rising and falling edges of the shift clock, respectively).

![alt text](images/tx/pay_en_lo.PNG?raw=true "*pay_shift_hi*")

The payload bit selection is switched on signal *pay_shift_lo*.

![alt text](images/tx/pay_shift_lo.PNG?raw=true "*pay_shift_lo*")

## Hamming to Symbol
A MUX is used to select the current bit of a Hamming word, to be shifted into a symbol consisting of L-number of bits.

![alt text](images/tx/ham_sel.PNG?raw=true "*Selecting Hamming word bit*")

The Hamming word bits are gathered in groups of L. 

![alt text](images/tx/ser_shift_L.PNG?raw=true "*Shifting the Hamming word bit*")

The number L (bits per symbol) is written to the register *CREG_L*, controlling the number of shifts from the Hamming word.

![alt text](images/tx/cnt_L.PNG?raw=true "*Counting bits per symbol*")


## More Schematic Examples
The PSoC allows for programming dedicated hardware funcionality using logic gates and various components. A few examples are given here.

### Example 1:
Generating a slotted schedule to trigger various tasks, using a counter and a look-up table.
![alt text](images/slots.PNG?raw=true "Slotted schedule")

### Example 2:
Two analog thresholds are implemented with DACs and analog comparators. The DAC outputs are fed through external capacitors to reduce voltage ripple. The PSoC uses two 8-bit DACs to emulate a 12-bit DAC, which increases the ripple. When both comparator outputs are HIGH, the signal *th_detect* goes HIGH, triggering an ISR (which is disconnected in the figure). This is used to detect channel activity, thereof especially a start of a packet preamble being transmitted by another device.
![alt text](images/th.PNG?raw=true "Thresholds")

### Example 3:
A set of counters. The one on the left is keeping track of the bits-per-symbol count. The right one counts transmitted symbols, and initiates a *compensation* check after each *compensation frame*.
![alt text](images/tx_schem_cnt_sym.png?raw=true "Thresholds")
