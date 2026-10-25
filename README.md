# 🔧 VLSI Projects – Verilog RTL

Welcome to my **VLSI Projects** repository! This repository showcases my hands-on practice in digital design, RTL development, finite state machines, and functional simulation using Verilog HDL.

## 📂 Projects

### 1. 4-bit ALU (Arithmetic Logic Unit)

A 4-bit ALU that performs arithmetic and bitwise logical operations.

- **Operations:** ADD, SUB, AND, OR, XOR
- **Design language:** Verilog HDL
- **Tools:** EDA Playground / Vivado

**Project files:** [`4bit_alu/`](./4bit_alu/)

### 2. Traffic Light Controller — Moore FSM

A traffic light controller implemented using a Moore Finite State Machine (FSM).

- **State sequence:** RED → GREEN → YELLOW
- **Design approach:** Moore FSM
- **Design language:** Verilog HDL

**Project files:** [`traffic_light_controller/`](./traffic_light_controller/)

### 3. Digital Alarm Clock

A modular digital alarm clock that tracks time and activates an alarm when the current time matches the configured alarm time.

- Clock divider
- Seconds, minutes, and hours counters
- Alarm comparison logic
- Verilog testbench for simulation
- **Tools:** Icarus Verilog and GTKWave

**Project files:** [`digital_alarm_clock/`](./digital_alarm_clock/)

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
├── 4bit_alu/
│   ├── README.md
│   ├── alu_4bit.v
│   └── tb_alu_4bit.v
├── traffic_light_controller/
│   ├── README.md
│   ├── traffic_controller.v
│   └── tb_traffic_controller.v
└── digital_alarm_clock/
    ├── README.md
    ├── clock_divider.v
    ├── second_counter.v
    ├── minute_counter.v
    ├── hour_counter.v
    ├── alarm_compare.v
    ├── digital_alarm_clock.v
    └── digital_alarm_clock_tb.v
```

## 🎯 Learning Goals

- Strengthen digital electronics and logic design fundamentals.
- Develop modular RTL designs using Verilog HDL.
- Understand FSM-based control systems and counter architectures.
- Create testbenches and simulate digital circuits.
- Debug RTL designs and inspect simulation waveforms.
- Build a foundation in VLSI design and functional verification.

## 🚀 Future Plans

- Develop self-checking testbenches.
- Improve corner-case testing and functional coverage.
- Explore SystemVerilog and UVM.
- Build more advanced RTL projects, including bus peripherals and processor components.

## 👨‍💻 About Me

**Naga Arjun**  
Electronics and Communication Engineering  
Aspiring VLSI Design & Verification Engineer

I am building practical skills in digital design, Verilog RTL coding, simulation, and verification as I work toward a career in VLSI.

---

⭐ *This repository represents my ongoing learning journey in RTL design and digital verification.*
