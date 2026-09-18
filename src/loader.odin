package main;


import "core:os";
import "core:fmt";
import "core:c/libc";
import "core:strings";

get_file_size :: proc(file : ^libc.FILE) -> u64
{
    libc.fseek(file, 0, cast(libc.Whence)libc.SEEK_END);
    size := libc.ftell(file);
    libc.fseek(file, 0, cast(libc.Whence)libc.SEEK_SET);

    return u64(size);
}

errorf :: proc(format_str : string,format_args : ..any) -> !
{
    fmt.printf(format_str,..format_args);
    os.exit(1);
}

load_prog_to_mem :: proc(mem : ^Mem,file_path : string)
{
    // TODO : an assembler for this

    // file := libc.fopen(strings.clone_to_cstring(file_path),"rb");
    // if file == nil
    // {
    //     errorf("error loading program\n");
    // }
    // size := get_file_size(file);

    // bytes := make([]byte, int(size));

    // read := libc.fread(raw_data(bytes), 1 , uint(size), file);
    // fmt.printf("file size {} contents {}",size,bytes);
    mem[0] = 0;
    mem[1] = 0;
    mem[2] = 0;
    mem[3] = u8(Op_Code.HLT) << 2;
}