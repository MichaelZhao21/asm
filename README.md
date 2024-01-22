# I'm learning x86 assembly!

## Specs

- **OS**: Kali GNU/Linux Rolling x86_64
- **Host**: HP Spectre x360 Convertible 15-eb0xxx
- **Kernel**: 6.5.0-kali3-amd64
- **Assembler**: [NASM](https://www.nasm.us/)
- **CPU**: Intel i7-10750H (12) @ 5.000GHz

## References

- x86_64 NASM quick reference: https://www.cs.uaf.edu/2017/fall/cs301/reference/x86_64.html
- Syscall reference: https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md#x86_64-64_bit
- ASM tutorial (but it's in 32-bit): https://asmtutor.com/

## Compilation/Execution

Run `nasm -felf64 <filename>.asm && ld <filename>.o`

To debug, add `-gdwarf` to `nasm`

## Projects

1. [Hello world](hello.asm) - Simple hello world program
2. [Hello world with strlen](hellolen.asm) - Hello world with automatically calculated string length (can print anything!)
3. [strlen subroutine](strlen.asm) - Subroutine that runs strlen
4. [Functions](functions.asm) and the [runner file](functionsrunner.asm) - Useful functions to call, `functionsrunner.asm` is just used to test the functions to make sure they work
5. [Arguments](args.asm) - Read arguments and print them

### Misc

- [Triangle](triangle.asm) - Creates a triangle of stars
