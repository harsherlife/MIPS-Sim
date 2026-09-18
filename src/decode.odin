package main;

import "core:fmt";


Op_Code :: enum
{
    ADD,
    ADDU,
    SUB,
    SUBU,
    AND,
    OR,
    XOR,
    NOR,
    SLT,
    SLTU,
    SLL,
    SRL,
    SRA,
    SLLV,
    SRLV,
    SRAV,
    HLT
};


Decoded_Instr :: struct
{
    op_code : Op_Code,
    rs,rt,rd : u8,
    imm : u16,
    sft_amnt : u8,
    target : u32
};


decode_instr :: proc(instr : Instr) -> Decoded_Instr
{
    decoded := Decoded_Instr{};
    decoded.op_code = Op_Code(instr >> 26); 
    return decoded;
}