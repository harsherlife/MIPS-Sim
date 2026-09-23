package main;


import "core:os";
import "core:c/libc";
import "../common";

load_prog_to_mem :: proc(mem : ^Mem,file_path : string)
{
    bytes,ok := os.read_entire_file_from_path(file_path,context.allocator);
    if ok != 0
    {
        common.errorf("Couldn't read file\n");
    }

    libc.memcpy(mem,raw_data(bytes),len(bytes));
}