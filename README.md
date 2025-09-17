# Low-Power ALU Design using Clock Gating

## 🌟 Overview
This project is about building a simple yet efficient **Arithmetic Logic Unit (ALU)** in Verilog.  
The ALU can perform arithmetic (ADD, SUB) and logic operations (AND, OR, XOR, SHIFT).  
What makes it special? We added **clock gating**, a technique that saves power by turning off unused parts of the circuit.  

## ⚡ Key Features
- 8-bit ALU (can be extended to higher bit-widths).  
- Arithmetic: ADD, SUB  
- Logic: AND, OR, XOR  
- Shifts: Left, Right  
- **Clock Gating** → stops unnecessary switching → saves power.  
- Verified using **testbench simulations** in Vivado.  

## 🛠 Tools Used
- **Verilog HDL** for design  
- **Xilinx Vivado** for simulation & synthesis  
- Vivado’s waveform viewer for output analysis  
- (Optional) FPGA board testing with constraints (XDC file)  

## 📂 Files in the Project
- `alu.v` → Basic ALU design  
- `clock_gated_alu.v` → ALU with clock gating logic  
- `top.v` → Top-level module connecting everything  
- `tb_top.v` → Testbench for simulation  
- `constraints.xdc` (optional) → Pin mapping for FPGA board  

## ▶️ How to Run
1. Open Xilinx Vivado and create a new project.  
2. Add the Verilog source files (`alu.v`, `clock_gated_alu.v`, `top.v`).  
3. Add the testbench (`tb_top.v`).  
4. Run **Behavioral Simulation** and check waveforms.  
5. (Optional) For FPGA → add the `constraints.xdc`, then run **Synthesis & Implementation**, generate bitstream, and program the board.  

## 📊 Results
- The ALU correctly performs all operations.  
- When `enable = 0`, the clock is gated → outputs stay stable → less switching.  
- Shows a clear **reduction in dynamic power usage**.  

## 📖 References
- Neso Academy – ALU basics (YouTube)  
- GeeksforGeeks – Clock Gating in VLSI  
- IEEE Papers – Low-Power ALU Design using Clock Gating  

---

✅ In short: this project shows how we can design a working ALU and make it **power-efficient** using a real industry technique like clock gating. Great for learning and FPGA demos!
