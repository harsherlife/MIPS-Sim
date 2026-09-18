package main;


Instr :: u32;

fetch_instr :: proc(pc : u32, mem : ^Mem) -> Instr
{
    instr := u32(mem[pc]) | u32(mem[pc + 1]) << 8 | u32(mem[pc + 2]) << 16 | u32(mem[pc + 3]) << 24;

    return Instr(instr);
}