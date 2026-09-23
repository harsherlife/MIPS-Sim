package main;

import "../common";

Decoded_Instr :: struct
{
    op_code : common.Op_Code,
    rs,rt,rd : u8,
    imm : u16,
    sft_amnt : u8,
    target : u32
};


decode_instr :: proc(instr : Instr) -> Decoded_Instr
{
    decoded := Decoded_Instr{};
    decoded.op_code = common.Op_Code(instr >> 26); 
    decoded.rs = u8(instr >> 21) & 0x1F;
    decoded.rt = u8(instr >> 16 )& 0x1F;
    decoded.rd = u8(instr >> 11) & 0x1F;
    decoded.sft_amnt = u8(instr >> 6) & 0x1F;
    decoded.imm = u16(instr & 0xFFFF);
    decoded.target = instr & 0x3FFFFFF;
    return decoded;
}