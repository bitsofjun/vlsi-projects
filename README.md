# 🔧 VLSI Projects – Verilog RTL

A collection of digital design and RTL projects developed using **Verilog HDL**, with a focus on digital logic design, finite state machines, modular RTL development, and simulation.

## 📂 Projects

### 1. 4-bit ALU (Arithmetic Logic Unit)

**Description:** A 4-bit ALU that performs arithmetic and bitwise logical operations.

- **Operations:** ADD, SUB, AND, OR, XOR
- **HDL:** Verilog
- **Tools:** EDA Playground / Vivado

### 2. Traffic Light Controller (Moore FSM)

**Description:** A traffic light controller implemented using a Moore finite state machine.

- **States:** RED → GREEN → YELLOW
- **Design:** Moore FSM
- **HDL:** Verilog

### 3. Digital Alarm Clock

**Description:** A modular digital alarm clock that tracks time and activates an alarm when the current time matches the configured alarm time.

- **Modules:** Clock divider, seconds counter, minutes counter, hours counter, and alarm comparator
- **Verification:** Verilog testbench
- **Simulation tools:** Icarus Verilog
- **Waveform analysis:** GTKWave

## 🛠️ Tools & Technologies

- Verilog HDL
- Icarus Verilog
- GTKWave
- Xilinx Vivado
- EDA Playground
- Git and GitHub

## 📁 Repository Structure

```text
vlsi-projects/
├── README.md
├── alu_4bit.v
├── tb_alu_4bit.v
├── traffic_controller.v
├── tb_traffic_controller.v
└── digital_alarm_clock/
    ├── clock_divider.v
    ├── second_counter.v
    ├── minute_counter.v
    ├── hour_counter.v
    ├── alarm_compare.v
    ├── digital_alarm_clock.v
    └── digital_alarm_clock_tb.v
```

## 🎯 Learning Objectives

- Strengthen digital logic design fundamentals
- Develop modular RTL designs using Verilog HDL
- Understand finite state machines and counter-based designs
- Write and run testbenches for functional simulation
- Analyze simulation waveforms and debug RTL behavior
- Build a foundation for VLSI design and verification

## 🚀 Future Improvements

- Add self-checking testbenches
- Expand functional coverage and corner-case testing
- Develop more RTL projects, including counters, multiplexers, and bus peripherals
- Explore SystemVerilog and UVM-based verification

## 👨‍💻 Author

**Naga Arjun**

Electronics and Communication Engineering | Aspiring VLSI Design & Verification Engineer

---

*This repository documents my hands-on learning journey in digital design and RTL verification.*
