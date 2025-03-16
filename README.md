Project Overview
This project designs a tail light sequencer that controls the illumination of Mustang tail light bulbs under multiple scenarios:

Turn Signals: When only the turn right or turn left signal is active, the corresponding tail light cycles through a repeating sequence (e.g., {001}, {011}, {111}, {000}), with each state maintained for five clock cycles.
Brake Activation: When the brake is applied, all tail lights are illuminated.
Combined Signals: When brake is active along with a turn signal, the inactive side fully illuminates while the active side displays a reverse sequence (e.g., {111}, {110}, {100}, {000}) for the corresponding turn direction.
Functional Requirements
The Verilog module meets the following requirements:

Turn Right Only:
Output right_tail_light_control[2:0] follows the sequence: {001} → {011} → {111} → {000}, with each state held for five clock cycles.
Turn Left Only:
Output left_tail_light_control[2:0] follows the same sequence as the right tail light for a left turn.
Brake Only:
All tail lights are fully illuminated.
Brake + Turn Right:
All left tail light bulbs are fully on.
right_tail_light_control[2:0] cycles through the sequence: {111} → {110} → {100} → {000}.
Brake + Turn Left:
All right tail light bulbs are fully on.
left_tail_light_control[2:0] cycles through the sequence: {111} → {110} → {100} → {000}.
Project Structure
The repository is organized as follows:

/src: Contains the Verilog module (tail_light_sequencer.v) implementing the tail light control logic.
/testbench: Includes the Verilog testbench for simulation and verification.
/docs: Contains the datasheet and additional documentation, including simulation waveforms demonstrating that all functional requirements are met.
