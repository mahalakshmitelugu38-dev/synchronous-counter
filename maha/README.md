# 4-Bit Synchronous Counter Using Verilog

## Description

This project implements a **4-bit synchronous up counter** using Verilog HDL.

A synchronous counter changes its output only at the active edge of the clock. The counter increments by 1 on every positive edge of the clock when reset is inactive.

## Files

* `synchronous_counter.v` – Verilog design code
* `synchronous_counter_tb.v` – Testbench for simulation
* `output.txt` – Expected simulation output

## Operation

* `reset = 1` → Counter is reset to `0000`
* `reset = 0` → Counter increments on every positive clock edge
* Counting sequence:

```text
0000 → 0001 → 0010 → 0011 → 0100 → ...
```

After `1111`, the 4-bit counter rolls over to `0000`.

## Simulation

The design can be simulated using tools such as **Icarus Verilog**, **ModelSim**, or **Vivado**.

### Icarus Verilog

```bash
iverilog -o counter_sim synchronous_counter.v synchronous_counter_tb.v
vvp counter_sim
```

## Expected Output

```text
Count = 0000
Count = 0001
Count = 0010
Count = 0011
Count = 0100
Count = 0101
Count = 0110
Count = 0111
Count = 1000
Count = 1001
Count = 1010
```

## Applications

* Digital clocks
* Frequency division
* Digital counters
* Sequence generation
* FPGA and digital-system design

## Author

Mahalakshmi Telugu
