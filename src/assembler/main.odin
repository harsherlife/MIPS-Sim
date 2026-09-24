package main;


import "core:os";
import "core:strings";
import "../common";
import "core:fmt";
import "core:mem";
import "core:c/libc";

chop_str_by_delim :: proc(str : []u8,idx : ^u32,delim : u8) -> string
{
    len : = u32(len(str));
    i := idx^;

    ptr : ^u8;
    str_len : u32 = 0;
    if delim == ' '
    {
        for i < len && libc.isspace(i32(str[i])) != 0
        {
            i += 1;
        }
        ptr = &str[i];
        str_len = i;
        for i < len && libc.isspace(i32(str[i])) == 0
        {
            i += 1;
        }
        str_len = i - str_len;
        i += 1;
    }
    else
    {
        for i < len && str[i] == delim
        {
            i += 1;
        }
        ptr = &str[i];
        str_len = i;
        for i < len && str[i] != delim
        {
            i += 1;
        }
        str_len = i - str_len;
        i += 1;
    }
    ret := strings.string_from_ptr(ptr,int(str_len));
    idx^ = i;
    return ret;
}

main :: proc()
{
    if len(os.args) < 2
    {
        common.errorf("File name not provided to assembler\n");
    }

    arena := common.get_arena();
    defer common.free_arena(&arena);
    old_alloc := context.allocator;
    defer context.allocator = old_alloc;
    context.allocator = mem.arena_allocator(&arena);

    asm_code , ok := os.read_entire_file_from_path(os.args[1],context.allocator);

    if ok != 0
    {
        common.errorf("Couldn't read file\n");
    }

    idx :u32 = 0;
    for idx < u32(len(asm_code))
    {
        str := chop_str_by_delim(asm_code,&idx,' ');      
        fmt.printf("{}\n",str);  
    }
    bytes := make([dynamic]u8);
    
    write_r_inst(&bytes,common.Op_Code.ADD,0,0,0,0);
    write_r_inst(&bytes,common.Op_Code.HLT,0,0,0,0);

    ok = os.write_entire_file("examples/test.object",bytes[:]);
}