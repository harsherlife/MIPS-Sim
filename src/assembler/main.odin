package main;


import "core:os";
import "core:strings";
import "../common";
import "core:fmt";

main :: proc()
{
    if len(os.args) < 2
    {
        common.errorf("File name not provided to assembler\n");
    }
    asm_code , ok := os.read_entire_file_from_path(os.args[1],context.allocator);

    if ok != 0
    {
        common.errorf("Couldn't read file\n");
    }

    
}