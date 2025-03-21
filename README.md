# Mustang Tail Light Controller

Design and synthesis of a Mustang Tail Light Sequencer using Verilog.
<img width="441" alt="image" src="https://github.com/user-attachments/assets/690b9eda-f089-4626-a4bb-a3e7d9c07c7b" />


## Files and Descriptions

- **MustangTLC_area.rpt**: Report detailing the area utilization of the synthesized design, including metrics such as the number of logic gates, flip-flops, and other resources used.&#8203;:contentReference[oaicite:0]{index=0}

- **MustangTLC_area_hier.rpt**: Hierarchical area report presenting area utilization metrics organized by the design's module hierarchy, providing insights into resource usage at different levels.&#8203;:contentReference[oaicite:1]{index=1}

- **MustangTLC_syn.v**: :contentReference[oaicite:2]{index=2}&#8203;:contentReference[oaicite:3]{index=3}

- **MustangTLC_timing_worst.rpt**: :contentReference[oaicite:4]{index=4}&#8203;:contentReference[oaicite:5]{index=5}

- **Mustang_TLC.v**: :contentReference[oaicite:6]{index=6}&#8203;:contentReference[oaicite:7]{index=7}

- **Mustang_TLC_tb.v**: :contentReference[oaicite:8]{index=8}&#8203;:contentReference[oaicite:9]{index=9}

## Overview

This project implements a tail light sequencer for a Mustang vehicle using Verilog. The sequencer controls the illumination patterns of the tail lights based on user inputs such as turn signals and brake activation, enhancing both aesthetics and safety.

## Features

- **Turn Signal Sequencing**: :contentReference[oaicite:10]{index=10}&#8203;:contentReference[oaicite:11]{index=11}

- **Brake Light Control**: :contentReference[oaicite:12]{index=12}&#8203;:contentReference[oaicite:13]{index=13}

- **Combined Signal Handling**: Distinct behaviors when both turn signals and brakes are activated concurrently.&#8203;:contentReference[oaicite:14]{index=14}

## Design Details

The tail light controller operates under multiple scenarios:

- **Turn Signals**:
  - *Right Turn*: The right tail lights cycle through a sequence (e.g., {001} → {011} → {111} → {000}), with each state maintained for five clock cycles.&#8203;:contentReference[oaicite:15]{index=15}
  - *Left Turn*: The left tail lights follow a similar sequencing pattern.&#8203;:contentReference[oaicite:16]{index=16}

- **Brake Activation**:
  - All tail lights are illuminated continuously when the brake is applied.&#8203;:contentReference[oaicite:17]{index=17}

- **Combined Signals**:
  - When the brake is active along with a turn signal, the inactive side remains fully illuminated, while the active side displays a reverse sequence (e.g., {111} → {110} → {100} → {000}) corresponding to the turn direction.&#8203;:contentReference[oaicite:18]{index=18}

## Getting Started

### Prerequisites

- **Hardware**: FPGA development board (e.g., Xilinx, Altera) for implementation.&#8203;:contentReference[oaicite:19]{index=19}

- **Software**: Verilog simulation and synthesis tools (e.g., ModelSim, Xilinx Vivado).&#8203;:contentReference[oaicite:20]{index=20}

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yeshwanthkattta/Mustang-Tail-Light-Controller.git
