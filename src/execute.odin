package main;

execute_instr :: proc(cpu : ^Cpu,mem : ^Mem, decode_instr : ^Decoded_Instr)
{
    if decode_instr.op_code == Op_Code.HLT{
        cpu.hlt = true;
    }
}