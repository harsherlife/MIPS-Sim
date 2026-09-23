package main;


import "core:os";
import "core:fmt";
import "../common";

Cpu :: struct
{
    gprs : [32]u32,
    pc,hi,lo : u32,
    hlt : bool
};


run_cpu_cycle :: proc(cpu : ^Cpu,mem : ^Mem)
{
    instr := fetch_instr(cpu.pc,mem);
    decoded_operands := decode_instr(instr);
    //fmt.printf("{}",decoded_operands);
    execute_instr(cpu,mem,&decoded_operands);
}



main :: proc()
{
    if len(os.args) < 2
    {
        common.errorf("file name not provided for machine code\n");
    }
    cpu := Cpu{};
    mem : Mem = ---;
    load_prog_to_mem(&mem,os.args[1]);
    for !cpu.hlt
    {
        run_cpu_cycle(&cpu,&mem);
    }
}