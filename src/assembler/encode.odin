package main;

import "../common";

write_r_inst :: proc(bytes : ^[dynamic]u8,op_code : common.Op_Code , rs: u8,rt : u8,rd : u8,shift : u8)
{
    inst :u32 = (u32(op_code) << 26) | u32(rs << 21) | u32(rt << 16) | u32(rd << 11) | u32(shift);
    append(bytes,u8(inst & 0xFF));
    append(bytes,u8((inst >> 8) & 0xFF));
    append(bytes,u8((inst >> 16) & 0xFF));
    append(bytes,u8((inst >> 24) & 0xFF));
}

write_i_inst :: proc(bytes : ^[dynamic]u8,op_code : common.Op_Code , rs: u8,rt : u8,imm : u16)
{
    inst := (u32(op_code) << 26) | u32(rs << 21) | u32(rt << 16) | u32(imm);
    append(bytes,u8(inst & 0xFF));
    append(bytes,u8((inst >> 8) & 0xFF));
    append(bytes,u8((inst >> 16) & 0xFF));
    append(bytes,u8((inst >> 24) & 0xFF));
}

write_j_inst :: proc(bytes : ^[dynamic]u8,op_code : common.Op_Code , label : u32)
{
    inst := (u32(op_code) << 26) | label;
    append(bytes,u8(inst & 0xFF));
    append(bytes,u8((inst >> 8) & 0xFF));
    append(bytes,u8((inst >> 16) & 0xFF));
    append(bytes,u8((inst >> 24) & 0xFF));
}