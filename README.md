# Mustang Tail Light Controller

Design and synthesis of a Mustang Tail Light Sequencer using Verilog.
<img width="441" alt="image" src="https://github.com/user-attachments/assets/690b9eda-f089-4626-a4bb-a3e7d9c07c7b" />


## Files and Descriptions

- **MustangTLC_area.rpt**: Report detailing the area utilization of the synthesized design, including metrics such as the number of logic gates, flip-flops, and other resources 

- **MustangTLC_area_hier.rpt**: Hierarchical area report presenting area utilization metrics organized by the design's module hierarchy, providing insights into resource usage at 
- **MustangTLC_syn.v**: :Contains Synthesis Report

- **MustangTLC_timing_worst.rpt**:  Contains Timing Reports

- **Mustang_TLC.v**: :Verilog Code
- **Mustang_TLC_tb.v**: :Test Bench
## Overview

This project implements a tail light sequencer for a Mustang vehicle using Verilog. The sequencer controls the illumination patterns of the tail lights based on user inputs such as turn signals and brake activation, enhancing both aesthetics and safety.

## Features

- **Turn Signal Sequencing**: :contentReference
- **Brake Light Control**: :contentReference

- **Combined Signal Handling**: Distinct behaviors when both turn signals and brakes are activated concurrently.

## Design Details

The tail light controller operates under multiple scenarios:

- **Turn Signals**:
  - *Right Turn*: The right tail lights cycle through a sequence (e.g., {001} → {011} → {111} → {000}), with each state maintained for five clock 
  - *Left Turn*: The left tail lights follow a similar sequencing pattern.

- **Brake Activation**:
  - All tail lights are illuminated continuously when the brake is applied.

- **Combined Signals**:
  - When the brake is active along with a turn signal, the inactive side remains fully illuminated, while the active side displays a reverse sequence (e.g., {111} → {110} → {100} → {000}) corresponding to the turn direction.
## Getting Started

### Prerequisites

- **Hardware**: FPGA development board (e.g., Xilinx, Altera) for implementation.
- **Software**: Verilog simulation and synthesis tools (e.g., ModelSim, Xilinx Vivado).

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yeshwanthkattta/Mustang-Tail-Light-Controller.git
