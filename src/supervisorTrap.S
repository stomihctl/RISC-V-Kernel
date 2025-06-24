.extern _ZN5Riscv20handleSupervisorTrapEv
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function

_ZN5Riscv14supervisorTrapEv:
    #stek raste ka nizim adresama i zauzimamo prostor za sve registe
    #cuvamo svih korisnickih registra a vel 1 je 8 bajta i to je 256B
    addi sp, sp, -256

    #.irp symbol,values...
    #na zauzetu lokaciju steka cuvamo registre
    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)
    .endr

    call _ZN5Riscv20handleSupervisorTrapEv

    #sa steka vracamo registre i pomeramo nazad sp

    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr

    addi sp, sp, 256

    sret