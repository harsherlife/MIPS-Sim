package main;

import "../common";

execute_instr :: proc(cpu : ^Cpu,mem : ^Mem, decode_instr : ^Decoded_Instr)
{
    #partial switch decode_instr.op_code 
    {
        case common.Op_Code.HLT:
        {
            cpu.hlt = true;
        }
        case : common.errorf("execute stage left to be done for instruction {}\n",decode_instr.op_code);
    }
}