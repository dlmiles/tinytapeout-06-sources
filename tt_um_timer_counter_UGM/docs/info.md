<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This Verilog module, named timer_counter, is designed to implement a timer and counter functionality along with a display interface. It utilizes a 1 kHz clock (clk) and generates a 1 Hz signal (clk_1Hz) using a clock divider. The module has inputs (start, stop, mode) for controlling the timer operation and outputs (segment, digit) for displaying the timer's state. It incorporates counters (count0 to count3) which increment from 0 to 9, each with its reset trigger (rst_count0 to rst_count3). The mode of operation can be toggled between manual and automatic modes (mode_reg), with a lock mechanism to prevent bouncing on mode changes (mode_lock). Additionally, it includes debouncing logic for the input buttons (start, stop, mode). The display logic selects the appropriate digit to display (selector) and blinks the display when idle or in manual mode. Finally, it uses a multiplexer (mux) to select the appropriate segment to display based on the current count and a BCD converter (bcd) to convert the count to BCD format for display.

## How to test

To test the timer_counter module, you can create a Verilog testbench that instantiates the module and provides stimuli to its inputs (clk, start, stop, mode, rst). You can simulate various scenarios such as starting and stopping the timer manually, toggling between manual and automatic modes, and observing the outputs (segment, digit) to ensure they behave as expected. Additionally, you can simulate edge cases such as reaching the maximum count value, testing debounce logic, and verifying that the display blinks correctly when idle or in manual mode. By analyzing the waveform generated by the simulation, you can verify the functionality of the module and ensure it meets the design requirements.


## External hardware

There are additional hardware such as:
 - 4 digits seven segment display (https://www.tokopedia.com/cncstorejogja/cnc-7-segment-pin-4-digit-clock-common-anode-red-merah?extParam=src%3Dshop%26whid%3D325343)
 - transistors (https://www.tokopedia.com/cncstorejogja/cnc-bc547-to-92-100ma-npn-amplifier-transistor?extParam=src%3Dshop%26whid%3D325343)
 - button (https://www.tokopedia.com/cncstorejogja/cnc-tactile-push-button-6x6x10mm-switch-murah?extParam=src%3Dshop%26whid%3D325343)
 - Custom PCBs (I'm still working on it, I'll update later)