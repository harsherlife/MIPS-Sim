package instructions;


Op_Code :: enum u8
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

import "core:fmt";
import "core:os";


errorf :: proc(format_str : string,format_args : ..any) -> !
{
    fmt.printf(format_str,..format_args);
    os.exit(1);
}