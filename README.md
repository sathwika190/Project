# Project - Done by CH.SATHWIKA
# Elevator Controller FSM using Verilog

## Project Overview

This project implements a **Finite State Machine (FSM) based Elevator Controller** using **Verilog HDL**. The elevator controller simulates the movement of an elevator between **4 floors (0–3)** based on user floor requests.

The system uses an FSM approach where the elevator changes state according to the requested floor and moves **one floor per clock cycle** until the destination is reached.

---

## Features

- 4-floor elevator system
- FSM-based control logic
- Upward and downward movement
- Reset functionality
- Verilog Testbench included
- Waveform generation using **VCD Dump File**
- Simulation support in **EDA Playground**

---

## Technologies Used

- **Verilog HDL**
- **EDA Playground**
- **Icarus Verilog Simulator**
- **EPWave Waveform Viewer**

---

## Project Files

### 1. `elevator_fsm.v`
Contains the main **Elevator Controller FSM Verilog code**.

### 2. `elevator_fsm_tb.v`
Contains the **testbench** for simulation and verification.

---

## Working Principle

The elevator starts from **Floor 0**.

The controller checks the requested floor and:

- Moves **up** if the requested floor is greater than the current floor.
- Moves **down** if the requested floor is lower than the current floor.
- Stops when the requested floor matches the current floor.

The elevator moves **one floor at each clock pulse**.

---

## Floor Encoding

| Floor | Binary Value |
|--------|--------------|
| Floor 0 | 00 |
| Floor 1 | 01 |
| Floor 2 | 10 |
| Floor 3 | 11 |

---

## Simulation Steps

### Step 1: Open EDA Playground
Visit:

https://www.edaplayground.com/

### Step 2: Select Settings

- Language: **Verilog**
- Simulator: **Icarus Verilog**
- Enable **Open EPWave after run**

### Step 3: Add Code

Paste:
- `elevator_fsm.v` → Design Section
- `elevator_fsm_tb.v` → Testbench Section

### Step 4: Run Simulation

Click **Run**.

### Step 5: View Waveform

1. Open **EPWave**
2. Click **Get Signals**
3. Select signals:
   - `clk`
   - `reset`
   - `request_floor`
   - `current_floor`
4. Click **Append All**

---

## Expected Output

### Request Floor Sequence

```text
00 → 11 → 01 → 10 → 00
```

### Elevator Movement

```text
00 → 01 → 10 → 11
11 → 10 → 01
01 → 10
10 → 01 → 00
```

---

## Output

The simulation generates:

- **Waveform Output**
- **VCD Dump File (`dump.vcd`)**
- FSM-based elevator floor transitions

---

## Applications

- Smart Elevator Systems
- Building Automation
- Embedded Control Systems
- Digital Logic Design Projects

---

## Author

**Murari**

AWS Cloud Intern at ThinkChamp

---

## Conclusion

This project demonstrates how a **Finite State Machine (FSM)** can be used to design a simple elevator controller in **Verilog HDL**. The implementation successfully simulates elevator movement and verifies functionality using waveform analysis.
Feel free to explore and modify the code for further enhancements!