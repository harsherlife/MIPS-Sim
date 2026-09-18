# Classic MIPS Academic Instruction List

> Grouped by instruction encoding format: R, I, and J.
> Includes common  MIPS instructions and variants. Pseudoinstructions are listed separately because they may expand into one or more real instructions.

## R-Type Instructions

### Arithmetic and logical
- `add rd, rs, rt`
- `addu rd, rs, rt`
- `sub rd, rs, rt`
- `subu rd, rs, rt`
- `and rd, rs, rt`
- `or rd, rs, rt`
- `xor rd, rs, rt`
- `nor rd, rs, rt`
- `slt rd, rs, rt`
- `sltu rd, rs, rt`

### Fixed shifts
- `sll rd, rt, shamt`
- `srl rd, rt, shamt`
- `sra rd, rt, shamt`

### Variable shifts
- `sllv rd, rt, rs`
- `srlv rd, rt, rs`
- `srav rd, rt, rs`

### Multiply/divide and HI/LO
- `mult rs, rt`
- `multu rs, rt`
- `div rs, rt`
- `divu rs, rt`
- `mfhi rd`
- `mflo rd`
- `mthi rs`
- `mtlo rs`
- `mul rd, rs, rt` 

### Control transfer, traps, and synchronization
- `jr rs`
- `jalr rd, rs`
- `syscall`
- `teq rs, rt`
- `tne rs, rt`
- `tge rs, rt`
- `tgeu rs, rt`
- `tlt rs, rt`
- `tltu rs, rt`

## I-Type Instructions

### Immediate arithmetic and logical
- `addi rt, rs, immediate`
- `addiu rt, rs, immediate`
- `andi rt, rs, immediate`
- `ori rt, rs, immediate`
- `xori rt, rs, immediate`
- `slti rt, rs, immediate`
- `sltiu rt, rs, immediate`
- `lui rt, immediate`

### Loads
- `lb rt, offset(base)`
- `lbu rt, offset(base)`
- `lh rt, offset(base)`
- `lhu rt, offset(base)`
- `lw rt, offset(base)`

### Stores
- `sb rt, offset(base)`
- `sh rt, offset(base)`
- `sw rt, offset(base)`

### Conditional branches
- `beq rs, rt, label`
- `bne rs, rt, label`
- `blez rs, label`
- `bgtz rs, label`
- `bltz rs, label`
- `bgez rs, label`

### Branch-likely variants 
- `beql rs, rt, label`
- `bnel rs, rt, label`
- `blezl rs, label`
- `bgtzl rs, label`
- `bltzl rs, label`
- `bgezl rs, label`

### Immediate traps
- `teqi rs, immediate`
- `tnei rs, immediate`
- `tgei rs, immediate`
- `tgeiu rs, immediate`
- `tlti rs, immediate`
- `tltiu rs, immediate`

### Other
- `pref hint, offset(base)`

## J-Type Instructions

- `j target`
- `jal target`
-  `hlt`

## Pseudoinstructions 

These are not necessarily distinct machine instructions and may expand into multiple instructions.

- `nop`
- `move rd, rs`
- `li rt, immediate`
- `la rt, label`
- `b label`
- `beqz rs, label`
- `bnez rs, label`
- `blt rs, rt, label`
- `ble rs, rt, label`
- `bgt rs, rt, label`
- `bge rs, rt, label`
- `bltu rs, rt, label`
- `bleu rs, rt, label`
- `bgtu rs, rt, label`
- `bgeu rs, rt, label`
- `neg rd, rs`
- `negu rd, rs`
- `not rd, rs`
- `abs rd, rs`
- `clear rd`
- `bgtz`/`bltz` aliases where supported by the assembler