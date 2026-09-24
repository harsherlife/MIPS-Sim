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
import "core:mem";


errorf :: proc(format_str : string,format_args : ..any) -> !
{
    fmt.printf(format_str,..format_args);
    os.exit(1);
}

get_arena :: proc() -> mem.Arena
{
    arena := mem.Arena{};
    mem.arena_init(&arena,make([]u8,4*1024*1024));
    return arena;
}

free_arena :: proc(arena : ^mem.Arena)
{
    mem.arena_free_all(arena);
    delete(arena.data);
}