# MIPS32 Register Reference

## 1. General-Purpose Registers (GPRs)

| Number | Register | Purpose |
| :--- | :--- | :--- |
| `0` | `$zero` | Constant zero |
| `1` | `$at` | Assembler temporary |
| `2` | `$v0` | Function return value / Syscall code |
| `3` | `$v1` | Function return value |
| `4` | `$a0` | Function argument 1 |
| `5` | `$a1` | Function argument 2 |
| `6` | `$a2` | Function argument 3 |
| `7` | `$a3` | Function argument 4 |
| `8` | `$t0` | Temporary |
| `9` | `$t1` | Temporary |
| `10` | `$t2` | Temporary |
| `11` | `$t3` | Temporary |
| `12` | `$t4` | Temporary |
| `13` | `$t5` | Temporary |
| `14` | `$t6` | Temporary |
| `15` | `$t7` | Temporary |
| `16` | `$s0` | Saved register |
| `17` | `$s1` | Saved register |
| `18` | `$s2` | Saved register |
| `19` | `$s3` | Saved register |
| `20` | `$s4` | Saved register |
| `21` | `$s5` | Saved register |
| `22` | `$s6` | Saved register |
| `23` | `$s7` | Saved register |
| `24` | `$t8` | Temporary |
| `25` | `$t9` | Temporary |
| `26` | `$k0` | Kernel / OS reserved |
| `27` | `$k1` | Kernel / OS reserved |
| `28` | `$gp` | Global pointer |
| `29` | `$sp` | Stack pointer |
| `30` | `$fp` / `$s8` | Frame pointer / saved register |
| `31` | `$ra` | Return address |

---

## 2. Arithmetic & Program Flow Registers

| Register | Purpose |
| :--- | :--- |
| `PC` | Program counter |
| `HI` | High 32 bits of multiply result / remainder of divide |
| `LO` | Low 32 bits of multiply result / quotient of divide |

---

## 3. Floating-Point Registers (Coprocessor 1)

### Data Registers
| Register | Purpose |
| :--- | :--- |
| `$f0`, `$f2` | Floating-point return values |
| `$f1`, `$f3` | Return value high words (in 32-bit mode) |
| `$f4` – `$f11` | Floating-point temporaries |
| `$f12`, `$f14` | Floating-point arguments |
| `$f13`, `$f15` | Argument high words (in 32-bit mode) |
| `$f16` – `$f19` | Floating-point temporaries |
| `$f20` – `$f31` | Floating-point saved registers |

### Control & Status Registers
| Register | Purpose |
| :--- | :--- |
| `FIR` | Implementation and revision information |
| `FCSR` | Control and status (rounding, exceptions, condition codes) |
| `FCCR` | Condition code flags |
| `FEXR` | Exception cause and history |
| `FENR` | Exception enables and trap masks |

---

## 4. System Control Registers (Coprocessor 0)

| Number | Register | Purpose |
| :--- | :--- | :--- |
| `0` | `Index` | TLB entry index |
| `1` | `Random` | Pseudo-random TLB replacement index |
| `2` | `EntryLo0` | Physical page translation for even virtual pages |
| `3` | `EntryLo1` | Physical page translation for odd virtual pages |
| `4` | `Context` | Pointer to page table entry in memory |
| `5` | `PageMask` | Variable page size configuration |
| `6` | `Wired` | Boundary of fixed (non-random) TLB entries |
| `8` | `BadVAddr` | Address that caused the last memory fault |
| `9` | `Count` | Hardware cycle timer counter |
| `10` | `EntryHi` | Virtual page number and ASID for TLB match |
| `11` | `Compare` | Timer interrupt threshold |
| `12` | `Status` | Processor mode and interrupt enable mask |
| `13` | `Cause` | Reason for the last exception or interrupt |
| `14` | `EPC` | Address to return to after handling an exception |
| `15` | `PRId` | Processor identification and revision |
| `16` | `Config` | CPU and cache configuration options |
| `30` | `ErrorEPC` | Return address for cache error and parity exceptions |