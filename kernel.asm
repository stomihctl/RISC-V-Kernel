
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	af013103          	ld	sp,-1296(sp) # 8000baf0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	491060ef          	jal	ra,80006cac <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.type _ZN5Riscv14supervisorTrapEv, @function

_ZN5Riscv14supervisorTrapEv:
    #stek raste ka nizim adresama i zauzimamo prostor za sve registe
    #cuvamo svih korisnickih registra a vel 1 je 8 bajta i to je 256B
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256

    #.irp symbol,values...
    #na zauzetu lokaciju steka cuvamo registre
    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	385010ef          	jal	ra,80002d08 <_ZN5Riscv20handleSupervisorTrapEv>

    #sa steka vracamo registre i pomeramo nazad sp

    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
#include "../h/syscall_c.h"

#include "../h/print.hpp"

void* mem_alloc(size_t size)
{
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    uint64 code = 0x01;
    void* ret = nullptr;
    size_t sizeBlocks = size % MEM_BLOCK_SIZE ? MEM_BLOCK_SIZE * (size / MEM_BLOCK_SIZE + 1) : size;
    80001250:	03f57793          	andi	a5,a0,63
    80001254:	00078863          	beqz	a5,80001264 <_Z9mem_allocm+0x20>
    80001258:	00655513          	srli	a0,a0,0x6
    8000125c:	00150513          	addi	a0,a0,1
    80001260:	00651513          	slli	a0,a0,0x6
    uint64 newSize = (uint64)sizeBlocks;
    __asm__ volatile("mv a1, %0" : : "r" (newSize));
    80001264:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001268:	00100793          	li	a5,1
    8000126c:	00078513          	mv	a0,a5


    //poziv za prelaz u sistemski rezim zbog obrade
    __asm__ volatile("ecall");
    80001270:	00000073          	ecall
    //upis povratne vrednosti koja se cuva u a0 registru
    uint64 rret;
    __asm__ volatile("mv %[rt], a0" : [rt] "=r" (rret));
    80001274:	00050513          	mv	a0,a0
    ret = (void*)rret;
    return ret;
}
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80001284:	ff010113          	addi	sp,sp,-16
    80001288:	00813423          	sd	s0,8(sp)
    8000128c:	01010413          	addi	s0,sp,16
    uint64 ret = -2;
    uint64 ptr = (uint64)p;
    uint64 code = 0x02;
    __asm__ volatile("mv a1, %0" : : "r" (ptr));
    80001290:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001294:	00200793          	li	a5,2
    80001298:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000129c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800012a0:	00050513          	mv	a0,a0
    return (int)ret;
}
    800012a4:	0005051b          	sext.w	a0,a0
    800012a8:	00813403          	ld	s0,8(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret

00000000800012b4 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg)
{
    800012b4:	ff010113          	addi	sp,sp,-16
    800012b8:	00813423          	sd	s0,8(sp)
    800012bc:	01010413          	addi	s0,sp,16
    uint64 code = 0x11;
    uint64 ret;
    __asm__ volatile("mv a3, %0" : : "r"(arg));
    800012c0:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    800012c4:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800012c8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    800012cc:	01100793          	li	a5,17
    800012d0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012d4:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    800012d8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800012dc:	0005051b          	sext.w	a0,a0
    800012e0:	00813403          	ld	s0,8(sp)
    800012e4:	01010113          	addi	sp,sp,16
    800012e8:	00008067          	ret

00000000800012ec <_Z15thread_dispatchv>:

void thread_dispatch ()
{
    800012ec:	ff010113          	addi	sp,sp,-16
    800012f0:	00813423          	sd	s0,8(sp)
    800012f4:	01010413          	addi	s0,sp,16
    uint64 code = 0x13;
    __asm__ volatile("mv a0, %0" : : "r" (code));
    800012f8:	01300793          	li	a5,19
    800012fc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001300:	00000073          	ecall
}
    80001304:	00813403          	ld	s0,8(sp)
    80001308:	01010113          	addi	sp,sp,16
    8000130c:	00008067          	ret

0000000080001310 <_Z11thread_exitv>:

int thread_exit()
{
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00813423          	sd	s0,8(sp)
    80001318:	01010413          	addi	s0,sp,16
    uint64 ret = -2;
    uint64 code = 0x12;
    __asm__ volatile("mv a0, %0" : : "r" (code));
    8000131c:	01200793          	li	a5,18
    80001320:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001324:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001328:	00050513          	mv	a0,a0
    return (int)ret;
}
    8000132c:	0005051b          	sext.w	a0,a0
    80001330:	00813403          	ld	s0,8(sp)
    80001334:	01010113          	addi	sp,sp,16
    80001338:	00008067          	ret

000000008000133c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init)
{
    8000133c:	ff010113          	addi	sp,sp,-16
    80001340:	00813423          	sd	s0,8(sp)
    80001344:	01010413          	addi	s0,sp,16
    uint64 ret = -3;
    uint64 code = 0x21;

    __asm__ volatile("mv a2, %0" : : "r" (init));
    80001348:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    8000134c:	00050593          	mv	a1,a0

    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001350:	02100793          	li	a5,33
    80001354:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001358:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000135c:	00050513          	mv	a0,a0
    return (int)ret;

}
    80001360:	0005051b          	sext.w	a0,a0
    80001364:	00813403          	ld	s0,8(sp)
    80001368:	01010113          	addi	sp,sp,16
    8000136c:	00008067          	ret

0000000080001370 <_Z9sem_closeP4_sem>:
int sem_close(sem_t handle)
{
    80001370:	ff010113          	addi	sp,sp,-16
    80001374:	00813423          	sd	s0,8(sp)
    80001378:	01010413          	addi	s0,sp,16
    uint64 ret = -3;
    uint64 code = 0x22;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    8000137c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001380:	02200793          	li	a5,34
    80001384:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001388:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000138c:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001390:	0005051b          	sext.w	a0,a0
    80001394:	00813403          	ld	s0,8(sp)
    80001398:	01010113          	addi	sp,sp,16
    8000139c:	00008067          	ret

00000000800013a0 <_Z8sem_waitP4_sem>:
int sem_wait(sem_t id)
{
    800013a0:	ff010113          	addi	sp,sp,-16
    800013a4:	00813423          	sd	s0,8(sp)
    800013a8:	01010413          	addi	s0,sp,16
    uint64 ret = -3;
    uint64 code = 0x23;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    800013ac:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    800013b0:	02300793          	li	a5,35
    800013b4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013b8:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800013bc:	00050513          	mv	a0,a0
    return (int)ret;
}
    800013c0:	0005051b          	sext.w	a0,a0
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <_Z10sem_signalP4_sem>:
int sem_signal(sem_t id)
{
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    uint64 ret = -3;
    uint64 code = 0x24;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    800013dc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    800013e0:	02400793          	li	a5,36
    800013e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013e8:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800013ec:	00050513          	mv	a0,a0
    return (int)ret;
}
    800013f0:	0005051b          	sext.w	a0,a0
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z13sem_timedwaitP4_semm>:
int sem_timedwait(sem_t id, time_t timeout)
{
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00813423          	sd	s0,8(sp)
    80001408:	01010413          	addi	s0,sp,16
    uint64 ret = -3;
    uint64 code = 0x25;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    8000140c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)timeout));
    80001410:	00058613          	mv	a2,a1
    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001414:	02500793          	li	a5,37
    80001418:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000141c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001420:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001424:	0005051b          	sext.w	a0,a0
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z11sem_trywaitP4_sem>:
int sem_trywait(sem_t id)
{
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16
    uint64 ret = -3;
    uint64 code = 0x26;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)id));
    80001440:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001444:	02600793          	li	a5,38
    80001448:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000144c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001450:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001454:	0005051b          	sext.w	a0,a0
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_Z10time_sleepm>:

int time_sleep (time_t time)
{
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    uint64 ret = -3;
    uint64 code = 0x31;

    __asm__ volatile("mv a1, %0" : : "r" ((uint64)time));
    80001470:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001474:	03100793          	li	a5,49
    80001478:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000147c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001480:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001484:	0005051b          	sext.w	a0,a0
    80001488:	00813403          	ld	s0,8(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret

0000000080001494 <_Z4getcv>:

char getc()
{
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00813423          	sd	s0,8(sp)
    8000149c:	01010413          	addi	s0,sp,16
    uint64 code = 0x41;
    __asm__ volatile("mv a0, %0" : : "r" (code));
    800014a0:	04100793          	li	a5,65
    800014a4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014a8:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014ac:	00050513          	mv	a0,a0
    return (char)ret;
}
    800014b0:	0ff57513          	andi	a0,a0,255
    800014b4:	00813403          	ld	s0,8(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret

00000000800014c0 <_Z4putcc>:
void putc(char c)
{
    800014c0:	ff010113          	addi	sp,sp,-16
    800014c4:	00813423          	sd	s0,8(sp)
    800014c8:	01010413          	addi	s0,sp,16
    uint64 code = 0x42;
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)c));
    800014cc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    800014d0:	04200793          	li	a5,66
    800014d4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014d8:	00000073          	ecall
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_ZN9sleepList3addEP3TCBm>:

sleepList::Elem* sleepList::head = nullptr;
sleepList::Elem* sleepList::tail = nullptr;

void sleepList::add(TCB *data, time_t time)
{
    800014e8:	fe010113          	addi	sp,sp,-32
    800014ec:	00113c23          	sd	ra,24(sp)
    800014f0:	00813823          	sd	s0,16(sp)
    800014f4:	00913423          	sd	s1,8(sp)
    800014f8:	01213023          	sd	s2,0(sp)
    800014fc:	02010413          	addi	s0,sp,32
    80001500:	00050913          	mv	s2,a0
    80001504:	00058493          	mv	s1,a1

    Elem* tmp = new Elem(data, time);
    80001508:	01800513          	li	a0,24
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	f64080e7          	jalr	-156(ra) # 80002470 <_Znwm>
    {
        TCB *data;
        time_t time;
        Elem *next;

        Elem(TCB *data, time_t time, Elem *next = nullptr) : data(data), time(time), next(next) {}
    80001514:	01253023          	sd	s2,0(a0)
    80001518:	00953423          	sd	s1,8(a0)
    8000151c:	00053823          	sd	zero,16(a0)
    if(!head)
    80001520:	0000a597          	auipc	a1,0xa
    80001524:	6305b583          	ld	a1,1584(a1) # 8000bb50 <_ZN9sleepList4headE>
    80001528:	02058863          	beqz	a1,80001558 <_ZN9sleepList3addEP3TCBm+0x70>
        //novo
        head->next = nullptr;
        return;
    }
    Elem* prev = nullptr;
    Elem* curr = head;
    8000152c:	00058793          	mv	a5,a1
    Elem* prev = nullptr;
    80001530:	00000613          	li	a2,0
    for(;curr != nullptr ;prev = curr, curr = curr->next)
    80001534:	06078a63          	beqz	a5,800015a8 <_ZN9sleepList3addEP3TCBm+0xc0>
    {
        if(curr->time > tmp->time)
    80001538:	0087b683          	ld	a3,8(a5)
    8000153c:	00853703          	ld	a4,8(a0)
    80001540:	02d76663          	bltu	a4,a3,8000156c <_ZN9sleepList3addEP3TCBm+0x84>
                head->time -= tmp->time;
                head = tmp;
            }
            return;
        }
        tmp->time -= curr->time;
    80001544:	40d70733          	sub	a4,a4,a3
    80001548:	00e53423          	sd	a4,8(a0)
    for(;curr != nullptr ;prev = curr, curr = curr->next)
    8000154c:	00078613          	mv	a2,a5
    80001550:	0107b783          	ld	a5,16(a5)
    80001554:	fe1ff06f          	j	80001534 <_ZN9sleepList3addEP3TCBm+0x4c>
        head = tmp;
    80001558:	0000a797          	auipc	a5,0xa
    8000155c:	5f878793          	addi	a5,a5,1528 # 8000bb50 <_ZN9sleepList4headE>
    80001560:	00a7b023          	sd	a0,0(a5)
        tail = tmp;
    80001564:	00a7b423          	sd	a0,8(a5)
        return;
    80001568:	0580006f          	j	800015c0 <_ZN9sleepList3addEP3TCBm+0xd8>
            if(prev != nullptr)
    8000156c:	02060063          	beqz	a2,8000158c <_ZN9sleepList3addEP3TCBm+0xa4>
                prev->next = tmp;
    80001570:	00a63823          	sd	a0,16(a2)
                tmp->next = curr;
    80001574:	00f53823          	sd	a5,16(a0)
                curr->time -= tmp->time;
    80001578:	00853683          	ld	a3,8(a0)
    8000157c:	0087b703          	ld	a4,8(a5)
    80001580:	40d70733          	sub	a4,a4,a3
    80001584:	00e7b423          	sd	a4,8(a5)
    80001588:	0380006f          	j	800015c0 <_ZN9sleepList3addEP3TCBm+0xd8>
                tmp->next = head;
    8000158c:	00b53823          	sd	a1,16(a0)
                head->time -= tmp->time;
    80001590:	0085b783          	ld	a5,8(a1)
    80001594:	40e78733          	sub	a4,a5,a4
    80001598:	00e5b423          	sd	a4,8(a1)
                head = tmp;
    8000159c:	0000a797          	auipc	a5,0xa
    800015a0:	5aa7ba23          	sd	a0,1460(a5) # 8000bb50 <_ZN9sleepList4headE>
            return;
    800015a4:	01c0006f          	j	800015c0 <_ZN9sleepList3addEP3TCBm+0xd8>
    }
    tail->next = tmp;
    800015a8:	0000a797          	auipc	a5,0xa
    800015ac:	5a878793          	addi	a5,a5,1448 # 8000bb50 <_ZN9sleepList4headE>
    800015b0:	0087b703          	ld	a4,8(a5)
    800015b4:	00a73823          	sd	a0,16(a4)
    tail = tmp;
    800015b8:	00a7b423          	sd	a0,8(a5)
    //novo
    tail->next = nullptr;
    800015bc:	00053823          	sd	zero,16(a0)
}
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	00013903          	ld	s2,0(sp)
    800015d0:	02010113          	addi	sp,sp,32
    800015d4:	00008067          	ret

00000000800015d8 <_ZN9sleepList5clockEv>:

void sleepList::clock()
{
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00813423          	sd	s0,8(sp)
    800015e0:	01010413          	addi	s0,sp,16
    if(head)
    800015e4:	0000a797          	auipc	a5,0xa
    800015e8:	56c7b783          	ld	a5,1388(a5) # 8000bb50 <_ZN9sleepList4headE>
    800015ec:	00078863          	beqz	a5,800015fc <_ZN9sleepList5clockEv+0x24>
    {
        head->time--;
    800015f0:	0087b703          	ld	a4,8(a5)
    800015f4:	fff70713          	addi	a4,a4,-1
    800015f8:	00e7b423          	sd	a4,8(a5)
    }
}
    800015fc:	00813403          	ld	s0,8(sp)
    80001600:	01010113          	addi	sp,sp,16
    80001604:	00008067          	ret

0000000080001608 <_ZN9sleepList11removeFirstEv>:
        Scheduler::put(tmp);
    }
}

TCB * sleepList::removeFirst()
{
    80001608:	fe010113          	addi	sp,sp,-32
    8000160c:	00113c23          	sd	ra,24(sp)
    80001610:	00813823          	sd	s0,16(sp)
    80001614:	00913423          	sd	s1,8(sp)
    80001618:	02010413          	addi	s0,sp,32
    if (!head) { return nullptr; }
    8000161c:	0000a517          	auipc	a0,0xa
    80001620:	53453503          	ld	a0,1332(a0) # 8000bb50 <_ZN9sleepList4headE>
    80001624:	04050263          	beqz	a0,80001668 <_ZN9sleepList11removeFirstEv+0x60>

    Elem *elem = head;
    head = head->next;
    80001628:	01053783          	ld	a5,16(a0)
    8000162c:	0000a717          	auipc	a4,0xa
    80001630:	52f73223          	sd	a5,1316(a4) # 8000bb50 <_ZN9sleepList4headE>
    if (!head) { tail = nullptr; }
    80001634:	02078463          	beqz	a5,8000165c <_ZN9sleepList11removeFirstEv+0x54>

    TCB *ret = elem->data;
    80001638:	00053483          	ld	s1,0(a0)
    delete elem;
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	e84080e7          	jalr	-380(ra) # 800024c0 <_ZdlPv>
    return ret;
}
    80001644:	00048513          	mv	a0,s1
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	00813483          	ld	s1,8(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret
    if (!head) { tail = nullptr; }
    8000165c:	0000a797          	auipc	a5,0xa
    80001660:	4e07be23          	sd	zero,1276(a5) # 8000bb58 <_ZN9sleepList4tailE>
    80001664:	fd5ff06f          	j	80001638 <_ZN9sleepList11removeFirstEv+0x30>
    if (!head) { return nullptr; }
    80001668:	00050493          	mv	s1,a0
    8000166c:	fd9ff06f          	j	80001644 <_ZN9sleepList11removeFirstEv+0x3c>

0000000080001670 <_ZN9sleepList13cleanFinishedEv>:
        if(head == nullptr || head->time != 0)
    80001670:	0000a797          	auipc	a5,0xa
    80001674:	4e07b783          	ld	a5,1248(a5) # 8000bb50 <_ZN9sleepList4headE>
    80001678:	04078c63          	beqz	a5,800016d0 <_ZN9sleepList13cleanFinishedEv+0x60>
    8000167c:	0087b783          	ld	a5,8(a5)
    80001680:	04079863          	bnez	a5,800016d0 <_ZN9sleepList13cleanFinishedEv+0x60>
{
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00113423          	sd	ra,8(sp)
    8000168c:	00813023          	sd	s0,0(sp)
    80001690:	01010413          	addi	s0,sp,16
    80001694:	00c0006f          	j	800016a0 <_ZN9sleepList13cleanFinishedEv+0x30>
        if(head == nullptr || head->time != 0)
    80001698:	0087b783          	ld	a5,8(a5)
    8000169c:	02079263          	bnez	a5,800016c0 <_ZN9sleepList13cleanFinishedEv+0x50>
        TCB* tmp = removeFirst();
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	f68080e7          	jalr	-152(ra) # 80001608 <_ZN9sleepList11removeFirstEv>
#include "syscall_c.h"
class TCB
{
public:

    void setStatus(int s) { status = s; }
    800016a8:	02052c23          	sw	zero,56(a0)
        Scheduler::put(tmp);
    800016ac:	00001097          	auipc	ra,0x1
    800016b0:	59c080e7          	jalr	1436(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
        if(head == nullptr || head->time != 0)
    800016b4:	0000a797          	auipc	a5,0xa
    800016b8:	49c7b783          	ld	a5,1180(a5) # 8000bb50 <_ZN9sleepList4headE>
    800016bc:	fc079ee3          	bnez	a5,80001698 <_ZN9sleepList13cleanFinishedEv+0x28>
}
    800016c0:	00813083          	ld	ra,8(sp)
    800016c4:	00013403          	ld	s0,0(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret
    800016d0:	00008067          	ret

00000000800016d4 <_ZN9sleepList13peekFirstTimeEv>:

time_t sleepList::peekFirstTime()
{
    800016d4:	ff010113          	addi	sp,sp,-16
    800016d8:	00813423          	sd	s0,8(sp)
    800016dc:	01010413          	addi	s0,sp,16
    if (!head) { return 0; }
    800016e0:	0000a797          	auipc	a5,0xa
    800016e4:	4707b783          	ld	a5,1136(a5) # 8000bb50 <_ZN9sleepList4headE>
    800016e8:	00078a63          	beqz	a5,800016fc <_ZN9sleepList13peekFirstTimeEv+0x28>
    return head->time;
    800016ec:	0087b503          	ld	a0,8(a5)
}
    800016f0:	00813403          	ld	s0,8(sp)
    800016f4:	01010113          	addi	sp,sp,16
    800016f8:	00008067          	ret
    if (!head) { return 0; }
    800016fc:	00000513          	li	a0,0
    80001700:	ff1ff06f          	j	800016f0 <_ZN9sleepList13peekFirstTimeEv+0x1c>

0000000080001704 <_ZN9sleepList10removeLastEv>:

TCB * sleepList::removeLast()
{
    80001704:	fe010113          	addi	sp,sp,-32
    80001708:	00113c23          	sd	ra,24(sp)
    8000170c:	00813823          	sd	s0,16(sp)
    80001710:	00913423          	sd	s1,8(sp)
    80001714:	02010413          	addi	s0,sp,32
    if (!head) { return 0; }
    80001718:	0000a497          	auipc	s1,0xa
    8000171c:	4384b483          	ld	s1,1080(s1) # 8000bb50 <_ZN9sleepList4headE>
    80001720:	04048663          	beqz	s1,8000176c <_ZN9sleepList10removeLastEv+0x68>

    Elem *prev = 0;
    80001724:	00000713          	li	a4,0
    for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    80001728:	00048e63          	beqz	s1,80001744 <_ZN9sleepList10removeLastEv+0x40>
    8000172c:	0000a797          	auipc	a5,0xa
    80001730:	42c7b783          	ld	a5,1068(a5) # 8000bb58 <_ZN9sleepList4tailE>
    80001734:	00978863          	beq	a5,s1,80001744 <_ZN9sleepList10removeLastEv+0x40>
    {
        prev = curr;
    80001738:	00048713          	mv	a4,s1
    for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    8000173c:	0104b483          	ld	s1,16(s1)
    80001740:	fe9ff06f          	j	80001728 <_ZN9sleepList10removeLastEv+0x24>
    }

    Elem *elem = tail;
    80001744:	0000a517          	auipc	a0,0xa
    80001748:	41453503          	ld	a0,1044(a0) # 8000bb58 <_ZN9sleepList4tailE>
    if (prev) { prev->next = 0; }
    8000174c:	02070c63          	beqz	a4,80001784 <_ZN9sleepList10removeLastEv+0x80>
    80001750:	00073823          	sd	zero,16(a4)
    else { head = 0; }
    tail = prev;
    80001754:	0000a797          	auipc	a5,0xa
    80001758:	40e7b223          	sd	a4,1028(a5) # 8000bb58 <_ZN9sleepList4tailE>

    TCB *ret = elem->data;
    8000175c:	00053483          	ld	s1,0(a0)
    delete elem;
    80001760:	00050663          	beqz	a0,8000176c <_ZN9sleepList10removeLastEv+0x68>
    80001764:	00001097          	auipc	ra,0x1
    80001768:	d5c080e7          	jalr	-676(ra) # 800024c0 <_ZdlPv>
    return ret;
}
    8000176c:	00048513          	mv	a0,s1
    80001770:	01813083          	ld	ra,24(sp)
    80001774:	01013403          	ld	s0,16(sp)
    80001778:	00813483          	ld	s1,8(sp)
    8000177c:	02010113          	addi	sp,sp,32
    80001780:	00008067          	ret
    else { head = 0; }
    80001784:	0000a797          	auipc	a5,0xa
    80001788:	3c07b623          	sd	zero,972(a5) # 8000bb50 <_ZN9sleepList4headE>
    8000178c:	fc9ff06f          	j	80001754 <_ZN9sleepList10removeLastEv+0x50>

0000000080001790 <_ZN9sleepList12peekLastTimeEv>:

time_t sleepList::peekLastTime()
{
    80001790:	ff010113          	addi	sp,sp,-16
    80001794:	00813423          	sd	s0,8(sp)
    80001798:	01010413          	addi	s0,sp,16
    if (!tail) { return 0; }
    8000179c:	0000a797          	auipc	a5,0xa
    800017a0:	3bc7b783          	ld	a5,956(a5) # 8000bb58 <_ZN9sleepList4tailE>
    800017a4:	00078a63          	beqz	a5,800017b8 <_ZN9sleepList12peekLastTimeEv+0x28>
    return tail->time;
    800017a8:	0087b503          	ld	a0,8(a5)
    800017ac:	00813403          	ld	s0,8(sp)
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret
    if (!tail) { return 0; }
    800017b8:	00000513          	li	a0,0
    800017bc:	ff1ff06f          	j	800017ac <_ZN9sleepList12peekLastTimeEv+0x1c>

00000000800017c0 <_ZL9fibonaccim>:
    printInteger(r);
    mprintString(" Povratna iz thread_exit B\n");
}

static uint64 fibonacci(uint64 n)
{
    800017c0:	fe010113          	addi	sp,sp,-32
    800017c4:	00113c23          	sd	ra,24(sp)
    800017c8:	00813823          	sd	s0,16(sp)
    800017cc:	00913423          	sd	s1,8(sp)
    800017d0:	01213023          	sd	s2,0(sp)
    800017d4:	02010413          	addi	s0,sp,32
    800017d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800017dc:	00100793          	li	a5,1
    800017e0:	02a7f863          	bgeu	a5,a0,80001810 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    800017e4:	00a00793          	li	a5,10
    800017e8:	02f577b3          	remu	a5,a0,a5
    800017ec:	02078e63          	beqz	a5,80001828 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800017f0:	fff48513          	addi	a0,s1,-1
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	fcc080e7          	jalr	-52(ra) # 800017c0 <_ZL9fibonaccim>
    800017fc:	00050913          	mv	s2,a0
    80001800:	ffe48513          	addi	a0,s1,-2
    80001804:	00000097          	auipc	ra,0x0
    80001808:	fbc080e7          	jalr	-68(ra) # 800017c0 <_ZL9fibonaccim>
    8000180c:	00a90533          	add	a0,s2,a0
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	00013903          	ld	s2,0(sp)
    80001820:	02010113          	addi	sp,sp,32
    80001824:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001828:	00001097          	auipc	ra,0x1
    8000182c:	b4c080e7          	jalr	-1204(ra) # 80002374 <_ZN3TCB5yieldEv>
    80001830:	fc1ff06f          	j	800017f0 <_ZL9fibonaccim+0x30>

0000000080001834 <_Z12mworkerBodyAPv>:
{
    80001834:	fe010113          	addi	sp,sp,-32
    80001838:	00113c23          	sd	ra,24(sp)
    8000183c:	00813823          	sd	s0,16(sp)
    80001840:	00913423          	sd	s1,8(sp)
    80001844:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001848:	00000493          	li	s1,0
    8000184c:	0300006f          	j	8000187c <_Z12mworkerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001850:	00168693          	addi	a3,a3,1
    80001854:	000027b7          	lui	a5,0x2
    80001858:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000185c:	00d7ee63          	bltu	a5,a3,80001878 <_Z12mworkerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001860:	00000713          	li	a4,0
    80001864:	000077b7          	lui	a5,0x7
    80001868:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000186c:	fee7e2e3          	bltu	a5,a4,80001850 <_Z12mworkerBodyAPv+0x1c>
    80001870:	00170713          	addi	a4,a4,1
    80001874:	ff1ff06f          	j	80001864 <_Z12mworkerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001878:	00148493          	addi	s1,s1,1
    8000187c:	00900793          	li	a5,9
    80001880:	0297ec63          	bltu	a5,s1,800018b8 <_Z12mworkerBodyAPv+0x84>
        mprintString("A: i=");
    80001884:	00007517          	auipc	a0,0x7
    80001888:	79c50513          	addi	a0,a0,1948 # 80009020 <CONSOLE_STATUS+0x10>
    8000188c:	00002097          	auipc	ra,0x2
    80001890:	adc080e7          	jalr	-1316(ra) # 80003368 <_Z12mprintStringPKc>
        printInteger(i);
    80001894:	00048513          	mv	a0,s1
    80001898:	00002097          	auipc	ra,0x2
    8000189c:	b14080e7          	jalr	-1260(ra) # 800033ac <_Z12printIntegerm>
        mprintString("\n");
    800018a0:	00008517          	auipc	a0,0x8
    800018a4:	bb850513          	addi	a0,a0,-1096 # 80009458 <CONSOLE_STATUS+0x448>
    800018a8:	00002097          	auipc	ra,0x2
    800018ac:	ac0080e7          	jalr	-1344(ra) # 80003368 <_Z12mprintStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800018b0:	00000693          	li	a3,0
    800018b4:	fa1ff06f          	j	80001854 <_Z12mworkerBodyAPv+0x20>
    mprintString("\n");
    800018b8:	00008517          	auipc	a0,0x8
    800018bc:	ba050513          	addi	a0,a0,-1120 # 80009458 <CONSOLE_STATUS+0x448>
    800018c0:	00002097          	auipc	ra,0x2
    800018c4:	aa8080e7          	jalr	-1368(ra) # 80003368 <_Z12mprintStringPKc>
    int r = thread_exit();
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	a48080e7          	jalr	-1464(ra) # 80001310 <_Z11thread_exitv>
    printInteger(r);
    800018d0:	00002097          	auipc	ra,0x2
    800018d4:	adc080e7          	jalr	-1316(ra) # 800033ac <_Z12printIntegerm>
    mprintString(" Povratna iz thread_exit A\n");
    800018d8:	00007517          	auipc	a0,0x7
    800018dc:	75050513          	addi	a0,a0,1872 # 80009028 <CONSOLE_STATUS+0x18>
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	a88080e7          	jalr	-1400(ra) # 80003368 <_Z12mprintStringPKc>
}
    800018e8:	01813083          	ld	ra,24(sp)
    800018ec:	01013403          	ld	s0,16(sp)
    800018f0:	00813483          	ld	s1,8(sp)
    800018f4:	02010113          	addi	sp,sp,32
    800018f8:	00008067          	ret

00000000800018fc <_Z12mworkerBodyBPv>:
{
    800018fc:	fe010113          	addi	sp,sp,-32
    80001900:	00113c23          	sd	ra,24(sp)
    80001904:	00813823          	sd	s0,16(sp)
    80001908:	00913423          	sd	s1,8(sp)
    8000190c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001910:	00000493          	li	s1,0
    80001914:	0300006f          	j	80001944 <_Z12mworkerBodyBPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001918:	00168693          	addi	a3,a3,1
    8000191c:	000027b7          	lui	a5,0x2
    80001920:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001924:	00d7ee63          	bltu	a5,a3,80001940 <_Z12mworkerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001928:	00000713          	li	a4,0
    8000192c:	000077b7          	lui	a5,0x7
    80001930:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001934:	fee7e2e3          	bltu	a5,a4,80001918 <_Z12mworkerBodyBPv+0x1c>
    80001938:	00170713          	addi	a4,a4,1
    8000193c:	ff1ff06f          	j	8000192c <_Z12mworkerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001940:	00148493          	addi	s1,s1,1
    80001944:	00f00793          	li	a5,15
    80001948:	0297ec63          	bltu	a5,s1,80001980 <_Z12mworkerBodyBPv+0x84>
        mprintString("B: i=");
    8000194c:	00007517          	auipc	a0,0x7
    80001950:	6fc50513          	addi	a0,a0,1788 # 80009048 <CONSOLE_STATUS+0x38>
    80001954:	00002097          	auipc	ra,0x2
    80001958:	a14080e7          	jalr	-1516(ra) # 80003368 <_Z12mprintStringPKc>
        printInteger(i);
    8000195c:	00048513          	mv	a0,s1
    80001960:	00002097          	auipc	ra,0x2
    80001964:	a4c080e7          	jalr	-1460(ra) # 800033ac <_Z12printIntegerm>
        mprintString("\n");
    80001968:	00008517          	auipc	a0,0x8
    8000196c:	af050513          	addi	a0,a0,-1296 # 80009458 <CONSOLE_STATUS+0x448>
    80001970:	00002097          	auipc	ra,0x2
    80001974:	9f8080e7          	jalr	-1544(ra) # 80003368 <_Z12mprintStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001978:	00000693          	li	a3,0
    8000197c:	fa1ff06f          	j	8000191c <_Z12mworkerBodyBPv+0x20>
    mprintString("\n");
    80001980:	00008517          	auipc	a0,0x8
    80001984:	ad850513          	addi	a0,a0,-1320 # 80009458 <CONSOLE_STATUS+0x448>
    80001988:	00002097          	auipc	ra,0x2
    8000198c:	9e0080e7          	jalr	-1568(ra) # 80003368 <_Z12mprintStringPKc>
    int r = thread_exit();
    80001990:	00000097          	auipc	ra,0x0
    80001994:	980080e7          	jalr	-1664(ra) # 80001310 <_Z11thread_exitv>
    printInteger(r);
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	a14080e7          	jalr	-1516(ra) # 800033ac <_Z12printIntegerm>
    mprintString(" Povratna iz thread_exit B\n");
    800019a0:	00007517          	auipc	a0,0x7
    800019a4:	6b050513          	addi	a0,a0,1712 # 80009050 <CONSOLE_STATUS+0x40>
    800019a8:	00002097          	auipc	ra,0x2
    800019ac:	9c0080e7          	jalr	-1600(ra) # 80003368 <_Z12mprintStringPKc>
}
    800019b0:	01813083          	ld	ra,24(sp)
    800019b4:	01013403          	ld	s0,16(sp)
    800019b8:	00813483          	ld	s1,8(sp)
    800019bc:	02010113          	addi	sp,sp,32
    800019c0:	00008067          	ret

00000000800019c4 <_Z12mworkerBodyCPv>:

void mworkerBodyC(void* arg)
{
    800019c4:	fe010113          	addi	sp,sp,-32
    800019c8:	00113c23          	sd	ra,24(sp)
    800019cc:	00813823          	sd	s0,16(sp)
    800019d0:	00913423          	sd	s1,8(sp)
    800019d4:	01213023          	sd	s2,0(sp)
    800019d8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800019dc:	00000493          	li	s1,0
    800019e0:	0380006f          	j	80001a18 <_Z12mworkerBodyCPv+0x54>
    for (; i < 3; i++)
    {
        mprintString("C: i=");
    800019e4:	00007517          	auipc	a0,0x7
    800019e8:	68c50513          	addi	a0,a0,1676 # 80009070 <CONSOLE_STATUS+0x60>
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	97c080e7          	jalr	-1668(ra) # 80003368 <_Z12mprintStringPKc>
        printInteger(i);
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00002097          	auipc	ra,0x2
    800019fc:	9b4080e7          	jalr	-1612(ra) # 800033ac <_Z12printIntegerm>
        mprintString("\n");
    80001a00:	00008517          	auipc	a0,0x8
    80001a04:	a5850513          	addi	a0,a0,-1448 # 80009458 <CONSOLE_STATUS+0x448>
    80001a08:	00002097          	auipc	ra,0x2
    80001a0c:	960080e7          	jalr	-1696(ra) # 80003368 <_Z12mprintStringPKc>
    for (; i < 3; i++)
    80001a10:	0014849b          	addiw	s1,s1,1
    80001a14:	0ff4f493          	andi	s1,s1,255
    80001a18:	00200793          	li	a5,2
    80001a1c:	fc97f4e3          	bgeu	a5,s1,800019e4 <_Z12mworkerBodyCPv+0x20>
    }

    mprintString("C: yield\n");
    80001a20:	00007517          	auipc	a0,0x7
    80001a24:	65850513          	addi	a0,a0,1624 # 80009078 <CONSOLE_STATUS+0x68>
    80001a28:	00002097          	auipc	ra,0x2
    80001a2c:	940080e7          	jalr	-1728(ra) # 80003368 <_Z12mprintStringPKc>
    __asm__ ("li t1, 7");
    80001a30:	00700313          	li	t1,7
    TCB::yield();
    80001a34:	00001097          	auipc	ra,0x1
    80001a38:	940080e7          	jalr	-1728(ra) # 80002374 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001a3c:	00030913          	mv	s2,t1

    mprintString("C: t1=");
    80001a40:	00007517          	auipc	a0,0x7
    80001a44:	64850513          	addi	a0,a0,1608 # 80009088 <CONSOLE_STATUS+0x78>
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	920080e7          	jalr	-1760(ra) # 80003368 <_Z12mprintStringPKc>
    printInteger(t1);
    80001a50:	00090513          	mv	a0,s2
    80001a54:	00002097          	auipc	ra,0x2
    80001a58:	958080e7          	jalr	-1704(ra) # 800033ac <_Z12printIntegerm>
    mprintString("\n");
    80001a5c:	00008517          	auipc	a0,0x8
    80001a60:	9fc50513          	addi	a0,a0,-1540 # 80009458 <CONSOLE_STATUS+0x448>
    80001a64:	00002097          	auipc	ra,0x2
    80001a68:	904080e7          	jalr	-1788(ra) # 80003368 <_Z12mprintStringPKc>

    uint64 result = fibonacci(12);
    80001a6c:	00c00513          	li	a0,12
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	d50080e7          	jalr	-688(ra) # 800017c0 <_ZL9fibonaccim>
    80001a78:	00050913          	mv	s2,a0
    mprintString("C: fibonaci=");
    80001a7c:	00007517          	auipc	a0,0x7
    80001a80:	61450513          	addi	a0,a0,1556 # 80009090 <CONSOLE_STATUS+0x80>
    80001a84:	00002097          	auipc	ra,0x2
    80001a88:	8e4080e7          	jalr	-1820(ra) # 80003368 <_Z12mprintStringPKc>
    printInteger(result);
    80001a8c:	00090513          	mv	a0,s2
    80001a90:	00002097          	auipc	ra,0x2
    80001a94:	91c080e7          	jalr	-1764(ra) # 800033ac <_Z12printIntegerm>
    mprintString("\n");
    80001a98:	00008517          	auipc	a0,0x8
    80001a9c:	9c050513          	addi	a0,a0,-1600 # 80009458 <CONSOLE_STATUS+0x448>
    80001aa0:	00002097          	auipc	ra,0x2
    80001aa4:	8c8080e7          	jalr	-1848(ra) # 80003368 <_Z12mprintStringPKc>
    80001aa8:	0380006f          	j	80001ae0 <_Z12mworkerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        mprintString("C: i=");
    80001aac:	00007517          	auipc	a0,0x7
    80001ab0:	5c450513          	addi	a0,a0,1476 # 80009070 <CONSOLE_STATUS+0x60>
    80001ab4:	00002097          	auipc	ra,0x2
    80001ab8:	8b4080e7          	jalr	-1868(ra) # 80003368 <_Z12mprintStringPKc>
        printInteger(i);
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	00002097          	auipc	ra,0x2
    80001ac4:	8ec080e7          	jalr	-1812(ra) # 800033ac <_Z12printIntegerm>
        mprintString("\n");
    80001ac8:	00008517          	auipc	a0,0x8
    80001acc:	99050513          	addi	a0,a0,-1648 # 80009458 <CONSOLE_STATUS+0x448>
    80001ad0:	00002097          	auipc	ra,0x2
    80001ad4:	898080e7          	jalr	-1896(ra) # 80003368 <_Z12mprintStringPKc>
    for (; i < 6; i++)
    80001ad8:	0014849b          	addiw	s1,s1,1
    80001adc:	0ff4f493          	andi	s1,s1,255
    80001ae0:	00500793          	li	a5,5
    80001ae4:	fc97f4e3          	bgeu	a5,s1,80001aac <_Z12mworkerBodyCPv+0xe8>
    }
    mprintString("\n");
    80001ae8:	00008517          	auipc	a0,0x8
    80001aec:	97050513          	addi	a0,a0,-1680 # 80009458 <CONSOLE_STATUS+0x448>
    80001af0:	00002097          	auipc	ra,0x2
    80001af4:	878080e7          	jalr	-1928(ra) # 80003368 <_Z12mprintStringPKc>
    int r = thread_exit();
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	818080e7          	jalr	-2024(ra) # 80001310 <_Z11thread_exitv>
    printInteger(r);
    80001b00:	00002097          	auipc	ra,0x2
    80001b04:	8ac080e7          	jalr	-1876(ra) # 800033ac <_Z12printIntegerm>
    mprintString(" Povratna iz thread_exit C\n");
    80001b08:	00007517          	auipc	a0,0x7
    80001b0c:	59850513          	addi	a0,a0,1432 # 800090a0 <CONSOLE_STATUS+0x90>
    80001b10:	00002097          	auipc	ra,0x2
    80001b14:	858080e7          	jalr	-1960(ra) # 80003368 <_Z12mprintStringPKc>
//    TCB::yield();
}
    80001b18:	01813083          	ld	ra,24(sp)
    80001b1c:	01013403          	ld	s0,16(sp)
    80001b20:	00813483          	ld	s1,8(sp)
    80001b24:	00013903          	ld	s2,0(sp)
    80001b28:	02010113          	addi	sp,sp,32
    80001b2c:	00008067          	ret

0000000080001b30 <_Z12mworkerBodyDPv>:

void mworkerBodyD(void* arg)
{
    80001b30:	fe010113          	addi	sp,sp,-32
    80001b34:	00113c23          	sd	ra,24(sp)
    80001b38:	00813823          	sd	s0,16(sp)
    80001b3c:	00913423          	sd	s1,8(sp)
    80001b40:	01213023          	sd	s2,0(sp)
    80001b44:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001b48:	00a00493          	li	s1,10
    80001b4c:	0380006f          	j	80001b84 <_Z12mworkerBodyDPv+0x54>
    for (; i < 13; i++)
    {
        mprintString("D: i=");
    80001b50:	00007517          	auipc	a0,0x7
    80001b54:	57050513          	addi	a0,a0,1392 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001b58:	00002097          	auipc	ra,0x2
    80001b5c:	810080e7          	jalr	-2032(ra) # 80003368 <_Z12mprintStringPKc>
        printInteger(i);
    80001b60:	00048513          	mv	a0,s1
    80001b64:	00002097          	auipc	ra,0x2
    80001b68:	848080e7          	jalr	-1976(ra) # 800033ac <_Z12printIntegerm>
        mprintString("\n");
    80001b6c:	00008517          	auipc	a0,0x8
    80001b70:	8ec50513          	addi	a0,a0,-1812 # 80009458 <CONSOLE_STATUS+0x448>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	7f4080e7          	jalr	2036(ra) # 80003368 <_Z12mprintStringPKc>
    for (; i < 13; i++)
    80001b7c:	0014849b          	addiw	s1,s1,1
    80001b80:	0ff4f493          	andi	s1,s1,255
    80001b84:	00c00793          	li	a5,12
    80001b88:	fc97f4e3          	bgeu	a5,s1,80001b50 <_Z12mworkerBodyDPv+0x20>
    }

    mprintString("D: yield\n");
    80001b8c:	00007517          	auipc	a0,0x7
    80001b90:	53c50513          	addi	a0,a0,1340 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	7d4080e7          	jalr	2004(ra) # 80003368 <_Z12mprintStringPKc>
    __asm__ ("li t1, 5");
    80001b9c:	00500313          	li	t1,5
    TCB::yield();
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	7d4080e7          	jalr	2004(ra) # 80002374 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001ba8:	01000513          	li	a0,16
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	c14080e7          	jalr	-1004(ra) # 800017c0 <_ZL9fibonaccim>
    80001bb4:	00050913          	mv	s2,a0
    mprintString("D: fibonaci=");
    80001bb8:	00007517          	auipc	a0,0x7
    80001bbc:	52050513          	addi	a0,a0,1312 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001bc0:	00001097          	auipc	ra,0x1
    80001bc4:	7a8080e7          	jalr	1960(ra) # 80003368 <_Z12mprintStringPKc>
    printInteger(result);
    80001bc8:	00090513          	mv	a0,s2
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	7e0080e7          	jalr	2016(ra) # 800033ac <_Z12printIntegerm>
    mprintString("\n");
    80001bd4:	00008517          	auipc	a0,0x8
    80001bd8:	88450513          	addi	a0,a0,-1916 # 80009458 <CONSOLE_STATUS+0x448>
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	78c080e7          	jalr	1932(ra) # 80003368 <_Z12mprintStringPKc>
    80001be4:	0380006f          	j	80001c1c <_Z12mworkerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        mprintString("D: i=");
    80001be8:	00007517          	auipc	a0,0x7
    80001bec:	4d850513          	addi	a0,a0,1240 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001bf0:	00001097          	auipc	ra,0x1
    80001bf4:	778080e7          	jalr	1912(ra) # 80003368 <_Z12mprintStringPKc>
        printInteger(i);
    80001bf8:	00048513          	mv	a0,s1
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	7b0080e7          	jalr	1968(ra) # 800033ac <_Z12printIntegerm>
        mprintString("\n");
    80001c04:	00008517          	auipc	a0,0x8
    80001c08:	85450513          	addi	a0,a0,-1964 # 80009458 <CONSOLE_STATUS+0x448>
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	75c080e7          	jalr	1884(ra) # 80003368 <_Z12mprintStringPKc>
    for (; i < 16; i++)
    80001c14:	0014849b          	addiw	s1,s1,1
    80001c18:	0ff4f493          	andi	s1,s1,255
    80001c1c:	00f00793          	li	a5,15
    80001c20:	fc97f4e3          	bgeu	a5,s1,80001be8 <_Z12mworkerBodyDPv+0xb8>
    }
    mprintString("\n");
    80001c24:	00008517          	auipc	a0,0x8
    80001c28:	83450513          	addi	a0,a0,-1996 # 80009458 <CONSOLE_STATUS+0x448>
    80001c2c:	00001097          	auipc	ra,0x1
    80001c30:	73c080e7          	jalr	1852(ra) # 80003368 <_Z12mprintStringPKc>
    int r = thread_exit();
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	6dc080e7          	jalr	1756(ra) # 80001310 <_Z11thread_exitv>
    printInteger(r);
    80001c3c:	00001097          	auipc	ra,0x1
    80001c40:	770080e7          	jalr	1904(ra) # 800033ac <_Z12printIntegerm>
    mprintString(" Povratna iz thread_exit D\n");
    80001c44:	00007517          	auipc	a0,0x7
    80001c48:	4a450513          	addi	a0,a0,1188 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	71c080e7          	jalr	1820(ra) # 80003368 <_Z12mprintStringPKc>
//    TCB::yield();
    80001c54:	01813083          	ld	ra,24(sp)
    80001c58:	01013403          	ld	s0,16(sp)
    80001c5c:	00813483          	ld	s1,8(sp)
    80001c60:	00013903          	ld	s2,0(sp)
    80001c64:	02010113          	addi	sp,sp,32
    80001c68:	00008067          	ret

0000000080001c6c <_ZN9Semaphore7initSemEi>:
#include "../h/semaphore.hpp"

#include "../h/sleepList.hpp"

Semaphore* Semaphore::initSem(int val)
{
    80001c6c:	fe010113          	addi	sp,sp,-32
    80001c70:	00113c23          	sd	ra,24(sp)
    80001c74:	00813823          	sd	s0,16(sp)
    80001c78:	00913423          	sd	s1,8(sp)
    80001c7c:	02010413          	addi	s0,sp,32
    80001c80:	00050493          	mv	s1,a0
    return new Semaphore(val);
    80001c84:	02000513          	li	a0,32
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	7e8080e7          	jalr	2024(ra) # 80002470 <_Znwm>
    {
        return closed;
    }

private:
    Semaphore(int val = 1) : value(val) {}
    80001c90:	00952023          	sw	s1,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001c94:	00053423          	sd	zero,8(a0)
    80001c98:	00053823          	sd	zero,16(a0)
    80001c9c:	00050c23          	sb	zero,24(a0)
}
    80001ca0:	01813083          	ld	ra,24(sp)
    80001ca4:	01013403          	ld	s0,16(sp)
    80001ca8:	00813483          	ld	s1,8(sp)
    80001cac:	02010113          	addi	sp,sp,32
    80001cb0:	00008067          	ret

0000000080001cb4 <_ZN9Semaphore5closeEv>:

int Semaphore::close()
{
    if(closed)
    80001cb4:	01854783          	lbu	a5,24(a0)
    80001cb8:	06079663          	bnez	a5,80001d24 <_ZN9Semaphore5closeEv+0x70>
{
    80001cbc:	fe010113          	addi	sp,sp,-32
    80001cc0:	00113c23          	sd	ra,24(sp)
    80001cc4:	00813823          	sd	s0,16(sp)
    80001cc8:	00913423          	sd	s1,8(sp)
    80001ccc:	01213023          	sd	s2,0(sp)
    80001cd0:	02010413          	addi	s0,sp,32
    80001cd4:	00050493          	mv	s1,a0
    {
        return -1;
    }
    closed = true;
    80001cd8:	00100793          	li	a5,1
    80001cdc:	00f50c23          	sb	a5,24(a0)
    80001ce0:	0240006f          	j	80001d04 <_ZN9Semaphore5closeEv+0x50>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001ce4:	0004b823          	sd	zero,16(s1)

        T *ret = elem->data;
    80001ce8:	00053903          	ld	s2,0(a0)
        delete elem;
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	7d4080e7          	jalr	2004(ra) # 800024c0 <_ZdlPv>
    80001cf4:	02092c23          	sw	zero,56(s2)

    while(blocked.peekFirst())
    {
        TCB* tmp = blocked.removeFirst();
        tmp->setStatus(0);
        Scheduler::put(tmp);
    80001cf8:	00090513          	mv	a0,s2
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	f4c080e7          	jalr	-180(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001d04:	0084b503          	ld	a0,8(s1)
    80001d08:	02050263          	beqz	a0,80001d2c <_ZN9Semaphore5closeEv+0x78>
        return head->data;
    80001d0c:	00053783          	ld	a5,0(a0)
    while(blocked.peekFirst())
    80001d10:	02078c63          	beqz	a5,80001d48 <_ZN9Semaphore5closeEv+0x94>
        head = head->next;
    80001d14:	00853783          	ld	a5,8(a0)
    80001d18:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001d1c:	fc0796e3          	bnez	a5,80001ce8 <_ZN9Semaphore5closeEv+0x34>
    80001d20:	fc5ff06f          	j	80001ce4 <_ZN9Semaphore5closeEv+0x30>
        return -1;
    80001d24:	fff00513          	li	a0,-1
    }
    return 0;
}
    80001d28:	00008067          	ret
    return 0;
    80001d2c:	00000513          	li	a0,0
}
    80001d30:	01813083          	ld	ra,24(sp)
    80001d34:	01013403          	ld	s0,16(sp)
    80001d38:	00813483          	ld	s1,8(sp)
    80001d3c:	00013903          	ld	s2,0(sp)
    80001d40:	02010113          	addi	sp,sp,32
    80001d44:	00008067          	ret
    return 0;
    80001d48:	00000513          	li	a0,0
    80001d4c:	fe5ff06f          	j	80001d30 <_ZN9Semaphore5closeEv+0x7c>

0000000080001d50 <_ZN9Semaphore5mwaitEv>:

int Semaphore::mwait()
{
    //lock
    if(closed)
    80001d50:	01854783          	lbu	a5,24(a0)
    80001d54:	0a079e63          	bnez	a5,80001e10 <_ZN9Semaphore5mwaitEv+0xc0>
{
    80001d58:	fe010113          	addi	sp,sp,-32
    80001d5c:	00113c23          	sd	ra,24(sp)
    80001d60:	00813823          	sd	s0,16(sp)
    80001d64:	00913423          	sd	s1,8(sp)
    80001d68:	01213023          	sd	s2,0(sp)
    80001d6c:	02010413          	addi	s0,sp,32
    80001d70:	00050493          	mv	s1,a0
    {
        return -1;
    }
    if(--value < 0)
    80001d74:	00052783          	lw	a5,0(a0)
    80001d78:	fff7879b          	addiw	a5,a5,-1
    80001d7c:	00f52023          	sw	a5,0(a0)
    80001d80:	02079713          	slli	a4,a5,0x20
    80001d84:	02074063          	bltz	a4,80001da4 <_ZN9Semaphore5mwaitEv+0x54>
        {
            return -2;
        }
    }
    //unlock
    return 0;
    80001d88:	00000513          	li	a0,0
}
    80001d8c:	01813083          	ld	ra,24(sp)
    80001d90:	01013403          	ld	s0,16(sp)
    80001d94:	00813483          	ld	s1,8(sp)
    80001d98:	00013903          	ld	s2,0(sp)
    80001d9c:	02010113          	addi	sp,sp,32
    80001da0:	00008067          	ret
        blocked.addLast(TCB::running);
    80001da4:	0000a797          	auipc	a5,0xa
    80001da8:	d547b783          	ld	a5,-684(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001dac:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    80001db0:	01000513          	li	a0,16
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	6bc080e7          	jalr	1724(ra) # 80002470 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001dbc:	01253023          	sd	s2,0(a0)
    80001dc0:	00053423          	sd	zero,8(a0)
        if (tail)
    80001dc4:	0104b783          	ld	a5,16(s1)
    80001dc8:	02078e63          	beqz	a5,80001e04 <_ZN9Semaphore5mwaitEv+0xb4>
            tail->next = elem;
    80001dcc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001dd0:	00a4b823          	sd	a0,16(s1)
        int status = TCB::running->readStatus();
    80001dd4:	0000a797          	auipc	a5,0xa
    80001dd8:	d247b783          	ld	a5,-732(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001ddc:	0007b703          	ld	a4,0(a5)
    //s = 01 (1)blocked
    //s = 10 (2)sleeping
    //s = 11 (3)blocked i sleeping
    int readStatus(){ return status; }
    80001de0:	03872783          	lw	a5,56(a4)
        status = status | 1;
    80001de4:	0017e793          	ori	a5,a5,1
    void setStatus(int s) { status = s; }
    80001de8:	02f72c23          	sw	a5,56(a4)
        thread_dispatch();
    80001dec:	fffff097          	auipc	ra,0xfffff
    80001df0:	500080e7          	jalr	1280(ra) # 800012ec <_Z15thread_dispatchv>
        if(closed)
    80001df4:	0184c783          	lbu	a5,24(s1)
    80001df8:	02079063          	bnez	a5,80001e18 <_ZN9Semaphore5mwaitEv+0xc8>
    return 0;
    80001dfc:	00000513          	li	a0,0
    80001e00:	f8dff06f          	j	80001d8c <_ZN9Semaphore5mwaitEv+0x3c>
            head = tail = elem;
    80001e04:	00a4b823          	sd	a0,16(s1)
    80001e08:	00a4b423          	sd	a0,8(s1)
    80001e0c:	fc9ff06f          	j	80001dd4 <_ZN9Semaphore5mwaitEv+0x84>
        return -1;
    80001e10:	fff00513          	li	a0,-1
}
    80001e14:	00008067          	ret
            return -2;
    80001e18:	ffe00513          	li	a0,-2
    80001e1c:	f71ff06f          	j	80001d8c <_ZN9Semaphore5mwaitEv+0x3c>

0000000080001e20 <_ZN9Semaphore7msignalEv>:

int Semaphore::msignal()
{
    if(closed)
    80001e20:	01854703          	lbu	a4,24(a0)
    80001e24:	08071863          	bnez	a4,80001eb4 <_ZN9Semaphore7msignalEv+0x94>
    80001e28:	00050793          	mv	a5,a0
    {
        return -1;
    }
    if(++value <= 0)
    80001e2c:	00052703          	lw	a4,0(a0)
    80001e30:	0017071b          	addiw	a4,a4,1
    80001e34:	0007069b          	sext.w	a3,a4
    80001e38:	00e52023          	sw	a4,0(a0)
    80001e3c:	08d04063          	bgtz	a3,80001ebc <_ZN9Semaphore7msignalEv+0x9c>
        if (!head) { return 0; }
    80001e40:	00853503          	ld	a0,8(a0)
    80001e44:	08050063          	beqz	a0,80001ec4 <_ZN9Semaphore7msignalEv+0xa4>
{
    80001e48:	fe010113          	addi	sp,sp,-32
    80001e4c:	00113c23          	sd	ra,24(sp)
    80001e50:	00813823          	sd	s0,16(sp)
    80001e54:	00913423          	sd	s1,8(sp)
    80001e58:	02010413          	addi	s0,sp,32
        head = head->next;
    80001e5c:	00853703          	ld	a4,8(a0)
    80001e60:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80001e64:	04070463          	beqz	a4,80001eac <_ZN9Semaphore7msignalEv+0x8c>
        T *ret = elem->data;
    80001e68:	00053483          	ld	s1,0(a0)
        delete elem;
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	654080e7          	jalr	1620(ra) # 800024c0 <_ZdlPv>
    {
        TCB* tmp = blocked.removeFirst();
        if(tmp)
    80001e74:	04048c63          	beqz	s1,80001ecc <_ZN9Semaphore7msignalEv+0xac>
    int readStatus(){ return status; }
    80001e78:	0384a783          	lw	a5,56(s1)
        {
            int status = tmp->readStatus();
            status = status & 1;
    80001e7c:	0017f793          	andi	a5,a5,1
            if(status)
    80001e80:	04078a63          	beqz	a5,80001ed4 <_ZN9Semaphore7msignalEv+0xb4>
    void setStatus(int s) { status = s; }
    80001e84:	0204ac23          	sw	zero,56(s1)
            {
                tmp->setStatus(0);
                Scheduler::put(tmp);
    80001e88:	00048513          	mv	a0,s1
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	dbc080e7          	jalr	-580(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
                return 0;
    80001e94:	00000513          	li	a0,0
            }
        }
    }
    return -2;
}
    80001e98:	01813083          	ld	ra,24(sp)
    80001e9c:	01013403          	ld	s0,16(sp)
    80001ea0:	00813483          	ld	s1,8(sp)
    80001ea4:	02010113          	addi	sp,sp,32
    80001ea8:	00008067          	ret
        if (!head) { tail = 0; }
    80001eac:	0007b823          	sd	zero,16(a5)
    80001eb0:	fb9ff06f          	j	80001e68 <_ZN9Semaphore7msignalEv+0x48>
        return -1;
    80001eb4:	fff00513          	li	a0,-1
    80001eb8:	00008067          	ret
    return -2;
    80001ebc:	ffe00513          	li	a0,-2
    80001ec0:	00008067          	ret
    80001ec4:	ffe00513          	li	a0,-2
}
    80001ec8:	00008067          	ret
    return -2;
    80001ecc:	ffe00513          	li	a0,-2
    80001ed0:	fc9ff06f          	j	80001e98 <_ZN9Semaphore7msignalEv+0x78>
    80001ed4:	ffe00513          	li	a0,-2
    80001ed8:	fc1ff06f          	j	80001e98 <_ZN9Semaphore7msignalEv+0x78>

0000000080001edc <_ZN9Semaphore13sem_timedwaitEm>:

int Semaphore::sem_timedwait(time_t timeout)
{
    if(closed)
    80001edc:	01854783          	lbu	a5,24(a0)
    80001ee0:	0e079c63          	bnez	a5,80001fd8 <_ZN9Semaphore13sem_timedwaitEm+0xfc>
{
    80001ee4:	fd010113          	addi	sp,sp,-48
    80001ee8:	02113423          	sd	ra,40(sp)
    80001eec:	02813023          	sd	s0,32(sp)
    80001ef0:	00913c23          	sd	s1,24(sp)
    80001ef4:	01213823          	sd	s2,16(sp)
    80001ef8:	01313423          	sd	s3,8(sp)
    80001efc:	03010413          	addi	s0,sp,48
    80001f00:	00050493          	mv	s1,a0
    80001f04:	00058913          	mv	s2,a1
    {
        return -1;
    }
    if(--value < 0)
    80001f08:	00052783          	lw	a5,0(a0)
    80001f0c:	fff7879b          	addiw	a5,a5,-1
    80001f10:	00f52023          	sw	a5,0(a0)
    80001f14:	02079713          	slli	a4,a5,0x20
    80001f18:	02074263          	bltz	a4,80001f3c <_ZN9Semaphore13sem_timedwaitEm+0x60>
        if(TCB::running->readStatus() != 0)
        {
            return -3;
        }
    }
    return 0;
    80001f1c:	00000513          	li	a0,0
}
    80001f20:	02813083          	ld	ra,40(sp)
    80001f24:	02013403          	ld	s0,32(sp)
    80001f28:	01813483          	ld	s1,24(sp)
    80001f2c:	01013903          	ld	s2,16(sp)
    80001f30:	00813983          	ld	s3,8(sp)
    80001f34:	03010113          	addi	sp,sp,48
    80001f38:	00008067          	ret
        if(TCB::running->readStatus() == 2 || TCB::running->readStatus() == 3)
    80001f3c:	0000a797          	auipc	a5,0xa
    80001f40:	bbc7b783          	ld	a5,-1092(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001f44:	0007b983          	ld	s3,0(a5)
    int readStatus(){ return status; }
    80001f48:	0389a783          	lw	a5,56(s3)
    80001f4c:	00200713          	li	a4,2
    80001f50:	08e78863          	beq	a5,a4,80001fe0 <_ZN9Semaphore13sem_timedwaitEm+0x104>
    80001f54:	00300713          	li	a4,3
    80001f58:	08e78863          	beq	a5,a4,80001fe8 <_ZN9Semaphore13sem_timedwaitEm+0x10c>
        Elem *elem = new Elem(data, 0);
    80001f5c:	01000513          	li	a0,16
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	510080e7          	jalr	1296(ra) # 80002470 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001f68:	01353023          	sd	s3,0(a0)
    80001f6c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001f70:	0104b783          	ld	a5,16(s1)
    80001f74:	04078c63          	beqz	a5,80001fcc <_ZN9Semaphore13sem_timedwaitEm+0xf0>
            tail->next = elem;
    80001f78:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001f7c:	00a4b823          	sd	a0,16(s1)
        TCB::running->setStatus(3);
    80001f80:	0000a797          	auipc	a5,0xa
    80001f84:	b787b783          	ld	a5,-1160(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001f88:	0007b503          	ld	a0,0(a5)
    void setStatus(int s) { status = s; }
    80001f8c:	00300793          	li	a5,3
    80001f90:	02f52c23          	sw	a5,56(a0)
        sleepList::add(TCB::running, timeout);
    80001f94:	00090593          	mv	a1,s2
    80001f98:	fffff097          	auipc	ra,0xfffff
    80001f9c:	550080e7          	jalr	1360(ra) # 800014e8 <_ZN9sleepList3addEP3TCBm>
        thread_dispatch();
    80001fa0:	fffff097          	auipc	ra,0xfffff
    80001fa4:	34c080e7          	jalr	844(ra) # 800012ec <_Z15thread_dispatchv>
        if(closed)
    80001fa8:	0184c783          	lbu	a5,24(s1)
    80001fac:	04079263          	bnez	a5,80001ff0 <_ZN9Semaphore13sem_timedwaitEm+0x114>
        if(TCB::running->readStatus() != 0)
    80001fb0:	0000a797          	auipc	a5,0xa
    80001fb4:	b487b783          	ld	a5,-1208(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001fb8:	0007b783          	ld	a5,0(a5)
    int readStatus(){ return status; }
    80001fbc:	0387a503          	lw	a0,56(a5)
    80001fc0:	f60500e3          	beqz	a0,80001f20 <_ZN9Semaphore13sem_timedwaitEm+0x44>
            return -3;
    80001fc4:	ffd00513          	li	a0,-3
    80001fc8:	f59ff06f          	j	80001f20 <_ZN9Semaphore13sem_timedwaitEm+0x44>
            head = tail = elem;
    80001fcc:	00a4b823          	sd	a0,16(s1)
    80001fd0:	00a4b423          	sd	a0,8(s1)
    80001fd4:	fadff06f          	j	80001f80 <_ZN9Semaphore13sem_timedwaitEm+0xa4>
        return -1;
    80001fd8:	fff00513          	li	a0,-1
}
    80001fdc:	00008067          	ret
            return -1;
    80001fe0:	fff00513          	li	a0,-1
    80001fe4:	f3dff06f          	j	80001f20 <_ZN9Semaphore13sem_timedwaitEm+0x44>
    80001fe8:	fff00513          	li	a0,-1
    80001fec:	f35ff06f          	j	80001f20 <_ZN9Semaphore13sem_timedwaitEm+0x44>
            return -2;
    80001ff0:	ffe00513          	li	a0,-2
    80001ff4:	f2dff06f          	j	80001f20 <_ZN9Semaphore13sem_timedwaitEm+0x44>

0000000080001ff8 <_ZN9Semaphore11sem_trywaitEv>:
int Semaphore::sem_trywait()
{
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    if(closed)
    80002004:	01854783          	lbu	a5,24(a0)
    80002008:	02079663          	bnez	a5,80002034 <_ZN9Semaphore11sem_trywaitEv+0x3c>
    {
        return -1;
    }
    if(value > 0)
    8000200c:	00052783          	lw	a5,0(a0)
    80002010:	00f04a63          	bgtz	a5,80002024 <_ZN9Semaphore11sem_trywaitEv+0x2c>
    {
        value--;
        return 1;
    }
    return 0;
    80002014:	00000513          	li	a0,0
}
    80002018:	00813403          	ld	s0,8(sp)
    8000201c:	01010113          	addi	sp,sp,16
    80002020:	00008067          	ret
        value--;
    80002024:	fff7879b          	addiw	a5,a5,-1
    80002028:	00f52023          	sw	a5,0(a0)
        return 1;
    8000202c:	00100513          	li	a0,1
    80002030:	fe9ff06f          	j	80002018 <_ZN9Semaphore11sem_trywaitEv+0x20>
        return -1;
    80002034:	fff00513          	li	a0,-1
    80002038:	fe1ff06f          	j	80002018 <_ZN9Semaphore11sem_trywaitEv+0x20>

000000008000203c <_ZN12MemAllocator10initializeEv>:

#include "../lib/console.h"

MemAllocator::FreeBlocks *MemAllocator::headPtr = nullptr;

void MemAllocator::initialize(){
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00813423          	sd	s0,8(sp)
    80002044:	01010413          	addi	s0,sp,16
    headPtr = (FreeBlocks*) (char *)HEAP_START_ADDR;
    80002048:	0000a797          	auipc	a5,0xa
    8000204c:	a887b783          	ld	a5,-1400(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002050:	0007b703          	ld	a4,0(a5)
    80002054:	0000a797          	auipc	a5,0xa
    80002058:	b0c78793          	addi	a5,a5,-1268 # 8000bb60 <_ZN12MemAllocator7headPtrE>
    8000205c:	00e7b023          	sd	a4,0(a5)
    headPtr->size =  (char*)HEAP_START_ADDR - (char*)HEAP_START_ADDR - sizeof(FreeBlocks);
    80002060:	ff000693          	li	a3,-16
    80002064:	00d73023          	sd	a3,0(a4)
    headPtr->next = nullptr;
    80002068:	0007b783          	ld	a5,0(a5)
    8000206c:	0007b423          	sd	zero,8(a5)
}
    80002070:	00813403          	ld	s0,8(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <_ZN12MemAllocator9mem_allocEm>:

void* MemAllocator::mem_alloc (size_t size){
    8000207c:	ff010113          	addi	sp,sp,-16
    80002080:	00813423          	sd	s0,8(sp)
    80002084:	01010413          	addi	s0,sp,16
    80002088:	00050713          	mv	a4,a0
    FreeBlocks* prev = nullptr;
    FreeBlocks* curr = nullptr;
    for(curr = headPtr; curr != nullptr; prev = curr, curr = curr->next){
    8000208c:	0000a517          	auipc	a0,0xa
    80002090:	ad453503          	ld	a0,-1324(a0) # 8000bb60 <_ZN12MemAllocator7headPtrE>
    FreeBlocks* prev = nullptr;
    80002094:	00000693          	li	a3,0
    for(curr = headPtr; curr != nullptr; prev = curr, curr = curr->next){
    80002098:	00050c63          	beqz	a0,800020b0 <_ZN12MemAllocator9mem_allocEm+0x34>
        if(curr->size > size){
    8000209c:	00053783          	ld	a5,0(a0)
    800020a0:	00f76863          	bltu	a4,a5,800020b0 <_ZN12MemAllocator9mem_allocEm+0x34>
    for(curr = headPtr; curr != nullptr; prev = curr, curr = curr->next){
    800020a4:	00050693          	mv	a3,a0
    800020a8:	00853503          	ld	a0,8(a0)
    800020ac:	fedff06f          	j	80002098 <_ZN12MemAllocator9mem_allocEm+0x1c>
            break;
        }
    }
    if(!curr){
    800020b0:	02050463          	beqz	a0,800020d8 <_ZN12MemAllocator9mem_allocEm+0x5c>
        return nullptr;
    }
    if(curr->size - size <= sizeof(FreeBlocks)){//ako uzimamo ceo blok
    800020b4:	00053783          	ld	a5,0(a0)
    800020b8:	40e787b3          	sub	a5,a5,a4
    800020bc:	01000613          	li	a2,16
    800020c0:	02f66c63          	bltu	a2,a5,800020f8 <_ZN12MemAllocator9mem_allocEm+0x7c>
        if(!prev){//ako je prvi u listi
    800020c4:	02068063          	beqz	a3,800020e4 <_ZN12MemAllocator9mem_allocEm+0x68>
            headPtr = curr->next;
            curr->next = nullptr;
        }
        else//ako je negde u sredini ili na kraju liste
        {
            prev->next = curr->next;
    800020c8:	00853783          	ld	a5,8(a0)
    800020cc:	00f6b423          	sd	a5,8(a3)
            curr->next = nullptr;
    800020d0:	00053423          	sd	zero,8(a0)
        }
        return reinterpret_cast<char*>(curr) + sizeof(FreeBlocks);
    800020d4:	01050513          	addi	a0,a0,16
            newblk->next = curr->next;
            curr->next = nullptr;
        }
        return reinterpret_cast<char*>(curr) + sizeof(FreeBlocks);
    }
}
    800020d8:	00813403          	ld	s0,8(sp)
    800020dc:	01010113          	addi	sp,sp,16
    800020e0:	00008067          	ret
            headPtr = curr->next;
    800020e4:	00853783          	ld	a5,8(a0)
    800020e8:	0000a717          	auipc	a4,0xa
    800020ec:	a6f73c23          	sd	a5,-1416(a4) # 8000bb60 <_ZN12MemAllocator7headPtrE>
            curr->next = nullptr;
    800020f0:	00053423          	sd	zero,8(a0)
    800020f4:	fe1ff06f          	j	800020d4 <_ZN12MemAllocator9mem_allocEm+0x58>
        FreeBlocks* newblk = reinterpret_cast<FreeBlocks*>(reinterpret_cast<char*>(curr) + size + sizeof(FreeBlocks));
    800020f8:	01070613          	addi	a2,a4,16
    800020fc:	00c50633          	add	a2,a0,a2
        newblk->size = curr->size - size - sizeof(FreeBlocks);
    80002100:	ff078793          	addi	a5,a5,-16
    80002104:	00f63023          	sd	a5,0(a2)
        curr->size = size;
    80002108:	00e53023          	sd	a4,0(a0)
        if(!prev)//prvi u listi
    8000210c:	00068e63          	beqz	a3,80002128 <_ZN12MemAllocator9mem_allocEm+0xac>
            prev->next = newblk;
    80002110:	00c6b423          	sd	a2,8(a3)
            newblk->next = curr->next;
    80002114:	00853783          	ld	a5,8(a0)
    80002118:	00f63423          	sd	a5,8(a2)
            curr->next = nullptr;
    8000211c:	00053423          	sd	zero,8(a0)
        return reinterpret_cast<char*>(curr) + sizeof(FreeBlocks);
    80002120:	01050513          	addi	a0,a0,16
    80002124:	fb5ff06f          	j	800020d8 <_ZN12MemAllocator9mem_allocEm+0x5c>
            headPtr = newblk;
    80002128:	0000a797          	auipc	a5,0xa
    8000212c:	a2c7bc23          	sd	a2,-1480(a5) # 8000bb60 <_ZN12MemAllocator7headPtrE>
            newblk->next = curr->next;
    80002130:	00853783          	ld	a5,8(a0)
    80002134:	00f63423          	sd	a5,8(a2)
            curr->next = nullptr;
    80002138:	00053423          	sd	zero,8(a0)
    8000213c:	fe5ff06f          	j	80002120 <_ZN12MemAllocator9mem_allocEm+0xa4>

0000000080002140 <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_>:

    return 1;
}

int MemAllocator::joinNextPrev(FreeBlocks* blkPrev, FreeBlocks* blkNext)
{
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00813423          	sd	s0,8(sp)
    80002148:	01010413          	addi	s0,sp,16
    if(!blkPrev || !blkNext)
    8000214c:	04050063          	beqz	a0,8000218c <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_+0x4c>
    80002150:	04058263          	beqz	a1,80002194 <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_+0x54>
    {
        return -1;
    }
    if(((char*)blkPrev + blkPrev->size + sizeof(FreeBlocks)) == (char*)blkNext)
    80002154:	00053783          	ld	a5,0(a0)
    80002158:	01078713          	addi	a4,a5,16
    8000215c:	00e50733          	add	a4,a0,a4
    80002160:	02b71e63          	bne	a4,a1,8000219c <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_+0x5c>
    {
        blkPrev->size += blkNext->size;
    80002164:	0005b703          	ld	a4,0(a1)
    80002168:	00e787b3          	add	a5,a5,a4
        blkPrev->size += sizeof(FreeBlocks);
    8000216c:	01078793          	addi	a5,a5,16
    80002170:	00f53023          	sd	a5,0(a0)
        blkPrev->next = blkNext->next;
    80002174:	0085b783          	ld	a5,8(a1)
    80002178:	00f53423          	sd	a5,8(a0)
        return 0;
    8000217c:	00000513          	li	a0,0
    }
    return -1;
    80002180:	00813403          	ld	s0,8(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret
        return -1;
    8000218c:	fff00513          	li	a0,-1
    80002190:	ff1ff06f          	j	80002180 <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_+0x40>
    80002194:	fff00513          	li	a0,-1
    80002198:	fe9ff06f          	j	80002180 <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_+0x40>
    return -1;
    8000219c:	fff00513          	li	a0,-1
    800021a0:	fe1ff06f          	j	80002180 <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_+0x40>

00000000800021a4 <_ZN12MemAllocator8mem_freeEPv>:
int MemAllocator::mem_free(void* ptr) {
    800021a4:	fd010113          	addi	sp,sp,-48
    800021a8:	02113423          	sd	ra,40(sp)
    800021ac:	02813023          	sd	s0,32(sp)
    800021b0:	00913c23          	sd	s1,24(sp)
    800021b4:	01213823          	sd	s2,16(sp)
    800021b8:	01313423          	sd	s3,8(sp)
    800021bc:	03010413          	addi	s0,sp,48
    FreeBlocks* insrt = (FreeBlocks*)((char*)ptr - sizeof(FreeBlocks));
    800021c0:	ff050913          	addi	s2,a0,-16
    if((char*)insrt < (char*)HEAP_START_ADDR)
    800021c4:	0000a797          	auipc	a5,0xa
    800021c8:	90c7b783          	ld	a5,-1780(a5) # 8000bad0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021cc:	0007b783          	ld	a5,0(a5)
    800021d0:	0af96463          	bltu	s2,a5,80002278 <_ZN12MemAllocator8mem_freeEPv+0xd4>
    if(!headPtr || (char*)insrt < (char*)headPtr)
    800021d4:	0000a497          	auipc	s1,0xa
    800021d8:	98c4b483          	ld	s1,-1652(s1) # 8000bb60 <_ZN12MemAllocator7headPtrE>
    800021dc:	00048463          	beqz	s1,800021e4 <_ZN12MemAllocator8mem_freeEPv+0x40>
    800021e0:	04997263          	bgeu	s2,s1,80002224 <_ZN12MemAllocator8mem_freeEPv+0x80>
        if(headPtr) //ako postoji lista
    800021e4:	00048463          	beqz	s1,800021ec <_ZN12MemAllocator8mem_freeEPv+0x48>
            insrt->next = headPtr;
    800021e8:	fe953c23          	sd	s1,-8(a0)
        headPtr = insrt;
    800021ec:	0000a797          	auipc	a5,0xa
    800021f0:	9727ba23          	sd	s2,-1676(a5) # 8000bb60 <_ZN12MemAllocator7headPtrE>
        joinNextPrev(insrt, insrt->next);
    800021f4:	ff853583          	ld	a1,-8(a0)
    800021f8:	00090513          	mv	a0,s2
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	f44080e7          	jalr	-188(ra) # 80002140 <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_>
    return 1;
    80002204:	00100513          	li	a0,1
}
    80002208:	02813083          	ld	ra,40(sp)
    8000220c:	02013403          	ld	s0,32(sp)
    80002210:	01813483          	ld	s1,24(sp)
    80002214:	01013903          	ld	s2,16(sp)
    80002218:	00813983          	ld	s3,8(sp)
    8000221c:	03010113          	addi	sp,sp,48
    80002220:	00008067          	ret
        FreeBlocks* prev = nullptr;
    80002224:	00000993          	li	s3,0
        for(next = headPtr; next != nullptr; prev = next, next = next->next)
    80002228:	00048a63          	beqz	s1,8000223c <_ZN12MemAllocator8mem_freeEPv+0x98>
            if((char*)next > (char*)insrt)
    8000222c:	00996863          	bltu	s2,s1,8000223c <_ZN12MemAllocator8mem_freeEPv+0x98>
        for(next = headPtr; next != nullptr; prev = next, next = next->next)
    80002230:	00048993          	mv	s3,s1
    80002234:	0084b483          	ld	s1,8(s1)
    80002238:	ff1ff06f          	j	80002228 <_ZN12MemAllocator8mem_freeEPv+0x84>
        prev->next = insrt;
    8000223c:	0129b423          	sd	s2,8(s3)
        insrt->next = next;
    80002240:	fe953c23          	sd	s1,-8(a0)
        int r = joinNextPrev(prev, insrt);
    80002244:	00090593          	mv	a1,s2
    80002248:	00098513          	mv	a0,s3
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	ef4080e7          	jalr	-268(ra) # 80002140 <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_>
        if(r == 1)
    80002254:	00100793          	li	a5,1
    80002258:	00f50463          	beq	a0,a5,80002260 <_ZN12MemAllocator8mem_freeEPv+0xbc>
    FreeBlocks* insrt = (FreeBlocks*)((char*)ptr - sizeof(FreeBlocks));
    8000225c:	00090993          	mv	s3,s2
        joinNextPrev(insrt, next);
    80002260:	00048593          	mv	a1,s1
    80002264:	00098513          	mv	a0,s3
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	ed8080e7          	jalr	-296(ra) # 80002140 <_ZN12MemAllocator12joinNextPrevEPNS_10FreeBlocksES1_>
    return 1;
    80002270:	00100513          	li	a0,1
    80002274:	f95ff06f          	j	80002208 <_ZN12MemAllocator8mem_freeEPv+0x64>
        return -1;
    80002278:	fff00513          	li	a0,-1
    8000227c:	f8dff06f          	j	80002208 <_ZN12MemAllocator8mem_freeEPv+0x64>

0000000080002280 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
#include "../h/scheduler.hpp"
TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body,void* arg,uint64* st)
{
    80002280:	fd010113          	addi	sp,sp,-48
    80002284:	02113423          	sd	ra,40(sp)
    80002288:	02813023          	sd	s0,32(sp)
    8000228c:	00913c23          	sd	s1,24(sp)
    80002290:	01213823          	sd	s2,16(sp)
    80002294:	01313423          	sd	s3,8(sp)
    80002298:	01413023          	sd	s4,0(sp)
    8000229c:	03010413          	addi	s0,sp,48
    800022a0:	00050993          	mv	s3,a0
    800022a4:	00058a13          	mv	s4,a1
    800022a8:	00060913          	mv	s2,a2
    if(st == nullptr)
    800022ac:	06060263          	beqz	a2,80002310 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x90>
    {
        st = new uint64[DEFAULT_STACK_SIZE];
    }
    return new TCB(body, TIME_SLICE, arg, st);
    800022b0:	04000513          	li	a0,64
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	1bc080e7          	jalr	444(ra) # 80002470 <_Znwm>
    800022bc:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false),
            arg(arg)
    800022c0:	01353023          	sd	s3,0(a0)
            stack(body != nullptr ? st : nullptr),
    800022c4:	06098063          	beqz	s3,80002324 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
            arg(arg)
    800022c8:	0124b423          	sd	s2,8(s1)
    800022cc:	00000797          	auipc	a5,0x0
    800022d0:	0d078793          	addi	a5,a5,208 # 8000239c <_ZN3TCB13threadWrapperEv>
    800022d4:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800022d8:	04090a63          	beqz	s2,8000232c <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
    800022dc:	00008637          	lui	a2,0x8
    800022e0:	00c90933          	add	s2,s2,a2
            arg(arg)
    800022e4:	0124bc23          	sd	s2,24(s1)
    800022e8:	00200793          	li	a5,2
    800022ec:	02f4b023          	sd	a5,32(s1)
    800022f0:	02048423          	sb	zero,40(s1)
    800022f4:	0344b823          	sd	s4,48(s1)
    800022f8:	0204ac23          	sw	zero,56(s1)
    {
        if (body != nullptr) { Scheduler::put((TCB*)this); }
    800022fc:	04098a63          	beqz	s3,80002350 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xd0>
    80002300:	00048513          	mv	a0,s1
    80002304:	00001097          	auipc	ra,0x1
    80002308:	944080e7          	jalr	-1724(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
    8000230c:	0440006f          	j	80002350 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xd0>
        st = new uint64[DEFAULT_STACK_SIZE];
    80002310:	00008537          	lui	a0,0x8
    80002314:	00000097          	auipc	ra,0x0
    80002318:	184080e7          	jalr	388(ra) # 80002498 <_Znam>
    8000231c:	00050913          	mv	s2,a0
    80002320:	f91ff06f          	j	800022b0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x30>
            stack(body != nullptr ? st : nullptr),
    80002324:	00000913          	li	s2,0
    80002328:	fa1ff06f          	j	800022c8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x48>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    8000232c:	00000913          	li	s2,0
    80002330:	fb5ff06f          	j	800022e4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x64>
    80002334:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE, arg, st);
    80002338:	00048513          	mv	a0,s1
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	184080e7          	jalr	388(ra) # 800024c0 <_ZdlPv>
    80002344:	00090513          	mv	a0,s2
    80002348:	0000b097          	auipc	ra,0xb
    8000234c:	980080e7          	jalr	-1664(ra) # 8000ccc8 <_Unwind_Resume>
}
    80002350:	00048513          	mv	a0,s1
    80002354:	02813083          	ld	ra,40(sp)
    80002358:	02013403          	ld	s0,32(sp)
    8000235c:	01813483          	ld	s1,24(sp)
    80002360:	01013903          	ld	s2,16(sp)
    80002364:	00813983          	ld	s3,8(sp)
    80002368:	00013a03          	ld	s4,0(sp)
    8000236c:	03010113          	addi	sp,sp,48
    80002370:	00008067          	ret

0000000080002374 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00113423          	sd	ra,8(sp)
    8000237c:	00813023          	sd	s0,0(sp)
    80002380:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002384:	fffff097          	auipc	ra,0xfffff
    80002388:	f68080e7          	jalr	-152(ra) # 800012ec <_Z15thread_dispatchv>
}
    8000238c:	00813083          	ld	ra,8(sp)
    80002390:	00013403          	ld	s0,0(sp)
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00008067          	ret

000000008000239c <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    8000239c:	fe010113          	addi	sp,sp,-32
    800023a0:	00113c23          	sd	ra,24(sp)
    800023a4:	00813823          	sd	s0,16(sp)
    800023a8:	00913423          	sd	s1,8(sp)
    800023ac:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800023b0:	00001097          	auipc	ra,0x1
    800023b4:	938080e7          	jalr	-1736(ra) # 80002ce8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800023b8:	00009497          	auipc	s1,0x9
    800023bc:	7b048493          	addi	s1,s1,1968 # 8000bb68 <_ZN3TCB7runningE>
    800023c0:	0004b783          	ld	a5,0(s1)
    800023c4:	0007b703          	ld	a4,0(a5)
    800023c8:	0307b503          	ld	a0,48(a5)
    800023cc:	000700e7          	jalr	a4
    running->setFinished(true);
    800023d0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800023d4:	00100713          	li	a4,1
    800023d8:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	f98080e7          	jalr	-104(ra) # 80002374 <_ZN3TCB5yieldEv>
}
    800023e4:	01813083          	ld	ra,24(sp)
    800023e8:	01013403          	ld	s0,16(sp)
    800023ec:	00813483          	ld	s1,8(sp)
    800023f0:	02010113          	addi	sp,sp,32
    800023f4:	00008067          	ret

00000000800023f8 <_ZN3TCB8dispatchEv>:
{
    800023f8:	fe010113          	addi	sp,sp,-32
    800023fc:	00113c23          	sd	ra,24(sp)
    80002400:	00813823          	sd	s0,16(sp)
    80002404:	00913423          	sd	s1,8(sp)
    80002408:	02010413          	addi	s0,sp,32
    timeSliceCounter = 0;
    8000240c:	00009797          	auipc	a5,0x9
    80002410:	75c78793          	addi	a5,a5,1884 # 8000bb68 <_ZN3TCB7runningE>
    80002414:	0007b423          	sd	zero,8(a5)
    TCB *old = running;
    80002418:	0007b483          	ld	s1,0(a5)
    bool isFinished() const { return finished; }
    8000241c:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished() && !old->status) {
    80002420:	00079663          	bnez	a5,8000242c <_ZN3TCB8dispatchEv+0x34>
    80002424:	0384a783          	lw	a5,56(s1)
    80002428:	02078c63          	beqz	a5,80002460 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	7b4080e7          	jalr	1972(ra) # 80002be0 <_ZN9Scheduler3getEv>
    80002434:	00009797          	auipc	a5,0x9
    80002438:	72a7ba23          	sd	a0,1844(a5) # 8000bb68 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    8000243c:	01050593          	addi	a1,a0,16 # 8010 <_entry-0x7fff7ff0>
    80002440:	01048513          	addi	a0,s1,16
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	dcc080e7          	jalr	-564(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000244c:	01813083          	ld	ra,24(sp)
    80002450:	01013403          	ld	s0,16(sp)
    80002454:	00813483          	ld	s1,8(sp)
    80002458:	02010113          	addi	sp,sp,32
    8000245c:	00008067          	ret
        Scheduler::put(old); }
    80002460:	00048513          	mv	a0,s1
    80002464:	00000097          	auipc	ra,0x0
    80002468:	7e4080e7          	jalr	2020(ra) # 80002c48 <_ZN9Scheduler3putEP3TCB>
    8000246c:	fc1ff06f          	j	8000242c <_ZN3TCB8dispatchEv+0x34>

0000000080002470 <_Znwm>:
#include "../h/syscall_c.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00113423          	sd	ra,8(sp)
    80002478:	00813023          	sd	s0,0(sp)
    8000247c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002480:	fffff097          	auipc	ra,0xfffff
    80002484:	dc4080e7          	jalr	-572(ra) # 80001244 <_Z9mem_allocm>
}
    80002488:	00813083          	ld	ra,8(sp)
    8000248c:	00013403          	ld	s0,0(sp)
    80002490:	01010113          	addi	sp,sp,16
    80002494:	00008067          	ret

0000000080002498 <_Znam>:

void *operator new[](size_t n)
{
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00113423          	sd	ra,8(sp)
    800024a0:	00813023          	sd	s0,0(sp)
    800024a4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800024a8:	fffff097          	auipc	ra,0xfffff
    800024ac:	d9c080e7          	jalr	-612(ra) # 80001244 <_Z9mem_allocm>
}
    800024b0:	00813083          	ld	ra,8(sp)
    800024b4:	00013403          	ld	s0,0(sp)
    800024b8:	01010113          	addi	sp,sp,16
    800024bc:	00008067          	ret

00000000800024c0 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00113423          	sd	ra,8(sp)
    800024c8:	00813023          	sd	s0,0(sp)
    800024cc:	01010413          	addi	s0,sp,16
    mem_free(p);
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	db4080e7          	jalr	-588(ra) # 80001284 <_Z8mem_freePv>
}
    800024d8:	00813083          	ld	ra,8(sp)
    800024dc:	00013403          	ld	s0,0(sp)
    800024e0:	01010113          	addi	sp,sp,16
    800024e4:	00008067          	ret

00000000800024e8 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800024e8:	ff010113          	addi	sp,sp,-16
    800024ec:	00113423          	sd	ra,8(sp)
    800024f0:	00813023          	sd	s0,0(sp)
    800024f4:	01010413          	addi	s0,sp,16
    mem_free(p);
    800024f8:	fffff097          	auipc	ra,0xfffff
    800024fc:	d8c080e7          	jalr	-628(ra) # 80001284 <_Z8mem_freePv>
    80002500:	00813083          	ld	ra,8(sp)
    80002504:	00013403          	ld	s0,0(sp)
    80002508:	01010113          	addi	sp,sp,16
    8000250c:	00008067          	ret

0000000080002510 <_ZN6ThreadD1Ev>:
void Thread::dispatch()
{
    thread_dispatch();
}

Thread::~Thread()
    80002510:	fe010113          	addi	sp,sp,-32
    80002514:	00113c23          	sd	ra,24(sp)
    80002518:	00813823          	sd	s0,16(sp)
    8000251c:	00913423          	sd	s1,8(sp)
    80002520:	02010413          	addi	s0,sp,32
    80002524:	00009797          	auipc	a5,0x9
    80002528:	3b478793          	addi	a5,a5,948 # 8000b8d8 <_ZTV6Thread+0x10>
    8000252c:	00f53023          	sd	a5,0(a0)
{
    delete (TCB*)myHandle;
    80002530:	00853483          	ld	s1,8(a0)
    80002534:	02048063          	beqz	s1,80002554 <_ZN6ThreadD1Ev+0x44>
    ~TCB() { delete[] stack; }
    80002538:	0084b503          	ld	a0,8(s1)
    8000253c:	00050663          	beqz	a0,80002548 <_ZN6ThreadD1Ev+0x38>
    80002540:	00000097          	auipc	ra,0x0
    80002544:	fa8080e7          	jalr	-88(ra) # 800024e8 <_ZdaPv>
    80002548:	00048513          	mv	a0,s1
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	f74080e7          	jalr	-140(ra) # 800024c0 <_ZdlPv>
}
    80002554:	01813083          	ld	ra,24(sp)
    80002558:	01013403          	ld	s0,16(sp)
    8000255c:	00813483          	ld	s1,8(sp)
    80002560:	02010113          	addi	sp,sp,32
    80002564:	00008067          	ret

0000000080002568 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80002568:	fe010113          	addi	sp,sp,-32
    8000256c:	00113c23          	sd	ra,24(sp)
    80002570:	00813823          	sd	s0,16(sp)
    80002574:	00913423          	sd	s1,8(sp)
    80002578:	02010413          	addi	s0,sp,32
    8000257c:	00050493          	mv	s1,a0
}
    80002580:	00000097          	auipc	ra,0x0
    80002584:	f90080e7          	jalr	-112(ra) # 80002510 <_ZN6ThreadD1Ev>
    80002588:	00048513          	mv	a0,s1
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	f34080e7          	jalr	-204(ra) # 800024c0 <_ZdlPv>
    80002594:	01813083          	ld	ra,24(sp)
    80002598:	01013403          	ld	s0,16(sp)
    8000259c:	00813483          	ld	s1,8(sp)
    800025a0:	02010113          	addi	sp,sp,32
    800025a4:	00008067          	ret

00000000800025a8 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00113423          	sd	ra,8(sp)
    800025b0:	00813023          	sd	s0,0(sp)
    800025b4:	01010413          	addi	s0,sp,16
    800025b8:	00009797          	auipc	a5,0x9
    800025bc:	34878793          	addi	a5,a5,840 # 8000b900 <_ZTV9Semaphore+0x10>
    800025c0:	00f53023          	sd	a5,0(a0)
{
    sem_close(myHandle);
    800025c4:	00853503          	ld	a0,8(a0)
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	da8080e7          	jalr	-600(ra) # 80001370 <_Z9sem_closeP4_sem>
}
    800025d0:	00813083          	ld	ra,8(sp)
    800025d4:	00013403          	ld	s0,0(sp)
    800025d8:	01010113          	addi	sp,sp,16
    800025dc:	00008067          	ret

00000000800025e0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore()
    800025e0:	fe010113          	addi	sp,sp,-32
    800025e4:	00113c23          	sd	ra,24(sp)
    800025e8:	00813823          	sd	s0,16(sp)
    800025ec:	00913423          	sd	s1,8(sp)
    800025f0:	02010413          	addi	s0,sp,32
    800025f4:	00050493          	mv	s1,a0
}
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	fb0080e7          	jalr	-80(ra) # 800025a8 <_ZN9SemaphoreD1Ev>
    80002600:	00048513          	mv	a0,s1
    80002604:	00000097          	auipc	ra,0x0
    80002608:	ebc080e7          	jalr	-324(ra) # 800024c0 <_ZdlPv>
    8000260c:	01813083          	ld	ra,24(sp)
    80002610:	01013403          	ld	s0,16(sp)
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	02010113          	addi	sp,sp,32
    8000261c:	00008067          	ret

0000000080002620 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread (void (*body)(void*), void* arg)
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00813423          	sd	s0,8(sp)
    80002628:	01010413          	addi	s0,sp,16
    8000262c:	00009797          	auipc	a5,0x9
    80002630:	2ac78793          	addi	a5,a5,684 # 8000b8d8 <_ZTV6Thread+0x10>
    80002634:	00f53023          	sd	a5,0(a0)
    80002638:	00053423          	sd	zero,8(a0)
    this->body = body;
    8000263c:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002640:	00c53c23          	sd	a2,24(a0)
}
    80002644:	00813403          	ld	s0,8(sp)
    80002648:	01010113          	addi	sp,sp,16
    8000264c:	00008067          	ret

0000000080002650 <_ZN6ThreadC1Ev>:
Thread::Thread():Thread(nullptr, nullptr)
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00113423          	sd	ra,8(sp)
    80002658:	00813023          	sd	s0,0(sp)
    8000265c:	01010413          	addi	s0,sp,16
    80002660:	00000613          	li	a2,0
    80002664:	00000593          	li	a1,0
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	fb8080e7          	jalr	-72(ra) # 80002620 <_ZN6ThreadC1EPFvPvES0_>
}
    80002670:	00813083          	ld	ra,8(sp)
    80002674:	00013403          	ld	s0,0(sp)
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret

0000000080002680 <_ZN6Thread8dispatchEv>:
{
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00113423          	sd	ra,8(sp)
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	c5c080e7          	jalr	-932(ra) # 800012ec <_Z15thread_dispatchv>
}
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_ZN6Thread5startEv>:
{
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    if(body == nullptr)
    800026b8:	01053583          	ld	a1,16(a0)
    800026bc:	02058263          	beqz	a1,800026e0 <_ZN6Thread5startEv+0x38>
    return thread_create(&myHandle, body, arg);
    800026c0:	01853603          	ld	a2,24(a0)
    800026c4:	00850513          	addi	a0,a0,8
    800026c8:	fffff097          	auipc	ra,0xfffff
    800026cc:	bec080e7          	jalr	-1044(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800026d0:	00813083          	ld	ra,8(sp)
    800026d4:	00013403          	ld	s0,0(sp)
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00008067          	ret
        return thread_create(&myHandle, &runWrapper, this);
    800026e0:	00050613          	mv	a2,a0
    800026e4:	00000597          	auipc	a1,0x0
    800026e8:	1e058593          	addi	a1,a1,480 # 800028c4 <_ZN6Thread10runWrapperEPv>
    800026ec:	00850513          	addi	a0,a0,8
    800026f0:	fffff097          	auipc	ra,0xfffff
    800026f4:	bc4080e7          	jalr	-1084(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    800026f8:	fd9ff06f          	j	800026d0 <_ZN6Thread5startEv+0x28>

00000000800026fc <_ZN6Thread5sleepEm>:
{
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	d58080e7          	jalr	-680(ra) # 80001464 <_Z10time_sleepm>
}
    80002714:	00813083          	ld	ra,8(sp)
    80002718:	00013403          	ld	s0,0(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init)
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00113423          	sd	ra,8(sp)
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	01010413          	addi	s0,sp,16
    80002734:	00009797          	auipc	a5,0x9
    80002738:	1cc78793          	addi	a5,a5,460 # 8000b900 <_ZTV9Semaphore+0x10>
    8000273c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002740:	00850513          	addi	a0,a0,8
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	bf8080e7          	jalr	-1032(ra) # 8000133c <_Z8sem_openPP4_semj>
}
    8000274c:	00813083          	ld	ra,8(sp)
    80002750:	00013403          	ld	s0,0(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret

000000008000275c <_ZN9Semaphore4waitEv>:

int Semaphore::wait()
{
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00113423          	sd	ra,8(sp)
    80002764:	00813023          	sd	s0,0(sp)
    80002768:	01010413          	addi	s0,sp,16
    return  sem_wait(myHandle);
    8000276c:	00853503          	ld	a0,8(a0)
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	c30080e7          	jalr	-976(ra) # 800013a0 <_Z8sem_waitP4_sem>
}
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN9Semaphore6signalEv>:

int Semaphore::signal()
{
    80002788:	ff010113          	addi	sp,sp,-16
    8000278c:	00113423          	sd	ra,8(sp)
    80002790:	00813023          	sd	s0,0(sp)
    80002794:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002798:	00853503          	ld	a0,8(a0)
    8000279c:	fffff097          	auipc	ra,0xfffff
    800027a0:	c34080e7          	jalr	-972(ra) # 800013d0 <_Z10sem_signalP4_sem>
}
    800027a4:	00813083          	ld	ra,8(sp)
    800027a8:	00013403          	ld	s0,0(sp)
    800027ac:	01010113          	addi	sp,sp,16
    800027b0:	00008067          	ret

00000000800027b4 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait()
{
    800027b4:	ff010113          	addi	sp,sp,-16
    800027b8:	00113423          	sd	ra,8(sp)
    800027bc:	00813023          	sd	s0,0(sp)
    800027c0:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800027c4:	00853503          	ld	a0,8(a0)
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	c6c080e7          	jalr	-916(ra) # 80001434 <_Z11sem_trywaitP4_sem>
}
    800027d0:	00813083          	ld	ra,8(sp)
    800027d4:	00013403          	ld	s0,0(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret

00000000800027e0 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t t)
{
    800027e0:	ff010113          	addi	sp,sp,-16
    800027e4:	00113423          	sd	ra,8(sp)
    800027e8:	00813023          	sd	s0,0(sp)
    800027ec:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, t);
    800027f0:	00853503          	ld	a0,8(a0)
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	c0c080e7          	jalr	-1012(ra) # 80001400 <_Z13sem_timedwaitP4_semm>
}
    800027fc:	00813083          	ld	ra,8(sp)
    80002800:	00013403          	ld	s0,0(sp)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread (time_t period)
    8000280c:	fe010113          	addi	sp,sp,-32
    80002810:	00113c23          	sd	ra,24(sp)
    80002814:	00813823          	sd	s0,16(sp)
    80002818:	00913423          	sd	s1,8(sp)
    8000281c:	01213023          	sd	s2,0(sp)
    80002820:	02010413          	addi	s0,sp,32
    80002824:	00050493          	mv	s1,a0
    80002828:	00058913          	mv	s2,a1
    8000282c:	00000097          	auipc	ra,0x0
    80002830:	e24080e7          	jalr	-476(ra) # 80002650 <_ZN6ThreadC1Ev>
    80002834:	00009797          	auipc	a5,0x9
    80002838:	07478793          	addi	a5,a5,116 # 8000b8a8 <_ZTV14PeriodicThread+0x10>
    8000283c:	00f4b023          	sd	a5,0(s1)
{
    this->period = period;
    80002840:	0324b023          	sd	s2,32(s1)
}
    80002844:	01813083          	ld	ra,24(sp)
    80002848:	01013403          	ld	s0,16(sp)
    8000284c:	00813483          	ld	s1,8(sp)
    80002850:	00013903          	ld	s2,0(sp)
    80002854:	02010113          	addi	sp,sp,32
    80002858:	00008067          	ret

000000008000285c <_ZN7Console4getcEv>:

char Console::getc ()
{
    8000285c:	ff010113          	addi	sp,sp,-16
    80002860:	00113423          	sd	ra,8(sp)
    80002864:	00813023          	sd	s0,0(sp)
    80002868:	01010413          	addi	s0,sp,16
    return ::getc();
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	c28080e7          	jalr	-984(ra) # 80001494 <_Z4getcv>
}
    80002874:	00813083          	ld	ra,8(sp)
    80002878:	00013403          	ld	s0,0(sp)
    8000287c:	01010113          	addi	sp,sp,16
    80002880:	00008067          	ret

0000000080002884 <_ZN7Console4putcEc>:
void Console::putc (char c)
{
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00113423          	sd	ra,8(sp)
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002894:	fffff097          	auipc	ra,0xfffff
    80002898:	c2c080e7          	jalr	-980(ra) # 800014c0 <_Z4putcc>
    8000289c:	00813083          	ld	ra,8(sp)
    800028a0:	00013403          	ld	s0,0(sp)
    800028a4:	01010113          	addi	sp,sp,16
    800028a8:	00008067          	ret

00000000800028ac <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800028ac:	ff010113          	addi	sp,sp,-16
    800028b0:	00813423          	sd	s0,8(sp)
    800028b4:	01010413          	addi	s0,sp,16
    800028b8:	00813403          	ld	s0,8(sp)
    800028bc:	01010113          	addi	sp,sp,16
    800028c0:	00008067          	ret

00000000800028c4 <_ZN6Thread10runWrapperEPv>:
    thread_t myHandle = nullptr;
    void (*body)(void*); void* arg;

    static void runWrapper(void* t)
    {
        if(t)
    800028c4:	02050863          	beqz	a0,800028f4 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* t)
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00113423          	sd	ra,8(sp)
    800028d0:	00813023          	sd	s0,0(sp)
    800028d4:	01010413          	addi	s0,sp,16
        {
            ((Thread*)t)->run();
    800028d8:	00053783          	ld	a5,0(a0)
    800028dc:	0107b783          	ld	a5,16(a5)
    800028e0:	000780e7          	jalr	a5
        }
    }
    800028e4:	00813083          	ld	ra,8(sp)
    800028e8:	00013403          	ld	s0,0(sp)
    800028ec:	01010113          	addi	sp,sp,16
    800028f0:	00008067          	ret
    800028f4:	00008067          	ret

00000000800028f8 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800028f8:	ff010113          	addi	sp,sp,-16
    800028fc:	00813423          	sd	s0,8(sp)
    80002900:	01010413          	addi	s0,sp,16
    80002904:	00813403          	ld	s0,8(sp)
    80002908:	01010113          	addi	sp,sp,16
    8000290c:	00008067          	ret

0000000080002910 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002910:	ff010113          	addi	sp,sp,-16
    80002914:	00113423          	sd	ra,8(sp)
    80002918:	00813023          	sd	s0,0(sp)
    8000291c:	01010413          	addi	s0,sp,16
    80002920:	00009797          	auipc	a5,0x9
    80002924:	f8878793          	addi	a5,a5,-120 # 8000b8a8 <_ZTV14PeriodicThread+0x10>
    80002928:	00f53023          	sd	a5,0(a0)
    8000292c:	00000097          	auipc	ra,0x0
    80002930:	be4080e7          	jalr	-1052(ra) # 80002510 <_ZN6ThreadD1Ev>
    80002934:	00813083          	ld	ra,8(sp)
    80002938:	00013403          	ld	s0,0(sp)
    8000293c:	01010113          	addi	sp,sp,16
    80002940:	00008067          	ret

0000000080002944 <_ZN14PeriodicThreadD0Ev>:
    80002944:	fe010113          	addi	sp,sp,-32
    80002948:	00113c23          	sd	ra,24(sp)
    8000294c:	00813823          	sd	s0,16(sp)
    80002950:	00913423          	sd	s1,8(sp)
    80002954:	02010413          	addi	s0,sp,32
    80002958:	00050493          	mv	s1,a0
    8000295c:	00009797          	auipc	a5,0x9
    80002960:	f4c78793          	addi	a5,a5,-180 # 8000b8a8 <_ZTV14PeriodicThread+0x10>
    80002964:	00f53023          	sd	a5,0(a0)
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	ba8080e7          	jalr	-1112(ra) # 80002510 <_ZN6ThreadD1Ev>
    80002970:	00048513          	mv	a0,s1
    80002974:	00000097          	auipc	ra,0x0
    80002978:	b4c080e7          	jalr	-1204(ra) # 800024c0 <_ZdlPv>
    8000297c:	01813083          	ld	ra,24(sp)
    80002980:	01013403          	ld	s0,16(sp)
    80002984:	00813483          	ld	s1,8(sp)
    80002988:	02010113          	addi	sp,sp,32
    8000298c:	00008067          	ret

0000000080002990 <_ZN14PeriodicThread3runEv>:
    void run() override
    80002990:	fe010113          	addi	sp,sp,-32
    80002994:	00113c23          	sd	ra,24(sp)
    80002998:	00813823          	sd	s0,16(sp)
    8000299c:	00913423          	sd	s1,8(sp)
    800029a0:	02010413          	addi	s0,sp,32
    800029a4:	00050493          	mv	s1,a0
    {
        while (true)
        {
            periodicActivation();
    800029a8:	0004b783          	ld	a5,0(s1)
    800029ac:	0187b783          	ld	a5,24(a5)
    800029b0:	00048513          	mv	a0,s1
    800029b4:	000780e7          	jalr	a5
            time_sleep(period);
    800029b8:	0204b503          	ld	a0,32(s1)
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	aa8080e7          	jalr	-1368(ra) # 80001464 <_Z10time_sleepm>
        while (true)
    800029c4:	fe5ff06f          	j	800029a8 <_ZN14PeriodicThread3runEv+0x18>

00000000800029c8 <_Z7idleFunPv>:
#include "../h/print.hpp"
#include "../h/Riscv.hpp"
#include "../h/cconsole.hpp"
//#include "../test/ConsumerProducer_CPP_API_test.hpp"

void idleFun(void* arg){
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	00813023          	sd	s0,0(sp)
    800029d4:	01010413          	addi	s0,sp,16
    while(true){
        thread_dispatch();
    800029d8:	fffff097          	auipc	ra,0xfffff
    800029dc:	914080e7          	jalr	-1772(ra) # 800012ec <_Z15thread_dispatchv>
    while(true){
    800029e0:	ff9ff06f          	j	800029d8 <_Z7idleFunPv+0x10>

00000000800029e4 <_Z10consoleRunPv>:

void consoleRun(void* arg)
{
    while(true) {
        //char s = *(char *) CONSOLE_STATUS;
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    800029e4:	00009797          	auipc	a5,0x9
    800029e8:	0e47b783          	ld	a5,228(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800029ec:	0007b783          	ld	a5,0(a5)
    800029f0:	0007c783          	lbu	a5,0(a5)
    800029f4:	0207f793          	andi	a5,a5,32
    800029f8:	fe0786e3          	beqz	a5,800029e4 <_Z10consoleRunPv>
{
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00113c23          	sd	ra,24(sp)
    80002a04:	00813823          	sd	s0,16(sp)
    80002a08:	00913423          	sd	s1,8(sp)
    80002a0c:	02010413          	addi	s0,sp,32
            *(char *) CONSOLE_TX_DATA = Cconsole::getChOut();
    80002a10:	00009797          	auipc	a5,0x9
    80002a14:	0d87b783          	ld	a5,216(a5) # 8000bae8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a18:	0007b483          	ld	s1,0(a5)
    80002a1c:	00001097          	auipc	ra,0x1
    80002a20:	b84080e7          	jalr	-1148(ra) # 800035a0 <_ZN8Cconsole8getChOutEv>
    80002a24:	00a48023          	sb	a0,0(s1)
        while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
    80002a28:	00009797          	auipc	a5,0x9
    80002a2c:	0a07b783          	ld	a5,160(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002a30:	0007b783          	ld	a5,0(a5)
    80002a34:	0007c783          	lbu	a5,0(a5)
    80002a38:	0207f793          	andi	a5,a5,32
    80002a3c:	fe0786e3          	beqz	a5,80002a28 <_Z10consoleRunPv+0x44>
    80002a40:	fd1ff06f          	j	80002a10 <_Z10consoleRunPv+0x2c>

0000000080002a44 <_Z15userMainWrapperPv>:
/*void userMain(){
    testConsumerProducer();
}*/
void userMain();

void userMainWrapper(void* args){
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00113423          	sd	ra,8(sp)
    80002a4c:	00813023          	sd	s0,0(sp)
    80002a50:	01010413          	addi	s0,sp,16
    userMain();
    80002a54:	00003097          	auipc	ra,0x3
    80002a58:	6c0080e7          	jalr	1728(ra) # 80006114 <_Z8userMainv>
}
    80002a5c:	00813083          	ld	ra,8(sp)
    80002a60:	00013403          	ld	s0,0(sp)
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00008067          	ret

0000000080002a6c <_Z14initializationv>:
void initialization(){
    80002a6c:	ff010113          	addi	sp,sp,-16
    80002a70:	00113423          	sd	ra,8(sp)
    80002a74:	00813023          	sd	s0,0(sp)
    80002a78:	01010413          	addi	s0,sp,16
    MemAllocator::initialize();
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	5c0080e7          	jalr	1472(ra) # 8000203c <_ZN12MemAllocator10initializeEv>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002a84:	00009797          	auipc	a5,0x9
    80002a88:	0547b783          	ld	a5,84(a5) # 8000bad8 <_GLOBAL_OFFSET_TABLE_+0x20>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002a8c:	10579073          	csrw	stvec,a5
    Cconsole::init_consl();
    80002a90:	00001097          	auipc	ra,0x1
    80002a94:	9c4080e7          	jalr	-1596(ra) # 80003454 <_ZN8Cconsole10init_conslEv>
}
    80002a98:	00813083          	ld	ra,8(sp)
    80002a9c:	00013403          	ld	s0,0(sp)
    80002aa0:	01010113          	addi	sp,sp,16
    80002aa4:	00008067          	ret

0000000080002aa8 <main>:
TCB* mainThread;
TCB* idleThread;
TCB* putcThread;
int main()
{
    80002aa8:	fd010113          	addi	sp,sp,-48
    80002aac:	02113423          	sd	ra,40(sp)
    80002ab0:	02813023          	sd	s0,32(sp)
    80002ab4:	00913c23          	sd	s1,24(sp)
    80002ab8:	03010413          	addi	s0,sp,48
    initialization();
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	fb0080e7          	jalr	-80(ra) # 80002a6c <_Z14initializationv>

    mainThread = TCB::createThread(nullptr,nullptr,nullptr);
    80002ac4:	00000613          	li	a2,0
    80002ac8:	00000593          	li	a1,0
    80002acc:	00000513          	li	a0,0
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	7b0080e7          	jalr	1968(ra) # 80002280 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002ad8:	00009497          	auipc	s1,0x9
    80002adc:	0a048493          	addi	s1,s1,160 # 8000bb78 <mainThread>
    80002ae0:	00a4b023          	sd	a0,0(s1)
    TCB::running = mainThread;
    80002ae4:	00009797          	auipc	a5,0x9
    80002ae8:	0147b783          	ld	a5,20(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002aec:	00a7b023          	sd	a0,0(a5)
    putcThread = TCB::createThread(&consoleRun, nullptr, nullptr);
    80002af0:	00000613          	li	a2,0
    80002af4:	00000593          	li	a1,0
    80002af8:	00000517          	auipc	a0,0x0
    80002afc:	eec50513          	addi	a0,a0,-276 # 800029e4 <_Z10consoleRunPv>
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	780080e7          	jalr	1920(ra) # 80002280 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002b08:	00a4b423          	sd	a0,8(s1)
    idleThread = TCB::createThread(&idleFun,nullptr,nullptr);
    80002b0c:	00000613          	li	a2,0
    80002b10:	00000593          	li	a1,0
    80002b14:	00000517          	auipc	a0,0x0
    80002b18:	eb450513          	addi	a0,a0,-332 # 800029c8 <_Z7idleFunPv>
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	764080e7          	jalr	1892(ra) # 80002280 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002b24:	00a4b823          	sd	a0,16(s1)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002b28:	00200793          	li	a5,2
    80002b2c:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t userThread;
    thread_create(&userThread,&userMainWrapper,nullptr);
    80002b30:	00000613          	li	a2,0
    80002b34:	00000597          	auipc	a1,0x0
    80002b38:	f1058593          	addi	a1,a1,-240 # 80002a44 <_Z15userMainWrapperPv>
    80002b3c:	fd840513          	addi	a0,s0,-40
    80002b40:	ffffe097          	auipc	ra,0xffffe
    80002b44:	774080e7          	jalr	1908(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>

    while(!((TCB*)userThread)->isFinished()){
    80002b48:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return finished; }
    80002b4c:	0287c783          	lbu	a5,40(a5)
    80002b50:	00079863          	bnez	a5,80002b60 <main+0xb8>
        thread_dispatch();
    80002b54:	ffffe097          	auipc	ra,0xffffe
    80002b58:	798080e7          	jalr	1944(ra) # 800012ec <_Z15thread_dispatchv>
    80002b5c:	fedff06f          	j	80002b48 <main+0xa0>
    }

    mprintString("vratio se u main\n");
    80002b60:	00006517          	auipc	a0,0x6
    80002b64:	5a850513          	addi	a0,a0,1448 # 80009108 <CONSOLE_STATUS+0xf8>
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	800080e7          	jalr	-2048(ra) # 80003368 <_Z12mprintStringPKc>

    thread_dispatch();
    80002b70:	ffffe097          	auipc	ra,0xffffe
    80002b74:	77c080e7          	jalr	1916(ra) # 800012ec <_Z15thread_dispatchv>



    __asm__ volatile("li a0,0x5555");
    80002b78:	00005537          	lui	a0,0x5
    80002b7c:	5555051b          	addiw	a0,a0,1365
    __asm__ volatile("li a1,0x100000");
    80002b80:	001005b7          	lui	a1,0x100
    __asm__ volatile("sw a0, 0(a1)");
    80002b84:	00a5a023          	sw	a0,0(a1) # 100000 <_entry-0x7ff00000>
    return 0;
}
    80002b88:	00000513          	li	a0,0
    80002b8c:	02813083          	ld	ra,40(sp)
    80002b90:	02013403          	ld	s0,32(sp)
    80002b94:	01813483          	ld	s1,24(sp)
    80002b98:	03010113          	addi	sp,sp,48
    80002b9c:	00008067          	ret

0000000080002ba0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
    80002ba0:	ff010113          	addi	sp,sp,-16
    80002ba4:	00813423          	sd	s0,8(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    80002bac:	00100793          	li	a5,1
    80002bb0:	00f50863          	beq	a0,a5,80002bc0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002bb4:	00813403          	ld	s0,8(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret
    80002bc0:	000107b7          	lui	a5,0x10
    80002bc4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002bc8:	fef596e3          	bne	a1,a5,80002bb4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002bcc:	00009797          	auipc	a5,0x9
    80002bd0:	fc478793          	addi	a5,a5,-60 # 8000bb90 <_ZN9Scheduler16readyThreadQueueE>
    80002bd4:	0007b023          	sd	zero,0(a5)
    80002bd8:	0007b423          	sd	zero,8(a5)
    80002bdc:	fd9ff06f          	j	80002bb4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002be0 <_ZN9Scheduler3getEv>:
{
    80002be0:	fe010113          	addi	sp,sp,-32
    80002be4:	00113c23          	sd	ra,24(sp)
    80002be8:	00813823          	sd	s0,16(sp)
    80002bec:	00913423          	sd	s1,8(sp)
    80002bf0:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002bf4:	00009517          	auipc	a0,0x9
    80002bf8:	f9c53503          	ld	a0,-100(a0) # 8000bb90 <_ZN9Scheduler16readyThreadQueueE>
    80002bfc:	04050263          	beqz	a0,80002c40 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002c00:	00853783          	ld	a5,8(a0)
    80002c04:	00009717          	auipc	a4,0x9
    80002c08:	f8f73623          	sd	a5,-116(a4) # 8000bb90 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002c0c:	02078463          	beqz	a5,80002c34 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002c10:	00053483          	ld	s1,0(a0)
        delete elem;
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	8ac080e7          	jalr	-1876(ra) # 800024c0 <_ZdlPv>
}
    80002c1c:	00048513          	mv	a0,s1
    80002c20:	01813083          	ld	ra,24(sp)
    80002c24:	01013403          	ld	s0,16(sp)
    80002c28:	00813483          	ld	s1,8(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret
        if (!head) { tail = 0; }
    80002c34:	00009797          	auipc	a5,0x9
    80002c38:	f607b223          	sd	zero,-156(a5) # 8000bb98 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002c3c:	fd5ff06f          	j	80002c10 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002c40:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002c44:	fd9ff06f          	j	80002c1c <_ZN9Scheduler3getEv+0x3c>

0000000080002c48 <_ZN9Scheduler3putEP3TCB>:
{
    80002c48:	fe010113          	addi	sp,sp,-32
    80002c4c:	00113c23          	sd	ra,24(sp)
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	02010413          	addi	s0,sp,32
    80002c5c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002c60:	01000513          	li	a0,16
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	80c080e7          	jalr	-2036(ra) # 80002470 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002c6c:	00953023          	sd	s1,0(a0)
    80002c70:	00053423          	sd	zero,8(a0)
        if (tail)
    80002c74:	00009797          	auipc	a5,0x9
    80002c78:	f247b783          	ld	a5,-220(a5) # 8000bb98 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002c7c:	02078263          	beqz	a5,80002ca0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002c80:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002c84:	00009797          	auipc	a5,0x9
    80002c88:	f0a7ba23          	sd	a0,-236(a5) # 8000bb98 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002c8c:	01813083          	ld	ra,24(sp)
    80002c90:	01013403          	ld	s0,16(sp)
    80002c94:	00813483          	ld	s1,8(sp)
    80002c98:	02010113          	addi	sp,sp,32
    80002c9c:	00008067          	ret
            head = tail = elem;
    80002ca0:	00009797          	auipc	a5,0x9
    80002ca4:	ef078793          	addi	a5,a5,-272 # 8000bb90 <_ZN9Scheduler16readyThreadQueueE>
    80002ca8:	00a7b423          	sd	a0,8(a5)
    80002cac:	00a7b023          	sd	a0,0(a5)
    80002cb0:	fddff06f          	j	80002c8c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002cb4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00113423          	sd	ra,8(sp)
    80002cbc:	00813023          	sd	s0,0(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    80002cc4:	000105b7          	lui	a1,0x10
    80002cc8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002ccc:	00100513          	li	a0,1
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	ed0080e7          	jalr	-304(ra) # 80002ba0 <_Z41__static_initialization_and_destruction_0ii>
    80002cd8:	00813083          	ld	ra,8(sp)
    80002cdc:	00013403          	ld	s0,0(sp)
    80002ce0:	01010113          	addi	sp,sp,16
    80002ce4:	00008067          	ret

0000000080002ce8 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/hw.h"
#include "../h/tcb.hpp"


void Riscv::popSppSpie()
{
    80002ce8:	ff010113          	addi	sp,sp,-16
    80002cec:	00813423          	sd	s0,8(sp)
    80002cf0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002cf4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002cf8:	10200073          	sret
}
    80002cfc:	00813403          	ld	s0,8(sp)
    80002d00:	01010113          	addi	sp,sp,16
    80002d04:	00008067          	ret

0000000080002d08 <_ZN5Riscv20handleSupervisorTrapEv>:

extern "C" void Riscv::handleSupervisorTrap()
{
    80002d08:	f7010113          	addi	sp,sp,-144
    80002d0c:	08113423          	sd	ra,136(sp)
    80002d10:	08813023          	sd	s0,128(sp)
    80002d14:	06913c23          	sd	s1,120(sp)
    80002d18:	09010413          	addi	s0,sp,144
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002d1c:	142027f3          	csrr	a5,scause
    80002d20:	faf43423          	sd	a5,-88(s0)
    return scause;
    80002d24:	fa843483          	ld	s1,-88(s0)
    //prvo citamo scause registar da bi privatili samo ecall (korisnicki ili sistemski)
    uint64 scauseReg = r_scause();
    if(scauseReg==0x8000000000000001UL){//
    80002d28:	fff00793          	li	a5,-1
    80002d2c:	03f79793          	slli	a5,a5,0x3f
    80002d30:	00178793          	addi	a5,a5,1
    80002d34:	0cf48463          	beq	s1,a5,80002dfc <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
        }
        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if(scauseReg==0x8000000000000009UL){
    80002d38:	fff00793          	li	a5,-1
    80002d3c:	03f79793          	slli	a5,a5,0x3f
    80002d40:	00978793          	addi	a5,a5,9
    80002d44:	12f48c63          	beq	s1,a5,80002e7c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
        //za sada koristimo iz date biblioteke
        //console_handler();
        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if(scauseReg == 0x08 || scauseReg == 0x09)
    80002d48:	ff848793          	addi	a5,s1,-8
    80002d4c:	00100713          	li	a4,1
    80002d50:	3af76263          	bltu	a4,a5,800030f4 <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002d54:	141027f3          	csrr	a5,sepc
    80002d58:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002d5c:	fd843783          	ld	a5,-40(s0)
    {
        //sepc i sstatus citamo stare sepc uvecavamo da po povratku iz prekida ne bi ponovo izvrsavao prekid

        uint64 volatile sepc = r_sepc() + 4;
    80002d60:	00478793          	addi	a5,a5,4
    80002d64:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002d68:	100027f3          	csrr	a5,sstatus
    80002d6c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002d70:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002d74:	faf43023          	sd	a5,-96(s0)
        uint64 code;
        __asm__ volatile("mv %0, a0" : "=r" (code));
    80002d78:	00050793          	mv	a5,a0
        if(code == 0x01)
    80002d7c:	18e78463          	beq	a5,a4,80002f04 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            size = (size_t)rsize;
            void* p = MemAllocator::mem_alloc(size);
            uint64 ptr = (uint64)p;
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ptr));
        }
        else if(code == 0x02)
    80002d80:	00200713          	li	a4,2
    80002d84:	1ae78a63          	beq	a5,a4,80002f38 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
            __asm__ volatile("mv %0, a1" : "=r" (rptr));
            ptr = (void*)rptr;
            uint64 ret = (uint64)MemAllocator::mem_free(ptr);
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
        }
        else if(code == 0x11)
    80002d88:	01100713          	li	a4,17
    80002d8c:	1ce78063          	beq	a5,a4,80002f4c <_ZN5Riscv20handleSupervisorTrapEv+0x244>
                ret = 0;
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }

        }
        else if(code == 0x12){
    80002d90:	01200713          	li	a4,18
    80002d94:	1ee78863          	beq	a5,a4,80002f84 <_ZN5Riscv20handleSupervisorTrapEv+0x27c>
            TCB::running->setFinished(true);
            TCB::dispatch();
            uint64 ret = 0;
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
        }
        else if (code == 0x13) {
    80002d98:	01300713          	li	a4,19
    80002d9c:	20e78863          	beq	a5,a4,80002fac <_ZN5Riscv20handleSupervisorTrapEv+0x2a4>
            //thread_dispatch
            TCB::dispatch();
        }
        else if (code == 0x21)
    80002da0:	02100713          	li	a4,33
    80002da4:	20e78a63          	beq	a5,a4,80002fb8 <_ZN5Riscv20handleSupervisorTrapEv+0x2b0>
                ret = 0;
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }

        }
        else if(code == 0x22)
    80002da8:	02200713          	li	a4,34
    80002dac:	24e78063          	beq	a5,a4,80002fec <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
            {
                ret = handle->close();
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x23)
    80002db0:	02300713          	li	a4,35
    80002db4:	24e78e63          	beq	a5,a4,80003010 <_ZN5Riscv20handleSupervisorTrapEv+0x308>
            {
                ret = handle->mwait();
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x24)
    80002db8:	02400713          	li	a4,36
    80002dbc:	26e78c63          	beq	a5,a4,80003034 <_ZN5Riscv20handleSupervisorTrapEv+0x32c>
            {
                ret = handle->msignal();
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x25)
    80002dc0:	02500713          	li	a4,37
    80002dc4:	28e78a63          	beq	a5,a4,80003058 <_ZN5Riscv20handleSupervisorTrapEv+0x350>
            {
                ret = handle->sem_timedwait(timeout);
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x26)
    80002dc8:	02600713          	li	a4,38
    80002dcc:	2ae78a63          	beq	a5,a4,80003080 <_ZN5Riscv20handleSupervisorTrapEv+0x378>
            {
                ret = handle->sem_trywait();
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
            }
        }
        else if(code == 0x31)
    80002dd0:	03100713          	li	a4,49
    80002dd4:	2ce78863          	beq	a5,a4,800030a4 <_ZN5Riscv20handleSupervisorTrapEv+0x39c>
            {
                ret = -2;
            }
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
        }
        else if(code == 0x41)
    80002dd8:	04100713          	li	a4,65
    80002ddc:	30e78463          	beq	a5,a4,800030e4 <_ZN5Riscv20handleSupervisorTrapEv+0x3dc>
        {
            //getc()
            char c = Cconsole::getChIn();
            __asm__ volatile("sd %0, 80(fp)" : : "r"(c));
        }
        else if(code == 0x42)
    80002de0:	04200713          	li	a4,66
    80002de4:	12e79863          	bne	a5,a4,80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
        {
            //putc
            uint64 c;
            char ch;
            __asm__ volatile("mv %0, a1" : "=r" (c));
    80002de8:	00058513          	mv	a0,a1
            ch = (char)c;
            //__putc(ch);
            Cconsole::putChOut(ch);
    80002dec:	0ff57513          	andi	a0,a0,255
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	748080e7          	jalr	1864(ra) # 80003538 <_ZN8Cconsole8putChOutEc>
    80002df8:	11c0006f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002dfc:	141027f3          	csrr	a5,sepc
    80002e00:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002e04:	fb843783          	ld	a5,-72(s0)
        uint64 volatile sepc = r_sepc();
    80002e08:	f6f43c23          	sd	a5,-136(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002e0c:	100027f3          	csrr	a5,sstatus
    80002e10:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002e14:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    80002e18:	f8f43023          	sd	a5,-128(s0)
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002e1c:	00200793          	li	a5,2
    80002e20:	1447b073          	csrc	sip,a5
        sleepList::clock();
    80002e24:	ffffe097          	auipc	ra,0xffffe
    80002e28:	7b4080e7          	jalr	1972(ra) # 800015d8 <_ZN9sleepList5clockEv>
        sleepList::cleanFinished();
    80002e2c:	fffff097          	auipc	ra,0xfffff
    80002e30:	844080e7          	jalr	-1980(ra) # 80001670 <_ZN9sleepList13cleanFinishedEv>
        TCB::timeSliceCounter++;
    80002e34:	00009717          	auipc	a4,0x9
    80002e38:	cac73703          	ld	a4,-852(a4) # 8000bae0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e3c:	00073783          	ld	a5,0(a4)
    80002e40:	00178793          	addi	a5,a5,1
    80002e44:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002e48:	00009717          	auipc	a4,0x9
    80002e4c:	cb073703          	ld	a4,-848(a4) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002e50:	00073703          	ld	a4,0(a4)

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }
    80002e54:	02073703          	ld	a4,32(a4)
    80002e58:	00e7fc63          	bgeu	a5,a4,80002e70 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
        w_sstatus(sstatus);
    80002e5c:	f8043783          	ld	a5,-128(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002e60:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002e64:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002e68:	14179073          	csrw	sepc,a5
}
    80002e6c:	0b80006f          	j	80002f24 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
            TCB::dispatch();
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	588080e7          	jalr	1416(ra) # 800023f8 <_ZN3TCB8dispatchEv>
    80002e78:	fe5ff06f          	j	80002e5c <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002e7c:	141027f3          	csrr	a5,sepc
    80002e80:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002e84:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc();
    80002e88:	f8f43423          	sd	a5,-120(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002e8c:	100027f3          	csrr	a5,sstatus
    80002e90:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002e94:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80002e98:	f8f43823          	sd	a5,-112(s0)
        if(plic_claim() == CONSOLE_IRQ) {
    80002e9c:	00004097          	auipc	ra,0x4
    80002ea0:	668080e7          	jalr	1640(ra) # 80007504 <plic_claim>
    80002ea4:	00a00793          	li	a5,10
    80002ea8:	00f50c63          	beq	a0,a5,80002ec0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
        w_sepc(sepc);
    80002eac:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002eb0:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002eb4:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002eb8:	10079073          	csrw	sstatus,a5
}
    80002ebc:	0680006f          	j	80002f24 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
            while (*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002ec0:	00009797          	auipc	a5,0x9
    80002ec4:	c087b783          	ld	a5,-1016(a5) # 8000bac8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ec8:	0007b783          	ld	a5,0(a5)
    80002ecc:	0007c783          	lbu	a5,0(a5)
    80002ed0:	0017f793          	andi	a5,a5,1
    80002ed4:	02078063          	beqz	a5,80002ef4 <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
                Cconsole::putChIn(*(char *) CONSOLE_RX_DATA);
    80002ed8:	00009797          	auipc	a5,0x9
    80002edc:	be87b783          	ld	a5,-1048(a5) # 8000bac0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ee0:	0007b783          	ld	a5,0(a5)
    80002ee4:	0007c503          	lbu	a0,0(a5)
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	61c080e7          	jalr	1564(ra) # 80003504 <_ZN8Cconsole7putChInEc>
            while (*(char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002ef0:	fd1ff06f          	j	80002ec0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
            plic_complete(CONSOLE_IRQ);
    80002ef4:	00a00513          	li	a0,10
    80002ef8:	00004097          	auipc	ra,0x4
    80002efc:	644080e7          	jalr	1604(ra) # 8000753c <plic_complete>
    80002f00:	fadff06f          	j	80002eac <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
            __asm__ volatile("mv %0, a1" : "=r" (rsize));
    80002f04:	00058513          	mv	a0,a1
            void* p = MemAllocator::mem_alloc(size);
    80002f08:	fffff097          	auipc	ra,0xfffff
    80002f0c:	174080e7          	jalr	372(ra) # 8000207c <_ZN12MemAllocator9mem_allocEm>
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ptr));
    80002f10:	04a43823          	sd	a0,80(s0)
        else
        {
            //TCB::dispatch();
        }
        //upisujemo nove
        w_sstatus(sstatus);
    80002f14:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002f18:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002f1c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002f20:	14179073          	csrw	sepc,a5
        thread_dispatch();
        __asm__ volatile("li a0,0x5555");
        __asm__ volatile("li a1,0x100000");
        __asm__ volatile("sw a0, 0(a1)");
    }
    80002f24:	08813083          	ld	ra,136(sp)
    80002f28:	08013403          	ld	s0,128(sp)
    80002f2c:	07813483          	ld	s1,120(sp)
    80002f30:	09010113          	addi	sp,sp,144
    80002f34:	00008067          	ret
            __asm__ volatile("mv %0, a1" : "=r" (rptr));
    80002f38:	00058513          	mv	a0,a1
            uint64 ret = (uint64)MemAllocator::mem_free(ptr);
    80002f3c:	fffff097          	auipc	ra,0xfffff
    80002f40:	268080e7          	jalr	616(ra) # 800021a4 <_ZN12MemAllocator8mem_freeEPv>
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80002f44:	04a43823          	sd	a0,80(s0)
    80002f48:	fcdff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            __asm__ volatile("mv %0, a1" : "=r" (handle));
    80002f4c:	00058493          	mv	s1,a1
            __asm__ volatile("mv %0, a2" : "=r" (body));
    80002f50:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a3" : "=r" (arg));
    80002f54:	00068593          	mv	a1,a3
            *handle = TCB::createThread(body, arg, nullptr);
    80002f58:	00000613          	li	a2,0
    80002f5c:	fffff097          	auipc	ra,0xfffff
    80002f60:	324080e7          	jalr	804(ra) # 80002280 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002f64:	00a4b023          	sd	a0,0(s1)
            if(*handle == nullptr)
    80002f68:	00050863          	beqz	a0,80002f78 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80002f6c:	00000793          	li	a5,0
    80002f70:	04f43823          	sd	a5,80(s0)
    80002f74:	fa1ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80002f78:	fff00793          	li	a5,-1
    80002f7c:	04f43823          	sd	a5,80(s0)
    80002f80:	f95ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            TCB::running->setFinished(true);
    80002f84:	00009797          	auipc	a5,0x9
    80002f88:	b747b783          	ld	a5,-1164(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002f8c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002f90:	00100713          	li	a4,1
    80002f94:	02e78423          	sb	a4,40(a5)
            TCB::dispatch();
    80002f98:	fffff097          	auipc	ra,0xfffff
    80002f9c:	460080e7          	jalr	1120(ra) # 800023f8 <_ZN3TCB8dispatchEv>
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80002fa0:	00000793          	li	a5,0
    80002fa4:	04f43823          	sd	a5,80(s0)
    80002fa8:	f6dff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            TCB::dispatch();
    80002fac:	fffff097          	auipc	ra,0xfffff
    80002fb0:	44c080e7          	jalr	1100(ra) # 800023f8 <_ZN3TCB8dispatchEv>
    80002fb4:	f61ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            __asm__ volatile("mv %0, a2" : "=r" (init));
    80002fb8:	00060513          	mv	a0,a2
            __asm__ volatile("mv %0, a1" : "=r" (hndl));
    80002fbc:	00058493          	mv	s1,a1
            *handle = Semaphore::initSem(init);
    80002fc0:	0005051b          	sext.w	a0,a0
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	ca8080e7          	jalr	-856(ra) # 80001c6c <_ZN9Semaphore7initSemEi>
    80002fcc:	00a4b023          	sd	a0,0(s1)
            if(*handle == nullptr)
    80002fd0:	00050863          	beqz	a0,80002fe0 <_ZN5Riscv20handleSupervisorTrapEv+0x2d8>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80002fd4:	00000793          	li	a5,0
    80002fd8:	04f43823          	sd	a5,80(s0)
    80002fdc:	f39ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80002fe0:	fff00793          	li	a5,-1
    80002fe4:	04f43823          	sd	a5,80(s0)
    80002fe8:	f2dff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            __asm__ volatile("mv %0, a1" : "=r" (hndl));
    80002fec:	00058513          	mv	a0,a1
            if(handle == nullptr)
    80002ff0:	00051863          	bnez	a0,80003000 <_ZN5Riscv20handleSupervisorTrapEv+0x2f8>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80002ff4:	fff00793          	li	a5,-1
    80002ff8:	04f43823          	sd	a5,80(s0)
    80002ffc:	f19ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                ret = handle->close();
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	cb4080e7          	jalr	-844(ra) # 80001cb4 <_ZN9Semaphore5closeEv>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80003008:	04a43823          	sd	a0,80(s0)
    8000300c:	f09ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            __asm__ volatile("mv %0, a1" : "=r" (hndl));
    80003010:	00058513          	mv	a0,a1
            if(handle == nullptr)
    80003014:	00051863          	bnez	a0,80003024 <_ZN5Riscv20handleSupervisorTrapEv+0x31c>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80003018:	fff00793          	li	a5,-1
    8000301c:	04f43823          	sd	a5,80(s0)
    80003020:	ef5ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                ret = handle->mwait();
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	d2c080e7          	jalr	-724(ra) # 80001d50 <_ZN9Semaphore5mwaitEv>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    8000302c:	04a43823          	sd	a0,80(s0)
    80003030:	ee5ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            __asm__ volatile("mv %0, a1" : "=r" (handle));
    80003034:	00058513          	mv	a0,a1
            if(handle == nullptr)
    80003038:	00050a63          	beqz	a0,8000304c <_ZN5Riscv20handleSupervisorTrapEv+0x344>
                ret = handle->msignal();
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	de4080e7          	jalr	-540(ra) # 80001e20 <_ZN9Semaphore7msignalEv>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80003044:	04a43823          	sd	a0,80(s0)
    80003048:	ecdff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    8000304c:	fff00793          	li	a5,-1
    80003050:	04f43823          	sd	a5,80(s0)
    80003054:	ec1ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            __asm__ volatile("mv %0, a1" : "=r" (hndl));
    80003058:	00058513          	mv	a0,a1
            __asm__ volatile("mv %0, a2" : "=r" (tmt));
    8000305c:	00060593          	mv	a1,a2
            if(handle == nullptr)
    80003060:	00051863          	bnez	a0,80003070 <_ZN5Riscv20handleSupervisorTrapEv+0x368>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80003064:	fff00793          	li	a5,-1
    80003068:	04f43823          	sd	a5,80(s0)
    8000306c:	ea9ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                ret = handle->sem_timedwait(timeout);
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	e6c080e7          	jalr	-404(ra) # 80001edc <_ZN9Semaphore13sem_timedwaitEm>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80003078:	04a43823          	sd	a0,80(s0)
    8000307c:	e99ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            __asm__ volatile("mv %0, a1" : "=r" (hndl));
    80003080:	00058513          	mv	a0,a1
            if(handle == nullptr)
    80003084:	00051863          	bnez	a0,80003094 <_ZN5Riscv20handleSupervisorTrapEv+0x38c>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80003088:	fff00793          	li	a5,-1
    8000308c:	04f43823          	sd	a5,80(s0)
    80003090:	e85ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                ret = handle->sem_trywait();
    80003094:	fffff097          	auipc	ra,0xfffff
    80003098:	f64080e7          	jalr	-156(ra) # 80001ff8 <_ZN9Semaphore11sem_trywaitEv>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    8000309c:	04a43823          	sd	a0,80(s0)
    800030a0:	e75ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
            __asm__ volatile("mv %0, a1" : "=r" (t));
    800030a4:	00058593          	mv	a1,a1
            if(time == 0)
    800030a8:	00059863          	bnez	a1,800030b8 <_ZN5Riscv20handleSupervisorTrapEv+0x3b0>
            __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    800030ac:	00000793          	li	a5,0
    800030b0:	04f43823          	sd	a5,80(s0)
    800030b4:	e61ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                int s = TCB::running->readStatus();
    800030b8:	00009797          	auipc	a5,0x9
    800030bc:	a407b783          	ld	a5,-1472(a5) # 8000baf8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800030c0:	0007b503          	ld	a0,0(a5)
    int readStatus(){ return status; }
    800030c4:	03852783          	lw	a5,56(a0)
                s = s | 2;
    800030c8:	0027e793          	ori	a5,a5,2
    void setStatus(int s) { status = s; }
    800030cc:	02f52c23          	sw	a5,56(a0)
                sleepList::add(TCB::running, time);
    800030d0:	ffffe097          	auipc	ra,0xffffe
    800030d4:	418080e7          	jalr	1048(ra) # 800014e8 <_ZN9sleepList3addEP3TCBm>
                thread_dispatch();
    800030d8:	ffffe097          	auipc	ra,0xffffe
    800030dc:	214080e7          	jalr	532(ra) # 800012ec <_Z15thread_dispatchv>
                ret = 0;
    800030e0:	fcdff06f          	j	800030ac <_ZN5Riscv20handleSupervisorTrapEv+0x3a4>
            char c = Cconsole::getChIn();
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	488080e7          	jalr	1160(ra) # 8000356c <_ZN8Cconsole7getChInEv>
            __asm__ volatile("sd %0, 80(fp)" : : "r"(c));
    800030ec:	04a43823          	sd	a0,80(s0)
    800030f0:	e25ff06f          	j	80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
        mprintString("\nunexpected trap cause: ");
    800030f4:	00006517          	auipc	a0,0x6
    800030f8:	02c50513          	addi	a0,a0,44 # 80009120 <CONSOLE_STATUS+0x110>
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	26c080e7          	jalr	620(ra) # 80003368 <_Z12mprintStringPKc>
        printInteger(scauseReg);
    80003104:	00048513          	mv	a0,s1
    80003108:	00000097          	auipc	ra,0x0
    8000310c:	2a4080e7          	jalr	676(ra) # 800033ac <_Z12printIntegerm>
        mprintString("\n");
    80003110:	00006517          	auipc	a0,0x6
    80003114:	34850513          	addi	a0,a0,840 # 80009458 <CONSOLE_STATUS+0x448>
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	250080e7          	jalr	592(ra) # 80003368 <_Z12mprintStringPKc>
        thread_dispatch();
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	1cc080e7          	jalr	460(ra) # 800012ec <_Z15thread_dispatchv>
        __asm__ volatile("li a0,0x5555");
    80003128:	00005537          	lui	a0,0x5
    8000312c:	5555051b          	addiw	a0,a0,1365
        __asm__ volatile("li a1,0x100000");
    80003130:	001005b7          	lui	a1,0x100
        __asm__ volatile("sw a0, 0(a1)");
    80003134:	00a5a023          	sw	a0,0(a1) # 100000 <_entry-0x7ff00000>
    80003138:	dedff06f          	j	80002f24 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>

000000008000313c <_ZN5BuferC1Ei>:
#include "../h/bufer.hpp"

Bufer::Bufer(int size) : size(size){
    8000313c:	fe010113          	addi	sp,sp,-32
    80003140:	00113c23          	sd	ra,24(sp)
    80003144:	00813823          	sd	s0,16(sp)
    80003148:	00913423          	sd	s1,8(sp)
    8000314c:	01213023          	sd	s2,0(sp)
    80003150:	02010413          	addi	s0,sp,32
    80003154:	00050493          	mv	s1,a0
    80003158:	00058913          	mv	s2,a1
    8000315c:	00052423          	sw	zero,8(a0) # 5008 <_entry-0x7fffaff8>
    80003160:	00052623          	sw	zero,12(a0)
    80003164:	00b52823          	sw	a1,16(a0)

    buff = (int *)mem_alloc(sizeof(int) * size);
    80003168:	00259513          	slli	a0,a1,0x2
    8000316c:	ffffe097          	auipc	ra,0xffffe
    80003170:	0d8080e7          	jalr	216(ra) # 80001244 <_Z9mem_allocm>
    80003174:	00a4b023          	sd	a0,0(s1)
    semItem = Semaphore::initSem(0);
    80003178:	00000513          	li	a0,0
    8000317c:	fffff097          	auipc	ra,0xfffff
    80003180:	af0080e7          	jalr	-1296(ra) # 80001c6c <_ZN9Semaphore7initSemEi>
    80003184:	02a4b023          	sd	a0,32(s1)
    semSpace = Semaphore::initSem(size);
    80003188:	00090513          	mv	a0,s2
    8000318c:	fffff097          	auipc	ra,0xfffff
    80003190:	ae0080e7          	jalr	-1312(ra) # 80001c6c <_ZN9Semaphore7initSemEi>
    80003194:	00a4bc23          	sd	a0,24(s1)
}
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	00013903          	ld	s2,0(sp)
    800031a8:	02010113          	addi	sp,sp,32
    800031ac:	00008067          	ret

00000000800031b0 <_ZN5Bufer5putChEi>:
    mem_free(buff);
    semSpace->close();
    semItem->close();
}

void Bufer::putCh(int i) {
    800031b0:	fe010113          	addi	sp,sp,-32
    800031b4:	00113c23          	sd	ra,24(sp)
    800031b8:	00813823          	sd	s0,16(sp)
    800031bc:	00913423          	sd	s1,8(sp)
    800031c0:	01213023          	sd	s2,0(sp)
    800031c4:	02010413          	addi	s0,sp,32
    800031c8:	00050493          	mv	s1,a0
    800031cc:	00058913          	mv	s2,a1

    semSpace->mwait();
    800031d0:	01853503          	ld	a0,24(a0)
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	b7c080e7          	jalr	-1156(ra) # 80001d50 <_ZN9Semaphore5mwaitEv>

    buff[tail] = i;
    800031dc:	0004b783          	ld	a5,0(s1)
    800031e0:	00c4a703          	lw	a4,12(s1)
    800031e4:	00271713          	slli	a4,a4,0x2
    800031e8:	00e787b3          	add	a5,a5,a4
    800031ec:	0127a023          	sw	s2,0(a5)

    tail = (tail + 1) % size;
    800031f0:	00c4a783          	lw	a5,12(s1)
    800031f4:	0017879b          	addiw	a5,a5,1
    800031f8:	0104a703          	lw	a4,16(s1)
    800031fc:	02e7e7bb          	remw	a5,a5,a4
    80003200:	00f4a623          	sw	a5,12(s1)

    semItem->msignal();
    80003204:	0204b503          	ld	a0,32(s1)
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	c18080e7          	jalr	-1000(ra) # 80001e20 <_ZN9Semaphore7msignalEv>
}
    80003210:	01813083          	ld	ra,24(sp)
    80003214:	01013403          	ld	s0,16(sp)
    80003218:	00813483          	ld	s1,8(sp)
    8000321c:	00013903          	ld	s2,0(sp)
    80003220:	02010113          	addi	sp,sp,32
    80003224:	00008067          	ret

0000000080003228 <_ZN5Bufer5getChEv>:

int Bufer::getCh() {
    80003228:	fe010113          	addi	sp,sp,-32
    8000322c:	00113c23          	sd	ra,24(sp)
    80003230:	00813823          	sd	s0,16(sp)
    80003234:	00913423          	sd	s1,8(sp)
    80003238:	01213023          	sd	s2,0(sp)
    8000323c:	02010413          	addi	s0,sp,32
    80003240:	00050493          	mv	s1,a0

    semItem->mwait();
    80003244:	02053503          	ld	a0,32(a0)
    80003248:	fffff097          	auipc	ra,0xfffff
    8000324c:	b08080e7          	jalr	-1272(ra) # 80001d50 <_ZN9Semaphore5mwaitEv>

    int ret = buff[head];
    80003250:	0004b703          	ld	a4,0(s1)
    80003254:	0084a783          	lw	a5,8(s1)
    80003258:	00279693          	slli	a3,a5,0x2
    8000325c:	00d70733          	add	a4,a4,a3
    80003260:	00072903          	lw	s2,0(a4)

    head = (head + 1) % size;
    80003264:	0017879b          	addiw	a5,a5,1
    80003268:	0104a703          	lw	a4,16(s1)
    8000326c:	02e7e7bb          	remw	a5,a5,a4
    80003270:	00f4a423          	sw	a5,8(s1)

    semSpace->msignal();
    80003274:	0184b503          	ld	a0,24(s1)
    80003278:	fffff097          	auipc	ra,0xfffff
    8000327c:	ba8080e7          	jalr	-1112(ra) # 80001e20 <_ZN9Semaphore7msignalEv>

    return ret;
}
    80003280:	00090513          	mv	a0,s2
    80003284:	01813083          	ld	ra,24(sp)
    80003288:	01013403          	ld	s0,16(sp)
    8000328c:	00813483          	ld	s1,8(sp)
    80003290:	00013903          	ld	s2,0(sp)
    80003294:	02010113          	addi	sp,sp,32
    80003298:	00008067          	ret

000000008000329c <_ZN5Bufer6getCntEv>:

int Bufer::getCnt() {
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00813423          	sd	s0,8(sp)
    800032a4:	01010413          	addi	s0,sp,16

    int ret;

    if (tail >= head) {
    800032a8:	00c52783          	lw	a5,12(a0)
    800032ac:	00852703          	lw	a4,8(a0)
    800032b0:	00e7ca63          	blt	a5,a4,800032c4 <_ZN5Bufer6getCntEv+0x28>
        ret = tail - head;
    800032b4:	40e7853b          	subw	a0,a5,a4
    else {
        ret = size - head + tail;
    }

    return ret;
}
    800032b8:	00813403          	ld	s0,8(sp)
    800032bc:	01010113          	addi	sp,sp,16
    800032c0:	00008067          	ret
        ret = size - head + tail;
    800032c4:	01052503          	lw	a0,16(a0)
    800032c8:	40e5053b          	subw	a0,a0,a4
    800032cc:	00f5053b          	addw	a0,a0,a5
    800032d0:	fe9ff06f          	j	800032b8 <_ZN5Bufer6getCntEv+0x1c>

00000000800032d4 <_ZN5BuferD1Ev>:
Bufer::~Bufer() {
    800032d4:	fe010113          	addi	sp,sp,-32
    800032d8:	00113c23          	sd	ra,24(sp)
    800032dc:	00813823          	sd	s0,16(sp)
    800032e0:	00913423          	sd	s1,8(sp)
    800032e4:	02010413          	addi	s0,sp,32
    800032e8:	00050493          	mv	s1,a0
    while (getCnt() > 0) {
    800032ec:	00048513          	mv	a0,s1
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	fac080e7          	jalr	-84(ra) # 8000329c <_ZN5Bufer6getCntEv>
    800032f8:	02a05c63          	blez	a0,80003330 <_ZN5BuferD1Ev+0x5c>
        char ch = buff[head];
    800032fc:	0004b783          	ld	a5,0(s1)
    80003300:	0084a703          	lw	a4,8(s1)
    80003304:	00271713          	slli	a4,a4,0x2
    80003308:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000330c:	0007c503          	lbu	a0,0(a5)
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	1b0080e7          	jalr	432(ra) # 800014c0 <_Z4putcc>
        head = (head + 1) % size;
    80003318:	0084a783          	lw	a5,8(s1)
    8000331c:	0017879b          	addiw	a5,a5,1
    80003320:	0104a703          	lw	a4,16(s1)
    80003324:	02e7e7bb          	remw	a5,a5,a4
    80003328:	00f4a423          	sw	a5,8(s1)
    while (getCnt() > 0) {
    8000332c:	fc1ff06f          	j	800032ec <_ZN5BuferD1Ev+0x18>
    mem_free(buff);
    80003330:	0004b503          	ld	a0,0(s1)
    80003334:	ffffe097          	auipc	ra,0xffffe
    80003338:	f50080e7          	jalr	-176(ra) # 80001284 <_Z8mem_freePv>
    semSpace->close();
    8000333c:	0184b503          	ld	a0,24(s1)
    80003340:	fffff097          	auipc	ra,0xfffff
    80003344:	974080e7          	jalr	-1676(ra) # 80001cb4 <_ZN9Semaphore5closeEv>
    semItem->close();
    80003348:	0204b503          	ld	a0,32(s1)
    8000334c:	fffff097          	auipc	ra,0xfffff
    80003350:	968080e7          	jalr	-1688(ra) # 80001cb4 <_ZN9Semaphore5closeEv>
}
    80003354:	01813083          	ld	ra,24(sp)
    80003358:	01013403          	ld	s0,16(sp)
    8000335c:	00813483          	ld	s1,8(sp)
    80003360:	02010113          	addi	sp,sp,32
    80003364:	00008067          	ret

0000000080003368 <_Z12mprintStringPKc>:
#include "../h/print.hpp"
#include "../h/syscall_c.h"

void mprintString(char const *string)
{
    80003368:	fe010113          	addi	sp,sp,-32
    8000336c:	00113c23          	sd	ra,24(sp)
    80003370:	00813823          	sd	s0,16(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	02010413          	addi	s0,sp,32
    8000337c:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003380:	0004c503          	lbu	a0,0(s1)
    80003384:	00050a63          	beqz	a0,80003398 <_Z12mprintStringPKc+0x30>
    {
        putc(*string);
    80003388:	ffffe097          	auipc	ra,0xffffe
    8000338c:	138080e7          	jalr	312(ra) # 800014c0 <_Z4putcc>
        string++;
    80003390:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003394:	fedff06f          	j	80003380 <_Z12mprintStringPKc+0x18>
    }
}
    80003398:	01813083          	ld	ra,24(sp)
    8000339c:	01013403          	ld	s0,16(sp)
    800033a0:	00813483          	ld	s1,8(sp)
    800033a4:	02010113          	addi	sp,sp,32
    800033a8:	00008067          	ret

00000000800033ac <_Z12printIntegerm>:

void printInteger(uint64 xx)
{
    800033ac:	fb010113          	addi	sp,sp,-80
    800033b0:	04113423          	sd	ra,72(sp)
    800033b4:	04813023          	sd	s0,64(sp)
    800033b8:	02913c23          	sd	s1,56(sp)
    800033bc:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800033c0:	00006797          	auipc	a5,0x6
    800033c4:	d8078793          	addi	a5,a5,-640 # 80009140 <CONSOLE_STATUS+0x130>
    800033c8:	0007b703          	ld	a4,0(a5)
    800033cc:	fce43423          	sd	a4,-56(s0)
    800033d0:	0087b703          	ld	a4,8(a5)
    800033d4:	fce43823          	sd	a4,-48(s0)
    800033d8:	0107c783          	lbu	a5,16(a5)
    800033dc:	fcf40c23          	sb	a5,-40(s0)
    neg = 0;
    if(sgn && xx < 0){
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800033e0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800033e4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800033e8:	00a00693          	li	a3,10
    800033ec:	02d5773b          	remuw	a4,a0,a3
    800033f0:	02071713          	slli	a4,a4,0x20
    800033f4:	02075713          	srli	a4,a4,0x20
    800033f8:	fe040613          	addi	a2,s0,-32
    800033fc:	00e60733          	add	a4,a2,a4
    80003400:	fe874703          	lbu	a4,-24(a4)
    80003404:	009607b3          	add	a5,a2,s1
    80003408:	0014849b          	addiw	s1,s1,1
    8000340c:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003410:	0005071b          	sext.w	a4,a0
    80003414:	02d5553b          	divuw	a0,a0,a3
    80003418:	00900793          	li	a5,9
    8000341c:	fce7e6e3          	bltu	a5,a4,800033e8 <_Z12printIntegerm+0x3c>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003420:	fff4849b          	addiw	s1,s1,-1
    80003424:	0004ce63          	bltz	s1,80003440 <_Z12printIntegerm+0x94>
        putc(buf[i]);
    80003428:	fe040793          	addi	a5,s0,-32
    8000342c:	009787b3          	add	a5,a5,s1
    80003430:	fd87c503          	lbu	a0,-40(a5)
    80003434:	ffffe097          	auipc	ra,0xffffe
    80003438:	08c080e7          	jalr	140(ra) # 800014c0 <_Z4putcc>
    8000343c:	fe5ff06f          	j	80003420 <_Z12printIntegerm+0x74>

}
    80003440:	04813083          	ld	ra,72(sp)
    80003444:	04013403          	ld	s0,64(sp)
    80003448:	03813483          	ld	s1,56(sp)
    8000344c:	05010113          	addi	sp,sp,80
    80003450:	00008067          	ret

0000000080003454 <_ZN8Cconsole10init_conslEv>:

Bufer* Cconsole::bIn = nullptr;
Bufer* Cconsole::bOut = nullptr;

void Cconsole::init_consl()
{
    80003454:	fe010113          	addi	sp,sp,-32
    80003458:	00113c23          	sd	ra,24(sp)
    8000345c:	00813823          	sd	s0,16(sp)
    80003460:	00913423          	sd	s1,8(sp)
    80003464:	01213023          	sd	s2,0(sp)
    80003468:	02010413          	addi	s0,sp,32
    bIn = new Bufer(256);//bGet
    8000346c:	02800513          	li	a0,40
    80003470:	fffff097          	auipc	ra,0xfffff
    80003474:	000080e7          	jalr	ra # 80002470 <_Znwm>
    80003478:	00050493          	mv	s1,a0
    8000347c:	10000593          	li	a1,256
    80003480:	00000097          	auipc	ra,0x0
    80003484:	cbc080e7          	jalr	-836(ra) # 8000313c <_ZN5BuferC1Ei>
    80003488:	00008797          	auipc	a5,0x8
    8000348c:	7097bc23          	sd	s1,1816(a5) # 8000bba0 <_ZN8Cconsole3bInE>
    bOut = new Bufer(256);//bPut
    80003490:	02800513          	li	a0,40
    80003494:	fffff097          	auipc	ra,0xfffff
    80003498:	fdc080e7          	jalr	-36(ra) # 80002470 <_Znwm>
    8000349c:	00050493          	mv	s1,a0
    800034a0:	10000593          	li	a1,256
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	c98080e7          	jalr	-872(ra) # 8000313c <_ZN5BuferC1Ei>
    800034ac:	00008797          	auipc	a5,0x8
    800034b0:	6e97be23          	sd	s1,1788(a5) # 8000bba8 <_ZN8Cconsole4bOutE>
}
    800034b4:	01813083          	ld	ra,24(sp)
    800034b8:	01013403          	ld	s0,16(sp)
    800034bc:	00813483          	ld	s1,8(sp)
    800034c0:	00013903          	ld	s2,0(sp)
    800034c4:	02010113          	addi	sp,sp,32
    800034c8:	00008067          	ret
    800034cc:	00050913          	mv	s2,a0
    bIn = new Bufer(256);//bGet
    800034d0:	00048513          	mv	a0,s1
    800034d4:	fffff097          	auipc	ra,0xfffff
    800034d8:	fec080e7          	jalr	-20(ra) # 800024c0 <_ZdlPv>
    800034dc:	00090513          	mv	a0,s2
    800034e0:	00009097          	auipc	ra,0x9
    800034e4:	7e8080e7          	jalr	2024(ra) # 8000ccc8 <_Unwind_Resume>
    800034e8:	00050913          	mv	s2,a0
    bOut = new Bufer(256);//bPut
    800034ec:	00048513          	mv	a0,s1
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	fd0080e7          	jalr	-48(ra) # 800024c0 <_ZdlPv>
    800034f8:	00090513          	mv	a0,s2
    800034fc:	00009097          	auipc	ra,0x9
    80003500:	7cc080e7          	jalr	1996(ra) # 8000ccc8 <_Unwind_Resume>

0000000080003504 <_ZN8Cconsole7putChInEc>:

void Cconsole::putChIn(char c)
{
    80003504:	ff010113          	addi	sp,sp,-16
    80003508:	00113423          	sd	ra,8(sp)
    8000350c:	00813023          	sd	s0,0(sp)
    80003510:	01010413          	addi	s0,sp,16
    80003514:	00050593          	mv	a1,a0
    bIn->putCh(c);
    80003518:	00008517          	auipc	a0,0x8
    8000351c:	68853503          	ld	a0,1672(a0) # 8000bba0 <_ZN8Cconsole3bInE>
    80003520:	00000097          	auipc	ra,0x0
    80003524:	c90080e7          	jalr	-880(ra) # 800031b0 <_ZN5Bufer5putChEi>
}
    80003528:	00813083          	ld	ra,8(sp)
    8000352c:	00013403          	ld	s0,0(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret

0000000080003538 <_ZN8Cconsole8putChOutEc>:
void Cconsole::putChOut(char c)
{
    80003538:	ff010113          	addi	sp,sp,-16
    8000353c:	00113423          	sd	ra,8(sp)
    80003540:	00813023          	sd	s0,0(sp)
    80003544:	01010413          	addi	s0,sp,16
    80003548:	00050593          	mv	a1,a0
    bOut->putCh(c);
    8000354c:	00008517          	auipc	a0,0x8
    80003550:	65c53503          	ld	a0,1628(a0) # 8000bba8 <_ZN8Cconsole4bOutE>
    80003554:	00000097          	auipc	ra,0x0
    80003558:	c5c080e7          	jalr	-932(ra) # 800031b0 <_ZN5Bufer5putChEi>
}
    8000355c:	00813083          	ld	ra,8(sp)
    80003560:	00013403          	ld	s0,0(sp)
    80003564:	01010113          	addi	sp,sp,16
    80003568:	00008067          	ret

000000008000356c <_ZN8Cconsole7getChInEv>:
char Cconsole::getChIn()
{
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00113423          	sd	ra,8(sp)
    80003574:	00813023          	sd	s0,0(sp)
    80003578:	01010413          	addi	s0,sp,16
    return bIn->getCh();
    8000357c:	00008517          	auipc	a0,0x8
    80003580:	62453503          	ld	a0,1572(a0) # 8000bba0 <_ZN8Cconsole3bInE>
    80003584:	00000097          	auipc	ra,0x0
    80003588:	ca4080e7          	jalr	-860(ra) # 80003228 <_ZN5Bufer5getChEv>
}
    8000358c:	0ff57513          	andi	a0,a0,255
    80003590:	00813083          	ld	ra,8(sp)
    80003594:	00013403          	ld	s0,0(sp)
    80003598:	01010113          	addi	sp,sp,16
    8000359c:	00008067          	ret

00000000800035a0 <_ZN8Cconsole8getChOutEv>:
char Cconsole::getChOut()
{
    800035a0:	ff010113          	addi	sp,sp,-16
    800035a4:	00113423          	sd	ra,8(sp)
    800035a8:	00813023          	sd	s0,0(sp)
    800035ac:	01010413          	addi	s0,sp,16
    return bOut->getCh();
    800035b0:	00008517          	auipc	a0,0x8
    800035b4:	5f853503          	ld	a0,1528(a0) # 8000bba8 <_ZN8Cconsole4bOutE>
    800035b8:	00000097          	auipc	ra,0x0
    800035bc:	c70080e7          	jalr	-912(ra) # 80003228 <_ZN5Bufer5getChEv>
    800035c0:	0ff57513          	andi	a0,a0,255
    800035c4:	00813083          	ld	ra,8(sp)
    800035c8:	00013403          	ld	s0,0(sp)
    800035cc:	01010113          	addi	sp,sp,16
    800035d0:	00008067          	ret

00000000800035d4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800035d4:	fe010113          	addi	sp,sp,-32
    800035d8:	00113c23          	sd	ra,24(sp)
    800035dc:	00813823          	sd	s0,16(sp)
    800035e0:	00913423          	sd	s1,8(sp)
    800035e4:	01213023          	sd	s2,0(sp)
    800035e8:	02010413          	addi	s0,sp,32
    800035ec:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800035f0:	00000913          	li	s2,0
    800035f4:	00c0006f          	j	80003600 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	cf4080e7          	jalr	-780(ra) # 800012ec <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	e94080e7          	jalr	-364(ra) # 80001494 <_Z4getcv>
    80003608:	0005059b          	sext.w	a1,a0
    8000360c:	01b00793          	li	a5,27
    80003610:	02f58a63          	beq	a1,a5,80003644 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003614:	0084b503          	ld	a0,8(s1)
    80003618:	00003097          	auipc	ra,0x3
    8000361c:	410080e7          	jalr	1040(ra) # 80006a28 <_ZN6Buffer3putEi>
        i++;
    80003620:	0019071b          	addiw	a4,s2,1
    80003624:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003628:	0004a683          	lw	a3,0(s1)
    8000362c:	0026979b          	slliw	a5,a3,0x2
    80003630:	00d787bb          	addw	a5,a5,a3
    80003634:	0017979b          	slliw	a5,a5,0x1
    80003638:	02f767bb          	remw	a5,a4,a5
    8000363c:	fc0792e3          	bnez	a5,80003600 <_ZL16producerKeyboardPv+0x2c>
    80003640:	fb9ff06f          	j	800035f8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003644:	00100793          	li	a5,1
    80003648:	00008717          	auipc	a4,0x8
    8000364c:	56f72423          	sw	a5,1384(a4) # 8000bbb0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003650:	02100593          	li	a1,33
    80003654:	0084b503          	ld	a0,8(s1)
    80003658:	00003097          	auipc	ra,0x3
    8000365c:	3d0080e7          	jalr	976(ra) # 80006a28 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003660:	0104b503          	ld	a0,16(s1)
    80003664:	ffffe097          	auipc	ra,0xffffe
    80003668:	d6c080e7          	jalr	-660(ra) # 800013d0 <_Z10sem_signalP4_sem>
}
    8000366c:	01813083          	ld	ra,24(sp)
    80003670:	01013403          	ld	s0,16(sp)
    80003674:	00813483          	ld	s1,8(sp)
    80003678:	00013903          	ld	s2,0(sp)
    8000367c:	02010113          	addi	sp,sp,32
    80003680:	00008067          	ret

0000000080003684 <_ZL8producerPv>:

static void producer(void *arg) {
    80003684:	fe010113          	addi	sp,sp,-32
    80003688:	00113c23          	sd	ra,24(sp)
    8000368c:	00813823          	sd	s0,16(sp)
    80003690:	00913423          	sd	s1,8(sp)
    80003694:	01213023          	sd	s2,0(sp)
    80003698:	02010413          	addi	s0,sp,32
    8000369c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800036a0:	00000913          	li	s2,0
    800036a4:	00c0006f          	j	800036b0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800036a8:	ffffe097          	auipc	ra,0xffffe
    800036ac:	c44080e7          	jalr	-956(ra) # 800012ec <_Z15thread_dispatchv>
    while (!threadEnd) {
    800036b0:	00008797          	auipc	a5,0x8
    800036b4:	5007a783          	lw	a5,1280(a5) # 8000bbb0 <_ZL9threadEnd>
    800036b8:	02079e63          	bnez	a5,800036f4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800036bc:	0004a583          	lw	a1,0(s1)
    800036c0:	0305859b          	addiw	a1,a1,48
    800036c4:	0084b503          	ld	a0,8(s1)
    800036c8:	00003097          	auipc	ra,0x3
    800036cc:	360080e7          	jalr	864(ra) # 80006a28 <_ZN6Buffer3putEi>
        i++;
    800036d0:	0019071b          	addiw	a4,s2,1
    800036d4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800036d8:	0004a683          	lw	a3,0(s1)
    800036dc:	0026979b          	slliw	a5,a3,0x2
    800036e0:	00d787bb          	addw	a5,a5,a3
    800036e4:	0017979b          	slliw	a5,a5,0x1
    800036e8:	02f767bb          	remw	a5,a4,a5
    800036ec:	fc0792e3          	bnez	a5,800036b0 <_ZL8producerPv+0x2c>
    800036f0:	fb9ff06f          	j	800036a8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800036f4:	0104b503          	ld	a0,16(s1)
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	cd8080e7          	jalr	-808(ra) # 800013d0 <_Z10sem_signalP4_sem>
}
    80003700:	01813083          	ld	ra,24(sp)
    80003704:	01013403          	ld	s0,16(sp)
    80003708:	00813483          	ld	s1,8(sp)
    8000370c:	00013903          	ld	s2,0(sp)
    80003710:	02010113          	addi	sp,sp,32
    80003714:	00008067          	ret

0000000080003718 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003718:	fd010113          	addi	sp,sp,-48
    8000371c:	02113423          	sd	ra,40(sp)
    80003720:	02813023          	sd	s0,32(sp)
    80003724:	00913c23          	sd	s1,24(sp)
    80003728:	01213823          	sd	s2,16(sp)
    8000372c:	01313423          	sd	s3,8(sp)
    80003730:	03010413          	addi	s0,sp,48
    80003734:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003738:	00000993          	li	s3,0
    8000373c:	01c0006f          	j	80003758 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	bac080e7          	jalr	-1108(ra) # 800012ec <_Z15thread_dispatchv>
    80003748:	0500006f          	j	80003798 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000374c:	00a00513          	li	a0,10
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	d70080e7          	jalr	-656(ra) # 800014c0 <_Z4putcc>
    while (!threadEnd) {
    80003758:	00008797          	auipc	a5,0x8
    8000375c:	4587a783          	lw	a5,1112(a5) # 8000bbb0 <_ZL9threadEnd>
    80003760:	06079063          	bnez	a5,800037c0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003764:	00893503          	ld	a0,8(s2)
    80003768:	00003097          	auipc	ra,0x3
    8000376c:	350080e7          	jalr	848(ra) # 80006ab8 <_ZN6Buffer3getEv>
        i++;
    80003770:	0019849b          	addiw	s1,s3,1
    80003774:	0004899b          	sext.w	s3,s1
        putc(key);
    80003778:	0ff57513          	andi	a0,a0,255
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	d44080e7          	jalr	-700(ra) # 800014c0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003784:	00092703          	lw	a4,0(s2)
    80003788:	0027179b          	slliw	a5,a4,0x2
    8000378c:	00e787bb          	addw	a5,a5,a4
    80003790:	02f4e7bb          	remw	a5,s1,a5
    80003794:	fa0786e3          	beqz	a5,80003740 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003798:	05000793          	li	a5,80
    8000379c:	02f4e4bb          	remw	s1,s1,a5
    800037a0:	fa049ce3          	bnez	s1,80003758 <_ZL8consumerPv+0x40>
    800037a4:	fa9ff06f          	j	8000374c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800037a8:	00893503          	ld	a0,8(s2)
    800037ac:	00003097          	auipc	ra,0x3
    800037b0:	30c080e7          	jalr	780(ra) # 80006ab8 <_ZN6Buffer3getEv>
        putc(key);
    800037b4:	0ff57513          	andi	a0,a0,255
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	d08080e7          	jalr	-760(ra) # 800014c0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800037c0:	00893503          	ld	a0,8(s2)
    800037c4:	00003097          	auipc	ra,0x3
    800037c8:	380080e7          	jalr	896(ra) # 80006b44 <_ZN6Buffer6getCntEv>
    800037cc:	fca04ee3          	bgtz	a0,800037a8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800037d0:	01093503          	ld	a0,16(s2)
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	bfc080e7          	jalr	-1028(ra) # 800013d0 <_Z10sem_signalP4_sem>
}
    800037dc:	02813083          	ld	ra,40(sp)
    800037e0:	02013403          	ld	s0,32(sp)
    800037e4:	01813483          	ld	s1,24(sp)
    800037e8:	01013903          	ld	s2,16(sp)
    800037ec:	00813983          	ld	s3,8(sp)
    800037f0:	03010113          	addi	sp,sp,48
    800037f4:	00008067          	ret

00000000800037f8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800037f8:	f9010113          	addi	sp,sp,-112
    800037fc:	06113423          	sd	ra,104(sp)
    80003800:	06813023          	sd	s0,96(sp)
    80003804:	04913c23          	sd	s1,88(sp)
    80003808:	05213823          	sd	s2,80(sp)
    8000380c:	05313423          	sd	s3,72(sp)
    80003810:	05413023          	sd	s4,64(sp)
    80003814:	03513c23          	sd	s5,56(sp)
    80003818:	03613823          	sd	s6,48(sp)
    8000381c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003820:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003824:	00006517          	auipc	a0,0x6
    80003828:	93450513          	addi	a0,a0,-1740 # 80009158 <CONSOLE_STATUS+0x148>
    8000382c:	00002097          	auipc	ra,0x2
    80003830:	220080e7          	jalr	544(ra) # 80005a4c <_Z11printStringPKc>
    getString(input, 30);
    80003834:	01e00593          	li	a1,30
    80003838:	fa040493          	addi	s1,s0,-96
    8000383c:	00048513          	mv	a0,s1
    80003840:	00002097          	auipc	ra,0x2
    80003844:	294080e7          	jalr	660(ra) # 80005ad4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003848:	00048513          	mv	a0,s1
    8000384c:	00002097          	auipc	ra,0x2
    80003850:	360080e7          	jalr	864(ra) # 80005bac <_Z11stringToIntPKc>
    80003854:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003858:	00006517          	auipc	a0,0x6
    8000385c:	92050513          	addi	a0,a0,-1760 # 80009178 <CONSOLE_STATUS+0x168>
    80003860:	00002097          	auipc	ra,0x2
    80003864:	1ec080e7          	jalr	492(ra) # 80005a4c <_Z11printStringPKc>
    getString(input, 30);
    80003868:	01e00593          	li	a1,30
    8000386c:	00048513          	mv	a0,s1
    80003870:	00002097          	auipc	ra,0x2
    80003874:	264080e7          	jalr	612(ra) # 80005ad4 <_Z9getStringPci>
    n = stringToInt(input);
    80003878:	00048513          	mv	a0,s1
    8000387c:	00002097          	auipc	ra,0x2
    80003880:	330080e7          	jalr	816(ra) # 80005bac <_Z11stringToIntPKc>
    80003884:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003888:	00006517          	auipc	a0,0x6
    8000388c:	91050513          	addi	a0,a0,-1776 # 80009198 <CONSOLE_STATUS+0x188>
    80003890:	00002097          	auipc	ra,0x2
    80003894:	1bc080e7          	jalr	444(ra) # 80005a4c <_Z11printStringPKc>
    80003898:	00000613          	li	a2,0
    8000389c:	00a00593          	li	a1,10
    800038a0:	00090513          	mv	a0,s2
    800038a4:	00002097          	auipc	ra,0x2
    800038a8:	358080e7          	jalr	856(ra) # 80005bfc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800038ac:	00006517          	auipc	a0,0x6
    800038b0:	90450513          	addi	a0,a0,-1788 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	198080e7          	jalr	408(ra) # 80005a4c <_Z11printStringPKc>
    800038bc:	00000613          	li	a2,0
    800038c0:	00a00593          	li	a1,10
    800038c4:	00048513          	mv	a0,s1
    800038c8:	00002097          	auipc	ra,0x2
    800038cc:	334080e7          	jalr	820(ra) # 80005bfc <_Z8printIntiii>
    printString(".\n");
    800038d0:	00006517          	auipc	a0,0x6
    800038d4:	8f850513          	addi	a0,a0,-1800 # 800091c8 <CONSOLE_STATUS+0x1b8>
    800038d8:	00002097          	auipc	ra,0x2
    800038dc:	174080e7          	jalr	372(ra) # 80005a4c <_Z11printStringPKc>
    if(threadNum > n) {
    800038e0:	0324c463          	blt	s1,s2,80003908 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800038e4:	03205c63          	blez	s2,8000391c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800038e8:	03800513          	li	a0,56
    800038ec:	fffff097          	auipc	ra,0xfffff
    800038f0:	b84080e7          	jalr	-1148(ra) # 80002470 <_Znwm>
    800038f4:	00050a13          	mv	s4,a0
    800038f8:	00048593          	mv	a1,s1
    800038fc:	00003097          	auipc	ra,0x3
    80003900:	090080e7          	jalr	144(ra) # 8000698c <_ZN6BufferC1Ei>
    80003904:	0300006f          	j	80003934 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003908:	00006517          	auipc	a0,0x6
    8000390c:	8c850513          	addi	a0,a0,-1848 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003910:	00002097          	auipc	ra,0x2
    80003914:	13c080e7          	jalr	316(ra) # 80005a4c <_Z11printStringPKc>
        return;
    80003918:	0140006f          	j	8000392c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000391c:	00006517          	auipc	a0,0x6
    80003920:	8f450513          	addi	a0,a0,-1804 # 80009210 <CONSOLE_STATUS+0x200>
    80003924:	00002097          	auipc	ra,0x2
    80003928:	128080e7          	jalr	296(ra) # 80005a4c <_Z11printStringPKc>
        return;
    8000392c:	000b0113          	mv	sp,s6
    80003930:	1500006f          	j	80003a80 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003934:	00000593          	li	a1,0
    80003938:	00008517          	auipc	a0,0x8
    8000393c:	28050513          	addi	a0,a0,640 # 8000bbb8 <_ZL10waitForAll>
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	9fc080e7          	jalr	-1540(ra) # 8000133c <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003948:	00391793          	slli	a5,s2,0x3
    8000394c:	00f78793          	addi	a5,a5,15
    80003950:	ff07f793          	andi	a5,a5,-16
    80003954:	40f10133          	sub	sp,sp,a5
    80003958:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000395c:	0019071b          	addiw	a4,s2,1
    80003960:	00171793          	slli	a5,a4,0x1
    80003964:	00e787b3          	add	a5,a5,a4
    80003968:	00379793          	slli	a5,a5,0x3
    8000396c:	00f78793          	addi	a5,a5,15
    80003970:	ff07f793          	andi	a5,a5,-16
    80003974:	40f10133          	sub	sp,sp,a5
    80003978:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000397c:	00191613          	slli	a2,s2,0x1
    80003980:	012607b3          	add	a5,a2,s2
    80003984:	00379793          	slli	a5,a5,0x3
    80003988:	00f987b3          	add	a5,s3,a5
    8000398c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003990:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003994:	00008717          	auipc	a4,0x8
    80003998:	22473703          	ld	a4,548(a4) # 8000bbb8 <_ZL10waitForAll>
    8000399c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800039a0:	00078613          	mv	a2,a5
    800039a4:	00000597          	auipc	a1,0x0
    800039a8:	d7458593          	addi	a1,a1,-652 # 80003718 <_ZL8consumerPv>
    800039ac:	f9840513          	addi	a0,s0,-104
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	904080e7          	jalr	-1788(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800039b8:	00000493          	li	s1,0
    800039bc:	0280006f          	j	800039e4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800039c0:	00000597          	auipc	a1,0x0
    800039c4:	c1458593          	addi	a1,a1,-1004 # 800035d4 <_ZL16producerKeyboardPv>
                      data + i);
    800039c8:	00179613          	slli	a2,a5,0x1
    800039cc:	00f60633          	add	a2,a2,a5
    800039d0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800039d4:	00c98633          	add	a2,s3,a2
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	8dc080e7          	jalr	-1828(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800039e0:	0014849b          	addiw	s1,s1,1
    800039e4:	0524d263          	bge	s1,s2,80003a28 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800039e8:	00149793          	slli	a5,s1,0x1
    800039ec:	009787b3          	add	a5,a5,s1
    800039f0:	00379793          	slli	a5,a5,0x3
    800039f4:	00f987b3          	add	a5,s3,a5
    800039f8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800039fc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003a00:	00008717          	auipc	a4,0x8
    80003a04:	1b873703          	ld	a4,440(a4) # 8000bbb8 <_ZL10waitForAll>
    80003a08:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003a0c:	00048793          	mv	a5,s1
    80003a10:	00349513          	slli	a0,s1,0x3
    80003a14:	00aa8533          	add	a0,s5,a0
    80003a18:	fa9054e3          	blez	s1,800039c0 <_Z22producerConsumer_C_APIv+0x1c8>
    80003a1c:	00000597          	auipc	a1,0x0
    80003a20:	c6858593          	addi	a1,a1,-920 # 80003684 <_ZL8producerPv>
    80003a24:	fa5ff06f          	j	800039c8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003a28:	ffffe097          	auipc	ra,0xffffe
    80003a2c:	8c4080e7          	jalr	-1852(ra) # 800012ec <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003a30:	00000493          	li	s1,0
    80003a34:	00994e63          	blt	s2,s1,80003a50 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003a38:	00008517          	auipc	a0,0x8
    80003a3c:	18053503          	ld	a0,384(a0) # 8000bbb8 <_ZL10waitForAll>
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	960080e7          	jalr	-1696(ra) # 800013a0 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003a48:	0014849b          	addiw	s1,s1,1
    80003a4c:	fe9ff06f          	j	80003a34 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003a50:	00008517          	auipc	a0,0x8
    80003a54:	16853503          	ld	a0,360(a0) # 8000bbb8 <_ZL10waitForAll>
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	918080e7          	jalr	-1768(ra) # 80001370 <_Z9sem_closeP4_sem>
    delete buffer;
    80003a60:	000a0e63          	beqz	s4,80003a7c <_Z22producerConsumer_C_APIv+0x284>
    80003a64:	000a0513          	mv	a0,s4
    80003a68:	00003097          	auipc	ra,0x3
    80003a6c:	164080e7          	jalr	356(ra) # 80006bcc <_ZN6BufferD1Ev>
    80003a70:	000a0513          	mv	a0,s4
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	a4c080e7          	jalr	-1460(ra) # 800024c0 <_ZdlPv>
    80003a7c:	000b0113          	mv	sp,s6

}
    80003a80:	f9040113          	addi	sp,s0,-112
    80003a84:	06813083          	ld	ra,104(sp)
    80003a88:	06013403          	ld	s0,96(sp)
    80003a8c:	05813483          	ld	s1,88(sp)
    80003a90:	05013903          	ld	s2,80(sp)
    80003a94:	04813983          	ld	s3,72(sp)
    80003a98:	04013a03          	ld	s4,64(sp)
    80003a9c:	03813a83          	ld	s5,56(sp)
    80003aa0:	03013b03          	ld	s6,48(sp)
    80003aa4:	07010113          	addi	sp,sp,112
    80003aa8:	00008067          	ret
    80003aac:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003ab0:	000a0513          	mv	a0,s4
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	a0c080e7          	jalr	-1524(ra) # 800024c0 <_ZdlPv>
    80003abc:	00048513          	mv	a0,s1
    80003ac0:	00009097          	auipc	ra,0x9
    80003ac4:	208080e7          	jalr	520(ra) # 8000ccc8 <_Unwind_Resume>

0000000080003ac8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003ac8:	fe010113          	addi	sp,sp,-32
    80003acc:	00113c23          	sd	ra,24(sp)
    80003ad0:	00813823          	sd	s0,16(sp)
    80003ad4:	00913423          	sd	s1,8(sp)
    80003ad8:	01213023          	sd	s2,0(sp)
    80003adc:	02010413          	addi	s0,sp,32
    80003ae0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003ae4:	00100793          	li	a5,1
    80003ae8:	02a7f863          	bgeu	a5,a0,80003b18 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003aec:	00a00793          	li	a5,10
    80003af0:	02f577b3          	remu	a5,a0,a5
    80003af4:	02078e63          	beqz	a5,80003b30 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003af8:	fff48513          	addi	a0,s1,-1
    80003afc:	00000097          	auipc	ra,0x0
    80003b00:	fcc080e7          	jalr	-52(ra) # 80003ac8 <_ZL9fibonaccim>
    80003b04:	00050913          	mv	s2,a0
    80003b08:	ffe48513          	addi	a0,s1,-2
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	fbc080e7          	jalr	-68(ra) # 80003ac8 <_ZL9fibonaccim>
    80003b14:	00a90533          	add	a0,s2,a0
}
    80003b18:	01813083          	ld	ra,24(sp)
    80003b1c:	01013403          	ld	s0,16(sp)
    80003b20:	00813483          	ld	s1,8(sp)
    80003b24:	00013903          	ld	s2,0(sp)
    80003b28:	02010113          	addi	sp,sp,32
    80003b2c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b30:	ffffd097          	auipc	ra,0xffffd
    80003b34:	7bc080e7          	jalr	1980(ra) # 800012ec <_Z15thread_dispatchv>
    80003b38:	fc1ff06f          	j	80003af8 <_ZL9fibonaccim+0x30>

0000000080003b3c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003b3c:	fe010113          	addi	sp,sp,-32
    80003b40:	00113c23          	sd	ra,24(sp)
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	01213023          	sd	s2,0(sp)
    80003b50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003b54:	00000913          	li	s2,0
    80003b58:	0380006f          	j	80003b90 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b5c:	ffffd097          	auipc	ra,0xffffd
    80003b60:	790080e7          	jalr	1936(ra) # 800012ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b64:	00148493          	addi	s1,s1,1
    80003b68:	000027b7          	lui	a5,0x2
    80003b6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b70:	0097ee63          	bltu	a5,s1,80003b8c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b74:	00000713          	li	a4,0
    80003b78:	000077b7          	lui	a5,0x7
    80003b7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b80:	fce7eee3          	bltu	a5,a4,80003b5c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003b84:	00170713          	addi	a4,a4,1
    80003b88:	ff1ff06f          	j	80003b78 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003b8c:	00190913          	addi	s2,s2,1
    80003b90:	00900793          	li	a5,9
    80003b94:	0527e063          	bltu	a5,s2,80003bd4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003b98:	00005517          	auipc	a0,0x5
    80003b9c:	48850513          	addi	a0,a0,1160 # 80009020 <CONSOLE_STATUS+0x10>
    80003ba0:	00002097          	auipc	ra,0x2
    80003ba4:	eac080e7          	jalr	-340(ra) # 80005a4c <_Z11printStringPKc>
    80003ba8:	00000613          	li	a2,0
    80003bac:	00a00593          	li	a1,10
    80003bb0:	0009051b          	sext.w	a0,s2
    80003bb4:	00002097          	auipc	ra,0x2
    80003bb8:	048080e7          	jalr	72(ra) # 80005bfc <_Z8printIntiii>
    80003bbc:	00006517          	auipc	a0,0x6
    80003bc0:	89c50513          	addi	a0,a0,-1892 # 80009458 <CONSOLE_STATUS+0x448>
    80003bc4:	00002097          	auipc	ra,0x2
    80003bc8:	e88080e7          	jalr	-376(ra) # 80005a4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003bcc:	00000493          	li	s1,0
    80003bd0:	f99ff06f          	j	80003b68 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003bd4:	00005517          	auipc	a0,0x5
    80003bd8:	66c50513          	addi	a0,a0,1644 # 80009240 <CONSOLE_STATUS+0x230>
    80003bdc:	00002097          	auipc	ra,0x2
    80003be0:	e70080e7          	jalr	-400(ra) # 80005a4c <_Z11printStringPKc>
    finishedA = true;
    80003be4:	00100793          	li	a5,1
    80003be8:	00008717          	auipc	a4,0x8
    80003bec:	fcf70c23          	sb	a5,-40(a4) # 8000bbc0 <_ZL9finishedA>
}
    80003bf0:	01813083          	ld	ra,24(sp)
    80003bf4:	01013403          	ld	s0,16(sp)
    80003bf8:	00813483          	ld	s1,8(sp)
    80003bfc:	00013903          	ld	s2,0(sp)
    80003c00:	02010113          	addi	sp,sp,32
    80003c04:	00008067          	ret

0000000080003c08 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003c08:	fe010113          	addi	sp,sp,-32
    80003c0c:	00113c23          	sd	ra,24(sp)
    80003c10:	00813823          	sd	s0,16(sp)
    80003c14:	00913423          	sd	s1,8(sp)
    80003c18:	01213023          	sd	s2,0(sp)
    80003c1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003c20:	00000913          	li	s2,0
    80003c24:	0380006f          	j	80003c5c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003c28:	ffffd097          	auipc	ra,0xffffd
    80003c2c:	6c4080e7          	jalr	1732(ra) # 800012ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003c30:	00148493          	addi	s1,s1,1
    80003c34:	000027b7          	lui	a5,0x2
    80003c38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c3c:	0097ee63          	bltu	a5,s1,80003c58 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c40:	00000713          	li	a4,0
    80003c44:	000077b7          	lui	a5,0x7
    80003c48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003c4c:	fce7eee3          	bltu	a5,a4,80003c28 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003c50:	00170713          	addi	a4,a4,1
    80003c54:	ff1ff06f          	j	80003c44 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003c58:	00190913          	addi	s2,s2,1
    80003c5c:	00f00793          	li	a5,15
    80003c60:	0527e063          	bltu	a5,s2,80003ca0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003c64:	00005517          	auipc	a0,0x5
    80003c68:	3e450513          	addi	a0,a0,996 # 80009048 <CONSOLE_STATUS+0x38>
    80003c6c:	00002097          	auipc	ra,0x2
    80003c70:	de0080e7          	jalr	-544(ra) # 80005a4c <_Z11printStringPKc>
    80003c74:	00000613          	li	a2,0
    80003c78:	00a00593          	li	a1,10
    80003c7c:	0009051b          	sext.w	a0,s2
    80003c80:	00002097          	auipc	ra,0x2
    80003c84:	f7c080e7          	jalr	-132(ra) # 80005bfc <_Z8printIntiii>
    80003c88:	00005517          	auipc	a0,0x5
    80003c8c:	7d050513          	addi	a0,a0,2000 # 80009458 <CONSOLE_STATUS+0x448>
    80003c90:	00002097          	auipc	ra,0x2
    80003c94:	dbc080e7          	jalr	-580(ra) # 80005a4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003c98:	00000493          	li	s1,0
    80003c9c:	f99ff06f          	j	80003c34 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003ca0:	00005517          	auipc	a0,0x5
    80003ca4:	5b050513          	addi	a0,a0,1456 # 80009250 <CONSOLE_STATUS+0x240>
    80003ca8:	00002097          	auipc	ra,0x2
    80003cac:	da4080e7          	jalr	-604(ra) # 80005a4c <_Z11printStringPKc>
    finishedB = true;
    80003cb0:	00100793          	li	a5,1
    80003cb4:	00008717          	auipc	a4,0x8
    80003cb8:	f0f706a3          	sb	a5,-243(a4) # 8000bbc1 <_ZL9finishedB>
    thread_dispatch();
    80003cbc:	ffffd097          	auipc	ra,0xffffd
    80003cc0:	630080e7          	jalr	1584(ra) # 800012ec <_Z15thread_dispatchv>
}
    80003cc4:	01813083          	ld	ra,24(sp)
    80003cc8:	01013403          	ld	s0,16(sp)
    80003ccc:	00813483          	ld	s1,8(sp)
    80003cd0:	00013903          	ld	s2,0(sp)
    80003cd4:	02010113          	addi	sp,sp,32
    80003cd8:	00008067          	ret

0000000080003cdc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003cdc:	fe010113          	addi	sp,sp,-32
    80003ce0:	00113c23          	sd	ra,24(sp)
    80003ce4:	00813823          	sd	s0,16(sp)
    80003ce8:	00913423          	sd	s1,8(sp)
    80003cec:	01213023          	sd	s2,0(sp)
    80003cf0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003cf4:	00000493          	li	s1,0
    80003cf8:	0400006f          	j	80003d38 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003cfc:	00005517          	auipc	a0,0x5
    80003d00:	37450513          	addi	a0,a0,884 # 80009070 <CONSOLE_STATUS+0x60>
    80003d04:	00002097          	auipc	ra,0x2
    80003d08:	d48080e7          	jalr	-696(ra) # 80005a4c <_Z11printStringPKc>
    80003d0c:	00000613          	li	a2,0
    80003d10:	00a00593          	li	a1,10
    80003d14:	00048513          	mv	a0,s1
    80003d18:	00002097          	auipc	ra,0x2
    80003d1c:	ee4080e7          	jalr	-284(ra) # 80005bfc <_Z8printIntiii>
    80003d20:	00005517          	auipc	a0,0x5
    80003d24:	73850513          	addi	a0,a0,1848 # 80009458 <CONSOLE_STATUS+0x448>
    80003d28:	00002097          	auipc	ra,0x2
    80003d2c:	d24080e7          	jalr	-732(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d30:	0014849b          	addiw	s1,s1,1
    80003d34:	0ff4f493          	andi	s1,s1,255
    80003d38:	00200793          	li	a5,2
    80003d3c:	fc97f0e3          	bgeu	a5,s1,80003cfc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003d40:	00005517          	auipc	a0,0x5
    80003d44:	52050513          	addi	a0,a0,1312 # 80009260 <CONSOLE_STATUS+0x250>
    80003d48:	00002097          	auipc	ra,0x2
    80003d4c:	d04080e7          	jalr	-764(ra) # 80005a4c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d50:	00700313          	li	t1,7
    thread_dispatch();
    80003d54:	ffffd097          	auipc	ra,0xffffd
    80003d58:	598080e7          	jalr	1432(ra) # 800012ec <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d5c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003d60:	00005517          	auipc	a0,0x5
    80003d64:	32850513          	addi	a0,a0,808 # 80009088 <CONSOLE_STATUS+0x78>
    80003d68:	00002097          	auipc	ra,0x2
    80003d6c:	ce4080e7          	jalr	-796(ra) # 80005a4c <_Z11printStringPKc>
    80003d70:	00000613          	li	a2,0
    80003d74:	00a00593          	li	a1,10
    80003d78:	0009051b          	sext.w	a0,s2
    80003d7c:	00002097          	auipc	ra,0x2
    80003d80:	e80080e7          	jalr	-384(ra) # 80005bfc <_Z8printIntiii>
    80003d84:	00005517          	auipc	a0,0x5
    80003d88:	6d450513          	addi	a0,a0,1748 # 80009458 <CONSOLE_STATUS+0x448>
    80003d8c:	00002097          	auipc	ra,0x2
    80003d90:	cc0080e7          	jalr	-832(ra) # 80005a4c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003d94:	00c00513          	li	a0,12
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	d30080e7          	jalr	-720(ra) # 80003ac8 <_ZL9fibonaccim>
    80003da0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003da4:	00005517          	auipc	a0,0x5
    80003da8:	2ec50513          	addi	a0,a0,748 # 80009090 <CONSOLE_STATUS+0x80>
    80003dac:	00002097          	auipc	ra,0x2
    80003db0:	ca0080e7          	jalr	-864(ra) # 80005a4c <_Z11printStringPKc>
    80003db4:	00000613          	li	a2,0
    80003db8:	00a00593          	li	a1,10
    80003dbc:	0009051b          	sext.w	a0,s2
    80003dc0:	00002097          	auipc	ra,0x2
    80003dc4:	e3c080e7          	jalr	-452(ra) # 80005bfc <_Z8printIntiii>
    80003dc8:	00005517          	auipc	a0,0x5
    80003dcc:	69050513          	addi	a0,a0,1680 # 80009458 <CONSOLE_STATUS+0x448>
    80003dd0:	00002097          	auipc	ra,0x2
    80003dd4:	c7c080e7          	jalr	-900(ra) # 80005a4c <_Z11printStringPKc>
    80003dd8:	0400006f          	j	80003e18 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ddc:	00005517          	auipc	a0,0x5
    80003de0:	29450513          	addi	a0,a0,660 # 80009070 <CONSOLE_STATUS+0x60>
    80003de4:	00002097          	auipc	ra,0x2
    80003de8:	c68080e7          	jalr	-920(ra) # 80005a4c <_Z11printStringPKc>
    80003dec:	00000613          	li	a2,0
    80003df0:	00a00593          	li	a1,10
    80003df4:	00048513          	mv	a0,s1
    80003df8:	00002097          	auipc	ra,0x2
    80003dfc:	e04080e7          	jalr	-508(ra) # 80005bfc <_Z8printIntiii>
    80003e00:	00005517          	auipc	a0,0x5
    80003e04:	65850513          	addi	a0,a0,1624 # 80009458 <CONSOLE_STATUS+0x448>
    80003e08:	00002097          	auipc	ra,0x2
    80003e0c:	c44080e7          	jalr	-956(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e10:	0014849b          	addiw	s1,s1,1
    80003e14:	0ff4f493          	andi	s1,s1,255
    80003e18:	00500793          	li	a5,5
    80003e1c:	fc97f0e3          	bgeu	a5,s1,80003ddc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003e20:	00005517          	auipc	a0,0x5
    80003e24:	45050513          	addi	a0,a0,1104 # 80009270 <CONSOLE_STATUS+0x260>
    80003e28:	00002097          	auipc	ra,0x2
    80003e2c:	c24080e7          	jalr	-988(ra) # 80005a4c <_Z11printStringPKc>
    finishedC = true;
    80003e30:	00100793          	li	a5,1
    80003e34:	00008717          	auipc	a4,0x8
    80003e38:	d8f70723          	sb	a5,-626(a4) # 8000bbc2 <_ZL9finishedC>
    thread_dispatch();
    80003e3c:	ffffd097          	auipc	ra,0xffffd
    80003e40:	4b0080e7          	jalr	1200(ra) # 800012ec <_Z15thread_dispatchv>
}
    80003e44:	01813083          	ld	ra,24(sp)
    80003e48:	01013403          	ld	s0,16(sp)
    80003e4c:	00813483          	ld	s1,8(sp)
    80003e50:	00013903          	ld	s2,0(sp)
    80003e54:	02010113          	addi	sp,sp,32
    80003e58:	00008067          	ret

0000000080003e5c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003e5c:	fe010113          	addi	sp,sp,-32
    80003e60:	00113c23          	sd	ra,24(sp)
    80003e64:	00813823          	sd	s0,16(sp)
    80003e68:	00913423          	sd	s1,8(sp)
    80003e6c:	01213023          	sd	s2,0(sp)
    80003e70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e74:	00a00493          	li	s1,10
    80003e78:	0400006f          	j	80003eb8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e7c:	00005517          	auipc	a0,0x5
    80003e80:	24450513          	addi	a0,a0,580 # 800090c0 <CONSOLE_STATUS+0xb0>
    80003e84:	00002097          	auipc	ra,0x2
    80003e88:	bc8080e7          	jalr	-1080(ra) # 80005a4c <_Z11printStringPKc>
    80003e8c:	00000613          	li	a2,0
    80003e90:	00a00593          	li	a1,10
    80003e94:	00048513          	mv	a0,s1
    80003e98:	00002097          	auipc	ra,0x2
    80003e9c:	d64080e7          	jalr	-668(ra) # 80005bfc <_Z8printIntiii>
    80003ea0:	00005517          	auipc	a0,0x5
    80003ea4:	5b850513          	addi	a0,a0,1464 # 80009458 <CONSOLE_STATUS+0x448>
    80003ea8:	00002097          	auipc	ra,0x2
    80003eac:	ba4080e7          	jalr	-1116(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003eb0:	0014849b          	addiw	s1,s1,1
    80003eb4:	0ff4f493          	andi	s1,s1,255
    80003eb8:	00c00793          	li	a5,12
    80003ebc:	fc97f0e3          	bgeu	a5,s1,80003e7c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003ec0:	00005517          	auipc	a0,0x5
    80003ec4:	3c050513          	addi	a0,a0,960 # 80009280 <CONSOLE_STATUS+0x270>
    80003ec8:	00002097          	auipc	ra,0x2
    80003ecc:	b84080e7          	jalr	-1148(ra) # 80005a4c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ed0:	00500313          	li	t1,5
    thread_dispatch();
    80003ed4:	ffffd097          	auipc	ra,0xffffd
    80003ed8:	418080e7          	jalr	1048(ra) # 800012ec <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003edc:	01000513          	li	a0,16
    80003ee0:	00000097          	auipc	ra,0x0
    80003ee4:	be8080e7          	jalr	-1048(ra) # 80003ac8 <_ZL9fibonaccim>
    80003ee8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003eec:	00005517          	auipc	a0,0x5
    80003ef0:	1ec50513          	addi	a0,a0,492 # 800090d8 <CONSOLE_STATUS+0xc8>
    80003ef4:	00002097          	auipc	ra,0x2
    80003ef8:	b58080e7          	jalr	-1192(ra) # 80005a4c <_Z11printStringPKc>
    80003efc:	00000613          	li	a2,0
    80003f00:	00a00593          	li	a1,10
    80003f04:	0009051b          	sext.w	a0,s2
    80003f08:	00002097          	auipc	ra,0x2
    80003f0c:	cf4080e7          	jalr	-780(ra) # 80005bfc <_Z8printIntiii>
    80003f10:	00005517          	auipc	a0,0x5
    80003f14:	54850513          	addi	a0,a0,1352 # 80009458 <CONSOLE_STATUS+0x448>
    80003f18:	00002097          	auipc	ra,0x2
    80003f1c:	b34080e7          	jalr	-1228(ra) # 80005a4c <_Z11printStringPKc>
    80003f20:	0400006f          	j	80003f60 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f24:	00005517          	auipc	a0,0x5
    80003f28:	19c50513          	addi	a0,a0,412 # 800090c0 <CONSOLE_STATUS+0xb0>
    80003f2c:	00002097          	auipc	ra,0x2
    80003f30:	b20080e7          	jalr	-1248(ra) # 80005a4c <_Z11printStringPKc>
    80003f34:	00000613          	li	a2,0
    80003f38:	00a00593          	li	a1,10
    80003f3c:	00048513          	mv	a0,s1
    80003f40:	00002097          	auipc	ra,0x2
    80003f44:	cbc080e7          	jalr	-836(ra) # 80005bfc <_Z8printIntiii>
    80003f48:	00005517          	auipc	a0,0x5
    80003f4c:	51050513          	addi	a0,a0,1296 # 80009458 <CONSOLE_STATUS+0x448>
    80003f50:	00002097          	auipc	ra,0x2
    80003f54:	afc080e7          	jalr	-1284(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003f58:	0014849b          	addiw	s1,s1,1
    80003f5c:	0ff4f493          	andi	s1,s1,255
    80003f60:	00f00793          	li	a5,15
    80003f64:	fc97f0e3          	bgeu	a5,s1,80003f24 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003f68:	00005517          	auipc	a0,0x5
    80003f6c:	32850513          	addi	a0,a0,808 # 80009290 <CONSOLE_STATUS+0x280>
    80003f70:	00002097          	auipc	ra,0x2
    80003f74:	adc080e7          	jalr	-1316(ra) # 80005a4c <_Z11printStringPKc>
    finishedD = true;
    80003f78:	00100793          	li	a5,1
    80003f7c:	00008717          	auipc	a4,0x8
    80003f80:	c4f703a3          	sb	a5,-953(a4) # 8000bbc3 <_ZL9finishedD>
    thread_dispatch();
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	368080e7          	jalr	872(ra) # 800012ec <_Z15thread_dispatchv>
}
    80003f8c:	01813083          	ld	ra,24(sp)
    80003f90:	01013403          	ld	s0,16(sp)
    80003f94:	00813483          	ld	s1,8(sp)
    80003f98:	00013903          	ld	s2,0(sp)
    80003f9c:	02010113          	addi	sp,sp,32
    80003fa0:	00008067          	ret

0000000080003fa4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003fa4:	fc010113          	addi	sp,sp,-64
    80003fa8:	02113c23          	sd	ra,56(sp)
    80003fac:	02813823          	sd	s0,48(sp)
    80003fb0:	02913423          	sd	s1,40(sp)
    80003fb4:	03213023          	sd	s2,32(sp)
    80003fb8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003fbc:	02000513          	li	a0,32
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	4b0080e7          	jalr	1200(ra) # 80002470 <_Znwm>
    80003fc8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	684080e7          	jalr	1668(ra) # 80002650 <_ZN6ThreadC1Ev>
    80003fd4:	00008797          	auipc	a5,0x8
    80003fd8:	94c78793          	addi	a5,a5,-1716 # 8000b920 <_ZTV7WorkerA+0x10>
    80003fdc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003fe0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003fe4:	00005517          	auipc	a0,0x5
    80003fe8:	2bc50513          	addi	a0,a0,700 # 800092a0 <CONSOLE_STATUS+0x290>
    80003fec:	00002097          	auipc	ra,0x2
    80003ff0:	a60080e7          	jalr	-1440(ra) # 80005a4c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ff4:	02000513          	li	a0,32
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	478080e7          	jalr	1144(ra) # 80002470 <_Znwm>
    80004000:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004004:	ffffe097          	auipc	ra,0xffffe
    80004008:	64c080e7          	jalr	1612(ra) # 80002650 <_ZN6ThreadC1Ev>
    8000400c:	00008797          	auipc	a5,0x8
    80004010:	93c78793          	addi	a5,a5,-1732 # 8000b948 <_ZTV7WorkerB+0x10>
    80004014:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004018:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000401c:	00005517          	auipc	a0,0x5
    80004020:	29c50513          	addi	a0,a0,668 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004024:	00002097          	auipc	ra,0x2
    80004028:	a28080e7          	jalr	-1496(ra) # 80005a4c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000402c:	02000513          	li	a0,32
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	440080e7          	jalr	1088(ra) # 80002470 <_Znwm>
    80004038:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	614080e7          	jalr	1556(ra) # 80002650 <_ZN6ThreadC1Ev>
    80004044:	00008797          	auipc	a5,0x8
    80004048:	92c78793          	addi	a5,a5,-1748 # 8000b970 <_ZTV7WorkerC+0x10>
    8000404c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004050:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004054:	00005517          	auipc	a0,0x5
    80004058:	27c50513          	addi	a0,a0,636 # 800092d0 <CONSOLE_STATUS+0x2c0>
    8000405c:	00002097          	auipc	ra,0x2
    80004060:	9f0080e7          	jalr	-1552(ra) # 80005a4c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004064:	02000513          	li	a0,32
    80004068:	ffffe097          	auipc	ra,0xffffe
    8000406c:	408080e7          	jalr	1032(ra) # 80002470 <_Znwm>
    80004070:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004074:	ffffe097          	auipc	ra,0xffffe
    80004078:	5dc080e7          	jalr	1500(ra) # 80002650 <_ZN6ThreadC1Ev>
    8000407c:	00008797          	auipc	a5,0x8
    80004080:	91c78793          	addi	a5,a5,-1764 # 8000b998 <_ZTV7WorkerD+0x10>
    80004084:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004088:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000408c:	00005517          	auipc	a0,0x5
    80004090:	25c50513          	addi	a0,a0,604 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004094:	00002097          	auipc	ra,0x2
    80004098:	9b8080e7          	jalr	-1608(ra) # 80005a4c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000409c:	00000493          	li	s1,0
    800040a0:	00300793          	li	a5,3
    800040a4:	0297c663          	blt	a5,s1,800040d0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800040a8:	00349793          	slli	a5,s1,0x3
    800040ac:	fe040713          	addi	a4,s0,-32
    800040b0:	00f707b3          	add	a5,a4,a5
    800040b4:	fe07b503          	ld	a0,-32(a5)
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	5f0080e7          	jalr	1520(ra) # 800026a8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800040c0:	0014849b          	addiw	s1,s1,1
    800040c4:	fddff06f          	j	800040a0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	5b8080e7          	jalr	1464(ra) # 80002680 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800040d0:	00008797          	auipc	a5,0x8
    800040d4:	af07c783          	lbu	a5,-1296(a5) # 8000bbc0 <_ZL9finishedA>
    800040d8:	fe0788e3          	beqz	a5,800040c8 <_Z20Threads_CPP_API_testv+0x124>
    800040dc:	00008797          	auipc	a5,0x8
    800040e0:	ae57c783          	lbu	a5,-1307(a5) # 8000bbc1 <_ZL9finishedB>
    800040e4:	fe0782e3          	beqz	a5,800040c8 <_Z20Threads_CPP_API_testv+0x124>
    800040e8:	00008797          	auipc	a5,0x8
    800040ec:	ada7c783          	lbu	a5,-1318(a5) # 8000bbc2 <_ZL9finishedC>
    800040f0:	fc078ce3          	beqz	a5,800040c8 <_Z20Threads_CPP_API_testv+0x124>
    800040f4:	00008797          	auipc	a5,0x8
    800040f8:	acf7c783          	lbu	a5,-1329(a5) # 8000bbc3 <_ZL9finishedD>
    800040fc:	fc0786e3          	beqz	a5,800040c8 <_Z20Threads_CPP_API_testv+0x124>
    80004100:	fc040493          	addi	s1,s0,-64
    80004104:	0080006f          	j	8000410c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004108:	00848493          	addi	s1,s1,8
    8000410c:	fe040793          	addi	a5,s0,-32
    80004110:	08f48663          	beq	s1,a5,8000419c <_Z20Threads_CPP_API_testv+0x1f8>
    80004114:	0004b503          	ld	a0,0(s1)
    80004118:	fe0508e3          	beqz	a0,80004108 <_Z20Threads_CPP_API_testv+0x164>
    8000411c:	00053783          	ld	a5,0(a0)
    80004120:	0087b783          	ld	a5,8(a5)
    80004124:	000780e7          	jalr	a5
    80004128:	fe1ff06f          	j	80004108 <_Z20Threads_CPP_API_testv+0x164>
    8000412c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004130:	00048513          	mv	a0,s1
    80004134:	ffffe097          	auipc	ra,0xffffe
    80004138:	38c080e7          	jalr	908(ra) # 800024c0 <_ZdlPv>
    8000413c:	00090513          	mv	a0,s2
    80004140:	00009097          	auipc	ra,0x9
    80004144:	b88080e7          	jalr	-1144(ra) # 8000ccc8 <_Unwind_Resume>
    80004148:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000414c:	00048513          	mv	a0,s1
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	370080e7          	jalr	880(ra) # 800024c0 <_ZdlPv>
    80004158:	00090513          	mv	a0,s2
    8000415c:	00009097          	auipc	ra,0x9
    80004160:	b6c080e7          	jalr	-1172(ra) # 8000ccc8 <_Unwind_Resume>
    80004164:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004168:	00048513          	mv	a0,s1
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	354080e7          	jalr	852(ra) # 800024c0 <_ZdlPv>
    80004174:	00090513          	mv	a0,s2
    80004178:	00009097          	auipc	ra,0x9
    8000417c:	b50080e7          	jalr	-1200(ra) # 8000ccc8 <_Unwind_Resume>
    80004180:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004184:	00048513          	mv	a0,s1
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	338080e7          	jalr	824(ra) # 800024c0 <_ZdlPv>
    80004190:	00090513          	mv	a0,s2
    80004194:	00009097          	auipc	ra,0x9
    80004198:	b34080e7          	jalr	-1228(ra) # 8000ccc8 <_Unwind_Resume>
}
    8000419c:	03813083          	ld	ra,56(sp)
    800041a0:	03013403          	ld	s0,48(sp)
    800041a4:	02813483          	ld	s1,40(sp)
    800041a8:	02013903          	ld	s2,32(sp)
    800041ac:	04010113          	addi	sp,sp,64
    800041b0:	00008067          	ret

00000000800041b4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800041b4:	ff010113          	addi	sp,sp,-16
    800041b8:	00113423          	sd	ra,8(sp)
    800041bc:	00813023          	sd	s0,0(sp)
    800041c0:	01010413          	addi	s0,sp,16
    800041c4:	00007797          	auipc	a5,0x7
    800041c8:	75c78793          	addi	a5,a5,1884 # 8000b920 <_ZTV7WorkerA+0x10>
    800041cc:	00f53023          	sd	a5,0(a0)
    800041d0:	ffffe097          	auipc	ra,0xffffe
    800041d4:	340080e7          	jalr	832(ra) # 80002510 <_ZN6ThreadD1Ev>
    800041d8:	00813083          	ld	ra,8(sp)
    800041dc:	00013403          	ld	s0,0(sp)
    800041e0:	01010113          	addi	sp,sp,16
    800041e4:	00008067          	ret

00000000800041e8 <_ZN7WorkerAD0Ev>:
    800041e8:	fe010113          	addi	sp,sp,-32
    800041ec:	00113c23          	sd	ra,24(sp)
    800041f0:	00813823          	sd	s0,16(sp)
    800041f4:	00913423          	sd	s1,8(sp)
    800041f8:	02010413          	addi	s0,sp,32
    800041fc:	00050493          	mv	s1,a0
    80004200:	00007797          	auipc	a5,0x7
    80004204:	72078793          	addi	a5,a5,1824 # 8000b920 <_ZTV7WorkerA+0x10>
    80004208:	00f53023          	sd	a5,0(a0)
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	304080e7          	jalr	772(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004214:	00048513          	mv	a0,s1
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	2a8080e7          	jalr	680(ra) # 800024c0 <_ZdlPv>
    80004220:	01813083          	ld	ra,24(sp)
    80004224:	01013403          	ld	s0,16(sp)
    80004228:	00813483          	ld	s1,8(sp)
    8000422c:	02010113          	addi	sp,sp,32
    80004230:	00008067          	ret

0000000080004234 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004234:	ff010113          	addi	sp,sp,-16
    80004238:	00113423          	sd	ra,8(sp)
    8000423c:	00813023          	sd	s0,0(sp)
    80004240:	01010413          	addi	s0,sp,16
    80004244:	00007797          	auipc	a5,0x7
    80004248:	70478793          	addi	a5,a5,1796 # 8000b948 <_ZTV7WorkerB+0x10>
    8000424c:	00f53023          	sd	a5,0(a0)
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	2c0080e7          	jalr	704(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004258:	00813083          	ld	ra,8(sp)
    8000425c:	00013403          	ld	s0,0(sp)
    80004260:	01010113          	addi	sp,sp,16
    80004264:	00008067          	ret

0000000080004268 <_ZN7WorkerBD0Ev>:
    80004268:	fe010113          	addi	sp,sp,-32
    8000426c:	00113c23          	sd	ra,24(sp)
    80004270:	00813823          	sd	s0,16(sp)
    80004274:	00913423          	sd	s1,8(sp)
    80004278:	02010413          	addi	s0,sp,32
    8000427c:	00050493          	mv	s1,a0
    80004280:	00007797          	auipc	a5,0x7
    80004284:	6c878793          	addi	a5,a5,1736 # 8000b948 <_ZTV7WorkerB+0x10>
    80004288:	00f53023          	sd	a5,0(a0)
    8000428c:	ffffe097          	auipc	ra,0xffffe
    80004290:	284080e7          	jalr	644(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004294:	00048513          	mv	a0,s1
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	228080e7          	jalr	552(ra) # 800024c0 <_ZdlPv>
    800042a0:	01813083          	ld	ra,24(sp)
    800042a4:	01013403          	ld	s0,16(sp)
    800042a8:	00813483          	ld	s1,8(sp)
    800042ac:	02010113          	addi	sp,sp,32
    800042b0:	00008067          	ret

00000000800042b4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800042b4:	ff010113          	addi	sp,sp,-16
    800042b8:	00113423          	sd	ra,8(sp)
    800042bc:	00813023          	sd	s0,0(sp)
    800042c0:	01010413          	addi	s0,sp,16
    800042c4:	00007797          	auipc	a5,0x7
    800042c8:	6ac78793          	addi	a5,a5,1708 # 8000b970 <_ZTV7WorkerC+0x10>
    800042cc:	00f53023          	sd	a5,0(a0)
    800042d0:	ffffe097          	auipc	ra,0xffffe
    800042d4:	240080e7          	jalr	576(ra) # 80002510 <_ZN6ThreadD1Ev>
    800042d8:	00813083          	ld	ra,8(sp)
    800042dc:	00013403          	ld	s0,0(sp)
    800042e0:	01010113          	addi	sp,sp,16
    800042e4:	00008067          	ret

00000000800042e8 <_ZN7WorkerCD0Ev>:
    800042e8:	fe010113          	addi	sp,sp,-32
    800042ec:	00113c23          	sd	ra,24(sp)
    800042f0:	00813823          	sd	s0,16(sp)
    800042f4:	00913423          	sd	s1,8(sp)
    800042f8:	02010413          	addi	s0,sp,32
    800042fc:	00050493          	mv	s1,a0
    80004300:	00007797          	auipc	a5,0x7
    80004304:	67078793          	addi	a5,a5,1648 # 8000b970 <_ZTV7WorkerC+0x10>
    80004308:	00f53023          	sd	a5,0(a0)
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	204080e7          	jalr	516(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004314:	00048513          	mv	a0,s1
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	1a8080e7          	jalr	424(ra) # 800024c0 <_ZdlPv>
    80004320:	01813083          	ld	ra,24(sp)
    80004324:	01013403          	ld	s0,16(sp)
    80004328:	00813483          	ld	s1,8(sp)
    8000432c:	02010113          	addi	sp,sp,32
    80004330:	00008067          	ret

0000000080004334 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004334:	ff010113          	addi	sp,sp,-16
    80004338:	00113423          	sd	ra,8(sp)
    8000433c:	00813023          	sd	s0,0(sp)
    80004340:	01010413          	addi	s0,sp,16
    80004344:	00007797          	auipc	a5,0x7
    80004348:	65478793          	addi	a5,a5,1620 # 8000b998 <_ZTV7WorkerD+0x10>
    8000434c:	00f53023          	sd	a5,0(a0)
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	1c0080e7          	jalr	448(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004358:	00813083          	ld	ra,8(sp)
    8000435c:	00013403          	ld	s0,0(sp)
    80004360:	01010113          	addi	sp,sp,16
    80004364:	00008067          	ret

0000000080004368 <_ZN7WorkerDD0Ev>:
    80004368:	fe010113          	addi	sp,sp,-32
    8000436c:	00113c23          	sd	ra,24(sp)
    80004370:	00813823          	sd	s0,16(sp)
    80004374:	00913423          	sd	s1,8(sp)
    80004378:	02010413          	addi	s0,sp,32
    8000437c:	00050493          	mv	s1,a0
    80004380:	00007797          	auipc	a5,0x7
    80004384:	61878793          	addi	a5,a5,1560 # 8000b998 <_ZTV7WorkerD+0x10>
    80004388:	00f53023          	sd	a5,0(a0)
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	184080e7          	jalr	388(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004394:	00048513          	mv	a0,s1
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	128080e7          	jalr	296(ra) # 800024c0 <_ZdlPv>
    800043a0:	01813083          	ld	ra,24(sp)
    800043a4:	01013403          	ld	s0,16(sp)
    800043a8:	00813483          	ld	s1,8(sp)
    800043ac:	02010113          	addi	sp,sp,32
    800043b0:	00008067          	ret

00000000800043b4 <_ZN7WorkerA3runEv>:
    void run() override {
    800043b4:	ff010113          	addi	sp,sp,-16
    800043b8:	00113423          	sd	ra,8(sp)
    800043bc:	00813023          	sd	s0,0(sp)
    800043c0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800043c4:	00000593          	li	a1,0
    800043c8:	fffff097          	auipc	ra,0xfffff
    800043cc:	774080e7          	jalr	1908(ra) # 80003b3c <_ZN7WorkerA11workerBodyAEPv>
    }
    800043d0:	00813083          	ld	ra,8(sp)
    800043d4:	00013403          	ld	s0,0(sp)
    800043d8:	01010113          	addi	sp,sp,16
    800043dc:	00008067          	ret

00000000800043e0 <_ZN7WorkerB3runEv>:
    void run() override {
    800043e0:	ff010113          	addi	sp,sp,-16
    800043e4:	00113423          	sd	ra,8(sp)
    800043e8:	00813023          	sd	s0,0(sp)
    800043ec:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800043f0:	00000593          	li	a1,0
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	814080e7          	jalr	-2028(ra) # 80003c08 <_ZN7WorkerB11workerBodyBEPv>
    }
    800043fc:	00813083          	ld	ra,8(sp)
    80004400:	00013403          	ld	s0,0(sp)
    80004404:	01010113          	addi	sp,sp,16
    80004408:	00008067          	ret

000000008000440c <_ZN7WorkerC3runEv>:
    void run() override {
    8000440c:	ff010113          	addi	sp,sp,-16
    80004410:	00113423          	sd	ra,8(sp)
    80004414:	00813023          	sd	s0,0(sp)
    80004418:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000441c:	00000593          	li	a1,0
    80004420:	00000097          	auipc	ra,0x0
    80004424:	8bc080e7          	jalr	-1860(ra) # 80003cdc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004428:	00813083          	ld	ra,8(sp)
    8000442c:	00013403          	ld	s0,0(sp)
    80004430:	01010113          	addi	sp,sp,16
    80004434:	00008067          	ret

0000000080004438 <_ZN7WorkerD3runEv>:
    void run() override {
    80004438:	ff010113          	addi	sp,sp,-16
    8000443c:	00113423          	sd	ra,8(sp)
    80004440:	00813023          	sd	s0,0(sp)
    80004444:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004448:	00000593          	li	a1,0
    8000444c:	00000097          	auipc	ra,0x0
    80004450:	a10080e7          	jalr	-1520(ra) # 80003e5c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004454:	00813083          	ld	ra,8(sp)
    80004458:	00013403          	ld	s0,0(sp)
    8000445c:	01010113          	addi	sp,sp,16
    80004460:	00008067          	ret

0000000080004464 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004464:	f8010113          	addi	sp,sp,-128
    80004468:	06113c23          	sd	ra,120(sp)
    8000446c:	06813823          	sd	s0,112(sp)
    80004470:	06913423          	sd	s1,104(sp)
    80004474:	07213023          	sd	s2,96(sp)
    80004478:	05313c23          	sd	s3,88(sp)
    8000447c:	05413823          	sd	s4,80(sp)
    80004480:	05513423          	sd	s5,72(sp)
    80004484:	05613023          	sd	s6,64(sp)
    80004488:	03713c23          	sd	s7,56(sp)
    8000448c:	03813823          	sd	s8,48(sp)
    80004490:	03913423          	sd	s9,40(sp)
    80004494:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004498:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000449c:	00005517          	auipc	a0,0x5
    800044a0:	cbc50513          	addi	a0,a0,-836 # 80009158 <CONSOLE_STATUS+0x148>
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	5a8080e7          	jalr	1448(ra) # 80005a4c <_Z11printStringPKc>
    getString(input, 30);
    800044ac:	01e00593          	li	a1,30
    800044b0:	f8040493          	addi	s1,s0,-128
    800044b4:	00048513          	mv	a0,s1
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	61c080e7          	jalr	1564(ra) # 80005ad4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800044c0:	00048513          	mv	a0,s1
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	6e8080e7          	jalr	1768(ra) # 80005bac <_Z11stringToIntPKc>
    800044cc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800044d0:	00005517          	auipc	a0,0x5
    800044d4:	ca850513          	addi	a0,a0,-856 # 80009178 <CONSOLE_STATUS+0x168>
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	574080e7          	jalr	1396(ra) # 80005a4c <_Z11printStringPKc>
    getString(input, 30);
    800044e0:	01e00593          	li	a1,30
    800044e4:	00048513          	mv	a0,s1
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	5ec080e7          	jalr	1516(ra) # 80005ad4 <_Z9getStringPci>
    n = stringToInt(input);
    800044f0:	00048513          	mv	a0,s1
    800044f4:	00001097          	auipc	ra,0x1
    800044f8:	6b8080e7          	jalr	1720(ra) # 80005bac <_Z11stringToIntPKc>
    800044fc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004500:	00005517          	auipc	a0,0x5
    80004504:	c9850513          	addi	a0,a0,-872 # 80009198 <CONSOLE_STATUS+0x188>
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	544080e7          	jalr	1348(ra) # 80005a4c <_Z11printStringPKc>
    printInt(threadNum);
    80004510:	00000613          	li	a2,0
    80004514:	00a00593          	li	a1,10
    80004518:	00098513          	mv	a0,s3
    8000451c:	00001097          	auipc	ra,0x1
    80004520:	6e0080e7          	jalr	1760(ra) # 80005bfc <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004524:	00005517          	auipc	a0,0x5
    80004528:	c8c50513          	addi	a0,a0,-884 # 800091b0 <CONSOLE_STATUS+0x1a0>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	520080e7          	jalr	1312(ra) # 80005a4c <_Z11printStringPKc>
    printInt(n);
    80004534:	00000613          	li	a2,0
    80004538:	00a00593          	li	a1,10
    8000453c:	00048513          	mv	a0,s1
    80004540:	00001097          	auipc	ra,0x1
    80004544:	6bc080e7          	jalr	1724(ra) # 80005bfc <_Z8printIntiii>
    printString(".\n");
    80004548:	00005517          	auipc	a0,0x5
    8000454c:	c8050513          	addi	a0,a0,-896 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80004550:	00001097          	auipc	ra,0x1
    80004554:	4fc080e7          	jalr	1276(ra) # 80005a4c <_Z11printStringPKc>
    if (threadNum > n) {
    80004558:	0334c463          	blt	s1,s3,80004580 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000455c:	03305c63          	blez	s3,80004594 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004560:	03800513          	li	a0,56
    80004564:	ffffe097          	auipc	ra,0xffffe
    80004568:	f0c080e7          	jalr	-244(ra) # 80002470 <_Znwm>
    8000456c:	00050a93          	mv	s5,a0
    80004570:	00048593          	mv	a1,s1
    80004574:	00001097          	auipc	ra,0x1
    80004578:	7a8080e7          	jalr	1960(ra) # 80005d1c <_ZN9BufferCPPC1Ei>
    8000457c:	0300006f          	j	800045ac <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004580:	00005517          	auipc	a0,0x5
    80004584:	c5050513          	addi	a0,a0,-944 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004588:	00001097          	auipc	ra,0x1
    8000458c:	4c4080e7          	jalr	1220(ra) # 80005a4c <_Z11printStringPKc>
        return;
    80004590:	0140006f          	j	800045a4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004594:	00005517          	auipc	a0,0x5
    80004598:	c7c50513          	addi	a0,a0,-900 # 80009210 <CONSOLE_STATUS+0x200>
    8000459c:	00001097          	auipc	ra,0x1
    800045a0:	4b0080e7          	jalr	1200(ra) # 80005a4c <_Z11printStringPKc>
        return;
    800045a4:	000c0113          	mv	sp,s8
    800045a8:	2140006f          	j	800047bc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800045ac:	01000513          	li	a0,16
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	ec0080e7          	jalr	-320(ra) # 80002470 <_Znwm>
    800045b8:	00050913          	mv	s2,a0
    800045bc:	00000593          	li	a1,0
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	164080e7          	jalr	356(ra) # 80002724 <_ZN9SemaphoreC1Ej>
    800045c8:	00007797          	auipc	a5,0x7
    800045cc:	6127b423          	sd	s2,1544(a5) # 8000bbd0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800045d0:	00399793          	slli	a5,s3,0x3
    800045d4:	00f78793          	addi	a5,a5,15
    800045d8:	ff07f793          	andi	a5,a5,-16
    800045dc:	40f10133          	sub	sp,sp,a5
    800045e0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800045e4:	0019871b          	addiw	a4,s3,1
    800045e8:	00171793          	slli	a5,a4,0x1
    800045ec:	00e787b3          	add	a5,a5,a4
    800045f0:	00379793          	slli	a5,a5,0x3
    800045f4:	00f78793          	addi	a5,a5,15
    800045f8:	ff07f793          	andi	a5,a5,-16
    800045fc:	40f10133          	sub	sp,sp,a5
    80004600:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004604:	00199493          	slli	s1,s3,0x1
    80004608:	013484b3          	add	s1,s1,s3
    8000460c:	00349493          	slli	s1,s1,0x3
    80004610:	009b04b3          	add	s1,s6,s1
    80004614:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004618:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000461c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004620:	02800513          	li	a0,40
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	e4c080e7          	jalr	-436(ra) # 80002470 <_Znwm>
    8000462c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	020080e7          	jalr	32(ra) # 80002650 <_ZN6ThreadC1Ev>
    80004638:	00007797          	auipc	a5,0x7
    8000463c:	3d878793          	addi	a5,a5,984 # 8000ba10 <_ZTV8Consumer+0x10>
    80004640:	00fbb023          	sd	a5,0(s7)
    80004644:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004648:	000b8513          	mv	a0,s7
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	05c080e7          	jalr	92(ra) # 800026a8 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004654:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004658:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000465c:	00007797          	auipc	a5,0x7
    80004660:	5747b783          	ld	a5,1396(a5) # 8000bbd0 <_ZL10waitForAll>
    80004664:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004668:	02800513          	li	a0,40
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	e04080e7          	jalr	-508(ra) # 80002470 <_Znwm>
    80004674:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004678:	ffffe097          	auipc	ra,0xffffe
    8000467c:	fd8080e7          	jalr	-40(ra) # 80002650 <_ZN6ThreadC1Ev>
    80004680:	00007797          	auipc	a5,0x7
    80004684:	34078793          	addi	a5,a5,832 # 8000b9c0 <_ZTV16ProducerKeyborad+0x10>
    80004688:	00f4b023          	sd	a5,0(s1)
    8000468c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004690:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004694:	00048513          	mv	a0,s1
    80004698:	ffffe097          	auipc	ra,0xffffe
    8000469c:	010080e7          	jalr	16(ra) # 800026a8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800046a0:	00100913          	li	s2,1
    800046a4:	0300006f          	j	800046d4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800046a8:	00007797          	auipc	a5,0x7
    800046ac:	34078793          	addi	a5,a5,832 # 8000b9e8 <_ZTV8Producer+0x10>
    800046b0:	00fcb023          	sd	a5,0(s9)
    800046b4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800046b8:	00391793          	slli	a5,s2,0x3
    800046bc:	00fa07b3          	add	a5,s4,a5
    800046c0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800046c4:	000c8513          	mv	a0,s9
    800046c8:	ffffe097          	auipc	ra,0xffffe
    800046cc:	fe0080e7          	jalr	-32(ra) # 800026a8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800046d0:	0019091b          	addiw	s2,s2,1
    800046d4:	05395263          	bge	s2,s3,80004718 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800046d8:	00191493          	slli	s1,s2,0x1
    800046dc:	012484b3          	add	s1,s1,s2
    800046e0:	00349493          	slli	s1,s1,0x3
    800046e4:	009b04b3          	add	s1,s6,s1
    800046e8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800046ec:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800046f0:	00007797          	auipc	a5,0x7
    800046f4:	4e07b783          	ld	a5,1248(a5) # 8000bbd0 <_ZL10waitForAll>
    800046f8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800046fc:	02800513          	li	a0,40
    80004700:	ffffe097          	auipc	ra,0xffffe
    80004704:	d70080e7          	jalr	-656(ra) # 80002470 <_Znwm>
    80004708:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000470c:	ffffe097          	auipc	ra,0xffffe
    80004710:	f44080e7          	jalr	-188(ra) # 80002650 <_ZN6ThreadC1Ev>
    80004714:	f95ff06f          	j	800046a8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004718:	ffffe097          	auipc	ra,0xffffe
    8000471c:	f68080e7          	jalr	-152(ra) # 80002680 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004720:	00000493          	li	s1,0
    80004724:	0099ce63          	blt	s3,s1,80004740 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004728:	00007517          	auipc	a0,0x7
    8000472c:	4a853503          	ld	a0,1192(a0) # 8000bbd0 <_ZL10waitForAll>
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	02c080e7          	jalr	44(ra) # 8000275c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004738:	0014849b          	addiw	s1,s1,1
    8000473c:	fe9ff06f          	j	80004724 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004740:	00007517          	auipc	a0,0x7
    80004744:	49053503          	ld	a0,1168(a0) # 8000bbd0 <_ZL10waitForAll>
    80004748:	00050863          	beqz	a0,80004758 <_Z20testConsumerProducerv+0x2f4>
    8000474c:	00053783          	ld	a5,0(a0)
    80004750:	0087b783          	ld	a5,8(a5)
    80004754:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004758:	00000493          	li	s1,0
    8000475c:	0080006f          	j	80004764 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004760:	0014849b          	addiw	s1,s1,1
    80004764:	0334d263          	bge	s1,s3,80004788 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004768:	00349793          	slli	a5,s1,0x3
    8000476c:	00fa07b3          	add	a5,s4,a5
    80004770:	0007b503          	ld	a0,0(a5)
    80004774:	fe0506e3          	beqz	a0,80004760 <_Z20testConsumerProducerv+0x2fc>
    80004778:	00053783          	ld	a5,0(a0)
    8000477c:	0087b783          	ld	a5,8(a5)
    80004780:	000780e7          	jalr	a5
    80004784:	fddff06f          	j	80004760 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004788:	000b8a63          	beqz	s7,8000479c <_Z20testConsumerProducerv+0x338>
    8000478c:	000bb783          	ld	a5,0(s7)
    80004790:	0087b783          	ld	a5,8(a5)
    80004794:	000b8513          	mv	a0,s7
    80004798:	000780e7          	jalr	a5
    delete buffer;
    8000479c:	000a8e63          	beqz	s5,800047b8 <_Z20testConsumerProducerv+0x354>
    800047a0:	000a8513          	mv	a0,s5
    800047a4:	00002097          	auipc	ra,0x2
    800047a8:	870080e7          	jalr	-1936(ra) # 80006014 <_ZN9BufferCPPD1Ev>
    800047ac:	000a8513          	mv	a0,s5
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	d10080e7          	jalr	-752(ra) # 800024c0 <_ZdlPv>
    800047b8:	000c0113          	mv	sp,s8
}
    800047bc:	f8040113          	addi	sp,s0,-128
    800047c0:	07813083          	ld	ra,120(sp)
    800047c4:	07013403          	ld	s0,112(sp)
    800047c8:	06813483          	ld	s1,104(sp)
    800047cc:	06013903          	ld	s2,96(sp)
    800047d0:	05813983          	ld	s3,88(sp)
    800047d4:	05013a03          	ld	s4,80(sp)
    800047d8:	04813a83          	ld	s5,72(sp)
    800047dc:	04013b03          	ld	s6,64(sp)
    800047e0:	03813b83          	ld	s7,56(sp)
    800047e4:	03013c03          	ld	s8,48(sp)
    800047e8:	02813c83          	ld	s9,40(sp)
    800047ec:	08010113          	addi	sp,sp,128
    800047f0:	00008067          	ret
    800047f4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800047f8:	000a8513          	mv	a0,s5
    800047fc:	ffffe097          	auipc	ra,0xffffe
    80004800:	cc4080e7          	jalr	-828(ra) # 800024c0 <_ZdlPv>
    80004804:	00048513          	mv	a0,s1
    80004808:	00008097          	auipc	ra,0x8
    8000480c:	4c0080e7          	jalr	1216(ra) # 8000ccc8 <_Unwind_Resume>
    80004810:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004814:	00090513          	mv	a0,s2
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	ca8080e7          	jalr	-856(ra) # 800024c0 <_ZdlPv>
    80004820:	00048513          	mv	a0,s1
    80004824:	00008097          	auipc	ra,0x8
    80004828:	4a4080e7          	jalr	1188(ra) # 8000ccc8 <_Unwind_Resume>
    8000482c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004830:	000b8513          	mv	a0,s7
    80004834:	ffffe097          	auipc	ra,0xffffe
    80004838:	c8c080e7          	jalr	-884(ra) # 800024c0 <_ZdlPv>
    8000483c:	00048513          	mv	a0,s1
    80004840:	00008097          	auipc	ra,0x8
    80004844:	488080e7          	jalr	1160(ra) # 8000ccc8 <_Unwind_Resume>
    80004848:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000484c:	00048513          	mv	a0,s1
    80004850:	ffffe097          	auipc	ra,0xffffe
    80004854:	c70080e7          	jalr	-912(ra) # 800024c0 <_ZdlPv>
    80004858:	00090513          	mv	a0,s2
    8000485c:	00008097          	auipc	ra,0x8
    80004860:	46c080e7          	jalr	1132(ra) # 8000ccc8 <_Unwind_Resume>
    80004864:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004868:	000c8513          	mv	a0,s9
    8000486c:	ffffe097          	auipc	ra,0xffffe
    80004870:	c54080e7          	jalr	-940(ra) # 800024c0 <_ZdlPv>
    80004874:	00048513          	mv	a0,s1
    80004878:	00008097          	auipc	ra,0x8
    8000487c:	450080e7          	jalr	1104(ra) # 8000ccc8 <_Unwind_Resume>

0000000080004880 <_ZN8Consumer3runEv>:
    void run() override {
    80004880:	fd010113          	addi	sp,sp,-48
    80004884:	02113423          	sd	ra,40(sp)
    80004888:	02813023          	sd	s0,32(sp)
    8000488c:	00913c23          	sd	s1,24(sp)
    80004890:	01213823          	sd	s2,16(sp)
    80004894:	01313423          	sd	s3,8(sp)
    80004898:	03010413          	addi	s0,sp,48
    8000489c:	00050913          	mv	s2,a0
        int i = 0;
    800048a0:	00000993          	li	s3,0
    800048a4:	0100006f          	j	800048b4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800048a8:	00a00513          	li	a0,10
    800048ac:	ffffe097          	auipc	ra,0xffffe
    800048b0:	fd8080e7          	jalr	-40(ra) # 80002884 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800048b4:	00007797          	auipc	a5,0x7
    800048b8:	3147a783          	lw	a5,788(a5) # 8000bbc8 <_ZL9threadEnd>
    800048bc:	04079a63          	bnez	a5,80004910 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800048c0:	02093783          	ld	a5,32(s2)
    800048c4:	0087b503          	ld	a0,8(a5)
    800048c8:	00001097          	auipc	ra,0x1
    800048cc:	638080e7          	jalr	1592(ra) # 80005f00 <_ZN9BufferCPP3getEv>
            i++;
    800048d0:	0019849b          	addiw	s1,s3,1
    800048d4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800048d8:	0ff57513          	andi	a0,a0,255
    800048dc:	ffffe097          	auipc	ra,0xffffe
    800048e0:	fa8080e7          	jalr	-88(ra) # 80002884 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800048e4:	05000793          	li	a5,80
    800048e8:	02f4e4bb          	remw	s1,s1,a5
    800048ec:	fc0494e3          	bnez	s1,800048b4 <_ZN8Consumer3runEv+0x34>
    800048f0:	fb9ff06f          	j	800048a8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800048f4:	02093783          	ld	a5,32(s2)
    800048f8:	0087b503          	ld	a0,8(a5)
    800048fc:	00001097          	auipc	ra,0x1
    80004900:	604080e7          	jalr	1540(ra) # 80005f00 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004904:	0ff57513          	andi	a0,a0,255
    80004908:	ffffe097          	auipc	ra,0xffffe
    8000490c:	f7c080e7          	jalr	-132(ra) # 80002884 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004910:	02093783          	ld	a5,32(s2)
    80004914:	0087b503          	ld	a0,8(a5)
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	674080e7          	jalr	1652(ra) # 80005f8c <_ZN9BufferCPP6getCntEv>
    80004920:	fca04ae3          	bgtz	a0,800048f4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004924:	02093783          	ld	a5,32(s2)
    80004928:	0107b503          	ld	a0,16(a5)
    8000492c:	ffffe097          	auipc	ra,0xffffe
    80004930:	e5c080e7          	jalr	-420(ra) # 80002788 <_ZN9Semaphore6signalEv>
    }
    80004934:	02813083          	ld	ra,40(sp)
    80004938:	02013403          	ld	s0,32(sp)
    8000493c:	01813483          	ld	s1,24(sp)
    80004940:	01013903          	ld	s2,16(sp)
    80004944:	00813983          	ld	s3,8(sp)
    80004948:	03010113          	addi	sp,sp,48
    8000494c:	00008067          	ret

0000000080004950 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004950:	ff010113          	addi	sp,sp,-16
    80004954:	00113423          	sd	ra,8(sp)
    80004958:	00813023          	sd	s0,0(sp)
    8000495c:	01010413          	addi	s0,sp,16
    80004960:	00007797          	auipc	a5,0x7
    80004964:	0b078793          	addi	a5,a5,176 # 8000ba10 <_ZTV8Consumer+0x10>
    80004968:	00f53023          	sd	a5,0(a0)
    8000496c:	ffffe097          	auipc	ra,0xffffe
    80004970:	ba4080e7          	jalr	-1116(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004974:	00813083          	ld	ra,8(sp)
    80004978:	00013403          	ld	s0,0(sp)
    8000497c:	01010113          	addi	sp,sp,16
    80004980:	00008067          	ret

0000000080004984 <_ZN8ConsumerD0Ev>:
    80004984:	fe010113          	addi	sp,sp,-32
    80004988:	00113c23          	sd	ra,24(sp)
    8000498c:	00813823          	sd	s0,16(sp)
    80004990:	00913423          	sd	s1,8(sp)
    80004994:	02010413          	addi	s0,sp,32
    80004998:	00050493          	mv	s1,a0
    8000499c:	00007797          	auipc	a5,0x7
    800049a0:	07478793          	addi	a5,a5,116 # 8000ba10 <_ZTV8Consumer+0x10>
    800049a4:	00f53023          	sd	a5,0(a0)
    800049a8:	ffffe097          	auipc	ra,0xffffe
    800049ac:	b68080e7          	jalr	-1176(ra) # 80002510 <_ZN6ThreadD1Ev>
    800049b0:	00048513          	mv	a0,s1
    800049b4:	ffffe097          	auipc	ra,0xffffe
    800049b8:	b0c080e7          	jalr	-1268(ra) # 800024c0 <_ZdlPv>
    800049bc:	01813083          	ld	ra,24(sp)
    800049c0:	01013403          	ld	s0,16(sp)
    800049c4:	00813483          	ld	s1,8(sp)
    800049c8:	02010113          	addi	sp,sp,32
    800049cc:	00008067          	ret

00000000800049d0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800049d0:	ff010113          	addi	sp,sp,-16
    800049d4:	00113423          	sd	ra,8(sp)
    800049d8:	00813023          	sd	s0,0(sp)
    800049dc:	01010413          	addi	s0,sp,16
    800049e0:	00007797          	auipc	a5,0x7
    800049e4:	fe078793          	addi	a5,a5,-32 # 8000b9c0 <_ZTV16ProducerKeyborad+0x10>
    800049e8:	00f53023          	sd	a5,0(a0)
    800049ec:	ffffe097          	auipc	ra,0xffffe
    800049f0:	b24080e7          	jalr	-1244(ra) # 80002510 <_ZN6ThreadD1Ev>
    800049f4:	00813083          	ld	ra,8(sp)
    800049f8:	00013403          	ld	s0,0(sp)
    800049fc:	01010113          	addi	sp,sp,16
    80004a00:	00008067          	ret

0000000080004a04 <_ZN16ProducerKeyboradD0Ev>:
    80004a04:	fe010113          	addi	sp,sp,-32
    80004a08:	00113c23          	sd	ra,24(sp)
    80004a0c:	00813823          	sd	s0,16(sp)
    80004a10:	00913423          	sd	s1,8(sp)
    80004a14:	02010413          	addi	s0,sp,32
    80004a18:	00050493          	mv	s1,a0
    80004a1c:	00007797          	auipc	a5,0x7
    80004a20:	fa478793          	addi	a5,a5,-92 # 8000b9c0 <_ZTV16ProducerKeyborad+0x10>
    80004a24:	00f53023          	sd	a5,0(a0)
    80004a28:	ffffe097          	auipc	ra,0xffffe
    80004a2c:	ae8080e7          	jalr	-1304(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004a30:	00048513          	mv	a0,s1
    80004a34:	ffffe097          	auipc	ra,0xffffe
    80004a38:	a8c080e7          	jalr	-1396(ra) # 800024c0 <_ZdlPv>
    80004a3c:	01813083          	ld	ra,24(sp)
    80004a40:	01013403          	ld	s0,16(sp)
    80004a44:	00813483          	ld	s1,8(sp)
    80004a48:	02010113          	addi	sp,sp,32
    80004a4c:	00008067          	ret

0000000080004a50 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004a50:	ff010113          	addi	sp,sp,-16
    80004a54:	00113423          	sd	ra,8(sp)
    80004a58:	00813023          	sd	s0,0(sp)
    80004a5c:	01010413          	addi	s0,sp,16
    80004a60:	00007797          	auipc	a5,0x7
    80004a64:	f8878793          	addi	a5,a5,-120 # 8000b9e8 <_ZTV8Producer+0x10>
    80004a68:	00f53023          	sd	a5,0(a0)
    80004a6c:	ffffe097          	auipc	ra,0xffffe
    80004a70:	aa4080e7          	jalr	-1372(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004a74:	00813083          	ld	ra,8(sp)
    80004a78:	00013403          	ld	s0,0(sp)
    80004a7c:	01010113          	addi	sp,sp,16
    80004a80:	00008067          	ret

0000000080004a84 <_ZN8ProducerD0Ev>:
    80004a84:	fe010113          	addi	sp,sp,-32
    80004a88:	00113c23          	sd	ra,24(sp)
    80004a8c:	00813823          	sd	s0,16(sp)
    80004a90:	00913423          	sd	s1,8(sp)
    80004a94:	02010413          	addi	s0,sp,32
    80004a98:	00050493          	mv	s1,a0
    80004a9c:	00007797          	auipc	a5,0x7
    80004aa0:	f4c78793          	addi	a5,a5,-180 # 8000b9e8 <_ZTV8Producer+0x10>
    80004aa4:	00f53023          	sd	a5,0(a0)
    80004aa8:	ffffe097          	auipc	ra,0xffffe
    80004aac:	a68080e7          	jalr	-1432(ra) # 80002510 <_ZN6ThreadD1Ev>
    80004ab0:	00048513          	mv	a0,s1
    80004ab4:	ffffe097          	auipc	ra,0xffffe
    80004ab8:	a0c080e7          	jalr	-1524(ra) # 800024c0 <_ZdlPv>
    80004abc:	01813083          	ld	ra,24(sp)
    80004ac0:	01013403          	ld	s0,16(sp)
    80004ac4:	00813483          	ld	s1,8(sp)
    80004ac8:	02010113          	addi	sp,sp,32
    80004acc:	00008067          	ret

0000000080004ad0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004ad0:	fe010113          	addi	sp,sp,-32
    80004ad4:	00113c23          	sd	ra,24(sp)
    80004ad8:	00813823          	sd	s0,16(sp)
    80004adc:	00913423          	sd	s1,8(sp)
    80004ae0:	02010413          	addi	s0,sp,32
    80004ae4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004ae8:	ffffd097          	auipc	ra,0xffffd
    80004aec:	9ac080e7          	jalr	-1620(ra) # 80001494 <_Z4getcv>
    80004af0:	0005059b          	sext.w	a1,a0
    80004af4:	01b00793          	li	a5,27
    80004af8:	00f58c63          	beq	a1,a5,80004b10 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004afc:	0204b783          	ld	a5,32(s1)
    80004b00:	0087b503          	ld	a0,8(a5)
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	36c080e7          	jalr	876(ra) # 80005e70 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004b0c:	fddff06f          	j	80004ae8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004b10:	00100793          	li	a5,1
    80004b14:	00007717          	auipc	a4,0x7
    80004b18:	0af72a23          	sw	a5,180(a4) # 8000bbc8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004b1c:	0204b783          	ld	a5,32(s1)
    80004b20:	02100593          	li	a1,33
    80004b24:	0087b503          	ld	a0,8(a5)
    80004b28:	00001097          	auipc	ra,0x1
    80004b2c:	348080e7          	jalr	840(ra) # 80005e70 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004b30:	0204b783          	ld	a5,32(s1)
    80004b34:	0107b503          	ld	a0,16(a5)
    80004b38:	ffffe097          	auipc	ra,0xffffe
    80004b3c:	c50080e7          	jalr	-944(ra) # 80002788 <_ZN9Semaphore6signalEv>
    }
    80004b40:	01813083          	ld	ra,24(sp)
    80004b44:	01013403          	ld	s0,16(sp)
    80004b48:	00813483          	ld	s1,8(sp)
    80004b4c:	02010113          	addi	sp,sp,32
    80004b50:	00008067          	ret

0000000080004b54 <_ZN8Producer3runEv>:
    void run() override {
    80004b54:	fe010113          	addi	sp,sp,-32
    80004b58:	00113c23          	sd	ra,24(sp)
    80004b5c:	00813823          	sd	s0,16(sp)
    80004b60:	00913423          	sd	s1,8(sp)
    80004b64:	01213023          	sd	s2,0(sp)
    80004b68:	02010413          	addi	s0,sp,32
    80004b6c:	00050493          	mv	s1,a0
        int i = 0;
    80004b70:	00000913          	li	s2,0
        while (!threadEnd) {
    80004b74:	00007797          	auipc	a5,0x7
    80004b78:	0547a783          	lw	a5,84(a5) # 8000bbc8 <_ZL9threadEnd>
    80004b7c:	04079263          	bnez	a5,80004bc0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004b80:	0204b783          	ld	a5,32(s1)
    80004b84:	0007a583          	lw	a1,0(a5)
    80004b88:	0305859b          	addiw	a1,a1,48
    80004b8c:	0087b503          	ld	a0,8(a5)
    80004b90:	00001097          	auipc	ra,0x1
    80004b94:	2e0080e7          	jalr	736(ra) # 80005e70 <_ZN9BufferCPP3putEi>
            i++;
    80004b98:	0019071b          	addiw	a4,s2,1
    80004b9c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004ba0:	0204b783          	ld	a5,32(s1)
    80004ba4:	0007a783          	lw	a5,0(a5)
    80004ba8:	00e787bb          	addw	a5,a5,a4
    80004bac:	00500513          	li	a0,5
    80004bb0:	02a7e53b          	remw	a0,a5,a0
    80004bb4:	ffffe097          	auipc	ra,0xffffe
    80004bb8:	b48080e7          	jalr	-1208(ra) # 800026fc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004bbc:	fb9ff06f          	j	80004b74 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004bc0:	0204b783          	ld	a5,32(s1)
    80004bc4:	0107b503          	ld	a0,16(a5)
    80004bc8:	ffffe097          	auipc	ra,0xffffe
    80004bcc:	bc0080e7          	jalr	-1088(ra) # 80002788 <_ZN9Semaphore6signalEv>
    }
    80004bd0:	01813083          	ld	ra,24(sp)
    80004bd4:	01013403          	ld	s0,16(sp)
    80004bd8:	00813483          	ld	s1,8(sp)
    80004bdc:	00013903          	ld	s2,0(sp)
    80004be0:	02010113          	addi	sp,sp,32
    80004be4:	00008067          	ret

0000000080004be8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004be8:	fe010113          	addi	sp,sp,-32
    80004bec:	00113c23          	sd	ra,24(sp)
    80004bf0:	00813823          	sd	s0,16(sp)
    80004bf4:	00913423          	sd	s1,8(sp)
    80004bf8:	01213023          	sd	s2,0(sp)
    80004bfc:	02010413          	addi	s0,sp,32
    80004c00:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004c04:	00100793          	li	a5,1
    80004c08:	02a7f863          	bgeu	a5,a0,80004c38 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004c0c:	00a00793          	li	a5,10
    80004c10:	02f577b3          	remu	a5,a0,a5
    80004c14:	02078e63          	beqz	a5,80004c50 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c18:	fff48513          	addi	a0,s1,-1
    80004c1c:	00000097          	auipc	ra,0x0
    80004c20:	fcc080e7          	jalr	-52(ra) # 80004be8 <_ZL9fibonaccim>
    80004c24:	00050913          	mv	s2,a0
    80004c28:	ffe48513          	addi	a0,s1,-2
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	fbc080e7          	jalr	-68(ra) # 80004be8 <_ZL9fibonaccim>
    80004c34:	00a90533          	add	a0,s2,a0
}
    80004c38:	01813083          	ld	ra,24(sp)
    80004c3c:	01013403          	ld	s0,16(sp)
    80004c40:	00813483          	ld	s1,8(sp)
    80004c44:	00013903          	ld	s2,0(sp)
    80004c48:	02010113          	addi	sp,sp,32
    80004c4c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004c50:	ffffc097          	auipc	ra,0xffffc
    80004c54:	69c080e7          	jalr	1692(ra) # 800012ec <_Z15thread_dispatchv>
    80004c58:	fc1ff06f          	j	80004c18 <_ZL9fibonaccim+0x30>

0000000080004c5c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004c5c:	fe010113          	addi	sp,sp,-32
    80004c60:	00113c23          	sd	ra,24(sp)
    80004c64:	00813823          	sd	s0,16(sp)
    80004c68:	00913423          	sd	s1,8(sp)
    80004c6c:	01213023          	sd	s2,0(sp)
    80004c70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004c74:	00a00493          	li	s1,10
    80004c78:	0400006f          	j	80004cb8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c7c:	00004517          	auipc	a0,0x4
    80004c80:	44450513          	addi	a0,a0,1092 # 800090c0 <CONSOLE_STATUS+0xb0>
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	dc8080e7          	jalr	-568(ra) # 80005a4c <_Z11printStringPKc>
    80004c8c:	00000613          	li	a2,0
    80004c90:	00a00593          	li	a1,10
    80004c94:	00048513          	mv	a0,s1
    80004c98:	00001097          	auipc	ra,0x1
    80004c9c:	f64080e7          	jalr	-156(ra) # 80005bfc <_Z8printIntiii>
    80004ca0:	00004517          	auipc	a0,0x4
    80004ca4:	7b850513          	addi	a0,a0,1976 # 80009458 <CONSOLE_STATUS+0x448>
    80004ca8:	00001097          	auipc	ra,0x1
    80004cac:	da4080e7          	jalr	-604(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004cb0:	0014849b          	addiw	s1,s1,1
    80004cb4:	0ff4f493          	andi	s1,s1,255
    80004cb8:	00c00793          	li	a5,12
    80004cbc:	fc97f0e3          	bgeu	a5,s1,80004c7c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004cc0:	00004517          	auipc	a0,0x4
    80004cc4:	5c050513          	addi	a0,a0,1472 # 80009280 <CONSOLE_STATUS+0x270>
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	d84080e7          	jalr	-636(ra) # 80005a4c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004cd0:	00500313          	li	t1,5
    thread_dispatch();
    80004cd4:	ffffc097          	auipc	ra,0xffffc
    80004cd8:	618080e7          	jalr	1560(ra) # 800012ec <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004cdc:	01000513          	li	a0,16
    80004ce0:	00000097          	auipc	ra,0x0
    80004ce4:	f08080e7          	jalr	-248(ra) # 80004be8 <_ZL9fibonaccim>
    80004ce8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	3ec50513          	addi	a0,a0,1004 # 800090d8 <CONSOLE_STATUS+0xc8>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	d58080e7          	jalr	-680(ra) # 80005a4c <_Z11printStringPKc>
    80004cfc:	00000613          	li	a2,0
    80004d00:	00a00593          	li	a1,10
    80004d04:	0009051b          	sext.w	a0,s2
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	ef4080e7          	jalr	-268(ra) # 80005bfc <_Z8printIntiii>
    80004d10:	00004517          	auipc	a0,0x4
    80004d14:	74850513          	addi	a0,a0,1864 # 80009458 <CONSOLE_STATUS+0x448>
    80004d18:	00001097          	auipc	ra,0x1
    80004d1c:	d34080e7          	jalr	-716(ra) # 80005a4c <_Z11printStringPKc>
    80004d20:	0400006f          	j	80004d60 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d24:	00004517          	auipc	a0,0x4
    80004d28:	39c50513          	addi	a0,a0,924 # 800090c0 <CONSOLE_STATUS+0xb0>
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	d20080e7          	jalr	-736(ra) # 80005a4c <_Z11printStringPKc>
    80004d34:	00000613          	li	a2,0
    80004d38:	00a00593          	li	a1,10
    80004d3c:	00048513          	mv	a0,s1
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	ebc080e7          	jalr	-324(ra) # 80005bfc <_Z8printIntiii>
    80004d48:	00004517          	auipc	a0,0x4
    80004d4c:	71050513          	addi	a0,a0,1808 # 80009458 <CONSOLE_STATUS+0x448>
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	cfc080e7          	jalr	-772(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004d58:	0014849b          	addiw	s1,s1,1
    80004d5c:	0ff4f493          	andi	s1,s1,255
    80004d60:	00f00793          	li	a5,15
    80004d64:	fc97f0e3          	bgeu	a5,s1,80004d24 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004d68:	00004517          	auipc	a0,0x4
    80004d6c:	52850513          	addi	a0,a0,1320 # 80009290 <CONSOLE_STATUS+0x280>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	cdc080e7          	jalr	-804(ra) # 80005a4c <_Z11printStringPKc>
    finishedD = true;
    80004d78:	00100793          	li	a5,1
    80004d7c:	00007717          	auipc	a4,0x7
    80004d80:	e4f70e23          	sb	a5,-420(a4) # 8000bbd8 <_ZL9finishedD>
    thread_dispatch();
    80004d84:	ffffc097          	auipc	ra,0xffffc
    80004d88:	568080e7          	jalr	1384(ra) # 800012ec <_Z15thread_dispatchv>
}
    80004d8c:	01813083          	ld	ra,24(sp)
    80004d90:	01013403          	ld	s0,16(sp)
    80004d94:	00813483          	ld	s1,8(sp)
    80004d98:	00013903          	ld	s2,0(sp)
    80004d9c:	02010113          	addi	sp,sp,32
    80004da0:	00008067          	ret

0000000080004da4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004da4:	fe010113          	addi	sp,sp,-32
    80004da8:	00113c23          	sd	ra,24(sp)
    80004dac:	00813823          	sd	s0,16(sp)
    80004db0:	00913423          	sd	s1,8(sp)
    80004db4:	01213023          	sd	s2,0(sp)
    80004db8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004dbc:	00000493          	li	s1,0
    80004dc0:	0400006f          	j	80004e00 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004dc4:	00004517          	auipc	a0,0x4
    80004dc8:	2ac50513          	addi	a0,a0,684 # 80009070 <CONSOLE_STATUS+0x60>
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	c80080e7          	jalr	-896(ra) # 80005a4c <_Z11printStringPKc>
    80004dd4:	00000613          	li	a2,0
    80004dd8:	00a00593          	li	a1,10
    80004ddc:	00048513          	mv	a0,s1
    80004de0:	00001097          	auipc	ra,0x1
    80004de4:	e1c080e7          	jalr	-484(ra) # 80005bfc <_Z8printIntiii>
    80004de8:	00004517          	auipc	a0,0x4
    80004dec:	67050513          	addi	a0,a0,1648 # 80009458 <CONSOLE_STATUS+0x448>
    80004df0:	00001097          	auipc	ra,0x1
    80004df4:	c5c080e7          	jalr	-932(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004df8:	0014849b          	addiw	s1,s1,1
    80004dfc:	0ff4f493          	andi	s1,s1,255
    80004e00:	00200793          	li	a5,2
    80004e04:	fc97f0e3          	bgeu	a5,s1,80004dc4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004e08:	00004517          	auipc	a0,0x4
    80004e0c:	45850513          	addi	a0,a0,1112 # 80009260 <CONSOLE_STATUS+0x250>
    80004e10:	00001097          	auipc	ra,0x1
    80004e14:	c3c080e7          	jalr	-964(ra) # 80005a4c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e18:	00700313          	li	t1,7
    thread_dispatch();
    80004e1c:	ffffc097          	auipc	ra,0xffffc
    80004e20:	4d0080e7          	jalr	1232(ra) # 800012ec <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e24:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004e28:	00004517          	auipc	a0,0x4
    80004e2c:	26050513          	addi	a0,a0,608 # 80009088 <CONSOLE_STATUS+0x78>
    80004e30:	00001097          	auipc	ra,0x1
    80004e34:	c1c080e7          	jalr	-996(ra) # 80005a4c <_Z11printStringPKc>
    80004e38:	00000613          	li	a2,0
    80004e3c:	00a00593          	li	a1,10
    80004e40:	0009051b          	sext.w	a0,s2
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	db8080e7          	jalr	-584(ra) # 80005bfc <_Z8printIntiii>
    80004e4c:	00004517          	auipc	a0,0x4
    80004e50:	60c50513          	addi	a0,a0,1548 # 80009458 <CONSOLE_STATUS+0x448>
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	bf8080e7          	jalr	-1032(ra) # 80005a4c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004e5c:	00c00513          	li	a0,12
    80004e60:	00000097          	auipc	ra,0x0
    80004e64:	d88080e7          	jalr	-632(ra) # 80004be8 <_ZL9fibonaccim>
    80004e68:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004e6c:	00004517          	auipc	a0,0x4
    80004e70:	22450513          	addi	a0,a0,548 # 80009090 <CONSOLE_STATUS+0x80>
    80004e74:	00001097          	auipc	ra,0x1
    80004e78:	bd8080e7          	jalr	-1064(ra) # 80005a4c <_Z11printStringPKc>
    80004e7c:	00000613          	li	a2,0
    80004e80:	00a00593          	li	a1,10
    80004e84:	0009051b          	sext.w	a0,s2
    80004e88:	00001097          	auipc	ra,0x1
    80004e8c:	d74080e7          	jalr	-652(ra) # 80005bfc <_Z8printIntiii>
    80004e90:	00004517          	auipc	a0,0x4
    80004e94:	5c850513          	addi	a0,a0,1480 # 80009458 <CONSOLE_STATUS+0x448>
    80004e98:	00001097          	auipc	ra,0x1
    80004e9c:	bb4080e7          	jalr	-1100(ra) # 80005a4c <_Z11printStringPKc>
    80004ea0:	0400006f          	j	80004ee0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004ea4:	00004517          	auipc	a0,0x4
    80004ea8:	1cc50513          	addi	a0,a0,460 # 80009070 <CONSOLE_STATUS+0x60>
    80004eac:	00001097          	auipc	ra,0x1
    80004eb0:	ba0080e7          	jalr	-1120(ra) # 80005a4c <_Z11printStringPKc>
    80004eb4:	00000613          	li	a2,0
    80004eb8:	00a00593          	li	a1,10
    80004ebc:	00048513          	mv	a0,s1
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	d3c080e7          	jalr	-708(ra) # 80005bfc <_Z8printIntiii>
    80004ec8:	00004517          	auipc	a0,0x4
    80004ecc:	59050513          	addi	a0,a0,1424 # 80009458 <CONSOLE_STATUS+0x448>
    80004ed0:	00001097          	auipc	ra,0x1
    80004ed4:	b7c080e7          	jalr	-1156(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ed8:	0014849b          	addiw	s1,s1,1
    80004edc:	0ff4f493          	andi	s1,s1,255
    80004ee0:	00500793          	li	a5,5
    80004ee4:	fc97f0e3          	bgeu	a5,s1,80004ea4 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80004ee8:	00004517          	auipc	a0,0x4
    80004eec:	38850513          	addi	a0,a0,904 # 80009270 <CONSOLE_STATUS+0x260>
    80004ef0:	00001097          	auipc	ra,0x1
    80004ef4:	b5c080e7          	jalr	-1188(ra) # 80005a4c <_Z11printStringPKc>
    finishedC = true;
    80004ef8:	00100793          	li	a5,1
    80004efc:	00007717          	auipc	a4,0x7
    80004f00:	ccf70ea3          	sb	a5,-803(a4) # 8000bbd9 <_ZL9finishedC>
    thread_dispatch();
    80004f04:	ffffc097          	auipc	ra,0xffffc
    80004f08:	3e8080e7          	jalr	1000(ra) # 800012ec <_Z15thread_dispatchv>
}
    80004f0c:	01813083          	ld	ra,24(sp)
    80004f10:	01013403          	ld	s0,16(sp)
    80004f14:	00813483          	ld	s1,8(sp)
    80004f18:	00013903          	ld	s2,0(sp)
    80004f1c:	02010113          	addi	sp,sp,32
    80004f20:	00008067          	ret

0000000080004f24 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004f24:	fe010113          	addi	sp,sp,-32
    80004f28:	00113c23          	sd	ra,24(sp)
    80004f2c:	00813823          	sd	s0,16(sp)
    80004f30:	00913423          	sd	s1,8(sp)
    80004f34:	01213023          	sd	s2,0(sp)
    80004f38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004f3c:	00000913          	li	s2,0
    80004f40:	0380006f          	j	80004f78 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004f44:	ffffc097          	auipc	ra,0xffffc
    80004f48:	3a8080e7          	jalr	936(ra) # 800012ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f4c:	00148493          	addi	s1,s1,1
    80004f50:	000027b7          	lui	a5,0x2
    80004f54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f58:	0097ee63          	bltu	a5,s1,80004f74 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f5c:	00000713          	li	a4,0
    80004f60:	000077b7          	lui	a5,0x7
    80004f64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f68:	fce7eee3          	bltu	a5,a4,80004f44 <_ZL11workerBodyBPv+0x20>
    80004f6c:	00170713          	addi	a4,a4,1
    80004f70:	ff1ff06f          	j	80004f60 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004f74:	00190913          	addi	s2,s2,1
    80004f78:	00f00793          	li	a5,15
    80004f7c:	0527e063          	bltu	a5,s2,80004fbc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004f80:	00004517          	auipc	a0,0x4
    80004f84:	0c850513          	addi	a0,a0,200 # 80009048 <CONSOLE_STATUS+0x38>
    80004f88:	00001097          	auipc	ra,0x1
    80004f8c:	ac4080e7          	jalr	-1340(ra) # 80005a4c <_Z11printStringPKc>
    80004f90:	00000613          	li	a2,0
    80004f94:	00a00593          	li	a1,10
    80004f98:	0009051b          	sext.w	a0,s2
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	c60080e7          	jalr	-928(ra) # 80005bfc <_Z8printIntiii>
    80004fa4:	00004517          	auipc	a0,0x4
    80004fa8:	4b450513          	addi	a0,a0,1204 # 80009458 <CONSOLE_STATUS+0x448>
    80004fac:	00001097          	auipc	ra,0x1
    80004fb0:	aa0080e7          	jalr	-1376(ra) # 80005a4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004fb4:	00000493          	li	s1,0
    80004fb8:	f99ff06f          	j	80004f50 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004fbc:	00004517          	auipc	a0,0x4
    80004fc0:	29450513          	addi	a0,a0,660 # 80009250 <CONSOLE_STATUS+0x240>
    80004fc4:	00001097          	auipc	ra,0x1
    80004fc8:	a88080e7          	jalr	-1400(ra) # 80005a4c <_Z11printStringPKc>
    finishedB = true;
    80004fcc:	00100793          	li	a5,1
    80004fd0:	00007717          	auipc	a4,0x7
    80004fd4:	c0f70523          	sb	a5,-1014(a4) # 8000bbda <_ZL9finishedB>
    thread_dispatch();
    80004fd8:	ffffc097          	auipc	ra,0xffffc
    80004fdc:	314080e7          	jalr	788(ra) # 800012ec <_Z15thread_dispatchv>
}
    80004fe0:	01813083          	ld	ra,24(sp)
    80004fe4:	01013403          	ld	s0,16(sp)
    80004fe8:	00813483          	ld	s1,8(sp)
    80004fec:	00013903          	ld	s2,0(sp)
    80004ff0:	02010113          	addi	sp,sp,32
    80004ff4:	00008067          	ret

0000000080004ff8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004ff8:	fe010113          	addi	sp,sp,-32
    80004ffc:	00113c23          	sd	ra,24(sp)
    80005000:	00813823          	sd	s0,16(sp)
    80005004:	00913423          	sd	s1,8(sp)
    80005008:	01213023          	sd	s2,0(sp)
    8000500c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005010:	00000913          	li	s2,0
    80005014:	0380006f          	j	8000504c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005018:	ffffc097          	auipc	ra,0xffffc
    8000501c:	2d4080e7          	jalr	724(ra) # 800012ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005020:	00148493          	addi	s1,s1,1
    80005024:	000027b7          	lui	a5,0x2
    80005028:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000502c:	0097ee63          	bltu	a5,s1,80005048 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005030:	00000713          	li	a4,0
    80005034:	000077b7          	lui	a5,0x7
    80005038:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000503c:	fce7eee3          	bltu	a5,a4,80005018 <_ZL11workerBodyAPv+0x20>
    80005040:	00170713          	addi	a4,a4,1
    80005044:	ff1ff06f          	j	80005034 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005048:	00190913          	addi	s2,s2,1
    8000504c:	00900793          	li	a5,9
    80005050:	0527e063          	bltu	a5,s2,80005090 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005054:	00004517          	auipc	a0,0x4
    80005058:	fcc50513          	addi	a0,a0,-52 # 80009020 <CONSOLE_STATUS+0x10>
    8000505c:	00001097          	auipc	ra,0x1
    80005060:	9f0080e7          	jalr	-1552(ra) # 80005a4c <_Z11printStringPKc>
    80005064:	00000613          	li	a2,0
    80005068:	00a00593          	li	a1,10
    8000506c:	0009051b          	sext.w	a0,s2
    80005070:	00001097          	auipc	ra,0x1
    80005074:	b8c080e7          	jalr	-1140(ra) # 80005bfc <_Z8printIntiii>
    80005078:	00004517          	auipc	a0,0x4
    8000507c:	3e050513          	addi	a0,a0,992 # 80009458 <CONSOLE_STATUS+0x448>
    80005080:	00001097          	auipc	ra,0x1
    80005084:	9cc080e7          	jalr	-1588(ra) # 80005a4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005088:	00000493          	li	s1,0
    8000508c:	f99ff06f          	j	80005024 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005090:	00004517          	auipc	a0,0x4
    80005094:	1b050513          	addi	a0,a0,432 # 80009240 <CONSOLE_STATUS+0x230>
    80005098:	00001097          	auipc	ra,0x1
    8000509c:	9b4080e7          	jalr	-1612(ra) # 80005a4c <_Z11printStringPKc>
    finishedA = true;
    800050a0:	00100793          	li	a5,1
    800050a4:	00007717          	auipc	a4,0x7
    800050a8:	b2f70ba3          	sb	a5,-1225(a4) # 8000bbdb <_ZL9finishedA>
}
    800050ac:	01813083          	ld	ra,24(sp)
    800050b0:	01013403          	ld	s0,16(sp)
    800050b4:	00813483          	ld	s1,8(sp)
    800050b8:	00013903          	ld	s2,0(sp)
    800050bc:	02010113          	addi	sp,sp,32
    800050c0:	00008067          	ret

00000000800050c4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800050c4:	fd010113          	addi	sp,sp,-48
    800050c8:	02113423          	sd	ra,40(sp)
    800050cc:	02813023          	sd	s0,32(sp)
    800050d0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800050d4:	00000613          	li	a2,0
    800050d8:	00000597          	auipc	a1,0x0
    800050dc:	f2058593          	addi	a1,a1,-224 # 80004ff8 <_ZL11workerBodyAPv>
    800050e0:	fd040513          	addi	a0,s0,-48
    800050e4:	ffffc097          	auipc	ra,0xffffc
    800050e8:	1d0080e7          	jalr	464(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800050ec:	00004517          	auipc	a0,0x4
    800050f0:	1b450513          	addi	a0,a0,436 # 800092a0 <CONSOLE_STATUS+0x290>
    800050f4:	00001097          	auipc	ra,0x1
    800050f8:	958080e7          	jalr	-1704(ra) # 80005a4c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800050fc:	00000613          	li	a2,0
    80005100:	00000597          	auipc	a1,0x0
    80005104:	e2458593          	addi	a1,a1,-476 # 80004f24 <_ZL11workerBodyBPv>
    80005108:	fd840513          	addi	a0,s0,-40
    8000510c:	ffffc097          	auipc	ra,0xffffc
    80005110:	1a8080e7          	jalr	424(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005114:	00004517          	auipc	a0,0x4
    80005118:	1a450513          	addi	a0,a0,420 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000511c:	00001097          	auipc	ra,0x1
    80005120:	930080e7          	jalr	-1744(ra) # 80005a4c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005124:	00000613          	li	a2,0
    80005128:	00000597          	auipc	a1,0x0
    8000512c:	c7c58593          	addi	a1,a1,-900 # 80004da4 <_ZL11workerBodyCPv>
    80005130:	fe040513          	addi	a0,s0,-32
    80005134:	ffffc097          	auipc	ra,0xffffc
    80005138:	180080e7          	jalr	384(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000513c:	00004517          	auipc	a0,0x4
    80005140:	19450513          	addi	a0,a0,404 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80005144:	00001097          	auipc	ra,0x1
    80005148:	908080e7          	jalr	-1784(ra) # 80005a4c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000514c:	00000613          	li	a2,0
    80005150:	00000597          	auipc	a1,0x0
    80005154:	b0c58593          	addi	a1,a1,-1268 # 80004c5c <_ZL11workerBodyDPv>
    80005158:	fe840513          	addi	a0,s0,-24
    8000515c:	ffffc097          	auipc	ra,0xffffc
    80005160:	158080e7          	jalr	344(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005164:	00004517          	auipc	a0,0x4
    80005168:	18450513          	addi	a0,a0,388 # 800092e8 <CONSOLE_STATUS+0x2d8>
    8000516c:	00001097          	auipc	ra,0x1
    80005170:	8e0080e7          	jalr	-1824(ra) # 80005a4c <_Z11printStringPKc>
    80005174:	00c0006f          	j	80005180 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005178:	ffffc097          	auipc	ra,0xffffc
    8000517c:	174080e7          	jalr	372(ra) # 800012ec <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005180:	00007797          	auipc	a5,0x7
    80005184:	a5b7c783          	lbu	a5,-1445(a5) # 8000bbdb <_ZL9finishedA>
    80005188:	fe0788e3          	beqz	a5,80005178 <_Z18Threads_C_API_testv+0xb4>
    8000518c:	00007797          	auipc	a5,0x7
    80005190:	a4e7c783          	lbu	a5,-1458(a5) # 8000bbda <_ZL9finishedB>
    80005194:	fe0782e3          	beqz	a5,80005178 <_Z18Threads_C_API_testv+0xb4>
    80005198:	00007797          	auipc	a5,0x7
    8000519c:	a417c783          	lbu	a5,-1471(a5) # 8000bbd9 <_ZL9finishedC>
    800051a0:	fc078ce3          	beqz	a5,80005178 <_Z18Threads_C_API_testv+0xb4>
    800051a4:	00007797          	auipc	a5,0x7
    800051a8:	a347c783          	lbu	a5,-1484(a5) # 8000bbd8 <_ZL9finishedD>
    800051ac:	fc0786e3          	beqz	a5,80005178 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800051b0:	02813083          	ld	ra,40(sp)
    800051b4:	02013403          	ld	s0,32(sp)
    800051b8:	03010113          	addi	sp,sp,48
    800051bc:	00008067          	ret

00000000800051c0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800051c0:	fd010113          	addi	sp,sp,-48
    800051c4:	02113423          	sd	ra,40(sp)
    800051c8:	02813023          	sd	s0,32(sp)
    800051cc:	00913c23          	sd	s1,24(sp)
    800051d0:	01213823          	sd	s2,16(sp)
    800051d4:	01313423          	sd	s3,8(sp)
    800051d8:	03010413          	addi	s0,sp,48
    800051dc:	00050993          	mv	s3,a0
    800051e0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800051e4:	00000913          	li	s2,0
    800051e8:	00c0006f          	j	800051f4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800051ec:	ffffd097          	auipc	ra,0xffffd
    800051f0:	494080e7          	jalr	1172(ra) # 80002680 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800051f4:	ffffc097          	auipc	ra,0xffffc
    800051f8:	2a0080e7          	jalr	672(ra) # 80001494 <_Z4getcv>
    800051fc:	0005059b          	sext.w	a1,a0
    80005200:	01b00793          	li	a5,27
    80005204:	02f58a63          	beq	a1,a5,80005238 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005208:	0084b503          	ld	a0,8(s1)
    8000520c:	00001097          	auipc	ra,0x1
    80005210:	c64080e7          	jalr	-924(ra) # 80005e70 <_ZN9BufferCPP3putEi>
        i++;
    80005214:	0019071b          	addiw	a4,s2,1
    80005218:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000521c:	0004a683          	lw	a3,0(s1)
    80005220:	0026979b          	slliw	a5,a3,0x2
    80005224:	00d787bb          	addw	a5,a5,a3
    80005228:	0017979b          	slliw	a5,a5,0x1
    8000522c:	02f767bb          	remw	a5,a4,a5
    80005230:	fc0792e3          	bnez	a5,800051f4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005234:	fb9ff06f          	j	800051ec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005238:	00100793          	li	a5,1
    8000523c:	00007717          	auipc	a4,0x7
    80005240:	9af72223          	sw	a5,-1628(a4) # 8000bbe0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005244:	0209b783          	ld	a5,32(s3)
    80005248:	02100593          	li	a1,33
    8000524c:	0087b503          	ld	a0,8(a5)
    80005250:	00001097          	auipc	ra,0x1
    80005254:	c20080e7          	jalr	-992(ra) # 80005e70 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005258:	0104b503          	ld	a0,16(s1)
    8000525c:	ffffd097          	auipc	ra,0xffffd
    80005260:	52c080e7          	jalr	1324(ra) # 80002788 <_ZN9Semaphore6signalEv>
}
    80005264:	02813083          	ld	ra,40(sp)
    80005268:	02013403          	ld	s0,32(sp)
    8000526c:	01813483          	ld	s1,24(sp)
    80005270:	01013903          	ld	s2,16(sp)
    80005274:	00813983          	ld	s3,8(sp)
    80005278:	03010113          	addi	sp,sp,48
    8000527c:	00008067          	ret

0000000080005280 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005280:	fe010113          	addi	sp,sp,-32
    80005284:	00113c23          	sd	ra,24(sp)
    80005288:	00813823          	sd	s0,16(sp)
    8000528c:	00913423          	sd	s1,8(sp)
    80005290:	01213023          	sd	s2,0(sp)
    80005294:	02010413          	addi	s0,sp,32
    80005298:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000529c:	00000913          	li	s2,0
    800052a0:	00c0006f          	j	800052ac <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800052a4:	ffffd097          	auipc	ra,0xffffd
    800052a8:	3dc080e7          	jalr	988(ra) # 80002680 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800052ac:	00007797          	auipc	a5,0x7
    800052b0:	9347a783          	lw	a5,-1740(a5) # 8000bbe0 <_ZL9threadEnd>
    800052b4:	02079e63          	bnez	a5,800052f0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800052b8:	0004a583          	lw	a1,0(s1)
    800052bc:	0305859b          	addiw	a1,a1,48
    800052c0:	0084b503          	ld	a0,8(s1)
    800052c4:	00001097          	auipc	ra,0x1
    800052c8:	bac080e7          	jalr	-1108(ra) # 80005e70 <_ZN9BufferCPP3putEi>
        i++;
    800052cc:	0019071b          	addiw	a4,s2,1
    800052d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800052d4:	0004a683          	lw	a3,0(s1)
    800052d8:	0026979b          	slliw	a5,a3,0x2
    800052dc:	00d787bb          	addw	a5,a5,a3
    800052e0:	0017979b          	slliw	a5,a5,0x1
    800052e4:	02f767bb          	remw	a5,a4,a5
    800052e8:	fc0792e3          	bnez	a5,800052ac <_ZN12ProducerSync8producerEPv+0x2c>
    800052ec:	fb9ff06f          	j	800052a4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800052f0:	0104b503          	ld	a0,16(s1)
    800052f4:	ffffd097          	auipc	ra,0xffffd
    800052f8:	494080e7          	jalr	1172(ra) # 80002788 <_ZN9Semaphore6signalEv>
}
    800052fc:	01813083          	ld	ra,24(sp)
    80005300:	01013403          	ld	s0,16(sp)
    80005304:	00813483          	ld	s1,8(sp)
    80005308:	00013903          	ld	s2,0(sp)
    8000530c:	02010113          	addi	sp,sp,32
    80005310:	00008067          	ret

0000000080005314 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005314:	fd010113          	addi	sp,sp,-48
    80005318:	02113423          	sd	ra,40(sp)
    8000531c:	02813023          	sd	s0,32(sp)
    80005320:	00913c23          	sd	s1,24(sp)
    80005324:	01213823          	sd	s2,16(sp)
    80005328:	01313423          	sd	s3,8(sp)
    8000532c:	01413023          	sd	s4,0(sp)
    80005330:	03010413          	addi	s0,sp,48
    80005334:	00050993          	mv	s3,a0
    80005338:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000533c:	00000a13          	li	s4,0
    80005340:	01c0006f          	j	8000535c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005344:	ffffd097          	auipc	ra,0xffffd
    80005348:	33c080e7          	jalr	828(ra) # 80002680 <_ZN6Thread8dispatchEv>
    8000534c:	0500006f          	j	8000539c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005350:	00a00513          	li	a0,10
    80005354:	ffffc097          	auipc	ra,0xffffc
    80005358:	16c080e7          	jalr	364(ra) # 800014c0 <_Z4putcc>
    while (!threadEnd) {
    8000535c:	00007797          	auipc	a5,0x7
    80005360:	8847a783          	lw	a5,-1916(a5) # 8000bbe0 <_ZL9threadEnd>
    80005364:	06079263          	bnez	a5,800053c8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005368:	00893503          	ld	a0,8(s2)
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	b94080e7          	jalr	-1132(ra) # 80005f00 <_ZN9BufferCPP3getEv>
        i++;
    80005374:	001a049b          	addiw	s1,s4,1
    80005378:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000537c:	0ff57513          	andi	a0,a0,255
    80005380:	ffffc097          	auipc	ra,0xffffc
    80005384:	140080e7          	jalr	320(ra) # 800014c0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005388:	00092703          	lw	a4,0(s2)
    8000538c:	0027179b          	slliw	a5,a4,0x2
    80005390:	00e787bb          	addw	a5,a5,a4
    80005394:	02f4e7bb          	remw	a5,s1,a5
    80005398:	fa0786e3          	beqz	a5,80005344 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000539c:	05000793          	li	a5,80
    800053a0:	02f4e4bb          	remw	s1,s1,a5
    800053a4:	fa049ce3          	bnez	s1,8000535c <_ZN12ConsumerSync8consumerEPv+0x48>
    800053a8:	fa9ff06f          	j	80005350 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800053ac:	0209b783          	ld	a5,32(s3)
    800053b0:	0087b503          	ld	a0,8(a5)
    800053b4:	00001097          	auipc	ra,0x1
    800053b8:	b4c080e7          	jalr	-1204(ra) # 80005f00 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800053bc:	0ff57513          	andi	a0,a0,255
    800053c0:	ffffd097          	auipc	ra,0xffffd
    800053c4:	4c4080e7          	jalr	1220(ra) # 80002884 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800053c8:	0209b783          	ld	a5,32(s3)
    800053cc:	0087b503          	ld	a0,8(a5)
    800053d0:	00001097          	auipc	ra,0x1
    800053d4:	bbc080e7          	jalr	-1092(ra) # 80005f8c <_ZN9BufferCPP6getCntEv>
    800053d8:	fca04ae3          	bgtz	a0,800053ac <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800053dc:	01093503          	ld	a0,16(s2)
    800053e0:	ffffd097          	auipc	ra,0xffffd
    800053e4:	3a8080e7          	jalr	936(ra) # 80002788 <_ZN9Semaphore6signalEv>
}
    800053e8:	02813083          	ld	ra,40(sp)
    800053ec:	02013403          	ld	s0,32(sp)
    800053f0:	01813483          	ld	s1,24(sp)
    800053f4:	01013903          	ld	s2,16(sp)
    800053f8:	00813983          	ld	s3,8(sp)
    800053fc:	00013a03          	ld	s4,0(sp)
    80005400:	03010113          	addi	sp,sp,48
    80005404:	00008067          	ret

0000000080005408 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005408:	f8010113          	addi	sp,sp,-128
    8000540c:	06113c23          	sd	ra,120(sp)
    80005410:	06813823          	sd	s0,112(sp)
    80005414:	06913423          	sd	s1,104(sp)
    80005418:	07213023          	sd	s2,96(sp)
    8000541c:	05313c23          	sd	s3,88(sp)
    80005420:	05413823          	sd	s4,80(sp)
    80005424:	05513423          	sd	s5,72(sp)
    80005428:	05613023          	sd	s6,64(sp)
    8000542c:	03713c23          	sd	s7,56(sp)
    80005430:	03813823          	sd	s8,48(sp)
    80005434:	03913423          	sd	s9,40(sp)
    80005438:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000543c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005440:	00004517          	auipc	a0,0x4
    80005444:	d1850513          	addi	a0,a0,-744 # 80009158 <CONSOLE_STATUS+0x148>
    80005448:	00000097          	auipc	ra,0x0
    8000544c:	604080e7          	jalr	1540(ra) # 80005a4c <_Z11printStringPKc>
    getString(input, 30);
    80005450:	01e00593          	li	a1,30
    80005454:	f8040493          	addi	s1,s0,-128
    80005458:	00048513          	mv	a0,s1
    8000545c:	00000097          	auipc	ra,0x0
    80005460:	678080e7          	jalr	1656(ra) # 80005ad4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005464:	00048513          	mv	a0,s1
    80005468:	00000097          	auipc	ra,0x0
    8000546c:	744080e7          	jalr	1860(ra) # 80005bac <_Z11stringToIntPKc>
    80005470:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005474:	00004517          	auipc	a0,0x4
    80005478:	d0450513          	addi	a0,a0,-764 # 80009178 <CONSOLE_STATUS+0x168>
    8000547c:	00000097          	auipc	ra,0x0
    80005480:	5d0080e7          	jalr	1488(ra) # 80005a4c <_Z11printStringPKc>
    getString(input, 30);
    80005484:	01e00593          	li	a1,30
    80005488:	00048513          	mv	a0,s1
    8000548c:	00000097          	auipc	ra,0x0
    80005490:	648080e7          	jalr	1608(ra) # 80005ad4 <_Z9getStringPci>
    n = stringToInt(input);
    80005494:	00048513          	mv	a0,s1
    80005498:	00000097          	auipc	ra,0x0
    8000549c:	714080e7          	jalr	1812(ra) # 80005bac <_Z11stringToIntPKc>
    800054a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800054a4:	00004517          	auipc	a0,0x4
    800054a8:	cf450513          	addi	a0,a0,-780 # 80009198 <CONSOLE_STATUS+0x188>
    800054ac:	00000097          	auipc	ra,0x0
    800054b0:	5a0080e7          	jalr	1440(ra) # 80005a4c <_Z11printStringPKc>
    800054b4:	00000613          	li	a2,0
    800054b8:	00a00593          	li	a1,10
    800054bc:	00090513          	mv	a0,s2
    800054c0:	00000097          	auipc	ra,0x0
    800054c4:	73c080e7          	jalr	1852(ra) # 80005bfc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800054c8:	00004517          	auipc	a0,0x4
    800054cc:	ce850513          	addi	a0,a0,-792 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800054d0:	00000097          	auipc	ra,0x0
    800054d4:	57c080e7          	jalr	1404(ra) # 80005a4c <_Z11printStringPKc>
    800054d8:	00000613          	li	a2,0
    800054dc:	00a00593          	li	a1,10
    800054e0:	00048513          	mv	a0,s1
    800054e4:	00000097          	auipc	ra,0x0
    800054e8:	718080e7          	jalr	1816(ra) # 80005bfc <_Z8printIntiii>
    printString(".\n");
    800054ec:	00004517          	auipc	a0,0x4
    800054f0:	cdc50513          	addi	a0,a0,-804 # 800091c8 <CONSOLE_STATUS+0x1b8>
    800054f4:	00000097          	auipc	ra,0x0
    800054f8:	558080e7          	jalr	1368(ra) # 80005a4c <_Z11printStringPKc>
    if(threadNum > n) {
    800054fc:	0324c463          	blt	s1,s2,80005524 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005500:	03205c63          	blez	s2,80005538 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005504:	03800513          	li	a0,56
    80005508:	ffffd097          	auipc	ra,0xffffd
    8000550c:	f68080e7          	jalr	-152(ra) # 80002470 <_Znwm>
    80005510:	00050a93          	mv	s5,a0
    80005514:	00048593          	mv	a1,s1
    80005518:	00001097          	auipc	ra,0x1
    8000551c:	804080e7          	jalr	-2044(ra) # 80005d1c <_ZN9BufferCPPC1Ei>
    80005520:	0300006f          	j	80005550 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005524:	00004517          	auipc	a0,0x4
    80005528:	cac50513          	addi	a0,a0,-852 # 800091d0 <CONSOLE_STATUS+0x1c0>
    8000552c:	00000097          	auipc	ra,0x0
    80005530:	520080e7          	jalr	1312(ra) # 80005a4c <_Z11printStringPKc>
        return;
    80005534:	0140006f          	j	80005548 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005538:	00004517          	auipc	a0,0x4
    8000553c:	cd850513          	addi	a0,a0,-808 # 80009210 <CONSOLE_STATUS+0x200>
    80005540:	00000097          	auipc	ra,0x0
    80005544:	50c080e7          	jalr	1292(ra) # 80005a4c <_Z11printStringPKc>
        return;
    80005548:	000b8113          	mv	sp,s7
    8000554c:	2380006f          	j	80005784 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005550:	01000513          	li	a0,16
    80005554:	ffffd097          	auipc	ra,0xffffd
    80005558:	f1c080e7          	jalr	-228(ra) # 80002470 <_Znwm>
    8000555c:	00050493          	mv	s1,a0
    80005560:	00000593          	li	a1,0
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	1c0080e7          	jalr	448(ra) # 80002724 <_ZN9SemaphoreC1Ej>
    8000556c:	00006797          	auipc	a5,0x6
    80005570:	6697be23          	sd	s1,1660(a5) # 8000bbe8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005574:	00391793          	slli	a5,s2,0x3
    80005578:	00f78793          	addi	a5,a5,15
    8000557c:	ff07f793          	andi	a5,a5,-16
    80005580:	40f10133          	sub	sp,sp,a5
    80005584:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005588:	0019071b          	addiw	a4,s2,1
    8000558c:	00171793          	slli	a5,a4,0x1
    80005590:	00e787b3          	add	a5,a5,a4
    80005594:	00379793          	slli	a5,a5,0x3
    80005598:	00f78793          	addi	a5,a5,15
    8000559c:	ff07f793          	andi	a5,a5,-16
    800055a0:	40f10133          	sub	sp,sp,a5
    800055a4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800055a8:	00191c13          	slli	s8,s2,0x1
    800055ac:	012c07b3          	add	a5,s8,s2
    800055b0:	00379793          	slli	a5,a5,0x3
    800055b4:	00fa07b3          	add	a5,s4,a5
    800055b8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800055bc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800055c0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800055c4:	02800513          	li	a0,40
    800055c8:	ffffd097          	auipc	ra,0xffffd
    800055cc:	ea8080e7          	jalr	-344(ra) # 80002470 <_Znwm>
    800055d0:	00050b13          	mv	s6,a0
    800055d4:	012c0c33          	add	s8,s8,s2
    800055d8:	003c1c13          	slli	s8,s8,0x3
    800055dc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800055e0:	ffffd097          	auipc	ra,0xffffd
    800055e4:	070080e7          	jalr	112(ra) # 80002650 <_ZN6ThreadC1Ev>
    800055e8:	00006797          	auipc	a5,0x6
    800055ec:	4a078793          	addi	a5,a5,1184 # 8000ba88 <_ZTV12ConsumerSync+0x10>
    800055f0:	00fb3023          	sd	a5,0(s6)
    800055f4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800055f8:	000b0513          	mv	a0,s6
    800055fc:	ffffd097          	auipc	ra,0xffffd
    80005600:	0ac080e7          	jalr	172(ra) # 800026a8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005604:	00000493          	li	s1,0
    80005608:	0380006f          	j	80005640 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000560c:	00006797          	auipc	a5,0x6
    80005610:	45478793          	addi	a5,a5,1108 # 8000ba60 <_ZTV12ProducerSync+0x10>
    80005614:	00fcb023          	sd	a5,0(s9)
    80005618:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000561c:	00349793          	slli	a5,s1,0x3
    80005620:	00f987b3          	add	a5,s3,a5
    80005624:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005628:	00349793          	slli	a5,s1,0x3
    8000562c:	00f987b3          	add	a5,s3,a5
    80005630:	0007b503          	ld	a0,0(a5)
    80005634:	ffffd097          	auipc	ra,0xffffd
    80005638:	074080e7          	jalr	116(ra) # 800026a8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000563c:	0014849b          	addiw	s1,s1,1
    80005640:	0b24d063          	bge	s1,s2,800056e0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005644:	00149793          	slli	a5,s1,0x1
    80005648:	009787b3          	add	a5,a5,s1
    8000564c:	00379793          	slli	a5,a5,0x3
    80005650:	00fa07b3          	add	a5,s4,a5
    80005654:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005658:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000565c:	00006717          	auipc	a4,0x6
    80005660:	58c73703          	ld	a4,1420(a4) # 8000bbe8 <_ZL10waitForAll>
    80005664:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005668:	02905863          	blez	s1,80005698 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000566c:	02800513          	li	a0,40
    80005670:	ffffd097          	auipc	ra,0xffffd
    80005674:	e00080e7          	jalr	-512(ra) # 80002470 <_Znwm>
    80005678:	00050c93          	mv	s9,a0
    8000567c:	00149c13          	slli	s8,s1,0x1
    80005680:	009c0c33          	add	s8,s8,s1
    80005684:	003c1c13          	slli	s8,s8,0x3
    80005688:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000568c:	ffffd097          	auipc	ra,0xffffd
    80005690:	fc4080e7          	jalr	-60(ra) # 80002650 <_ZN6ThreadC1Ev>
    80005694:	f79ff06f          	j	8000560c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005698:	02800513          	li	a0,40
    8000569c:	ffffd097          	auipc	ra,0xffffd
    800056a0:	dd4080e7          	jalr	-556(ra) # 80002470 <_Znwm>
    800056a4:	00050c93          	mv	s9,a0
    800056a8:	00149c13          	slli	s8,s1,0x1
    800056ac:	009c0c33          	add	s8,s8,s1
    800056b0:	003c1c13          	slli	s8,s8,0x3
    800056b4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800056b8:	ffffd097          	auipc	ra,0xffffd
    800056bc:	f98080e7          	jalr	-104(ra) # 80002650 <_ZN6ThreadC1Ev>
    800056c0:	00006797          	auipc	a5,0x6
    800056c4:	37878793          	addi	a5,a5,888 # 8000ba38 <_ZTV16ProducerKeyboard+0x10>
    800056c8:	00fcb023          	sd	a5,0(s9)
    800056cc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800056d0:	00349793          	slli	a5,s1,0x3
    800056d4:	00f987b3          	add	a5,s3,a5
    800056d8:	0197b023          	sd	s9,0(a5)
    800056dc:	f4dff06f          	j	80005628 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800056e0:	ffffd097          	auipc	ra,0xffffd
    800056e4:	fa0080e7          	jalr	-96(ra) # 80002680 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800056e8:	00000493          	li	s1,0
    800056ec:	00994e63          	blt	s2,s1,80005708 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800056f0:	00006517          	auipc	a0,0x6
    800056f4:	4f853503          	ld	a0,1272(a0) # 8000bbe8 <_ZL10waitForAll>
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	064080e7          	jalr	100(ra) # 8000275c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005700:	0014849b          	addiw	s1,s1,1
    80005704:	fe9ff06f          	j	800056ec <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005708:	00000493          	li	s1,0
    8000570c:	0080006f          	j	80005714 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005710:	0014849b          	addiw	s1,s1,1
    80005714:	0324d263          	bge	s1,s2,80005738 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005718:	00349793          	slli	a5,s1,0x3
    8000571c:	00f987b3          	add	a5,s3,a5
    80005720:	0007b503          	ld	a0,0(a5)
    80005724:	fe0506e3          	beqz	a0,80005710 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005728:	00053783          	ld	a5,0(a0)
    8000572c:	0087b783          	ld	a5,8(a5)
    80005730:	000780e7          	jalr	a5
    80005734:	fddff06f          	j	80005710 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005738:	000b0a63          	beqz	s6,8000574c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000573c:	000b3783          	ld	a5,0(s6)
    80005740:	0087b783          	ld	a5,8(a5)
    80005744:	000b0513          	mv	a0,s6
    80005748:	000780e7          	jalr	a5
    delete waitForAll;
    8000574c:	00006517          	auipc	a0,0x6
    80005750:	49c53503          	ld	a0,1180(a0) # 8000bbe8 <_ZL10waitForAll>
    80005754:	00050863          	beqz	a0,80005764 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005758:	00053783          	ld	a5,0(a0)
    8000575c:	0087b783          	ld	a5,8(a5)
    80005760:	000780e7          	jalr	a5
    delete buffer;
    80005764:	000a8e63          	beqz	s5,80005780 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005768:	000a8513          	mv	a0,s5
    8000576c:	00001097          	auipc	ra,0x1
    80005770:	8a8080e7          	jalr	-1880(ra) # 80006014 <_ZN9BufferCPPD1Ev>
    80005774:	000a8513          	mv	a0,s5
    80005778:	ffffd097          	auipc	ra,0xffffd
    8000577c:	d48080e7          	jalr	-696(ra) # 800024c0 <_ZdlPv>
    80005780:	000b8113          	mv	sp,s7

}
    80005784:	f8040113          	addi	sp,s0,-128
    80005788:	07813083          	ld	ra,120(sp)
    8000578c:	07013403          	ld	s0,112(sp)
    80005790:	06813483          	ld	s1,104(sp)
    80005794:	06013903          	ld	s2,96(sp)
    80005798:	05813983          	ld	s3,88(sp)
    8000579c:	05013a03          	ld	s4,80(sp)
    800057a0:	04813a83          	ld	s5,72(sp)
    800057a4:	04013b03          	ld	s6,64(sp)
    800057a8:	03813b83          	ld	s7,56(sp)
    800057ac:	03013c03          	ld	s8,48(sp)
    800057b0:	02813c83          	ld	s9,40(sp)
    800057b4:	08010113          	addi	sp,sp,128
    800057b8:	00008067          	ret
    800057bc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800057c0:	000a8513          	mv	a0,s5
    800057c4:	ffffd097          	auipc	ra,0xffffd
    800057c8:	cfc080e7          	jalr	-772(ra) # 800024c0 <_ZdlPv>
    800057cc:	00048513          	mv	a0,s1
    800057d0:	00007097          	auipc	ra,0x7
    800057d4:	4f8080e7          	jalr	1272(ra) # 8000ccc8 <_Unwind_Resume>
    800057d8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800057dc:	00048513          	mv	a0,s1
    800057e0:	ffffd097          	auipc	ra,0xffffd
    800057e4:	ce0080e7          	jalr	-800(ra) # 800024c0 <_ZdlPv>
    800057e8:	00090513          	mv	a0,s2
    800057ec:	00007097          	auipc	ra,0x7
    800057f0:	4dc080e7          	jalr	1244(ra) # 8000ccc8 <_Unwind_Resume>
    800057f4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800057f8:	000b0513          	mv	a0,s6
    800057fc:	ffffd097          	auipc	ra,0xffffd
    80005800:	cc4080e7          	jalr	-828(ra) # 800024c0 <_ZdlPv>
    80005804:	00048513          	mv	a0,s1
    80005808:	00007097          	auipc	ra,0x7
    8000580c:	4c0080e7          	jalr	1216(ra) # 8000ccc8 <_Unwind_Resume>
    80005810:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005814:	000c8513          	mv	a0,s9
    80005818:	ffffd097          	auipc	ra,0xffffd
    8000581c:	ca8080e7          	jalr	-856(ra) # 800024c0 <_ZdlPv>
    80005820:	00048513          	mv	a0,s1
    80005824:	00007097          	auipc	ra,0x7
    80005828:	4a4080e7          	jalr	1188(ra) # 8000ccc8 <_Unwind_Resume>
    8000582c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005830:	000c8513          	mv	a0,s9
    80005834:	ffffd097          	auipc	ra,0xffffd
    80005838:	c8c080e7          	jalr	-884(ra) # 800024c0 <_ZdlPv>
    8000583c:	00048513          	mv	a0,s1
    80005840:	00007097          	auipc	ra,0x7
    80005844:	488080e7          	jalr	1160(ra) # 8000ccc8 <_Unwind_Resume>

0000000080005848 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005848:	ff010113          	addi	sp,sp,-16
    8000584c:	00113423          	sd	ra,8(sp)
    80005850:	00813023          	sd	s0,0(sp)
    80005854:	01010413          	addi	s0,sp,16
    80005858:	00006797          	auipc	a5,0x6
    8000585c:	23078793          	addi	a5,a5,560 # 8000ba88 <_ZTV12ConsumerSync+0x10>
    80005860:	00f53023          	sd	a5,0(a0)
    80005864:	ffffd097          	auipc	ra,0xffffd
    80005868:	cac080e7          	jalr	-852(ra) # 80002510 <_ZN6ThreadD1Ev>
    8000586c:	00813083          	ld	ra,8(sp)
    80005870:	00013403          	ld	s0,0(sp)
    80005874:	01010113          	addi	sp,sp,16
    80005878:	00008067          	ret

000000008000587c <_ZN12ConsumerSyncD0Ev>:
    8000587c:	fe010113          	addi	sp,sp,-32
    80005880:	00113c23          	sd	ra,24(sp)
    80005884:	00813823          	sd	s0,16(sp)
    80005888:	00913423          	sd	s1,8(sp)
    8000588c:	02010413          	addi	s0,sp,32
    80005890:	00050493          	mv	s1,a0
    80005894:	00006797          	auipc	a5,0x6
    80005898:	1f478793          	addi	a5,a5,500 # 8000ba88 <_ZTV12ConsumerSync+0x10>
    8000589c:	00f53023          	sd	a5,0(a0)
    800058a0:	ffffd097          	auipc	ra,0xffffd
    800058a4:	c70080e7          	jalr	-912(ra) # 80002510 <_ZN6ThreadD1Ev>
    800058a8:	00048513          	mv	a0,s1
    800058ac:	ffffd097          	auipc	ra,0xffffd
    800058b0:	c14080e7          	jalr	-1004(ra) # 800024c0 <_ZdlPv>
    800058b4:	01813083          	ld	ra,24(sp)
    800058b8:	01013403          	ld	s0,16(sp)
    800058bc:	00813483          	ld	s1,8(sp)
    800058c0:	02010113          	addi	sp,sp,32
    800058c4:	00008067          	ret

00000000800058c8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800058c8:	ff010113          	addi	sp,sp,-16
    800058cc:	00113423          	sd	ra,8(sp)
    800058d0:	00813023          	sd	s0,0(sp)
    800058d4:	01010413          	addi	s0,sp,16
    800058d8:	00006797          	auipc	a5,0x6
    800058dc:	18878793          	addi	a5,a5,392 # 8000ba60 <_ZTV12ProducerSync+0x10>
    800058e0:	00f53023          	sd	a5,0(a0)
    800058e4:	ffffd097          	auipc	ra,0xffffd
    800058e8:	c2c080e7          	jalr	-980(ra) # 80002510 <_ZN6ThreadD1Ev>
    800058ec:	00813083          	ld	ra,8(sp)
    800058f0:	00013403          	ld	s0,0(sp)
    800058f4:	01010113          	addi	sp,sp,16
    800058f8:	00008067          	ret

00000000800058fc <_ZN12ProducerSyncD0Ev>:
    800058fc:	fe010113          	addi	sp,sp,-32
    80005900:	00113c23          	sd	ra,24(sp)
    80005904:	00813823          	sd	s0,16(sp)
    80005908:	00913423          	sd	s1,8(sp)
    8000590c:	02010413          	addi	s0,sp,32
    80005910:	00050493          	mv	s1,a0
    80005914:	00006797          	auipc	a5,0x6
    80005918:	14c78793          	addi	a5,a5,332 # 8000ba60 <_ZTV12ProducerSync+0x10>
    8000591c:	00f53023          	sd	a5,0(a0)
    80005920:	ffffd097          	auipc	ra,0xffffd
    80005924:	bf0080e7          	jalr	-1040(ra) # 80002510 <_ZN6ThreadD1Ev>
    80005928:	00048513          	mv	a0,s1
    8000592c:	ffffd097          	auipc	ra,0xffffd
    80005930:	b94080e7          	jalr	-1132(ra) # 800024c0 <_ZdlPv>
    80005934:	01813083          	ld	ra,24(sp)
    80005938:	01013403          	ld	s0,16(sp)
    8000593c:	00813483          	ld	s1,8(sp)
    80005940:	02010113          	addi	sp,sp,32
    80005944:	00008067          	ret

0000000080005948 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005948:	ff010113          	addi	sp,sp,-16
    8000594c:	00113423          	sd	ra,8(sp)
    80005950:	00813023          	sd	s0,0(sp)
    80005954:	01010413          	addi	s0,sp,16
    80005958:	00006797          	auipc	a5,0x6
    8000595c:	0e078793          	addi	a5,a5,224 # 8000ba38 <_ZTV16ProducerKeyboard+0x10>
    80005960:	00f53023          	sd	a5,0(a0)
    80005964:	ffffd097          	auipc	ra,0xffffd
    80005968:	bac080e7          	jalr	-1108(ra) # 80002510 <_ZN6ThreadD1Ev>
    8000596c:	00813083          	ld	ra,8(sp)
    80005970:	00013403          	ld	s0,0(sp)
    80005974:	01010113          	addi	sp,sp,16
    80005978:	00008067          	ret

000000008000597c <_ZN16ProducerKeyboardD0Ev>:
    8000597c:	fe010113          	addi	sp,sp,-32
    80005980:	00113c23          	sd	ra,24(sp)
    80005984:	00813823          	sd	s0,16(sp)
    80005988:	00913423          	sd	s1,8(sp)
    8000598c:	02010413          	addi	s0,sp,32
    80005990:	00050493          	mv	s1,a0
    80005994:	00006797          	auipc	a5,0x6
    80005998:	0a478793          	addi	a5,a5,164 # 8000ba38 <_ZTV16ProducerKeyboard+0x10>
    8000599c:	00f53023          	sd	a5,0(a0)
    800059a0:	ffffd097          	auipc	ra,0xffffd
    800059a4:	b70080e7          	jalr	-1168(ra) # 80002510 <_ZN6ThreadD1Ev>
    800059a8:	00048513          	mv	a0,s1
    800059ac:	ffffd097          	auipc	ra,0xffffd
    800059b0:	b14080e7          	jalr	-1260(ra) # 800024c0 <_ZdlPv>
    800059b4:	01813083          	ld	ra,24(sp)
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	00813483          	ld	s1,8(sp)
    800059c0:	02010113          	addi	sp,sp,32
    800059c4:	00008067          	ret

00000000800059c8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800059c8:	ff010113          	addi	sp,sp,-16
    800059cc:	00113423          	sd	ra,8(sp)
    800059d0:	00813023          	sd	s0,0(sp)
    800059d4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800059d8:	02053583          	ld	a1,32(a0)
    800059dc:	fffff097          	auipc	ra,0xfffff
    800059e0:	7e4080e7          	jalr	2020(ra) # 800051c0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800059e4:	00813083          	ld	ra,8(sp)
    800059e8:	00013403          	ld	s0,0(sp)
    800059ec:	01010113          	addi	sp,sp,16
    800059f0:	00008067          	ret

00000000800059f4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800059f4:	ff010113          	addi	sp,sp,-16
    800059f8:	00113423          	sd	ra,8(sp)
    800059fc:	00813023          	sd	s0,0(sp)
    80005a00:	01010413          	addi	s0,sp,16
        producer(td);
    80005a04:	02053583          	ld	a1,32(a0)
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	878080e7          	jalr	-1928(ra) # 80005280 <_ZN12ProducerSync8producerEPv>
    }
    80005a10:	00813083          	ld	ra,8(sp)
    80005a14:	00013403          	ld	s0,0(sp)
    80005a18:	01010113          	addi	sp,sp,16
    80005a1c:	00008067          	ret

0000000080005a20 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005a20:	ff010113          	addi	sp,sp,-16
    80005a24:	00113423          	sd	ra,8(sp)
    80005a28:	00813023          	sd	s0,0(sp)
    80005a2c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005a30:	02053583          	ld	a1,32(a0)
    80005a34:	00000097          	auipc	ra,0x0
    80005a38:	8e0080e7          	jalr	-1824(ra) # 80005314 <_ZN12ConsumerSync8consumerEPv>
    }
    80005a3c:	00813083          	ld	ra,8(sp)
    80005a40:	00013403          	ld	s0,0(sp)
    80005a44:	01010113          	addi	sp,sp,16
    80005a48:	00008067          	ret

0000000080005a4c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005a4c:	fe010113          	addi	sp,sp,-32
    80005a50:	00113c23          	sd	ra,24(sp)
    80005a54:	00813823          	sd	s0,16(sp)
    80005a58:	00913423          	sd	s1,8(sp)
    80005a5c:	02010413          	addi	s0,sp,32
    80005a60:	00050493          	mv	s1,a0
    LOCK();
    80005a64:	00100613          	li	a2,1
    80005a68:	00000593          	li	a1,0
    80005a6c:	00006517          	auipc	a0,0x6
    80005a70:	18450513          	addi	a0,a0,388 # 8000bbf0 <lockPrint>
    80005a74:	ffffb097          	auipc	ra,0xffffb
    80005a78:	7b0080e7          	jalr	1968(ra) # 80001224 <copy_and_swap>
    80005a7c:	00050863          	beqz	a0,80005a8c <_Z11printStringPKc+0x40>
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	86c080e7          	jalr	-1940(ra) # 800012ec <_Z15thread_dispatchv>
    80005a88:	fddff06f          	j	80005a64 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005a8c:	0004c503          	lbu	a0,0(s1)
    80005a90:	00050a63          	beqz	a0,80005aa4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005a94:	ffffc097          	auipc	ra,0xffffc
    80005a98:	a2c080e7          	jalr	-1492(ra) # 800014c0 <_Z4putcc>
        string++;
    80005a9c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005aa0:	fedff06f          	j	80005a8c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005aa4:	00000613          	li	a2,0
    80005aa8:	00100593          	li	a1,1
    80005aac:	00006517          	auipc	a0,0x6
    80005ab0:	14450513          	addi	a0,a0,324 # 8000bbf0 <lockPrint>
    80005ab4:	ffffb097          	auipc	ra,0xffffb
    80005ab8:	770080e7          	jalr	1904(ra) # 80001224 <copy_and_swap>
    80005abc:	fe0514e3          	bnez	a0,80005aa4 <_Z11printStringPKc+0x58>
}
    80005ac0:	01813083          	ld	ra,24(sp)
    80005ac4:	01013403          	ld	s0,16(sp)
    80005ac8:	00813483          	ld	s1,8(sp)
    80005acc:	02010113          	addi	sp,sp,32
    80005ad0:	00008067          	ret

0000000080005ad4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005ad4:	fd010113          	addi	sp,sp,-48
    80005ad8:	02113423          	sd	ra,40(sp)
    80005adc:	02813023          	sd	s0,32(sp)
    80005ae0:	00913c23          	sd	s1,24(sp)
    80005ae4:	01213823          	sd	s2,16(sp)
    80005ae8:	01313423          	sd	s3,8(sp)
    80005aec:	01413023          	sd	s4,0(sp)
    80005af0:	03010413          	addi	s0,sp,48
    80005af4:	00050993          	mv	s3,a0
    80005af8:	00058a13          	mv	s4,a1
    LOCK();
    80005afc:	00100613          	li	a2,1
    80005b00:	00000593          	li	a1,0
    80005b04:	00006517          	auipc	a0,0x6
    80005b08:	0ec50513          	addi	a0,a0,236 # 8000bbf0 <lockPrint>
    80005b0c:	ffffb097          	auipc	ra,0xffffb
    80005b10:	718080e7          	jalr	1816(ra) # 80001224 <copy_and_swap>
    80005b14:	00050863          	beqz	a0,80005b24 <_Z9getStringPci+0x50>
    80005b18:	ffffb097          	auipc	ra,0xffffb
    80005b1c:	7d4080e7          	jalr	2004(ra) # 800012ec <_Z15thread_dispatchv>
    80005b20:	fddff06f          	j	80005afc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005b24:	00000913          	li	s2,0
    80005b28:	00090493          	mv	s1,s2
    80005b2c:	0019091b          	addiw	s2,s2,1
    80005b30:	03495a63          	bge	s2,s4,80005b64 <_Z9getStringPci+0x90>
        cc = getc();
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	960080e7          	jalr	-1696(ra) # 80001494 <_Z4getcv>
        if(cc < 1)
    80005b3c:	02050463          	beqz	a0,80005b64 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005b40:	009984b3          	add	s1,s3,s1
    80005b44:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005b48:	00a00793          	li	a5,10
    80005b4c:	00f50a63          	beq	a0,a5,80005b60 <_Z9getStringPci+0x8c>
    80005b50:	00d00793          	li	a5,13
    80005b54:	fcf51ae3          	bne	a0,a5,80005b28 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005b58:	00090493          	mv	s1,s2
    80005b5c:	0080006f          	j	80005b64 <_Z9getStringPci+0x90>
    80005b60:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005b64:	009984b3          	add	s1,s3,s1
    80005b68:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005b6c:	00000613          	li	a2,0
    80005b70:	00100593          	li	a1,1
    80005b74:	00006517          	auipc	a0,0x6
    80005b78:	07c50513          	addi	a0,a0,124 # 8000bbf0 <lockPrint>
    80005b7c:	ffffb097          	auipc	ra,0xffffb
    80005b80:	6a8080e7          	jalr	1704(ra) # 80001224 <copy_and_swap>
    80005b84:	fe0514e3          	bnez	a0,80005b6c <_Z9getStringPci+0x98>
    return buf;
}
    80005b88:	00098513          	mv	a0,s3
    80005b8c:	02813083          	ld	ra,40(sp)
    80005b90:	02013403          	ld	s0,32(sp)
    80005b94:	01813483          	ld	s1,24(sp)
    80005b98:	01013903          	ld	s2,16(sp)
    80005b9c:	00813983          	ld	s3,8(sp)
    80005ba0:	00013a03          	ld	s4,0(sp)
    80005ba4:	03010113          	addi	sp,sp,48
    80005ba8:	00008067          	ret

0000000080005bac <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005bac:	ff010113          	addi	sp,sp,-16
    80005bb0:	00813423          	sd	s0,8(sp)
    80005bb4:	01010413          	addi	s0,sp,16
    80005bb8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005bbc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005bc0:	0006c603          	lbu	a2,0(a3)
    80005bc4:	fd06071b          	addiw	a4,a2,-48
    80005bc8:	0ff77713          	andi	a4,a4,255
    80005bcc:	00900793          	li	a5,9
    80005bd0:	02e7e063          	bltu	a5,a4,80005bf0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005bd4:	0025179b          	slliw	a5,a0,0x2
    80005bd8:	00a787bb          	addw	a5,a5,a0
    80005bdc:	0017979b          	slliw	a5,a5,0x1
    80005be0:	00168693          	addi	a3,a3,1
    80005be4:	00c787bb          	addw	a5,a5,a2
    80005be8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005bec:	fd5ff06f          	j	80005bc0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005bf0:	00813403          	ld	s0,8(sp)
    80005bf4:	01010113          	addi	sp,sp,16
    80005bf8:	00008067          	ret

0000000080005bfc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005bfc:	fc010113          	addi	sp,sp,-64
    80005c00:	02113c23          	sd	ra,56(sp)
    80005c04:	02813823          	sd	s0,48(sp)
    80005c08:	02913423          	sd	s1,40(sp)
    80005c0c:	03213023          	sd	s2,32(sp)
    80005c10:	01313c23          	sd	s3,24(sp)
    80005c14:	04010413          	addi	s0,sp,64
    80005c18:	00050493          	mv	s1,a0
    80005c1c:	00058913          	mv	s2,a1
    80005c20:	00060993          	mv	s3,a2
    LOCK();
    80005c24:	00100613          	li	a2,1
    80005c28:	00000593          	li	a1,0
    80005c2c:	00006517          	auipc	a0,0x6
    80005c30:	fc450513          	addi	a0,a0,-60 # 8000bbf0 <lockPrint>
    80005c34:	ffffb097          	auipc	ra,0xffffb
    80005c38:	5f0080e7          	jalr	1520(ra) # 80001224 <copy_and_swap>
    80005c3c:	00050863          	beqz	a0,80005c4c <_Z8printIntiii+0x50>
    80005c40:	ffffb097          	auipc	ra,0xffffb
    80005c44:	6ac080e7          	jalr	1708(ra) # 800012ec <_Z15thread_dispatchv>
    80005c48:	fddff06f          	j	80005c24 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005c4c:	00098463          	beqz	s3,80005c54 <_Z8printIntiii+0x58>
    80005c50:	0804c463          	bltz	s1,80005cd8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005c54:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005c58:	00000593          	li	a1,0
    }

    i = 0;
    80005c5c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005c60:	0009079b          	sext.w	a5,s2
    80005c64:	0325773b          	remuw	a4,a0,s2
    80005c68:	00048613          	mv	a2,s1
    80005c6c:	0014849b          	addiw	s1,s1,1
    80005c70:	02071693          	slli	a3,a4,0x20
    80005c74:	0206d693          	srli	a3,a3,0x20
    80005c78:	00006717          	auipc	a4,0x6
    80005c7c:	e2870713          	addi	a4,a4,-472 # 8000baa0 <digits>
    80005c80:	00d70733          	add	a4,a4,a3
    80005c84:	00074683          	lbu	a3,0(a4)
    80005c88:	fd040713          	addi	a4,s0,-48
    80005c8c:	00c70733          	add	a4,a4,a2
    80005c90:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005c94:	0005071b          	sext.w	a4,a0
    80005c98:	0325553b          	divuw	a0,a0,s2
    80005c9c:	fcf772e3          	bgeu	a4,a5,80005c60 <_Z8printIntiii+0x64>
    if(neg)
    80005ca0:	00058c63          	beqz	a1,80005cb8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005ca4:	fd040793          	addi	a5,s0,-48
    80005ca8:	009784b3          	add	s1,a5,s1
    80005cac:	02d00793          	li	a5,45
    80005cb0:	fef48823          	sb	a5,-16(s1)
    80005cb4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005cb8:	fff4849b          	addiw	s1,s1,-1
    80005cbc:	0204c463          	bltz	s1,80005ce4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005cc0:	fd040793          	addi	a5,s0,-48
    80005cc4:	009787b3          	add	a5,a5,s1
    80005cc8:	ff07c503          	lbu	a0,-16(a5)
    80005ccc:	ffffb097          	auipc	ra,0xffffb
    80005cd0:	7f4080e7          	jalr	2036(ra) # 800014c0 <_Z4putcc>
    80005cd4:	fe5ff06f          	j	80005cb8 <_Z8printIntiii+0xbc>
        x = -xx;
    80005cd8:	4090053b          	negw	a0,s1
        neg = 1;
    80005cdc:	00100593          	li	a1,1
        x = -xx;
    80005ce0:	f7dff06f          	j	80005c5c <_Z8printIntiii+0x60>

    UNLOCK();
    80005ce4:	00000613          	li	a2,0
    80005ce8:	00100593          	li	a1,1
    80005cec:	00006517          	auipc	a0,0x6
    80005cf0:	f0450513          	addi	a0,a0,-252 # 8000bbf0 <lockPrint>
    80005cf4:	ffffb097          	auipc	ra,0xffffb
    80005cf8:	530080e7          	jalr	1328(ra) # 80001224 <copy_and_swap>
    80005cfc:	fe0514e3          	bnez	a0,80005ce4 <_Z8printIntiii+0xe8>
    80005d00:	03813083          	ld	ra,56(sp)
    80005d04:	03013403          	ld	s0,48(sp)
    80005d08:	02813483          	ld	s1,40(sp)
    80005d0c:	02013903          	ld	s2,32(sp)
    80005d10:	01813983          	ld	s3,24(sp)
    80005d14:	04010113          	addi	sp,sp,64
    80005d18:	00008067          	ret

0000000080005d1c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d1c:	fd010113          	addi	sp,sp,-48
    80005d20:	02113423          	sd	ra,40(sp)
    80005d24:	02813023          	sd	s0,32(sp)
    80005d28:	00913c23          	sd	s1,24(sp)
    80005d2c:	01213823          	sd	s2,16(sp)
    80005d30:	01313423          	sd	s3,8(sp)
    80005d34:	03010413          	addi	s0,sp,48
    80005d38:	00050493          	mv	s1,a0
    80005d3c:	00058913          	mv	s2,a1
    80005d40:	0015879b          	addiw	a5,a1,1
    80005d44:	0007851b          	sext.w	a0,a5
    80005d48:	00f4a023          	sw	a5,0(s1)
    80005d4c:	0004a823          	sw	zero,16(s1)
    80005d50:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005d54:	00251513          	slli	a0,a0,0x2
    80005d58:	ffffb097          	auipc	ra,0xffffb
    80005d5c:	4ec080e7          	jalr	1260(ra) # 80001244 <_Z9mem_allocm>
    80005d60:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005d64:	01000513          	li	a0,16
    80005d68:	ffffc097          	auipc	ra,0xffffc
    80005d6c:	708080e7          	jalr	1800(ra) # 80002470 <_Znwm>
    80005d70:	00050993          	mv	s3,a0
    80005d74:	00000593          	li	a1,0
    80005d78:	ffffd097          	auipc	ra,0xffffd
    80005d7c:	9ac080e7          	jalr	-1620(ra) # 80002724 <_ZN9SemaphoreC1Ej>
    80005d80:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005d84:	01000513          	li	a0,16
    80005d88:	ffffc097          	auipc	ra,0xffffc
    80005d8c:	6e8080e7          	jalr	1768(ra) # 80002470 <_Znwm>
    80005d90:	00050993          	mv	s3,a0
    80005d94:	00090593          	mv	a1,s2
    80005d98:	ffffd097          	auipc	ra,0xffffd
    80005d9c:	98c080e7          	jalr	-1652(ra) # 80002724 <_ZN9SemaphoreC1Ej>
    80005da0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005da4:	01000513          	li	a0,16
    80005da8:	ffffc097          	auipc	ra,0xffffc
    80005dac:	6c8080e7          	jalr	1736(ra) # 80002470 <_Znwm>
    80005db0:	00050913          	mv	s2,a0
    80005db4:	00100593          	li	a1,1
    80005db8:	ffffd097          	auipc	ra,0xffffd
    80005dbc:	96c080e7          	jalr	-1684(ra) # 80002724 <_ZN9SemaphoreC1Ej>
    80005dc0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005dc4:	01000513          	li	a0,16
    80005dc8:	ffffc097          	auipc	ra,0xffffc
    80005dcc:	6a8080e7          	jalr	1704(ra) # 80002470 <_Znwm>
    80005dd0:	00050913          	mv	s2,a0
    80005dd4:	00100593          	li	a1,1
    80005dd8:	ffffd097          	auipc	ra,0xffffd
    80005ddc:	94c080e7          	jalr	-1716(ra) # 80002724 <_ZN9SemaphoreC1Ej>
    80005de0:	0324b823          	sd	s2,48(s1)
}
    80005de4:	02813083          	ld	ra,40(sp)
    80005de8:	02013403          	ld	s0,32(sp)
    80005dec:	01813483          	ld	s1,24(sp)
    80005df0:	01013903          	ld	s2,16(sp)
    80005df4:	00813983          	ld	s3,8(sp)
    80005df8:	03010113          	addi	sp,sp,48
    80005dfc:	00008067          	ret
    80005e00:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005e04:	00098513          	mv	a0,s3
    80005e08:	ffffc097          	auipc	ra,0xffffc
    80005e0c:	6b8080e7          	jalr	1720(ra) # 800024c0 <_ZdlPv>
    80005e10:	00048513          	mv	a0,s1
    80005e14:	00007097          	auipc	ra,0x7
    80005e18:	eb4080e7          	jalr	-332(ra) # 8000ccc8 <_Unwind_Resume>
    80005e1c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005e20:	00098513          	mv	a0,s3
    80005e24:	ffffc097          	auipc	ra,0xffffc
    80005e28:	69c080e7          	jalr	1692(ra) # 800024c0 <_ZdlPv>
    80005e2c:	00048513          	mv	a0,s1
    80005e30:	00007097          	auipc	ra,0x7
    80005e34:	e98080e7          	jalr	-360(ra) # 8000ccc8 <_Unwind_Resume>
    80005e38:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005e3c:	00090513          	mv	a0,s2
    80005e40:	ffffc097          	auipc	ra,0xffffc
    80005e44:	680080e7          	jalr	1664(ra) # 800024c0 <_ZdlPv>
    80005e48:	00048513          	mv	a0,s1
    80005e4c:	00007097          	auipc	ra,0x7
    80005e50:	e7c080e7          	jalr	-388(ra) # 8000ccc8 <_Unwind_Resume>
    80005e54:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005e58:	00090513          	mv	a0,s2
    80005e5c:	ffffc097          	auipc	ra,0xffffc
    80005e60:	664080e7          	jalr	1636(ra) # 800024c0 <_ZdlPv>
    80005e64:	00048513          	mv	a0,s1
    80005e68:	00007097          	auipc	ra,0x7
    80005e6c:	e60080e7          	jalr	-416(ra) # 8000ccc8 <_Unwind_Resume>

0000000080005e70 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005e70:	fe010113          	addi	sp,sp,-32
    80005e74:	00113c23          	sd	ra,24(sp)
    80005e78:	00813823          	sd	s0,16(sp)
    80005e7c:	00913423          	sd	s1,8(sp)
    80005e80:	01213023          	sd	s2,0(sp)
    80005e84:	02010413          	addi	s0,sp,32
    80005e88:	00050493          	mv	s1,a0
    80005e8c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005e90:	01853503          	ld	a0,24(a0)
    80005e94:	ffffd097          	auipc	ra,0xffffd
    80005e98:	8c8080e7          	jalr	-1848(ra) # 8000275c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005e9c:	0304b503          	ld	a0,48(s1)
    80005ea0:	ffffd097          	auipc	ra,0xffffd
    80005ea4:	8bc080e7          	jalr	-1860(ra) # 8000275c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ea8:	0084b783          	ld	a5,8(s1)
    80005eac:	0144a703          	lw	a4,20(s1)
    80005eb0:	00271713          	slli	a4,a4,0x2
    80005eb4:	00e787b3          	add	a5,a5,a4
    80005eb8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005ebc:	0144a783          	lw	a5,20(s1)
    80005ec0:	0017879b          	addiw	a5,a5,1
    80005ec4:	0004a703          	lw	a4,0(s1)
    80005ec8:	02e7e7bb          	remw	a5,a5,a4
    80005ecc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ed0:	0304b503          	ld	a0,48(s1)
    80005ed4:	ffffd097          	auipc	ra,0xffffd
    80005ed8:	8b4080e7          	jalr	-1868(ra) # 80002788 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005edc:	0204b503          	ld	a0,32(s1)
    80005ee0:	ffffd097          	auipc	ra,0xffffd
    80005ee4:	8a8080e7          	jalr	-1880(ra) # 80002788 <_ZN9Semaphore6signalEv>

}
    80005ee8:	01813083          	ld	ra,24(sp)
    80005eec:	01013403          	ld	s0,16(sp)
    80005ef0:	00813483          	ld	s1,8(sp)
    80005ef4:	00013903          	ld	s2,0(sp)
    80005ef8:	02010113          	addi	sp,sp,32
    80005efc:	00008067          	ret

0000000080005f00 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005f00:	fe010113          	addi	sp,sp,-32
    80005f04:	00113c23          	sd	ra,24(sp)
    80005f08:	00813823          	sd	s0,16(sp)
    80005f0c:	00913423          	sd	s1,8(sp)
    80005f10:	01213023          	sd	s2,0(sp)
    80005f14:	02010413          	addi	s0,sp,32
    80005f18:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005f1c:	02053503          	ld	a0,32(a0)
    80005f20:	ffffd097          	auipc	ra,0xffffd
    80005f24:	83c080e7          	jalr	-1988(ra) # 8000275c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005f28:	0284b503          	ld	a0,40(s1)
    80005f2c:	ffffd097          	auipc	ra,0xffffd
    80005f30:	830080e7          	jalr	-2000(ra) # 8000275c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005f34:	0084b703          	ld	a4,8(s1)
    80005f38:	0104a783          	lw	a5,16(s1)
    80005f3c:	00279693          	slli	a3,a5,0x2
    80005f40:	00d70733          	add	a4,a4,a3
    80005f44:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005f48:	0017879b          	addiw	a5,a5,1
    80005f4c:	0004a703          	lw	a4,0(s1)
    80005f50:	02e7e7bb          	remw	a5,a5,a4
    80005f54:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005f58:	0284b503          	ld	a0,40(s1)
    80005f5c:	ffffd097          	auipc	ra,0xffffd
    80005f60:	82c080e7          	jalr	-2004(ra) # 80002788 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005f64:	0184b503          	ld	a0,24(s1)
    80005f68:	ffffd097          	auipc	ra,0xffffd
    80005f6c:	820080e7          	jalr	-2016(ra) # 80002788 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f70:	00090513          	mv	a0,s2
    80005f74:	01813083          	ld	ra,24(sp)
    80005f78:	01013403          	ld	s0,16(sp)
    80005f7c:	00813483          	ld	s1,8(sp)
    80005f80:	00013903          	ld	s2,0(sp)
    80005f84:	02010113          	addi	sp,sp,32
    80005f88:	00008067          	ret

0000000080005f8c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005f8c:	fe010113          	addi	sp,sp,-32
    80005f90:	00113c23          	sd	ra,24(sp)
    80005f94:	00813823          	sd	s0,16(sp)
    80005f98:	00913423          	sd	s1,8(sp)
    80005f9c:	01213023          	sd	s2,0(sp)
    80005fa0:	02010413          	addi	s0,sp,32
    80005fa4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005fa8:	02853503          	ld	a0,40(a0)
    80005fac:	ffffc097          	auipc	ra,0xffffc
    80005fb0:	7b0080e7          	jalr	1968(ra) # 8000275c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005fb4:	0304b503          	ld	a0,48(s1)
    80005fb8:	ffffc097          	auipc	ra,0xffffc
    80005fbc:	7a4080e7          	jalr	1956(ra) # 8000275c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005fc0:	0144a783          	lw	a5,20(s1)
    80005fc4:	0104a903          	lw	s2,16(s1)
    80005fc8:	0327ce63          	blt	a5,s2,80006004 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005fcc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005fd0:	0304b503          	ld	a0,48(s1)
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	7b4080e7          	jalr	1972(ra) # 80002788 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005fdc:	0284b503          	ld	a0,40(s1)
    80005fe0:	ffffc097          	auipc	ra,0xffffc
    80005fe4:	7a8080e7          	jalr	1960(ra) # 80002788 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005fe8:	00090513          	mv	a0,s2
    80005fec:	01813083          	ld	ra,24(sp)
    80005ff0:	01013403          	ld	s0,16(sp)
    80005ff4:	00813483          	ld	s1,8(sp)
    80005ff8:	00013903          	ld	s2,0(sp)
    80005ffc:	02010113          	addi	sp,sp,32
    80006000:	00008067          	ret
        ret = cap - head + tail;
    80006004:	0004a703          	lw	a4,0(s1)
    80006008:	4127093b          	subw	s2,a4,s2
    8000600c:	00f9093b          	addw	s2,s2,a5
    80006010:	fc1ff06f          	j	80005fd0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006014 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006014:	fe010113          	addi	sp,sp,-32
    80006018:	00113c23          	sd	ra,24(sp)
    8000601c:	00813823          	sd	s0,16(sp)
    80006020:	00913423          	sd	s1,8(sp)
    80006024:	02010413          	addi	s0,sp,32
    80006028:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000602c:	00a00513          	li	a0,10
    80006030:	ffffd097          	auipc	ra,0xffffd
    80006034:	854080e7          	jalr	-1964(ra) # 80002884 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006038:	00003517          	auipc	a0,0x3
    8000603c:	2c850513          	addi	a0,a0,712 # 80009300 <CONSOLE_STATUS+0x2f0>
    80006040:	00000097          	auipc	ra,0x0
    80006044:	a0c080e7          	jalr	-1524(ra) # 80005a4c <_Z11printStringPKc>
    while (getCnt()) {
    80006048:	00048513          	mv	a0,s1
    8000604c:	00000097          	auipc	ra,0x0
    80006050:	f40080e7          	jalr	-192(ra) # 80005f8c <_ZN9BufferCPP6getCntEv>
    80006054:	02050c63          	beqz	a0,8000608c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006058:	0084b783          	ld	a5,8(s1)
    8000605c:	0104a703          	lw	a4,16(s1)
    80006060:	00271713          	slli	a4,a4,0x2
    80006064:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006068:	0007c503          	lbu	a0,0(a5)
    8000606c:	ffffd097          	auipc	ra,0xffffd
    80006070:	818080e7          	jalr	-2024(ra) # 80002884 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006074:	0104a783          	lw	a5,16(s1)
    80006078:	0017879b          	addiw	a5,a5,1
    8000607c:	0004a703          	lw	a4,0(s1)
    80006080:	02e7e7bb          	remw	a5,a5,a4
    80006084:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006088:	fc1ff06f          	j	80006048 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000608c:	02100513          	li	a0,33
    80006090:	ffffc097          	auipc	ra,0xffffc
    80006094:	7f4080e7          	jalr	2036(ra) # 80002884 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006098:	00a00513          	li	a0,10
    8000609c:	ffffc097          	auipc	ra,0xffffc
    800060a0:	7e8080e7          	jalr	2024(ra) # 80002884 <_ZN7Console4putcEc>
    mem_free(buffer);
    800060a4:	0084b503          	ld	a0,8(s1)
    800060a8:	ffffb097          	auipc	ra,0xffffb
    800060ac:	1dc080e7          	jalr	476(ra) # 80001284 <_Z8mem_freePv>
    delete itemAvailable;
    800060b0:	0204b503          	ld	a0,32(s1)
    800060b4:	00050863          	beqz	a0,800060c4 <_ZN9BufferCPPD1Ev+0xb0>
    800060b8:	00053783          	ld	a5,0(a0)
    800060bc:	0087b783          	ld	a5,8(a5)
    800060c0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800060c4:	0184b503          	ld	a0,24(s1)
    800060c8:	00050863          	beqz	a0,800060d8 <_ZN9BufferCPPD1Ev+0xc4>
    800060cc:	00053783          	ld	a5,0(a0)
    800060d0:	0087b783          	ld	a5,8(a5)
    800060d4:	000780e7          	jalr	a5
    delete mutexTail;
    800060d8:	0304b503          	ld	a0,48(s1)
    800060dc:	00050863          	beqz	a0,800060ec <_ZN9BufferCPPD1Ev+0xd8>
    800060e0:	00053783          	ld	a5,0(a0)
    800060e4:	0087b783          	ld	a5,8(a5)
    800060e8:	000780e7          	jalr	a5
    delete mutexHead;
    800060ec:	0284b503          	ld	a0,40(s1)
    800060f0:	00050863          	beqz	a0,80006100 <_ZN9BufferCPPD1Ev+0xec>
    800060f4:	00053783          	ld	a5,0(a0)
    800060f8:	0087b783          	ld	a5,8(a5)
    800060fc:	000780e7          	jalr	a5
}
    80006100:	01813083          	ld	ra,24(sp)
    80006104:	01013403          	ld	s0,16(sp)
    80006108:	00813483          	ld	s1,8(sp)
    8000610c:	02010113          	addi	sp,sp,32
    80006110:	00008067          	ret

0000000080006114 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006114:	fe010113          	addi	sp,sp,-32
    80006118:	00113c23          	sd	ra,24(sp)
    8000611c:	00813823          	sd	s0,16(sp)
    80006120:	00913423          	sd	s1,8(sp)
    80006124:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006128:	00003517          	auipc	a0,0x3
    8000612c:	1f050513          	addi	a0,a0,496 # 80009318 <CONSOLE_STATUS+0x308>
    80006130:	00000097          	auipc	ra,0x0
    80006134:	91c080e7          	jalr	-1764(ra) # 80005a4c <_Z11printStringPKc>
    int test = getc() - '0';
    80006138:	ffffb097          	auipc	ra,0xffffb
    8000613c:	35c080e7          	jalr	860(ra) # 80001494 <_Z4getcv>
    80006140:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006144:	ffffb097          	auipc	ra,0xffffb
    80006148:	350080e7          	jalr	848(ra) # 80001494 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000614c:	00700793          	li	a5,7
    80006150:	1097ea63          	bltu	a5,s1,80006264 <_Z8userMainv+0x150>
    80006154:	00249493          	slli	s1,s1,0x2
    80006158:	00003717          	auipc	a4,0x3
    8000615c:	42070713          	addi	a4,a4,1056 # 80009578 <CONSOLE_STATUS+0x568>
    80006160:	00e484b3          	add	s1,s1,a4
    80006164:	0004a783          	lw	a5,0(s1)
    80006168:	00e787b3          	add	a5,a5,a4
    8000616c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006170:	fffff097          	auipc	ra,0xfffff
    80006174:	f54080e7          	jalr	-172(ra) # 800050c4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006178:	00003517          	auipc	a0,0x3
    8000617c:	1c050513          	addi	a0,a0,448 # 80009338 <CONSOLE_STATUS+0x328>
    80006180:	00000097          	auipc	ra,0x0
    80006184:	8cc080e7          	jalr	-1844(ra) # 80005a4c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80006188:	01813083          	ld	ra,24(sp)
    8000618c:	01013403          	ld	s0,16(sp)
    80006190:	00813483          	ld	s1,8(sp)
    80006194:	02010113          	addi	sp,sp,32
    80006198:	00008067          	ret
            Threads_CPP_API_test();
    8000619c:	ffffe097          	auipc	ra,0xffffe
    800061a0:	e08080e7          	jalr	-504(ra) # 80003fa4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800061a4:	00003517          	auipc	a0,0x3
    800061a8:	1d450513          	addi	a0,a0,468 # 80009378 <CONSOLE_STATUS+0x368>
    800061ac:	00000097          	auipc	ra,0x0
    800061b0:	8a0080e7          	jalr	-1888(ra) # 80005a4c <_Z11printStringPKc>
            break;
    800061b4:	fd5ff06f          	j	80006188 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800061b8:	ffffd097          	auipc	ra,0xffffd
    800061bc:	640080e7          	jalr	1600(ra) # 800037f8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	1f850513          	addi	a0,a0,504 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800061c8:	00000097          	auipc	ra,0x0
    800061cc:	884080e7          	jalr	-1916(ra) # 80005a4c <_Z11printStringPKc>
            break;
    800061d0:	fb9ff06f          	j	80006188 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800061d4:	fffff097          	auipc	ra,0xfffff
    800061d8:	234080e7          	jalr	564(ra) # 80005408 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800061dc:	00003517          	auipc	a0,0x3
    800061e0:	22c50513          	addi	a0,a0,556 # 80009408 <CONSOLE_STATUS+0x3f8>
    800061e4:	00000097          	auipc	ra,0x0
    800061e8:	868080e7          	jalr	-1944(ra) # 80005a4c <_Z11printStringPKc>
            break;
    800061ec:	f9dff06f          	j	80006188 <_Z8userMainv+0x74>
            mprintString("test 5\n");
    800061f0:	00003517          	auipc	a0,0x3
    800061f4:	27050513          	addi	a0,a0,624 # 80009460 <CONSOLE_STATUS+0x450>
    800061f8:	ffffd097          	auipc	ra,0xffffd
    800061fc:	170080e7          	jalr	368(ra) # 80003368 <_Z12mprintStringPKc>
            testSleeping();
    80006200:	00000097          	auipc	ra,0x0
    80006204:	11c080e7          	jalr	284(ra) # 8000631c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006208:	00003517          	auipc	a0,0x3
    8000620c:	26050513          	addi	a0,a0,608 # 80009468 <CONSOLE_STATUS+0x458>
    80006210:	00000097          	auipc	ra,0x0
    80006214:	83c080e7          	jalr	-1988(ra) # 80005a4c <_Z11printStringPKc>
            break;
    80006218:	f71ff06f          	j	80006188 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000621c:	ffffe097          	auipc	ra,0xffffe
    80006220:	248080e7          	jalr	584(ra) # 80004464 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006224:	00003517          	auipc	a0,0x3
    80006228:	27450513          	addi	a0,a0,628 # 80009498 <CONSOLE_STATUS+0x488>
    8000622c:	00000097          	auipc	ra,0x0
    80006230:	820080e7          	jalr	-2016(ra) # 80005a4c <_Z11printStringPKc>
            break;
    80006234:	f55ff06f          	j	80006188 <_Z8userMainv+0x74>
            System_Mode_test();
    80006238:	00000097          	auipc	ra,0x0
    8000623c:	658080e7          	jalr	1624(ra) # 80006890 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006240:	00003517          	auipc	a0,0x3
    80006244:	29850513          	addi	a0,a0,664 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80006248:	00000097          	auipc	ra,0x0
    8000624c:	804080e7          	jalr	-2044(ra) # 80005a4c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006250:	00003517          	auipc	a0,0x3
    80006254:	2a850513          	addi	a0,a0,680 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	7f4080e7          	jalr	2036(ra) # 80005a4c <_Z11printStringPKc>
            break;
    80006260:	f29ff06f          	j	80006188 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006264:	00003517          	auipc	a0,0x3
    80006268:	2ec50513          	addi	a0,a0,748 # 80009550 <CONSOLE_STATUS+0x540>
    8000626c:	fffff097          	auipc	ra,0xfffff
    80006270:	7e0080e7          	jalr	2016(ra) # 80005a4c <_Z11printStringPKc>
    80006274:	f15ff06f          	j	80006188 <_Z8userMainv+0x74>

0000000080006278 <_ZL9sleepyRunPv>:
#include "../h/print.hpp"
#include "../h/scheduler.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006278:	fe010113          	addi	sp,sp,-32
    8000627c:	00113c23          	sd	ra,24(sp)
    80006280:	00813823          	sd	s0,16(sp)
    80006284:	00913423          	sd	s1,8(sp)
    80006288:	01213023          	sd	s2,0(sp)
    8000628c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006290:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006294:	00600493          	li	s1,6
    while (--i > 0) {
    80006298:	fff4849b          	addiw	s1,s1,-1
    8000629c:	04905463          	blez	s1,800062e4 <_ZL9sleepyRunPv+0x6c>
        //Scheduler::print();
        printString("Hello ");
    800062a0:	00003517          	auipc	a0,0x3
    800062a4:	2f850513          	addi	a0,a0,760 # 80009598 <CONSOLE_STATUS+0x588>
    800062a8:	fffff097          	auipc	ra,0xfffff
    800062ac:	7a4080e7          	jalr	1956(ra) # 80005a4c <_Z11printStringPKc>
        printInt(sleep_time);
    800062b0:	00000613          	li	a2,0
    800062b4:	00a00593          	li	a1,10
    800062b8:	0009051b          	sext.w	a0,s2
    800062bc:	00000097          	auipc	ra,0x0
    800062c0:	940080e7          	jalr	-1728(ra) # 80005bfc <_Z8printIntiii>
        printString(" !\n");
    800062c4:	00003517          	auipc	a0,0x3
    800062c8:	2dc50513          	addi	a0,a0,732 # 800095a0 <CONSOLE_STATUS+0x590>
    800062cc:	fffff097          	auipc	ra,0xfffff
    800062d0:	780080e7          	jalr	1920(ra) # 80005a4c <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062d4:	00090513          	mv	a0,s2
    800062d8:	ffffb097          	auipc	ra,0xffffb
    800062dc:	18c080e7          	jalr	396(ra) # 80001464 <_Z10time_sleepm>
    while (--i > 0) {
    800062e0:	fb9ff06f          	j	80006298 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800062e4:	00a00793          	li	a5,10
    800062e8:	02f95933          	divu	s2,s2,a5
    800062ec:	fff90913          	addi	s2,s2,-1
    800062f0:	00006797          	auipc	a5,0x6
    800062f4:	90878793          	addi	a5,a5,-1784 # 8000bbf8 <_ZL8finished>
    800062f8:	01278933          	add	s2,a5,s2
    800062fc:	00100793          	li	a5,1
    80006300:	00f90023          	sb	a5,0(s2)
}
    80006304:	01813083          	ld	ra,24(sp)
    80006308:	01013403          	ld	s0,16(sp)
    8000630c:	00813483          	ld	s1,8(sp)
    80006310:	00013903          	ld	s2,0(sp)
    80006314:	02010113          	addi	sp,sp,32
    80006318:	00008067          	ret

000000008000631c <_Z12testSleepingv>:

void testSleeping() {
    8000631c:	fc010113          	addi	sp,sp,-64
    80006320:	02113c23          	sd	ra,56(sp)
    80006324:	02813823          	sd	s0,48(sp)
    80006328:	02913423          	sd	s1,40(sp)
    8000632c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006330:	00a00793          	li	a5,10
    80006334:	fcf43823          	sd	a5,-48(s0)
    80006338:	01400793          	li	a5,20
    8000633c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006340:	00000493          	li	s1,0
    80006344:	02c0006f          	j	80006370 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006348:	00349793          	slli	a5,s1,0x3
    8000634c:	fd040613          	addi	a2,s0,-48
    80006350:	00f60633          	add	a2,a2,a5
    80006354:	00000597          	auipc	a1,0x0
    80006358:	f2458593          	addi	a1,a1,-220 # 80006278 <_ZL9sleepyRunPv>
    8000635c:	fc040513          	addi	a0,s0,-64
    80006360:	00f50533          	add	a0,a0,a5
    80006364:	ffffb097          	auipc	ra,0xffffb
    80006368:	f50080e7          	jalr	-176(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000636c:	0014849b          	addiw	s1,s1,1
    80006370:	00100793          	li	a5,1
    80006374:	fc97dae3          	bge	a5,s1,80006348 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006378:	00006797          	auipc	a5,0x6
    8000637c:	8807c783          	lbu	a5,-1920(a5) # 8000bbf8 <_ZL8finished>
    80006380:	fe078ce3          	beqz	a5,80006378 <_Z12testSleepingv+0x5c>
    80006384:	00006797          	auipc	a5,0x6
    80006388:	8757c783          	lbu	a5,-1931(a5) # 8000bbf9 <_ZL8finished+0x1>
    8000638c:	fe0786e3          	beqz	a5,80006378 <_Z12testSleepingv+0x5c>

}
    80006390:	03813083          	ld	ra,56(sp)
    80006394:	03013403          	ld	s0,48(sp)
    80006398:	02813483          	ld	s1,40(sp)
    8000639c:	04010113          	addi	sp,sp,64
    800063a0:	00008067          	ret

00000000800063a4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800063a4:	fe010113          	addi	sp,sp,-32
    800063a8:	00113c23          	sd	ra,24(sp)
    800063ac:	00813823          	sd	s0,16(sp)
    800063b0:	00913423          	sd	s1,8(sp)
    800063b4:	01213023          	sd	s2,0(sp)
    800063b8:	02010413          	addi	s0,sp,32
    800063bc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800063c0:	00100793          	li	a5,1
    800063c4:	02a7f863          	bgeu	a5,a0,800063f4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800063c8:	00a00793          	li	a5,10
    800063cc:	02f577b3          	remu	a5,a0,a5
    800063d0:	02078e63          	beqz	a5,8000640c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800063d4:	fff48513          	addi	a0,s1,-1
    800063d8:	00000097          	auipc	ra,0x0
    800063dc:	fcc080e7          	jalr	-52(ra) # 800063a4 <_ZL9fibonaccim>
    800063e0:	00050913          	mv	s2,a0
    800063e4:	ffe48513          	addi	a0,s1,-2
    800063e8:	00000097          	auipc	ra,0x0
    800063ec:	fbc080e7          	jalr	-68(ra) # 800063a4 <_ZL9fibonaccim>
    800063f0:	00a90533          	add	a0,s2,a0
}
    800063f4:	01813083          	ld	ra,24(sp)
    800063f8:	01013403          	ld	s0,16(sp)
    800063fc:	00813483          	ld	s1,8(sp)
    80006400:	00013903          	ld	s2,0(sp)
    80006404:	02010113          	addi	sp,sp,32
    80006408:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000640c:	ffffb097          	auipc	ra,0xffffb
    80006410:	ee0080e7          	jalr	-288(ra) # 800012ec <_Z15thread_dispatchv>
    80006414:	fc1ff06f          	j	800063d4 <_ZL9fibonaccim+0x30>

0000000080006418 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006418:	fe010113          	addi	sp,sp,-32
    8000641c:	00113c23          	sd	ra,24(sp)
    80006420:	00813823          	sd	s0,16(sp)
    80006424:	00913423          	sd	s1,8(sp)
    80006428:	01213023          	sd	s2,0(sp)
    8000642c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006430:	00a00493          	li	s1,10
    80006434:	0400006f          	j	80006474 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006438:	00003517          	auipc	a0,0x3
    8000643c:	c8850513          	addi	a0,a0,-888 # 800090c0 <CONSOLE_STATUS+0xb0>
    80006440:	fffff097          	auipc	ra,0xfffff
    80006444:	60c080e7          	jalr	1548(ra) # 80005a4c <_Z11printStringPKc>
    80006448:	00000613          	li	a2,0
    8000644c:	00a00593          	li	a1,10
    80006450:	00048513          	mv	a0,s1
    80006454:	fffff097          	auipc	ra,0xfffff
    80006458:	7a8080e7          	jalr	1960(ra) # 80005bfc <_Z8printIntiii>
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	ffc50513          	addi	a0,a0,-4 # 80009458 <CONSOLE_STATUS+0x448>
    80006464:	fffff097          	auipc	ra,0xfffff
    80006468:	5e8080e7          	jalr	1512(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000646c:	0014849b          	addiw	s1,s1,1
    80006470:	0ff4f493          	andi	s1,s1,255
    80006474:	00c00793          	li	a5,12
    80006478:	fc97f0e3          	bgeu	a5,s1,80006438 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000647c:	00003517          	auipc	a0,0x3
    80006480:	e0450513          	addi	a0,a0,-508 # 80009280 <CONSOLE_STATUS+0x270>
    80006484:	fffff097          	auipc	ra,0xfffff
    80006488:	5c8080e7          	jalr	1480(ra) # 80005a4c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000648c:	00500313          	li	t1,5
    thread_dispatch();
    80006490:	ffffb097          	auipc	ra,0xffffb
    80006494:	e5c080e7          	jalr	-420(ra) # 800012ec <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006498:	01000513          	li	a0,16
    8000649c:	00000097          	auipc	ra,0x0
    800064a0:	f08080e7          	jalr	-248(ra) # 800063a4 <_ZL9fibonaccim>
    800064a4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800064a8:	00003517          	auipc	a0,0x3
    800064ac:	c3050513          	addi	a0,a0,-976 # 800090d8 <CONSOLE_STATUS+0xc8>
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	59c080e7          	jalr	1436(ra) # 80005a4c <_Z11printStringPKc>
    800064b8:	00000613          	li	a2,0
    800064bc:	00a00593          	li	a1,10
    800064c0:	0009051b          	sext.w	a0,s2
    800064c4:	fffff097          	auipc	ra,0xfffff
    800064c8:	738080e7          	jalr	1848(ra) # 80005bfc <_Z8printIntiii>
    800064cc:	00003517          	auipc	a0,0x3
    800064d0:	f8c50513          	addi	a0,a0,-116 # 80009458 <CONSOLE_STATUS+0x448>
    800064d4:	fffff097          	auipc	ra,0xfffff
    800064d8:	578080e7          	jalr	1400(ra) # 80005a4c <_Z11printStringPKc>
    800064dc:	0400006f          	j	8000651c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800064e0:	00003517          	auipc	a0,0x3
    800064e4:	be050513          	addi	a0,a0,-1056 # 800090c0 <CONSOLE_STATUS+0xb0>
    800064e8:	fffff097          	auipc	ra,0xfffff
    800064ec:	564080e7          	jalr	1380(ra) # 80005a4c <_Z11printStringPKc>
    800064f0:	00000613          	li	a2,0
    800064f4:	00a00593          	li	a1,10
    800064f8:	00048513          	mv	a0,s1
    800064fc:	fffff097          	auipc	ra,0xfffff
    80006500:	700080e7          	jalr	1792(ra) # 80005bfc <_Z8printIntiii>
    80006504:	00003517          	auipc	a0,0x3
    80006508:	f5450513          	addi	a0,a0,-172 # 80009458 <CONSOLE_STATUS+0x448>
    8000650c:	fffff097          	auipc	ra,0xfffff
    80006510:	540080e7          	jalr	1344(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006514:	0014849b          	addiw	s1,s1,1
    80006518:	0ff4f493          	andi	s1,s1,255
    8000651c:	00f00793          	li	a5,15
    80006520:	fc97f0e3          	bgeu	a5,s1,800064e0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006524:	00003517          	auipc	a0,0x3
    80006528:	d6c50513          	addi	a0,a0,-660 # 80009290 <CONSOLE_STATUS+0x280>
    8000652c:	fffff097          	auipc	ra,0xfffff
    80006530:	520080e7          	jalr	1312(ra) # 80005a4c <_Z11printStringPKc>
    finishedD = true;
    80006534:	00100793          	li	a5,1
    80006538:	00005717          	auipc	a4,0x5
    8000653c:	6cf70123          	sb	a5,1730(a4) # 8000bbfa <_ZL9finishedD>
    thread_dispatch();
    80006540:	ffffb097          	auipc	ra,0xffffb
    80006544:	dac080e7          	jalr	-596(ra) # 800012ec <_Z15thread_dispatchv>
}
    80006548:	01813083          	ld	ra,24(sp)
    8000654c:	01013403          	ld	s0,16(sp)
    80006550:	00813483          	ld	s1,8(sp)
    80006554:	00013903          	ld	s2,0(sp)
    80006558:	02010113          	addi	sp,sp,32
    8000655c:	00008067          	ret

0000000080006560 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006560:	fe010113          	addi	sp,sp,-32
    80006564:	00113c23          	sd	ra,24(sp)
    80006568:	00813823          	sd	s0,16(sp)
    8000656c:	00913423          	sd	s1,8(sp)
    80006570:	01213023          	sd	s2,0(sp)
    80006574:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006578:	00000493          	li	s1,0
    8000657c:	0400006f          	j	800065bc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006580:	00003517          	auipc	a0,0x3
    80006584:	af050513          	addi	a0,a0,-1296 # 80009070 <CONSOLE_STATUS+0x60>
    80006588:	fffff097          	auipc	ra,0xfffff
    8000658c:	4c4080e7          	jalr	1220(ra) # 80005a4c <_Z11printStringPKc>
    80006590:	00000613          	li	a2,0
    80006594:	00a00593          	li	a1,10
    80006598:	00048513          	mv	a0,s1
    8000659c:	fffff097          	auipc	ra,0xfffff
    800065a0:	660080e7          	jalr	1632(ra) # 80005bfc <_Z8printIntiii>
    800065a4:	00003517          	auipc	a0,0x3
    800065a8:	eb450513          	addi	a0,a0,-332 # 80009458 <CONSOLE_STATUS+0x448>
    800065ac:	fffff097          	auipc	ra,0xfffff
    800065b0:	4a0080e7          	jalr	1184(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800065b4:	0014849b          	addiw	s1,s1,1
    800065b8:	0ff4f493          	andi	s1,s1,255
    800065bc:	00200793          	li	a5,2
    800065c0:	fc97f0e3          	bgeu	a5,s1,80006580 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800065c4:	00003517          	auipc	a0,0x3
    800065c8:	c9c50513          	addi	a0,a0,-868 # 80009260 <CONSOLE_STATUS+0x250>
    800065cc:	fffff097          	auipc	ra,0xfffff
    800065d0:	480080e7          	jalr	1152(ra) # 80005a4c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800065d4:	00700313          	li	t1,7
    thread_dispatch();
    800065d8:	ffffb097          	auipc	ra,0xffffb
    800065dc:	d14080e7          	jalr	-748(ra) # 800012ec <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800065e0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800065e4:	00003517          	auipc	a0,0x3
    800065e8:	aa450513          	addi	a0,a0,-1372 # 80009088 <CONSOLE_STATUS+0x78>
    800065ec:	fffff097          	auipc	ra,0xfffff
    800065f0:	460080e7          	jalr	1120(ra) # 80005a4c <_Z11printStringPKc>
    800065f4:	00000613          	li	a2,0
    800065f8:	00a00593          	li	a1,10
    800065fc:	0009051b          	sext.w	a0,s2
    80006600:	fffff097          	auipc	ra,0xfffff
    80006604:	5fc080e7          	jalr	1532(ra) # 80005bfc <_Z8printIntiii>
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	e5050513          	addi	a0,a0,-432 # 80009458 <CONSOLE_STATUS+0x448>
    80006610:	fffff097          	auipc	ra,0xfffff
    80006614:	43c080e7          	jalr	1084(ra) # 80005a4c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006618:	00c00513          	li	a0,12
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	d88080e7          	jalr	-632(ra) # 800063a4 <_ZL9fibonaccim>
    80006624:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	a6850513          	addi	a0,a0,-1432 # 80009090 <CONSOLE_STATUS+0x80>
    80006630:	fffff097          	auipc	ra,0xfffff
    80006634:	41c080e7          	jalr	1052(ra) # 80005a4c <_Z11printStringPKc>
    80006638:	00000613          	li	a2,0
    8000663c:	00a00593          	li	a1,10
    80006640:	0009051b          	sext.w	a0,s2
    80006644:	fffff097          	auipc	ra,0xfffff
    80006648:	5b8080e7          	jalr	1464(ra) # 80005bfc <_Z8printIntiii>
    8000664c:	00003517          	auipc	a0,0x3
    80006650:	e0c50513          	addi	a0,a0,-500 # 80009458 <CONSOLE_STATUS+0x448>
    80006654:	fffff097          	auipc	ra,0xfffff
    80006658:	3f8080e7          	jalr	1016(ra) # 80005a4c <_Z11printStringPKc>
    8000665c:	0400006f          	j	8000669c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006660:	00003517          	auipc	a0,0x3
    80006664:	a1050513          	addi	a0,a0,-1520 # 80009070 <CONSOLE_STATUS+0x60>
    80006668:	fffff097          	auipc	ra,0xfffff
    8000666c:	3e4080e7          	jalr	996(ra) # 80005a4c <_Z11printStringPKc>
    80006670:	00000613          	li	a2,0
    80006674:	00a00593          	li	a1,10
    80006678:	00048513          	mv	a0,s1
    8000667c:	fffff097          	auipc	ra,0xfffff
    80006680:	580080e7          	jalr	1408(ra) # 80005bfc <_Z8printIntiii>
    80006684:	00003517          	auipc	a0,0x3
    80006688:	dd450513          	addi	a0,a0,-556 # 80009458 <CONSOLE_STATUS+0x448>
    8000668c:	fffff097          	auipc	ra,0xfffff
    80006690:	3c0080e7          	jalr	960(ra) # 80005a4c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006694:	0014849b          	addiw	s1,s1,1
    80006698:	0ff4f493          	andi	s1,s1,255
    8000669c:	00500793          	li	a5,5
    800066a0:	fc97f0e3          	bgeu	a5,s1,80006660 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800066a4:	00003517          	auipc	a0,0x3
    800066a8:	b9c50513          	addi	a0,a0,-1124 # 80009240 <CONSOLE_STATUS+0x230>
    800066ac:	fffff097          	auipc	ra,0xfffff
    800066b0:	3a0080e7          	jalr	928(ra) # 80005a4c <_Z11printStringPKc>
    finishedC = true;
    800066b4:	00100793          	li	a5,1
    800066b8:	00005717          	auipc	a4,0x5
    800066bc:	54f701a3          	sb	a5,1347(a4) # 8000bbfb <_ZL9finishedC>
    thread_dispatch();
    800066c0:	ffffb097          	auipc	ra,0xffffb
    800066c4:	c2c080e7          	jalr	-980(ra) # 800012ec <_Z15thread_dispatchv>
}
    800066c8:	01813083          	ld	ra,24(sp)
    800066cc:	01013403          	ld	s0,16(sp)
    800066d0:	00813483          	ld	s1,8(sp)
    800066d4:	00013903          	ld	s2,0(sp)
    800066d8:	02010113          	addi	sp,sp,32
    800066dc:	00008067          	ret

00000000800066e0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800066e0:	fe010113          	addi	sp,sp,-32
    800066e4:	00113c23          	sd	ra,24(sp)
    800066e8:	00813823          	sd	s0,16(sp)
    800066ec:	00913423          	sd	s1,8(sp)
    800066f0:	01213023          	sd	s2,0(sp)
    800066f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800066f8:	00000913          	li	s2,0
    800066fc:	0400006f          	j	8000673c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006700:	ffffb097          	auipc	ra,0xffffb
    80006704:	bec080e7          	jalr	-1044(ra) # 800012ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006708:	00148493          	addi	s1,s1,1
    8000670c:	000027b7          	lui	a5,0x2
    80006710:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006714:	0097ee63          	bltu	a5,s1,80006730 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006718:	00000713          	li	a4,0
    8000671c:	000077b7          	lui	a5,0x7
    80006720:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006724:	fce7eee3          	bltu	a5,a4,80006700 <_ZL11workerBodyBPv+0x20>
    80006728:	00170713          	addi	a4,a4,1
    8000672c:	ff1ff06f          	j	8000671c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006730:	00a00793          	li	a5,10
    80006734:	04f90663          	beq	s2,a5,80006780 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006738:	00190913          	addi	s2,s2,1
    8000673c:	00f00793          	li	a5,15
    80006740:	0527e463          	bltu	a5,s2,80006788 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006744:	00003517          	auipc	a0,0x3
    80006748:	90450513          	addi	a0,a0,-1788 # 80009048 <CONSOLE_STATUS+0x38>
    8000674c:	fffff097          	auipc	ra,0xfffff
    80006750:	300080e7          	jalr	768(ra) # 80005a4c <_Z11printStringPKc>
    80006754:	00000613          	li	a2,0
    80006758:	00a00593          	li	a1,10
    8000675c:	0009051b          	sext.w	a0,s2
    80006760:	fffff097          	auipc	ra,0xfffff
    80006764:	49c080e7          	jalr	1180(ra) # 80005bfc <_Z8printIntiii>
    80006768:	00003517          	auipc	a0,0x3
    8000676c:	cf050513          	addi	a0,a0,-784 # 80009458 <CONSOLE_STATUS+0x448>
    80006770:	fffff097          	auipc	ra,0xfffff
    80006774:	2dc080e7          	jalr	732(ra) # 80005a4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006778:	00000493          	li	s1,0
    8000677c:	f91ff06f          	j	8000670c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006780:	14102ff3          	csrr	t6,sepc
    80006784:	fb5ff06f          	j	80006738 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006788:	00003517          	auipc	a0,0x3
    8000678c:	ac850513          	addi	a0,a0,-1336 # 80009250 <CONSOLE_STATUS+0x240>
    80006790:	fffff097          	auipc	ra,0xfffff
    80006794:	2bc080e7          	jalr	700(ra) # 80005a4c <_Z11printStringPKc>
    finishedB = true;
    80006798:	00100793          	li	a5,1
    8000679c:	00005717          	auipc	a4,0x5
    800067a0:	46f70023          	sb	a5,1120(a4) # 8000bbfc <_ZL9finishedB>
    thread_dispatch();
    800067a4:	ffffb097          	auipc	ra,0xffffb
    800067a8:	b48080e7          	jalr	-1208(ra) # 800012ec <_Z15thread_dispatchv>
}
    800067ac:	01813083          	ld	ra,24(sp)
    800067b0:	01013403          	ld	s0,16(sp)
    800067b4:	00813483          	ld	s1,8(sp)
    800067b8:	00013903          	ld	s2,0(sp)
    800067bc:	02010113          	addi	sp,sp,32
    800067c0:	00008067          	ret

00000000800067c4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800067c4:	fe010113          	addi	sp,sp,-32
    800067c8:	00113c23          	sd	ra,24(sp)
    800067cc:	00813823          	sd	s0,16(sp)
    800067d0:	00913423          	sd	s1,8(sp)
    800067d4:	01213023          	sd	s2,0(sp)
    800067d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800067dc:	00000913          	li	s2,0
    800067e0:	0380006f          	j	80006818 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800067e4:	ffffb097          	auipc	ra,0xffffb
    800067e8:	b08080e7          	jalr	-1272(ra) # 800012ec <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800067ec:	00148493          	addi	s1,s1,1
    800067f0:	000027b7          	lui	a5,0x2
    800067f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067f8:	0097ee63          	bltu	a5,s1,80006814 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800067fc:	00000713          	li	a4,0
    80006800:	000077b7          	lui	a5,0x7
    80006804:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006808:	fce7eee3          	bltu	a5,a4,800067e4 <_ZL11workerBodyAPv+0x20>
    8000680c:	00170713          	addi	a4,a4,1
    80006810:	ff1ff06f          	j	80006800 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006814:	00190913          	addi	s2,s2,1
    80006818:	00900793          	li	a5,9
    8000681c:	0527e063          	bltu	a5,s2,8000685c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006820:	00003517          	auipc	a0,0x3
    80006824:	80050513          	addi	a0,a0,-2048 # 80009020 <CONSOLE_STATUS+0x10>
    80006828:	fffff097          	auipc	ra,0xfffff
    8000682c:	224080e7          	jalr	548(ra) # 80005a4c <_Z11printStringPKc>
    80006830:	00000613          	li	a2,0
    80006834:	00a00593          	li	a1,10
    80006838:	0009051b          	sext.w	a0,s2
    8000683c:	fffff097          	auipc	ra,0xfffff
    80006840:	3c0080e7          	jalr	960(ra) # 80005bfc <_Z8printIntiii>
    80006844:	00003517          	auipc	a0,0x3
    80006848:	c1450513          	addi	a0,a0,-1004 # 80009458 <CONSOLE_STATUS+0x448>
    8000684c:	fffff097          	auipc	ra,0xfffff
    80006850:	200080e7          	jalr	512(ra) # 80005a4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006854:	00000493          	li	s1,0
    80006858:	f99ff06f          	j	800067f0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000685c:	00003517          	auipc	a0,0x3
    80006860:	9e450513          	addi	a0,a0,-1564 # 80009240 <CONSOLE_STATUS+0x230>
    80006864:	fffff097          	auipc	ra,0xfffff
    80006868:	1e8080e7          	jalr	488(ra) # 80005a4c <_Z11printStringPKc>
    finishedA = true;
    8000686c:	00100793          	li	a5,1
    80006870:	00005717          	auipc	a4,0x5
    80006874:	38f706a3          	sb	a5,909(a4) # 8000bbfd <_ZL9finishedA>
}
    80006878:	01813083          	ld	ra,24(sp)
    8000687c:	01013403          	ld	s0,16(sp)
    80006880:	00813483          	ld	s1,8(sp)
    80006884:	00013903          	ld	s2,0(sp)
    80006888:	02010113          	addi	sp,sp,32
    8000688c:	00008067          	ret

0000000080006890 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006890:	fd010113          	addi	sp,sp,-48
    80006894:	02113423          	sd	ra,40(sp)
    80006898:	02813023          	sd	s0,32(sp)
    8000689c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800068a0:	00000613          	li	a2,0
    800068a4:	00000597          	auipc	a1,0x0
    800068a8:	f2058593          	addi	a1,a1,-224 # 800067c4 <_ZL11workerBodyAPv>
    800068ac:	fd040513          	addi	a0,s0,-48
    800068b0:	ffffb097          	auipc	ra,0xffffb
    800068b4:	a04080e7          	jalr	-1532(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800068b8:	00003517          	auipc	a0,0x3
    800068bc:	9e850513          	addi	a0,a0,-1560 # 800092a0 <CONSOLE_STATUS+0x290>
    800068c0:	fffff097          	auipc	ra,0xfffff
    800068c4:	18c080e7          	jalr	396(ra) # 80005a4c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800068c8:	00000613          	li	a2,0
    800068cc:	00000597          	auipc	a1,0x0
    800068d0:	e1458593          	addi	a1,a1,-492 # 800066e0 <_ZL11workerBodyBPv>
    800068d4:	fd840513          	addi	a0,s0,-40
    800068d8:	ffffb097          	auipc	ra,0xffffb
    800068dc:	9dc080e7          	jalr	-1572(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800068e0:	00003517          	auipc	a0,0x3
    800068e4:	9d850513          	addi	a0,a0,-1576 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800068e8:	fffff097          	auipc	ra,0xfffff
    800068ec:	164080e7          	jalr	356(ra) # 80005a4c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800068f0:	00000613          	li	a2,0
    800068f4:	00000597          	auipc	a1,0x0
    800068f8:	c6c58593          	addi	a1,a1,-916 # 80006560 <_ZL11workerBodyCPv>
    800068fc:	fe040513          	addi	a0,s0,-32
    80006900:	ffffb097          	auipc	ra,0xffffb
    80006904:	9b4080e7          	jalr	-1612(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006908:	00003517          	auipc	a0,0x3
    8000690c:	9c850513          	addi	a0,a0,-1592 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	13c080e7          	jalr	316(ra) # 80005a4c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006918:	00000613          	li	a2,0
    8000691c:	00000597          	auipc	a1,0x0
    80006920:	afc58593          	addi	a1,a1,-1284 # 80006418 <_ZL11workerBodyDPv>
    80006924:	fe840513          	addi	a0,s0,-24
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	98c080e7          	jalr	-1652(ra) # 800012b4 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006930:	00003517          	auipc	a0,0x3
    80006934:	9b850513          	addi	a0,a0,-1608 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80006938:	fffff097          	auipc	ra,0xfffff
    8000693c:	114080e7          	jalr	276(ra) # 80005a4c <_Z11printStringPKc>
    80006940:	00c0006f          	j	8000694c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006944:	ffffb097          	auipc	ra,0xffffb
    80006948:	9a8080e7          	jalr	-1624(ra) # 800012ec <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000694c:	00005797          	auipc	a5,0x5
    80006950:	2b17c783          	lbu	a5,689(a5) # 8000bbfd <_ZL9finishedA>
    80006954:	fe0788e3          	beqz	a5,80006944 <_Z16System_Mode_testv+0xb4>
    80006958:	00005797          	auipc	a5,0x5
    8000695c:	2a47c783          	lbu	a5,676(a5) # 8000bbfc <_ZL9finishedB>
    80006960:	fe0782e3          	beqz	a5,80006944 <_Z16System_Mode_testv+0xb4>
    80006964:	00005797          	auipc	a5,0x5
    80006968:	2977c783          	lbu	a5,663(a5) # 8000bbfb <_ZL9finishedC>
    8000696c:	fc078ce3          	beqz	a5,80006944 <_Z16System_Mode_testv+0xb4>
    80006970:	00005797          	auipc	a5,0x5
    80006974:	28a7c783          	lbu	a5,650(a5) # 8000bbfa <_ZL9finishedD>
    80006978:	fc0786e3          	beqz	a5,80006944 <_Z16System_Mode_testv+0xb4>
    }

}
    8000697c:	02813083          	ld	ra,40(sp)
    80006980:	02013403          	ld	s0,32(sp)
    80006984:	03010113          	addi	sp,sp,48
    80006988:	00008067          	ret

000000008000698c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000698c:	fe010113          	addi	sp,sp,-32
    80006990:	00113c23          	sd	ra,24(sp)
    80006994:	00813823          	sd	s0,16(sp)
    80006998:	00913423          	sd	s1,8(sp)
    8000699c:	01213023          	sd	s2,0(sp)
    800069a0:	02010413          	addi	s0,sp,32
    800069a4:	00050493          	mv	s1,a0
    800069a8:	00058913          	mv	s2,a1
    800069ac:	0015879b          	addiw	a5,a1,1
    800069b0:	0007851b          	sext.w	a0,a5
    800069b4:	00f4a023          	sw	a5,0(s1)
    800069b8:	0004a823          	sw	zero,16(s1)
    800069bc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800069c0:	00251513          	slli	a0,a0,0x2
    800069c4:	ffffb097          	auipc	ra,0xffffb
    800069c8:	880080e7          	jalr	-1920(ra) # 80001244 <_Z9mem_allocm>
    800069cc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800069d0:	00000593          	li	a1,0
    800069d4:	02048513          	addi	a0,s1,32
    800069d8:	ffffb097          	auipc	ra,0xffffb
    800069dc:	964080e7          	jalr	-1692(ra) # 8000133c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800069e0:	00090593          	mv	a1,s2
    800069e4:	01848513          	addi	a0,s1,24
    800069e8:	ffffb097          	auipc	ra,0xffffb
    800069ec:	954080e7          	jalr	-1708(ra) # 8000133c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800069f0:	00100593          	li	a1,1
    800069f4:	02848513          	addi	a0,s1,40
    800069f8:	ffffb097          	auipc	ra,0xffffb
    800069fc:	944080e7          	jalr	-1724(ra) # 8000133c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006a00:	00100593          	li	a1,1
    80006a04:	03048513          	addi	a0,s1,48
    80006a08:	ffffb097          	auipc	ra,0xffffb
    80006a0c:	934080e7          	jalr	-1740(ra) # 8000133c <_Z8sem_openPP4_semj>
}
    80006a10:	01813083          	ld	ra,24(sp)
    80006a14:	01013403          	ld	s0,16(sp)
    80006a18:	00813483          	ld	s1,8(sp)
    80006a1c:	00013903          	ld	s2,0(sp)
    80006a20:	02010113          	addi	sp,sp,32
    80006a24:	00008067          	ret

0000000080006a28 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a28:	fe010113          	addi	sp,sp,-32
    80006a2c:	00113c23          	sd	ra,24(sp)
    80006a30:	00813823          	sd	s0,16(sp)
    80006a34:	00913423          	sd	s1,8(sp)
    80006a38:	01213023          	sd	s2,0(sp)
    80006a3c:	02010413          	addi	s0,sp,32
    80006a40:	00050493          	mv	s1,a0
    80006a44:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a48:	01853503          	ld	a0,24(a0)
    80006a4c:	ffffb097          	auipc	ra,0xffffb
    80006a50:	954080e7          	jalr	-1708(ra) # 800013a0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006a54:	0304b503          	ld	a0,48(s1)
    80006a58:	ffffb097          	auipc	ra,0xffffb
    80006a5c:	948080e7          	jalr	-1720(ra) # 800013a0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006a60:	0084b783          	ld	a5,8(s1)
    80006a64:	0144a703          	lw	a4,20(s1)
    80006a68:	00271713          	slli	a4,a4,0x2
    80006a6c:	00e787b3          	add	a5,a5,a4
    80006a70:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a74:	0144a783          	lw	a5,20(s1)
    80006a78:	0017879b          	addiw	a5,a5,1
    80006a7c:	0004a703          	lw	a4,0(s1)
    80006a80:	02e7e7bb          	remw	a5,a5,a4
    80006a84:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a88:	0304b503          	ld	a0,48(s1)
    80006a8c:	ffffb097          	auipc	ra,0xffffb
    80006a90:	944080e7          	jalr	-1724(ra) # 800013d0 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006a94:	0204b503          	ld	a0,32(s1)
    80006a98:	ffffb097          	auipc	ra,0xffffb
    80006a9c:	938080e7          	jalr	-1736(ra) # 800013d0 <_Z10sem_signalP4_sem>

}
    80006aa0:	01813083          	ld	ra,24(sp)
    80006aa4:	01013403          	ld	s0,16(sp)
    80006aa8:	00813483          	ld	s1,8(sp)
    80006aac:	00013903          	ld	s2,0(sp)
    80006ab0:	02010113          	addi	sp,sp,32
    80006ab4:	00008067          	ret

0000000080006ab8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006ab8:	fe010113          	addi	sp,sp,-32
    80006abc:	00113c23          	sd	ra,24(sp)
    80006ac0:	00813823          	sd	s0,16(sp)
    80006ac4:	00913423          	sd	s1,8(sp)
    80006ac8:	01213023          	sd	s2,0(sp)
    80006acc:	02010413          	addi	s0,sp,32
    80006ad0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ad4:	02053503          	ld	a0,32(a0)
    80006ad8:	ffffb097          	auipc	ra,0xffffb
    80006adc:	8c8080e7          	jalr	-1848(ra) # 800013a0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006ae0:	0284b503          	ld	a0,40(s1)
    80006ae4:	ffffb097          	auipc	ra,0xffffb
    80006ae8:	8bc080e7          	jalr	-1860(ra) # 800013a0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006aec:	0084b703          	ld	a4,8(s1)
    80006af0:	0104a783          	lw	a5,16(s1)
    80006af4:	00279693          	slli	a3,a5,0x2
    80006af8:	00d70733          	add	a4,a4,a3
    80006afc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006b00:	0017879b          	addiw	a5,a5,1
    80006b04:	0004a703          	lw	a4,0(s1)
    80006b08:	02e7e7bb          	remw	a5,a5,a4
    80006b0c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006b10:	0284b503          	ld	a0,40(s1)
    80006b14:	ffffb097          	auipc	ra,0xffffb
    80006b18:	8bc080e7          	jalr	-1860(ra) # 800013d0 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006b1c:	0184b503          	ld	a0,24(s1)
    80006b20:	ffffb097          	auipc	ra,0xffffb
    80006b24:	8b0080e7          	jalr	-1872(ra) # 800013d0 <_Z10sem_signalP4_sem>

    return ret;
}
    80006b28:	00090513          	mv	a0,s2
    80006b2c:	01813083          	ld	ra,24(sp)
    80006b30:	01013403          	ld	s0,16(sp)
    80006b34:	00813483          	ld	s1,8(sp)
    80006b38:	00013903          	ld	s2,0(sp)
    80006b3c:	02010113          	addi	sp,sp,32
    80006b40:	00008067          	ret

0000000080006b44 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b44:	fe010113          	addi	sp,sp,-32
    80006b48:	00113c23          	sd	ra,24(sp)
    80006b4c:	00813823          	sd	s0,16(sp)
    80006b50:	00913423          	sd	s1,8(sp)
    80006b54:	01213023          	sd	s2,0(sp)
    80006b58:	02010413          	addi	s0,sp,32
    80006b5c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b60:	02853503          	ld	a0,40(a0)
    80006b64:	ffffb097          	auipc	ra,0xffffb
    80006b68:	83c080e7          	jalr	-1988(ra) # 800013a0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006b6c:	0304b503          	ld	a0,48(s1)
    80006b70:	ffffb097          	auipc	ra,0xffffb
    80006b74:	830080e7          	jalr	-2000(ra) # 800013a0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006b78:	0144a783          	lw	a5,20(s1)
    80006b7c:	0104a903          	lw	s2,16(s1)
    80006b80:	0327ce63          	blt	a5,s2,80006bbc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b84:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b88:	0304b503          	ld	a0,48(s1)
    80006b8c:	ffffb097          	auipc	ra,0xffffb
    80006b90:	844080e7          	jalr	-1980(ra) # 800013d0 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006b94:	0284b503          	ld	a0,40(s1)
    80006b98:	ffffb097          	auipc	ra,0xffffb
    80006b9c:	838080e7          	jalr	-1992(ra) # 800013d0 <_Z10sem_signalP4_sem>

    return ret;
}
    80006ba0:	00090513          	mv	a0,s2
    80006ba4:	01813083          	ld	ra,24(sp)
    80006ba8:	01013403          	ld	s0,16(sp)
    80006bac:	00813483          	ld	s1,8(sp)
    80006bb0:	00013903          	ld	s2,0(sp)
    80006bb4:	02010113          	addi	sp,sp,32
    80006bb8:	00008067          	ret
        ret = cap - head + tail;
    80006bbc:	0004a703          	lw	a4,0(s1)
    80006bc0:	4127093b          	subw	s2,a4,s2
    80006bc4:	00f9093b          	addw	s2,s2,a5
    80006bc8:	fc1ff06f          	j	80006b88 <_ZN6Buffer6getCntEv+0x44>

0000000080006bcc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006bcc:	fe010113          	addi	sp,sp,-32
    80006bd0:	00113c23          	sd	ra,24(sp)
    80006bd4:	00813823          	sd	s0,16(sp)
    80006bd8:	00913423          	sd	s1,8(sp)
    80006bdc:	02010413          	addi	s0,sp,32
    80006be0:	00050493          	mv	s1,a0
    putc('\n');
    80006be4:	00a00513          	li	a0,10
    80006be8:	ffffb097          	auipc	ra,0xffffb
    80006bec:	8d8080e7          	jalr	-1832(ra) # 800014c0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006bf0:	00002517          	auipc	a0,0x2
    80006bf4:	71050513          	addi	a0,a0,1808 # 80009300 <CONSOLE_STATUS+0x2f0>
    80006bf8:	fffff097          	auipc	ra,0xfffff
    80006bfc:	e54080e7          	jalr	-428(ra) # 80005a4c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006c00:	00048513          	mv	a0,s1
    80006c04:	00000097          	auipc	ra,0x0
    80006c08:	f40080e7          	jalr	-192(ra) # 80006b44 <_ZN6Buffer6getCntEv>
    80006c0c:	02a05c63          	blez	a0,80006c44 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006c10:	0084b783          	ld	a5,8(s1)
    80006c14:	0104a703          	lw	a4,16(s1)
    80006c18:	00271713          	slli	a4,a4,0x2
    80006c1c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006c20:	0007c503          	lbu	a0,0(a5)
    80006c24:	ffffb097          	auipc	ra,0xffffb
    80006c28:	89c080e7          	jalr	-1892(ra) # 800014c0 <_Z4putcc>
        head = (head + 1) % cap;
    80006c2c:	0104a783          	lw	a5,16(s1)
    80006c30:	0017879b          	addiw	a5,a5,1
    80006c34:	0004a703          	lw	a4,0(s1)
    80006c38:	02e7e7bb          	remw	a5,a5,a4
    80006c3c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c40:	fc1ff06f          	j	80006c00 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c44:	02100513          	li	a0,33
    80006c48:	ffffb097          	auipc	ra,0xffffb
    80006c4c:	878080e7          	jalr	-1928(ra) # 800014c0 <_Z4putcc>
    putc('\n');
    80006c50:	00a00513          	li	a0,10
    80006c54:	ffffb097          	auipc	ra,0xffffb
    80006c58:	86c080e7          	jalr	-1940(ra) # 800014c0 <_Z4putcc>
    mem_free(buffer);
    80006c5c:	0084b503          	ld	a0,8(s1)
    80006c60:	ffffa097          	auipc	ra,0xffffa
    80006c64:	624080e7          	jalr	1572(ra) # 80001284 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c68:	0204b503          	ld	a0,32(s1)
    80006c6c:	ffffa097          	auipc	ra,0xffffa
    80006c70:	704080e7          	jalr	1796(ra) # 80001370 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006c74:	0184b503          	ld	a0,24(s1)
    80006c78:	ffffa097          	auipc	ra,0xffffa
    80006c7c:	6f8080e7          	jalr	1784(ra) # 80001370 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006c80:	0304b503          	ld	a0,48(s1)
    80006c84:	ffffa097          	auipc	ra,0xffffa
    80006c88:	6ec080e7          	jalr	1772(ra) # 80001370 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006c8c:	0284b503          	ld	a0,40(s1)
    80006c90:	ffffa097          	auipc	ra,0xffffa
    80006c94:	6e0080e7          	jalr	1760(ra) # 80001370 <_Z9sem_closeP4_sem>
}
    80006c98:	01813083          	ld	ra,24(sp)
    80006c9c:	01013403          	ld	s0,16(sp)
    80006ca0:	00813483          	ld	s1,8(sp)
    80006ca4:	02010113          	addi	sp,sp,32
    80006ca8:	00008067          	ret

0000000080006cac <start>:
    80006cac:	ff010113          	addi	sp,sp,-16
    80006cb0:	00813423          	sd	s0,8(sp)
    80006cb4:	01010413          	addi	s0,sp,16
    80006cb8:	300027f3          	csrr	a5,mstatus
    80006cbc:	ffffe737          	lui	a4,0xffffe
    80006cc0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff199f>
    80006cc4:	00e7f7b3          	and	a5,a5,a4
    80006cc8:	00001737          	lui	a4,0x1
    80006ccc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006cd0:	00e7e7b3          	or	a5,a5,a4
    80006cd4:	30079073          	csrw	mstatus,a5
    80006cd8:	00000797          	auipc	a5,0x0
    80006cdc:	16078793          	addi	a5,a5,352 # 80006e38 <system_main>
    80006ce0:	34179073          	csrw	mepc,a5
    80006ce4:	00000793          	li	a5,0
    80006ce8:	18079073          	csrw	satp,a5
    80006cec:	000107b7          	lui	a5,0x10
    80006cf0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006cf4:	30279073          	csrw	medeleg,a5
    80006cf8:	30379073          	csrw	mideleg,a5
    80006cfc:	104027f3          	csrr	a5,sie
    80006d00:	2227e793          	ori	a5,a5,546
    80006d04:	10479073          	csrw	sie,a5
    80006d08:	fff00793          	li	a5,-1
    80006d0c:	00a7d793          	srli	a5,a5,0xa
    80006d10:	3b079073          	csrw	pmpaddr0,a5
    80006d14:	00f00793          	li	a5,15
    80006d18:	3a079073          	csrw	pmpcfg0,a5
    80006d1c:	f14027f3          	csrr	a5,mhartid
    80006d20:	0200c737          	lui	a4,0x200c
    80006d24:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d28:	0007869b          	sext.w	a3,a5
    80006d2c:	00269713          	slli	a4,a3,0x2
    80006d30:	000f4637          	lui	a2,0xf4
    80006d34:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d38:	00d70733          	add	a4,a4,a3
    80006d3c:	0037979b          	slliw	a5,a5,0x3
    80006d40:	020046b7          	lui	a3,0x2004
    80006d44:	00d787b3          	add	a5,a5,a3
    80006d48:	00c585b3          	add	a1,a1,a2
    80006d4c:	00371693          	slli	a3,a4,0x3
    80006d50:	00005717          	auipc	a4,0x5
    80006d54:	eb070713          	addi	a4,a4,-336 # 8000bc00 <timer_scratch>
    80006d58:	00b7b023          	sd	a1,0(a5)
    80006d5c:	00d70733          	add	a4,a4,a3
    80006d60:	00f73c23          	sd	a5,24(a4)
    80006d64:	02c73023          	sd	a2,32(a4)
    80006d68:	34071073          	csrw	mscratch,a4
    80006d6c:	00000797          	auipc	a5,0x0
    80006d70:	6e478793          	addi	a5,a5,1764 # 80007450 <timervec>
    80006d74:	30579073          	csrw	mtvec,a5
    80006d78:	300027f3          	csrr	a5,mstatus
    80006d7c:	0087e793          	ori	a5,a5,8
    80006d80:	30079073          	csrw	mstatus,a5
    80006d84:	304027f3          	csrr	a5,mie
    80006d88:	0807e793          	ori	a5,a5,128
    80006d8c:	30479073          	csrw	mie,a5
    80006d90:	f14027f3          	csrr	a5,mhartid
    80006d94:	0007879b          	sext.w	a5,a5
    80006d98:	00078213          	mv	tp,a5
    80006d9c:	30200073          	mret
    80006da0:	00813403          	ld	s0,8(sp)
    80006da4:	01010113          	addi	sp,sp,16
    80006da8:	00008067          	ret

0000000080006dac <timerinit>:
    80006dac:	ff010113          	addi	sp,sp,-16
    80006db0:	00813423          	sd	s0,8(sp)
    80006db4:	01010413          	addi	s0,sp,16
    80006db8:	f14027f3          	csrr	a5,mhartid
    80006dbc:	0200c737          	lui	a4,0x200c
    80006dc0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006dc4:	0007869b          	sext.w	a3,a5
    80006dc8:	00269713          	slli	a4,a3,0x2
    80006dcc:	000f4637          	lui	a2,0xf4
    80006dd0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006dd4:	00d70733          	add	a4,a4,a3
    80006dd8:	0037979b          	slliw	a5,a5,0x3
    80006ddc:	020046b7          	lui	a3,0x2004
    80006de0:	00d787b3          	add	a5,a5,a3
    80006de4:	00c585b3          	add	a1,a1,a2
    80006de8:	00371693          	slli	a3,a4,0x3
    80006dec:	00005717          	auipc	a4,0x5
    80006df0:	e1470713          	addi	a4,a4,-492 # 8000bc00 <timer_scratch>
    80006df4:	00b7b023          	sd	a1,0(a5)
    80006df8:	00d70733          	add	a4,a4,a3
    80006dfc:	00f73c23          	sd	a5,24(a4)
    80006e00:	02c73023          	sd	a2,32(a4)
    80006e04:	34071073          	csrw	mscratch,a4
    80006e08:	00000797          	auipc	a5,0x0
    80006e0c:	64878793          	addi	a5,a5,1608 # 80007450 <timervec>
    80006e10:	30579073          	csrw	mtvec,a5
    80006e14:	300027f3          	csrr	a5,mstatus
    80006e18:	0087e793          	ori	a5,a5,8
    80006e1c:	30079073          	csrw	mstatus,a5
    80006e20:	304027f3          	csrr	a5,mie
    80006e24:	0807e793          	ori	a5,a5,128
    80006e28:	30479073          	csrw	mie,a5
    80006e2c:	00813403          	ld	s0,8(sp)
    80006e30:	01010113          	addi	sp,sp,16
    80006e34:	00008067          	ret

0000000080006e38 <system_main>:
    80006e38:	fe010113          	addi	sp,sp,-32
    80006e3c:	00813823          	sd	s0,16(sp)
    80006e40:	00913423          	sd	s1,8(sp)
    80006e44:	00113c23          	sd	ra,24(sp)
    80006e48:	02010413          	addi	s0,sp,32
    80006e4c:	00000097          	auipc	ra,0x0
    80006e50:	0c4080e7          	jalr	196(ra) # 80006f10 <cpuid>
    80006e54:	00005497          	auipc	s1,0x5
    80006e58:	ccc48493          	addi	s1,s1,-820 # 8000bb20 <started>
    80006e5c:	02050263          	beqz	a0,80006e80 <system_main+0x48>
    80006e60:	0004a783          	lw	a5,0(s1)
    80006e64:	0007879b          	sext.w	a5,a5
    80006e68:	fe078ce3          	beqz	a5,80006e60 <system_main+0x28>
    80006e6c:	0ff0000f          	fence
    80006e70:	00002517          	auipc	a0,0x2
    80006e74:	76850513          	addi	a0,a0,1896 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006e78:	00001097          	auipc	ra,0x1
    80006e7c:	a74080e7          	jalr	-1420(ra) # 800078ec <panic>
    80006e80:	00001097          	auipc	ra,0x1
    80006e84:	9c8080e7          	jalr	-1592(ra) # 80007848 <consoleinit>
    80006e88:	00001097          	auipc	ra,0x1
    80006e8c:	154080e7          	jalr	340(ra) # 80007fdc <printfinit>
    80006e90:	00002517          	auipc	a0,0x2
    80006e94:	5c850513          	addi	a0,a0,1480 # 80009458 <CONSOLE_STATUS+0x448>
    80006e98:	00001097          	auipc	ra,0x1
    80006e9c:	ab0080e7          	jalr	-1360(ra) # 80007948 <__printf>
    80006ea0:	00002517          	auipc	a0,0x2
    80006ea4:	70850513          	addi	a0,a0,1800 # 800095a8 <CONSOLE_STATUS+0x598>
    80006ea8:	00001097          	auipc	ra,0x1
    80006eac:	aa0080e7          	jalr	-1376(ra) # 80007948 <__printf>
    80006eb0:	00002517          	auipc	a0,0x2
    80006eb4:	5a850513          	addi	a0,a0,1448 # 80009458 <CONSOLE_STATUS+0x448>
    80006eb8:	00001097          	auipc	ra,0x1
    80006ebc:	a90080e7          	jalr	-1392(ra) # 80007948 <__printf>
    80006ec0:	00001097          	auipc	ra,0x1
    80006ec4:	4a8080e7          	jalr	1192(ra) # 80008368 <kinit>
    80006ec8:	00000097          	auipc	ra,0x0
    80006ecc:	148080e7          	jalr	328(ra) # 80007010 <trapinit>
    80006ed0:	00000097          	auipc	ra,0x0
    80006ed4:	16c080e7          	jalr	364(ra) # 8000703c <trapinithart>
    80006ed8:	00000097          	auipc	ra,0x0
    80006edc:	5b8080e7          	jalr	1464(ra) # 80007490 <plicinit>
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	5d8080e7          	jalr	1496(ra) # 800074b8 <plicinithart>
    80006ee8:	00000097          	auipc	ra,0x0
    80006eec:	078080e7          	jalr	120(ra) # 80006f60 <userinit>
    80006ef0:	0ff0000f          	fence
    80006ef4:	00100793          	li	a5,1
    80006ef8:	00002517          	auipc	a0,0x2
    80006efc:	6c850513          	addi	a0,a0,1736 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006f00:	00f4a023          	sw	a5,0(s1)
    80006f04:	00001097          	auipc	ra,0x1
    80006f08:	a44080e7          	jalr	-1468(ra) # 80007948 <__printf>
    80006f0c:	0000006f          	j	80006f0c <system_main+0xd4>

0000000080006f10 <cpuid>:
    80006f10:	ff010113          	addi	sp,sp,-16
    80006f14:	00813423          	sd	s0,8(sp)
    80006f18:	01010413          	addi	s0,sp,16
    80006f1c:	00020513          	mv	a0,tp
    80006f20:	00813403          	ld	s0,8(sp)
    80006f24:	0005051b          	sext.w	a0,a0
    80006f28:	01010113          	addi	sp,sp,16
    80006f2c:	00008067          	ret

0000000080006f30 <mycpu>:
    80006f30:	ff010113          	addi	sp,sp,-16
    80006f34:	00813423          	sd	s0,8(sp)
    80006f38:	01010413          	addi	s0,sp,16
    80006f3c:	00020793          	mv	a5,tp
    80006f40:	00813403          	ld	s0,8(sp)
    80006f44:	0007879b          	sext.w	a5,a5
    80006f48:	00779793          	slli	a5,a5,0x7
    80006f4c:	00006517          	auipc	a0,0x6
    80006f50:	ce450513          	addi	a0,a0,-796 # 8000cc30 <cpus>
    80006f54:	00f50533          	add	a0,a0,a5
    80006f58:	01010113          	addi	sp,sp,16
    80006f5c:	00008067          	ret

0000000080006f60 <userinit>:
    80006f60:	ff010113          	addi	sp,sp,-16
    80006f64:	00813423          	sd	s0,8(sp)
    80006f68:	01010413          	addi	s0,sp,16
    80006f6c:	00813403          	ld	s0,8(sp)
    80006f70:	01010113          	addi	sp,sp,16
    80006f74:	ffffc317          	auipc	t1,0xffffc
    80006f78:	b3430067          	jr	-1228(t1) # 80002aa8 <main>

0000000080006f7c <either_copyout>:
    80006f7c:	ff010113          	addi	sp,sp,-16
    80006f80:	00813023          	sd	s0,0(sp)
    80006f84:	00113423          	sd	ra,8(sp)
    80006f88:	01010413          	addi	s0,sp,16
    80006f8c:	02051663          	bnez	a0,80006fb8 <either_copyout+0x3c>
    80006f90:	00058513          	mv	a0,a1
    80006f94:	00060593          	mv	a1,a2
    80006f98:	0006861b          	sext.w	a2,a3
    80006f9c:	00002097          	auipc	ra,0x2
    80006fa0:	c58080e7          	jalr	-936(ra) # 80008bf4 <__memmove>
    80006fa4:	00813083          	ld	ra,8(sp)
    80006fa8:	00013403          	ld	s0,0(sp)
    80006fac:	00000513          	li	a0,0
    80006fb0:	01010113          	addi	sp,sp,16
    80006fb4:	00008067          	ret
    80006fb8:	00002517          	auipc	a0,0x2
    80006fbc:	64850513          	addi	a0,a0,1608 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006fc0:	00001097          	auipc	ra,0x1
    80006fc4:	92c080e7          	jalr	-1748(ra) # 800078ec <panic>

0000000080006fc8 <either_copyin>:
    80006fc8:	ff010113          	addi	sp,sp,-16
    80006fcc:	00813023          	sd	s0,0(sp)
    80006fd0:	00113423          	sd	ra,8(sp)
    80006fd4:	01010413          	addi	s0,sp,16
    80006fd8:	02059463          	bnez	a1,80007000 <either_copyin+0x38>
    80006fdc:	00060593          	mv	a1,a2
    80006fe0:	0006861b          	sext.w	a2,a3
    80006fe4:	00002097          	auipc	ra,0x2
    80006fe8:	c10080e7          	jalr	-1008(ra) # 80008bf4 <__memmove>
    80006fec:	00813083          	ld	ra,8(sp)
    80006ff0:	00013403          	ld	s0,0(sp)
    80006ff4:	00000513          	li	a0,0
    80006ff8:	01010113          	addi	sp,sp,16
    80006ffc:	00008067          	ret
    80007000:	00002517          	auipc	a0,0x2
    80007004:	62850513          	addi	a0,a0,1576 # 80009628 <CONSOLE_STATUS+0x618>
    80007008:	00001097          	auipc	ra,0x1
    8000700c:	8e4080e7          	jalr	-1820(ra) # 800078ec <panic>

0000000080007010 <trapinit>:
    80007010:	ff010113          	addi	sp,sp,-16
    80007014:	00813423          	sd	s0,8(sp)
    80007018:	01010413          	addi	s0,sp,16
    8000701c:	00813403          	ld	s0,8(sp)
    80007020:	00002597          	auipc	a1,0x2
    80007024:	63058593          	addi	a1,a1,1584 # 80009650 <CONSOLE_STATUS+0x640>
    80007028:	00006517          	auipc	a0,0x6
    8000702c:	c8850513          	addi	a0,a0,-888 # 8000ccb0 <tickslock>
    80007030:	01010113          	addi	sp,sp,16
    80007034:	00001317          	auipc	t1,0x1
    80007038:	5c430067          	jr	1476(t1) # 800085f8 <initlock>

000000008000703c <trapinithart>:
    8000703c:	ff010113          	addi	sp,sp,-16
    80007040:	00813423          	sd	s0,8(sp)
    80007044:	01010413          	addi	s0,sp,16
    80007048:	00000797          	auipc	a5,0x0
    8000704c:	2f878793          	addi	a5,a5,760 # 80007340 <kernelvec>
    80007050:	10579073          	csrw	stvec,a5
    80007054:	00813403          	ld	s0,8(sp)
    80007058:	01010113          	addi	sp,sp,16
    8000705c:	00008067          	ret

0000000080007060 <usertrap>:
    80007060:	ff010113          	addi	sp,sp,-16
    80007064:	00813423          	sd	s0,8(sp)
    80007068:	01010413          	addi	s0,sp,16
    8000706c:	00813403          	ld	s0,8(sp)
    80007070:	01010113          	addi	sp,sp,16
    80007074:	00008067          	ret

0000000080007078 <usertrapret>:
    80007078:	ff010113          	addi	sp,sp,-16
    8000707c:	00813423          	sd	s0,8(sp)
    80007080:	01010413          	addi	s0,sp,16
    80007084:	00813403          	ld	s0,8(sp)
    80007088:	01010113          	addi	sp,sp,16
    8000708c:	00008067          	ret

0000000080007090 <kerneltrap>:
    80007090:	fe010113          	addi	sp,sp,-32
    80007094:	00813823          	sd	s0,16(sp)
    80007098:	00113c23          	sd	ra,24(sp)
    8000709c:	00913423          	sd	s1,8(sp)
    800070a0:	02010413          	addi	s0,sp,32
    800070a4:	142025f3          	csrr	a1,scause
    800070a8:	100027f3          	csrr	a5,sstatus
    800070ac:	0027f793          	andi	a5,a5,2
    800070b0:	10079c63          	bnez	a5,800071c8 <kerneltrap+0x138>
    800070b4:	142027f3          	csrr	a5,scause
    800070b8:	0207ce63          	bltz	a5,800070f4 <kerneltrap+0x64>
    800070bc:	00002517          	auipc	a0,0x2
    800070c0:	5dc50513          	addi	a0,a0,1500 # 80009698 <CONSOLE_STATUS+0x688>
    800070c4:	00001097          	auipc	ra,0x1
    800070c8:	884080e7          	jalr	-1916(ra) # 80007948 <__printf>
    800070cc:	141025f3          	csrr	a1,sepc
    800070d0:	14302673          	csrr	a2,stval
    800070d4:	00002517          	auipc	a0,0x2
    800070d8:	5d450513          	addi	a0,a0,1492 # 800096a8 <CONSOLE_STATUS+0x698>
    800070dc:	00001097          	auipc	ra,0x1
    800070e0:	86c080e7          	jalr	-1940(ra) # 80007948 <__printf>
    800070e4:	00002517          	auipc	a0,0x2
    800070e8:	5dc50513          	addi	a0,a0,1500 # 800096c0 <CONSOLE_STATUS+0x6b0>
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	800080e7          	jalr	-2048(ra) # 800078ec <panic>
    800070f4:	0ff7f713          	andi	a4,a5,255
    800070f8:	00900693          	li	a3,9
    800070fc:	04d70063          	beq	a4,a3,8000713c <kerneltrap+0xac>
    80007100:	fff00713          	li	a4,-1
    80007104:	03f71713          	slli	a4,a4,0x3f
    80007108:	00170713          	addi	a4,a4,1
    8000710c:	fae798e3          	bne	a5,a4,800070bc <kerneltrap+0x2c>
    80007110:	00000097          	auipc	ra,0x0
    80007114:	e00080e7          	jalr	-512(ra) # 80006f10 <cpuid>
    80007118:	06050663          	beqz	a0,80007184 <kerneltrap+0xf4>
    8000711c:	144027f3          	csrr	a5,sip
    80007120:	ffd7f793          	andi	a5,a5,-3
    80007124:	14479073          	csrw	sip,a5
    80007128:	01813083          	ld	ra,24(sp)
    8000712c:	01013403          	ld	s0,16(sp)
    80007130:	00813483          	ld	s1,8(sp)
    80007134:	02010113          	addi	sp,sp,32
    80007138:	00008067          	ret
    8000713c:	00000097          	auipc	ra,0x0
    80007140:	3c8080e7          	jalr	968(ra) # 80007504 <plic_claim>
    80007144:	00a00793          	li	a5,10
    80007148:	00050493          	mv	s1,a0
    8000714c:	06f50863          	beq	a0,a5,800071bc <kerneltrap+0x12c>
    80007150:	fc050ce3          	beqz	a0,80007128 <kerneltrap+0x98>
    80007154:	00050593          	mv	a1,a0
    80007158:	00002517          	auipc	a0,0x2
    8000715c:	52050513          	addi	a0,a0,1312 # 80009678 <CONSOLE_STATUS+0x668>
    80007160:	00000097          	auipc	ra,0x0
    80007164:	7e8080e7          	jalr	2024(ra) # 80007948 <__printf>
    80007168:	01013403          	ld	s0,16(sp)
    8000716c:	01813083          	ld	ra,24(sp)
    80007170:	00048513          	mv	a0,s1
    80007174:	00813483          	ld	s1,8(sp)
    80007178:	02010113          	addi	sp,sp,32
    8000717c:	00000317          	auipc	t1,0x0
    80007180:	3c030067          	jr	960(t1) # 8000753c <plic_complete>
    80007184:	00006517          	auipc	a0,0x6
    80007188:	b2c50513          	addi	a0,a0,-1236 # 8000ccb0 <tickslock>
    8000718c:	00001097          	auipc	ra,0x1
    80007190:	490080e7          	jalr	1168(ra) # 8000861c <acquire>
    80007194:	00005717          	auipc	a4,0x5
    80007198:	99070713          	addi	a4,a4,-1648 # 8000bb24 <ticks>
    8000719c:	00072783          	lw	a5,0(a4)
    800071a0:	00006517          	auipc	a0,0x6
    800071a4:	b1050513          	addi	a0,a0,-1264 # 8000ccb0 <tickslock>
    800071a8:	0017879b          	addiw	a5,a5,1
    800071ac:	00f72023          	sw	a5,0(a4)
    800071b0:	00001097          	auipc	ra,0x1
    800071b4:	538080e7          	jalr	1336(ra) # 800086e8 <release>
    800071b8:	f65ff06f          	j	8000711c <kerneltrap+0x8c>
    800071bc:	00001097          	auipc	ra,0x1
    800071c0:	094080e7          	jalr	148(ra) # 80008250 <uartintr>
    800071c4:	fa5ff06f          	j	80007168 <kerneltrap+0xd8>
    800071c8:	00002517          	auipc	a0,0x2
    800071cc:	49050513          	addi	a0,a0,1168 # 80009658 <CONSOLE_STATUS+0x648>
    800071d0:	00000097          	auipc	ra,0x0
    800071d4:	71c080e7          	jalr	1820(ra) # 800078ec <panic>

00000000800071d8 <clockintr>:
    800071d8:	fe010113          	addi	sp,sp,-32
    800071dc:	00813823          	sd	s0,16(sp)
    800071e0:	00913423          	sd	s1,8(sp)
    800071e4:	00113c23          	sd	ra,24(sp)
    800071e8:	02010413          	addi	s0,sp,32
    800071ec:	00006497          	auipc	s1,0x6
    800071f0:	ac448493          	addi	s1,s1,-1340 # 8000ccb0 <tickslock>
    800071f4:	00048513          	mv	a0,s1
    800071f8:	00001097          	auipc	ra,0x1
    800071fc:	424080e7          	jalr	1060(ra) # 8000861c <acquire>
    80007200:	00005717          	auipc	a4,0x5
    80007204:	92470713          	addi	a4,a4,-1756 # 8000bb24 <ticks>
    80007208:	00072783          	lw	a5,0(a4)
    8000720c:	01013403          	ld	s0,16(sp)
    80007210:	01813083          	ld	ra,24(sp)
    80007214:	00048513          	mv	a0,s1
    80007218:	0017879b          	addiw	a5,a5,1
    8000721c:	00813483          	ld	s1,8(sp)
    80007220:	00f72023          	sw	a5,0(a4)
    80007224:	02010113          	addi	sp,sp,32
    80007228:	00001317          	auipc	t1,0x1
    8000722c:	4c030067          	jr	1216(t1) # 800086e8 <release>

0000000080007230 <devintr>:
    80007230:	142027f3          	csrr	a5,scause
    80007234:	00000513          	li	a0,0
    80007238:	0007c463          	bltz	a5,80007240 <devintr+0x10>
    8000723c:	00008067          	ret
    80007240:	fe010113          	addi	sp,sp,-32
    80007244:	00813823          	sd	s0,16(sp)
    80007248:	00113c23          	sd	ra,24(sp)
    8000724c:	00913423          	sd	s1,8(sp)
    80007250:	02010413          	addi	s0,sp,32
    80007254:	0ff7f713          	andi	a4,a5,255
    80007258:	00900693          	li	a3,9
    8000725c:	04d70c63          	beq	a4,a3,800072b4 <devintr+0x84>
    80007260:	fff00713          	li	a4,-1
    80007264:	03f71713          	slli	a4,a4,0x3f
    80007268:	00170713          	addi	a4,a4,1
    8000726c:	00e78c63          	beq	a5,a4,80007284 <devintr+0x54>
    80007270:	01813083          	ld	ra,24(sp)
    80007274:	01013403          	ld	s0,16(sp)
    80007278:	00813483          	ld	s1,8(sp)
    8000727c:	02010113          	addi	sp,sp,32
    80007280:	00008067          	ret
    80007284:	00000097          	auipc	ra,0x0
    80007288:	c8c080e7          	jalr	-884(ra) # 80006f10 <cpuid>
    8000728c:	06050663          	beqz	a0,800072f8 <devintr+0xc8>
    80007290:	144027f3          	csrr	a5,sip
    80007294:	ffd7f793          	andi	a5,a5,-3
    80007298:	14479073          	csrw	sip,a5
    8000729c:	01813083          	ld	ra,24(sp)
    800072a0:	01013403          	ld	s0,16(sp)
    800072a4:	00813483          	ld	s1,8(sp)
    800072a8:	00200513          	li	a0,2
    800072ac:	02010113          	addi	sp,sp,32
    800072b0:	00008067          	ret
    800072b4:	00000097          	auipc	ra,0x0
    800072b8:	250080e7          	jalr	592(ra) # 80007504 <plic_claim>
    800072bc:	00a00793          	li	a5,10
    800072c0:	00050493          	mv	s1,a0
    800072c4:	06f50663          	beq	a0,a5,80007330 <devintr+0x100>
    800072c8:	00100513          	li	a0,1
    800072cc:	fa0482e3          	beqz	s1,80007270 <devintr+0x40>
    800072d0:	00048593          	mv	a1,s1
    800072d4:	00002517          	auipc	a0,0x2
    800072d8:	3a450513          	addi	a0,a0,932 # 80009678 <CONSOLE_STATUS+0x668>
    800072dc:	00000097          	auipc	ra,0x0
    800072e0:	66c080e7          	jalr	1644(ra) # 80007948 <__printf>
    800072e4:	00048513          	mv	a0,s1
    800072e8:	00000097          	auipc	ra,0x0
    800072ec:	254080e7          	jalr	596(ra) # 8000753c <plic_complete>
    800072f0:	00100513          	li	a0,1
    800072f4:	f7dff06f          	j	80007270 <devintr+0x40>
    800072f8:	00006517          	auipc	a0,0x6
    800072fc:	9b850513          	addi	a0,a0,-1608 # 8000ccb0 <tickslock>
    80007300:	00001097          	auipc	ra,0x1
    80007304:	31c080e7          	jalr	796(ra) # 8000861c <acquire>
    80007308:	00005717          	auipc	a4,0x5
    8000730c:	81c70713          	addi	a4,a4,-2020 # 8000bb24 <ticks>
    80007310:	00072783          	lw	a5,0(a4)
    80007314:	00006517          	auipc	a0,0x6
    80007318:	99c50513          	addi	a0,a0,-1636 # 8000ccb0 <tickslock>
    8000731c:	0017879b          	addiw	a5,a5,1
    80007320:	00f72023          	sw	a5,0(a4)
    80007324:	00001097          	auipc	ra,0x1
    80007328:	3c4080e7          	jalr	964(ra) # 800086e8 <release>
    8000732c:	f65ff06f          	j	80007290 <devintr+0x60>
    80007330:	00001097          	auipc	ra,0x1
    80007334:	f20080e7          	jalr	-224(ra) # 80008250 <uartintr>
    80007338:	fadff06f          	j	800072e4 <devintr+0xb4>
    8000733c:	0000                	unimp
	...

0000000080007340 <kernelvec>:
    80007340:	f0010113          	addi	sp,sp,-256
    80007344:	00113023          	sd	ra,0(sp)
    80007348:	00213423          	sd	sp,8(sp)
    8000734c:	00313823          	sd	gp,16(sp)
    80007350:	00413c23          	sd	tp,24(sp)
    80007354:	02513023          	sd	t0,32(sp)
    80007358:	02613423          	sd	t1,40(sp)
    8000735c:	02713823          	sd	t2,48(sp)
    80007360:	02813c23          	sd	s0,56(sp)
    80007364:	04913023          	sd	s1,64(sp)
    80007368:	04a13423          	sd	a0,72(sp)
    8000736c:	04b13823          	sd	a1,80(sp)
    80007370:	04c13c23          	sd	a2,88(sp)
    80007374:	06d13023          	sd	a3,96(sp)
    80007378:	06e13423          	sd	a4,104(sp)
    8000737c:	06f13823          	sd	a5,112(sp)
    80007380:	07013c23          	sd	a6,120(sp)
    80007384:	09113023          	sd	a7,128(sp)
    80007388:	09213423          	sd	s2,136(sp)
    8000738c:	09313823          	sd	s3,144(sp)
    80007390:	09413c23          	sd	s4,152(sp)
    80007394:	0b513023          	sd	s5,160(sp)
    80007398:	0b613423          	sd	s6,168(sp)
    8000739c:	0b713823          	sd	s7,176(sp)
    800073a0:	0b813c23          	sd	s8,184(sp)
    800073a4:	0d913023          	sd	s9,192(sp)
    800073a8:	0da13423          	sd	s10,200(sp)
    800073ac:	0db13823          	sd	s11,208(sp)
    800073b0:	0dc13c23          	sd	t3,216(sp)
    800073b4:	0fd13023          	sd	t4,224(sp)
    800073b8:	0fe13423          	sd	t5,232(sp)
    800073bc:	0ff13823          	sd	t6,240(sp)
    800073c0:	cd1ff0ef          	jal	ra,80007090 <kerneltrap>
    800073c4:	00013083          	ld	ra,0(sp)
    800073c8:	00813103          	ld	sp,8(sp)
    800073cc:	01013183          	ld	gp,16(sp)
    800073d0:	02013283          	ld	t0,32(sp)
    800073d4:	02813303          	ld	t1,40(sp)
    800073d8:	03013383          	ld	t2,48(sp)
    800073dc:	03813403          	ld	s0,56(sp)
    800073e0:	04013483          	ld	s1,64(sp)
    800073e4:	04813503          	ld	a0,72(sp)
    800073e8:	05013583          	ld	a1,80(sp)
    800073ec:	05813603          	ld	a2,88(sp)
    800073f0:	06013683          	ld	a3,96(sp)
    800073f4:	06813703          	ld	a4,104(sp)
    800073f8:	07013783          	ld	a5,112(sp)
    800073fc:	07813803          	ld	a6,120(sp)
    80007400:	08013883          	ld	a7,128(sp)
    80007404:	08813903          	ld	s2,136(sp)
    80007408:	09013983          	ld	s3,144(sp)
    8000740c:	09813a03          	ld	s4,152(sp)
    80007410:	0a013a83          	ld	s5,160(sp)
    80007414:	0a813b03          	ld	s6,168(sp)
    80007418:	0b013b83          	ld	s7,176(sp)
    8000741c:	0b813c03          	ld	s8,184(sp)
    80007420:	0c013c83          	ld	s9,192(sp)
    80007424:	0c813d03          	ld	s10,200(sp)
    80007428:	0d013d83          	ld	s11,208(sp)
    8000742c:	0d813e03          	ld	t3,216(sp)
    80007430:	0e013e83          	ld	t4,224(sp)
    80007434:	0e813f03          	ld	t5,232(sp)
    80007438:	0f013f83          	ld	t6,240(sp)
    8000743c:	10010113          	addi	sp,sp,256
    80007440:	10200073          	sret
    80007444:	00000013          	nop
    80007448:	00000013          	nop
    8000744c:	00000013          	nop

0000000080007450 <timervec>:
    80007450:	34051573          	csrrw	a0,mscratch,a0
    80007454:	00b53023          	sd	a1,0(a0)
    80007458:	00c53423          	sd	a2,8(a0)
    8000745c:	00d53823          	sd	a3,16(a0)
    80007460:	01853583          	ld	a1,24(a0)
    80007464:	02053603          	ld	a2,32(a0)
    80007468:	0005b683          	ld	a3,0(a1)
    8000746c:	00c686b3          	add	a3,a3,a2
    80007470:	00d5b023          	sd	a3,0(a1)
    80007474:	00200593          	li	a1,2
    80007478:	14459073          	csrw	sip,a1
    8000747c:	01053683          	ld	a3,16(a0)
    80007480:	00853603          	ld	a2,8(a0)
    80007484:	00053583          	ld	a1,0(a0)
    80007488:	34051573          	csrrw	a0,mscratch,a0
    8000748c:	30200073          	mret

0000000080007490 <plicinit>:
    80007490:	ff010113          	addi	sp,sp,-16
    80007494:	00813423          	sd	s0,8(sp)
    80007498:	01010413          	addi	s0,sp,16
    8000749c:	00813403          	ld	s0,8(sp)
    800074a0:	0c0007b7          	lui	a5,0xc000
    800074a4:	00100713          	li	a4,1
    800074a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800074ac:	00e7a223          	sw	a4,4(a5)
    800074b0:	01010113          	addi	sp,sp,16
    800074b4:	00008067          	ret

00000000800074b8 <plicinithart>:
    800074b8:	ff010113          	addi	sp,sp,-16
    800074bc:	00813023          	sd	s0,0(sp)
    800074c0:	00113423          	sd	ra,8(sp)
    800074c4:	01010413          	addi	s0,sp,16
    800074c8:	00000097          	auipc	ra,0x0
    800074cc:	a48080e7          	jalr	-1464(ra) # 80006f10 <cpuid>
    800074d0:	0085171b          	slliw	a4,a0,0x8
    800074d4:	0c0027b7          	lui	a5,0xc002
    800074d8:	00e787b3          	add	a5,a5,a4
    800074dc:	40200713          	li	a4,1026
    800074e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800074e4:	00813083          	ld	ra,8(sp)
    800074e8:	00013403          	ld	s0,0(sp)
    800074ec:	00d5151b          	slliw	a0,a0,0xd
    800074f0:	0c2017b7          	lui	a5,0xc201
    800074f4:	00a78533          	add	a0,a5,a0
    800074f8:	00052023          	sw	zero,0(a0)
    800074fc:	01010113          	addi	sp,sp,16
    80007500:	00008067          	ret

0000000080007504 <plic_claim>:
    80007504:	ff010113          	addi	sp,sp,-16
    80007508:	00813023          	sd	s0,0(sp)
    8000750c:	00113423          	sd	ra,8(sp)
    80007510:	01010413          	addi	s0,sp,16
    80007514:	00000097          	auipc	ra,0x0
    80007518:	9fc080e7          	jalr	-1540(ra) # 80006f10 <cpuid>
    8000751c:	00813083          	ld	ra,8(sp)
    80007520:	00013403          	ld	s0,0(sp)
    80007524:	00d5151b          	slliw	a0,a0,0xd
    80007528:	0c2017b7          	lui	a5,0xc201
    8000752c:	00a78533          	add	a0,a5,a0
    80007530:	00452503          	lw	a0,4(a0)
    80007534:	01010113          	addi	sp,sp,16
    80007538:	00008067          	ret

000000008000753c <plic_complete>:
    8000753c:	fe010113          	addi	sp,sp,-32
    80007540:	00813823          	sd	s0,16(sp)
    80007544:	00913423          	sd	s1,8(sp)
    80007548:	00113c23          	sd	ra,24(sp)
    8000754c:	02010413          	addi	s0,sp,32
    80007550:	00050493          	mv	s1,a0
    80007554:	00000097          	auipc	ra,0x0
    80007558:	9bc080e7          	jalr	-1604(ra) # 80006f10 <cpuid>
    8000755c:	01813083          	ld	ra,24(sp)
    80007560:	01013403          	ld	s0,16(sp)
    80007564:	00d5179b          	slliw	a5,a0,0xd
    80007568:	0c201737          	lui	a4,0xc201
    8000756c:	00f707b3          	add	a5,a4,a5
    80007570:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007574:	00813483          	ld	s1,8(sp)
    80007578:	02010113          	addi	sp,sp,32
    8000757c:	00008067          	ret

0000000080007580 <consolewrite>:
    80007580:	fb010113          	addi	sp,sp,-80
    80007584:	04813023          	sd	s0,64(sp)
    80007588:	04113423          	sd	ra,72(sp)
    8000758c:	02913c23          	sd	s1,56(sp)
    80007590:	03213823          	sd	s2,48(sp)
    80007594:	03313423          	sd	s3,40(sp)
    80007598:	03413023          	sd	s4,32(sp)
    8000759c:	01513c23          	sd	s5,24(sp)
    800075a0:	05010413          	addi	s0,sp,80
    800075a4:	06c05c63          	blez	a2,8000761c <consolewrite+0x9c>
    800075a8:	00060993          	mv	s3,a2
    800075ac:	00050a13          	mv	s4,a0
    800075b0:	00058493          	mv	s1,a1
    800075b4:	00000913          	li	s2,0
    800075b8:	fff00a93          	li	s5,-1
    800075bc:	01c0006f          	j	800075d8 <consolewrite+0x58>
    800075c0:	fbf44503          	lbu	a0,-65(s0)
    800075c4:	0019091b          	addiw	s2,s2,1
    800075c8:	00148493          	addi	s1,s1,1
    800075cc:	00001097          	auipc	ra,0x1
    800075d0:	a9c080e7          	jalr	-1380(ra) # 80008068 <uartputc>
    800075d4:	03298063          	beq	s3,s2,800075f4 <consolewrite+0x74>
    800075d8:	00048613          	mv	a2,s1
    800075dc:	00100693          	li	a3,1
    800075e0:	000a0593          	mv	a1,s4
    800075e4:	fbf40513          	addi	a0,s0,-65
    800075e8:	00000097          	auipc	ra,0x0
    800075ec:	9e0080e7          	jalr	-1568(ra) # 80006fc8 <either_copyin>
    800075f0:	fd5518e3          	bne	a0,s5,800075c0 <consolewrite+0x40>
    800075f4:	04813083          	ld	ra,72(sp)
    800075f8:	04013403          	ld	s0,64(sp)
    800075fc:	03813483          	ld	s1,56(sp)
    80007600:	02813983          	ld	s3,40(sp)
    80007604:	02013a03          	ld	s4,32(sp)
    80007608:	01813a83          	ld	s5,24(sp)
    8000760c:	00090513          	mv	a0,s2
    80007610:	03013903          	ld	s2,48(sp)
    80007614:	05010113          	addi	sp,sp,80
    80007618:	00008067          	ret
    8000761c:	00000913          	li	s2,0
    80007620:	fd5ff06f          	j	800075f4 <consolewrite+0x74>

0000000080007624 <consoleread>:
    80007624:	f9010113          	addi	sp,sp,-112
    80007628:	06813023          	sd	s0,96(sp)
    8000762c:	04913c23          	sd	s1,88(sp)
    80007630:	05213823          	sd	s2,80(sp)
    80007634:	05313423          	sd	s3,72(sp)
    80007638:	05413023          	sd	s4,64(sp)
    8000763c:	03513c23          	sd	s5,56(sp)
    80007640:	03613823          	sd	s6,48(sp)
    80007644:	03713423          	sd	s7,40(sp)
    80007648:	03813023          	sd	s8,32(sp)
    8000764c:	06113423          	sd	ra,104(sp)
    80007650:	01913c23          	sd	s9,24(sp)
    80007654:	07010413          	addi	s0,sp,112
    80007658:	00060b93          	mv	s7,a2
    8000765c:	00050913          	mv	s2,a0
    80007660:	00058c13          	mv	s8,a1
    80007664:	00060b1b          	sext.w	s6,a2
    80007668:	00005497          	auipc	s1,0x5
    8000766c:	67048493          	addi	s1,s1,1648 # 8000ccd8 <cons>
    80007670:	00400993          	li	s3,4
    80007674:	fff00a13          	li	s4,-1
    80007678:	00a00a93          	li	s5,10
    8000767c:	05705e63          	blez	s7,800076d8 <consoleread+0xb4>
    80007680:	09c4a703          	lw	a4,156(s1)
    80007684:	0984a783          	lw	a5,152(s1)
    80007688:	0007071b          	sext.w	a4,a4
    8000768c:	08e78463          	beq	a5,a4,80007714 <consoleread+0xf0>
    80007690:	07f7f713          	andi	a4,a5,127
    80007694:	00e48733          	add	a4,s1,a4
    80007698:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000769c:	0017869b          	addiw	a3,a5,1
    800076a0:	08d4ac23          	sw	a3,152(s1)
    800076a4:	00070c9b          	sext.w	s9,a4
    800076a8:	0b370663          	beq	a4,s3,80007754 <consoleread+0x130>
    800076ac:	00100693          	li	a3,1
    800076b0:	f9f40613          	addi	a2,s0,-97
    800076b4:	000c0593          	mv	a1,s8
    800076b8:	00090513          	mv	a0,s2
    800076bc:	f8e40fa3          	sb	a4,-97(s0)
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	8bc080e7          	jalr	-1860(ra) # 80006f7c <either_copyout>
    800076c8:	01450863          	beq	a0,s4,800076d8 <consoleread+0xb4>
    800076cc:	001c0c13          	addi	s8,s8,1
    800076d0:	fffb8b9b          	addiw	s7,s7,-1
    800076d4:	fb5c94e3          	bne	s9,s5,8000767c <consoleread+0x58>
    800076d8:	000b851b          	sext.w	a0,s7
    800076dc:	06813083          	ld	ra,104(sp)
    800076e0:	06013403          	ld	s0,96(sp)
    800076e4:	05813483          	ld	s1,88(sp)
    800076e8:	05013903          	ld	s2,80(sp)
    800076ec:	04813983          	ld	s3,72(sp)
    800076f0:	04013a03          	ld	s4,64(sp)
    800076f4:	03813a83          	ld	s5,56(sp)
    800076f8:	02813b83          	ld	s7,40(sp)
    800076fc:	02013c03          	ld	s8,32(sp)
    80007700:	01813c83          	ld	s9,24(sp)
    80007704:	40ab053b          	subw	a0,s6,a0
    80007708:	03013b03          	ld	s6,48(sp)
    8000770c:	07010113          	addi	sp,sp,112
    80007710:	00008067          	ret
    80007714:	00001097          	auipc	ra,0x1
    80007718:	1d8080e7          	jalr	472(ra) # 800088ec <push_on>
    8000771c:	0984a703          	lw	a4,152(s1)
    80007720:	09c4a783          	lw	a5,156(s1)
    80007724:	0007879b          	sext.w	a5,a5
    80007728:	fef70ce3          	beq	a4,a5,80007720 <consoleread+0xfc>
    8000772c:	00001097          	auipc	ra,0x1
    80007730:	234080e7          	jalr	564(ra) # 80008960 <pop_on>
    80007734:	0984a783          	lw	a5,152(s1)
    80007738:	07f7f713          	andi	a4,a5,127
    8000773c:	00e48733          	add	a4,s1,a4
    80007740:	01874703          	lbu	a4,24(a4)
    80007744:	0017869b          	addiw	a3,a5,1
    80007748:	08d4ac23          	sw	a3,152(s1)
    8000774c:	00070c9b          	sext.w	s9,a4
    80007750:	f5371ee3          	bne	a4,s3,800076ac <consoleread+0x88>
    80007754:	000b851b          	sext.w	a0,s7
    80007758:	f96bf2e3          	bgeu	s7,s6,800076dc <consoleread+0xb8>
    8000775c:	08f4ac23          	sw	a5,152(s1)
    80007760:	f7dff06f          	j	800076dc <consoleread+0xb8>

0000000080007764 <consputc>:
    80007764:	10000793          	li	a5,256
    80007768:	00f50663          	beq	a0,a5,80007774 <consputc+0x10>
    8000776c:	00001317          	auipc	t1,0x1
    80007770:	9f430067          	jr	-1548(t1) # 80008160 <uartputc_sync>
    80007774:	ff010113          	addi	sp,sp,-16
    80007778:	00113423          	sd	ra,8(sp)
    8000777c:	00813023          	sd	s0,0(sp)
    80007780:	01010413          	addi	s0,sp,16
    80007784:	00800513          	li	a0,8
    80007788:	00001097          	auipc	ra,0x1
    8000778c:	9d8080e7          	jalr	-1576(ra) # 80008160 <uartputc_sync>
    80007790:	02000513          	li	a0,32
    80007794:	00001097          	auipc	ra,0x1
    80007798:	9cc080e7          	jalr	-1588(ra) # 80008160 <uartputc_sync>
    8000779c:	00013403          	ld	s0,0(sp)
    800077a0:	00813083          	ld	ra,8(sp)
    800077a4:	00800513          	li	a0,8
    800077a8:	01010113          	addi	sp,sp,16
    800077ac:	00001317          	auipc	t1,0x1
    800077b0:	9b430067          	jr	-1612(t1) # 80008160 <uartputc_sync>

00000000800077b4 <consoleintr>:
    800077b4:	fe010113          	addi	sp,sp,-32
    800077b8:	00813823          	sd	s0,16(sp)
    800077bc:	00913423          	sd	s1,8(sp)
    800077c0:	01213023          	sd	s2,0(sp)
    800077c4:	00113c23          	sd	ra,24(sp)
    800077c8:	02010413          	addi	s0,sp,32
    800077cc:	00005917          	auipc	s2,0x5
    800077d0:	50c90913          	addi	s2,s2,1292 # 8000ccd8 <cons>
    800077d4:	00050493          	mv	s1,a0
    800077d8:	00090513          	mv	a0,s2
    800077dc:	00001097          	auipc	ra,0x1
    800077e0:	e40080e7          	jalr	-448(ra) # 8000861c <acquire>
    800077e4:	02048c63          	beqz	s1,8000781c <consoleintr+0x68>
    800077e8:	0a092783          	lw	a5,160(s2)
    800077ec:	09892703          	lw	a4,152(s2)
    800077f0:	07f00693          	li	a3,127
    800077f4:	40e7873b          	subw	a4,a5,a4
    800077f8:	02e6e263          	bltu	a3,a4,8000781c <consoleintr+0x68>
    800077fc:	00d00713          	li	a4,13
    80007800:	04e48063          	beq	s1,a4,80007840 <consoleintr+0x8c>
    80007804:	07f7f713          	andi	a4,a5,127
    80007808:	00e90733          	add	a4,s2,a4
    8000780c:	0017879b          	addiw	a5,a5,1
    80007810:	0af92023          	sw	a5,160(s2)
    80007814:	00970c23          	sb	s1,24(a4)
    80007818:	08f92e23          	sw	a5,156(s2)
    8000781c:	01013403          	ld	s0,16(sp)
    80007820:	01813083          	ld	ra,24(sp)
    80007824:	00813483          	ld	s1,8(sp)
    80007828:	00013903          	ld	s2,0(sp)
    8000782c:	00005517          	auipc	a0,0x5
    80007830:	4ac50513          	addi	a0,a0,1196 # 8000ccd8 <cons>
    80007834:	02010113          	addi	sp,sp,32
    80007838:	00001317          	auipc	t1,0x1
    8000783c:	eb030067          	jr	-336(t1) # 800086e8 <release>
    80007840:	00a00493          	li	s1,10
    80007844:	fc1ff06f          	j	80007804 <consoleintr+0x50>

0000000080007848 <consoleinit>:
    80007848:	fe010113          	addi	sp,sp,-32
    8000784c:	00113c23          	sd	ra,24(sp)
    80007850:	00813823          	sd	s0,16(sp)
    80007854:	00913423          	sd	s1,8(sp)
    80007858:	02010413          	addi	s0,sp,32
    8000785c:	00005497          	auipc	s1,0x5
    80007860:	47c48493          	addi	s1,s1,1148 # 8000ccd8 <cons>
    80007864:	00048513          	mv	a0,s1
    80007868:	00002597          	auipc	a1,0x2
    8000786c:	e6858593          	addi	a1,a1,-408 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80007870:	00001097          	auipc	ra,0x1
    80007874:	d88080e7          	jalr	-632(ra) # 800085f8 <initlock>
    80007878:	00000097          	auipc	ra,0x0
    8000787c:	7ac080e7          	jalr	1964(ra) # 80008024 <uartinit>
    80007880:	01813083          	ld	ra,24(sp)
    80007884:	01013403          	ld	s0,16(sp)
    80007888:	00000797          	auipc	a5,0x0
    8000788c:	d9c78793          	addi	a5,a5,-612 # 80007624 <consoleread>
    80007890:	0af4bc23          	sd	a5,184(s1)
    80007894:	00000797          	auipc	a5,0x0
    80007898:	cec78793          	addi	a5,a5,-788 # 80007580 <consolewrite>
    8000789c:	0cf4b023          	sd	a5,192(s1)
    800078a0:	00813483          	ld	s1,8(sp)
    800078a4:	02010113          	addi	sp,sp,32
    800078a8:	00008067          	ret

00000000800078ac <console_read>:
    800078ac:	ff010113          	addi	sp,sp,-16
    800078b0:	00813423          	sd	s0,8(sp)
    800078b4:	01010413          	addi	s0,sp,16
    800078b8:	00813403          	ld	s0,8(sp)
    800078bc:	00005317          	auipc	t1,0x5
    800078c0:	4d433303          	ld	t1,1236(t1) # 8000cd90 <devsw+0x10>
    800078c4:	01010113          	addi	sp,sp,16
    800078c8:	00030067          	jr	t1

00000000800078cc <console_write>:
    800078cc:	ff010113          	addi	sp,sp,-16
    800078d0:	00813423          	sd	s0,8(sp)
    800078d4:	01010413          	addi	s0,sp,16
    800078d8:	00813403          	ld	s0,8(sp)
    800078dc:	00005317          	auipc	t1,0x5
    800078e0:	4bc33303          	ld	t1,1212(t1) # 8000cd98 <devsw+0x18>
    800078e4:	01010113          	addi	sp,sp,16
    800078e8:	00030067          	jr	t1

00000000800078ec <panic>:
    800078ec:	fe010113          	addi	sp,sp,-32
    800078f0:	00113c23          	sd	ra,24(sp)
    800078f4:	00813823          	sd	s0,16(sp)
    800078f8:	00913423          	sd	s1,8(sp)
    800078fc:	02010413          	addi	s0,sp,32
    80007900:	00050493          	mv	s1,a0
    80007904:	00002517          	auipc	a0,0x2
    80007908:	dd450513          	addi	a0,a0,-556 # 800096d8 <CONSOLE_STATUS+0x6c8>
    8000790c:	00005797          	auipc	a5,0x5
    80007910:	5207a623          	sw	zero,1324(a5) # 8000ce38 <pr+0x18>
    80007914:	00000097          	auipc	ra,0x0
    80007918:	034080e7          	jalr	52(ra) # 80007948 <__printf>
    8000791c:	00048513          	mv	a0,s1
    80007920:	00000097          	auipc	ra,0x0
    80007924:	028080e7          	jalr	40(ra) # 80007948 <__printf>
    80007928:	00002517          	auipc	a0,0x2
    8000792c:	b3050513          	addi	a0,a0,-1232 # 80009458 <CONSOLE_STATUS+0x448>
    80007930:	00000097          	auipc	ra,0x0
    80007934:	018080e7          	jalr	24(ra) # 80007948 <__printf>
    80007938:	00100793          	li	a5,1
    8000793c:	00004717          	auipc	a4,0x4
    80007940:	1ef72623          	sw	a5,492(a4) # 8000bb28 <panicked>
    80007944:	0000006f          	j	80007944 <panic+0x58>

0000000080007948 <__printf>:
    80007948:	f3010113          	addi	sp,sp,-208
    8000794c:	08813023          	sd	s0,128(sp)
    80007950:	07313423          	sd	s3,104(sp)
    80007954:	09010413          	addi	s0,sp,144
    80007958:	05813023          	sd	s8,64(sp)
    8000795c:	08113423          	sd	ra,136(sp)
    80007960:	06913c23          	sd	s1,120(sp)
    80007964:	07213823          	sd	s2,112(sp)
    80007968:	07413023          	sd	s4,96(sp)
    8000796c:	05513c23          	sd	s5,88(sp)
    80007970:	05613823          	sd	s6,80(sp)
    80007974:	05713423          	sd	s7,72(sp)
    80007978:	03913c23          	sd	s9,56(sp)
    8000797c:	03a13823          	sd	s10,48(sp)
    80007980:	03b13423          	sd	s11,40(sp)
    80007984:	00005317          	auipc	t1,0x5
    80007988:	49c30313          	addi	t1,t1,1180 # 8000ce20 <pr>
    8000798c:	01832c03          	lw	s8,24(t1)
    80007990:	00b43423          	sd	a1,8(s0)
    80007994:	00c43823          	sd	a2,16(s0)
    80007998:	00d43c23          	sd	a3,24(s0)
    8000799c:	02e43023          	sd	a4,32(s0)
    800079a0:	02f43423          	sd	a5,40(s0)
    800079a4:	03043823          	sd	a6,48(s0)
    800079a8:	03143c23          	sd	a7,56(s0)
    800079ac:	00050993          	mv	s3,a0
    800079b0:	4a0c1663          	bnez	s8,80007e5c <__printf+0x514>
    800079b4:	60098c63          	beqz	s3,80007fcc <__printf+0x684>
    800079b8:	0009c503          	lbu	a0,0(s3)
    800079bc:	00840793          	addi	a5,s0,8
    800079c0:	f6f43c23          	sd	a5,-136(s0)
    800079c4:	00000493          	li	s1,0
    800079c8:	22050063          	beqz	a0,80007be8 <__printf+0x2a0>
    800079cc:	00002a37          	lui	s4,0x2
    800079d0:	00018ab7          	lui	s5,0x18
    800079d4:	000f4b37          	lui	s6,0xf4
    800079d8:	00989bb7          	lui	s7,0x989
    800079dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800079e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800079e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800079e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800079ec:	00148c9b          	addiw	s9,s1,1
    800079f0:	02500793          	li	a5,37
    800079f4:	01998933          	add	s2,s3,s9
    800079f8:	38f51263          	bne	a0,a5,80007d7c <__printf+0x434>
    800079fc:	00094783          	lbu	a5,0(s2)
    80007a00:	00078c9b          	sext.w	s9,a5
    80007a04:	1e078263          	beqz	a5,80007be8 <__printf+0x2a0>
    80007a08:	0024849b          	addiw	s1,s1,2
    80007a0c:	07000713          	li	a4,112
    80007a10:	00998933          	add	s2,s3,s1
    80007a14:	38e78a63          	beq	a5,a4,80007da8 <__printf+0x460>
    80007a18:	20f76863          	bltu	a4,a5,80007c28 <__printf+0x2e0>
    80007a1c:	42a78863          	beq	a5,a0,80007e4c <__printf+0x504>
    80007a20:	06400713          	li	a4,100
    80007a24:	40e79663          	bne	a5,a4,80007e30 <__printf+0x4e8>
    80007a28:	f7843783          	ld	a5,-136(s0)
    80007a2c:	0007a603          	lw	a2,0(a5)
    80007a30:	00878793          	addi	a5,a5,8
    80007a34:	f6f43c23          	sd	a5,-136(s0)
    80007a38:	42064a63          	bltz	a2,80007e6c <__printf+0x524>
    80007a3c:	00a00713          	li	a4,10
    80007a40:	02e677bb          	remuw	a5,a2,a4
    80007a44:	00002d97          	auipc	s11,0x2
    80007a48:	cbcd8d93          	addi	s11,s11,-836 # 80009700 <digits>
    80007a4c:	00900593          	li	a1,9
    80007a50:	0006051b          	sext.w	a0,a2
    80007a54:	00000c93          	li	s9,0
    80007a58:	02079793          	slli	a5,a5,0x20
    80007a5c:	0207d793          	srli	a5,a5,0x20
    80007a60:	00fd87b3          	add	a5,s11,a5
    80007a64:	0007c783          	lbu	a5,0(a5)
    80007a68:	02e656bb          	divuw	a3,a2,a4
    80007a6c:	f8f40023          	sb	a5,-128(s0)
    80007a70:	14c5d863          	bge	a1,a2,80007bc0 <__printf+0x278>
    80007a74:	06300593          	li	a1,99
    80007a78:	00100c93          	li	s9,1
    80007a7c:	02e6f7bb          	remuw	a5,a3,a4
    80007a80:	02079793          	slli	a5,a5,0x20
    80007a84:	0207d793          	srli	a5,a5,0x20
    80007a88:	00fd87b3          	add	a5,s11,a5
    80007a8c:	0007c783          	lbu	a5,0(a5)
    80007a90:	02e6d73b          	divuw	a4,a3,a4
    80007a94:	f8f400a3          	sb	a5,-127(s0)
    80007a98:	12a5f463          	bgeu	a1,a0,80007bc0 <__printf+0x278>
    80007a9c:	00a00693          	li	a3,10
    80007aa0:	00900593          	li	a1,9
    80007aa4:	02d777bb          	remuw	a5,a4,a3
    80007aa8:	02079793          	slli	a5,a5,0x20
    80007aac:	0207d793          	srli	a5,a5,0x20
    80007ab0:	00fd87b3          	add	a5,s11,a5
    80007ab4:	0007c503          	lbu	a0,0(a5)
    80007ab8:	02d757bb          	divuw	a5,a4,a3
    80007abc:	f8a40123          	sb	a0,-126(s0)
    80007ac0:	48e5f263          	bgeu	a1,a4,80007f44 <__printf+0x5fc>
    80007ac4:	06300513          	li	a0,99
    80007ac8:	02d7f5bb          	remuw	a1,a5,a3
    80007acc:	02059593          	slli	a1,a1,0x20
    80007ad0:	0205d593          	srli	a1,a1,0x20
    80007ad4:	00bd85b3          	add	a1,s11,a1
    80007ad8:	0005c583          	lbu	a1,0(a1)
    80007adc:	02d7d7bb          	divuw	a5,a5,a3
    80007ae0:	f8b401a3          	sb	a1,-125(s0)
    80007ae4:	48e57263          	bgeu	a0,a4,80007f68 <__printf+0x620>
    80007ae8:	3e700513          	li	a0,999
    80007aec:	02d7f5bb          	remuw	a1,a5,a3
    80007af0:	02059593          	slli	a1,a1,0x20
    80007af4:	0205d593          	srli	a1,a1,0x20
    80007af8:	00bd85b3          	add	a1,s11,a1
    80007afc:	0005c583          	lbu	a1,0(a1)
    80007b00:	02d7d7bb          	divuw	a5,a5,a3
    80007b04:	f8b40223          	sb	a1,-124(s0)
    80007b08:	46e57663          	bgeu	a0,a4,80007f74 <__printf+0x62c>
    80007b0c:	02d7f5bb          	remuw	a1,a5,a3
    80007b10:	02059593          	slli	a1,a1,0x20
    80007b14:	0205d593          	srli	a1,a1,0x20
    80007b18:	00bd85b3          	add	a1,s11,a1
    80007b1c:	0005c583          	lbu	a1,0(a1)
    80007b20:	02d7d7bb          	divuw	a5,a5,a3
    80007b24:	f8b402a3          	sb	a1,-123(s0)
    80007b28:	46ea7863          	bgeu	s4,a4,80007f98 <__printf+0x650>
    80007b2c:	02d7f5bb          	remuw	a1,a5,a3
    80007b30:	02059593          	slli	a1,a1,0x20
    80007b34:	0205d593          	srli	a1,a1,0x20
    80007b38:	00bd85b3          	add	a1,s11,a1
    80007b3c:	0005c583          	lbu	a1,0(a1)
    80007b40:	02d7d7bb          	divuw	a5,a5,a3
    80007b44:	f8b40323          	sb	a1,-122(s0)
    80007b48:	3eeaf863          	bgeu	s5,a4,80007f38 <__printf+0x5f0>
    80007b4c:	02d7f5bb          	remuw	a1,a5,a3
    80007b50:	02059593          	slli	a1,a1,0x20
    80007b54:	0205d593          	srli	a1,a1,0x20
    80007b58:	00bd85b3          	add	a1,s11,a1
    80007b5c:	0005c583          	lbu	a1,0(a1)
    80007b60:	02d7d7bb          	divuw	a5,a5,a3
    80007b64:	f8b403a3          	sb	a1,-121(s0)
    80007b68:	42eb7e63          	bgeu	s6,a4,80007fa4 <__printf+0x65c>
    80007b6c:	02d7f5bb          	remuw	a1,a5,a3
    80007b70:	02059593          	slli	a1,a1,0x20
    80007b74:	0205d593          	srli	a1,a1,0x20
    80007b78:	00bd85b3          	add	a1,s11,a1
    80007b7c:	0005c583          	lbu	a1,0(a1)
    80007b80:	02d7d7bb          	divuw	a5,a5,a3
    80007b84:	f8b40423          	sb	a1,-120(s0)
    80007b88:	42ebfc63          	bgeu	s7,a4,80007fc0 <__printf+0x678>
    80007b8c:	02079793          	slli	a5,a5,0x20
    80007b90:	0207d793          	srli	a5,a5,0x20
    80007b94:	00fd8db3          	add	s11,s11,a5
    80007b98:	000dc703          	lbu	a4,0(s11)
    80007b9c:	00a00793          	li	a5,10
    80007ba0:	00900c93          	li	s9,9
    80007ba4:	f8e404a3          	sb	a4,-119(s0)
    80007ba8:	00065c63          	bgez	a2,80007bc0 <__printf+0x278>
    80007bac:	f9040713          	addi	a4,s0,-112
    80007bb0:	00f70733          	add	a4,a4,a5
    80007bb4:	02d00693          	li	a3,45
    80007bb8:	fed70823          	sb	a3,-16(a4)
    80007bbc:	00078c93          	mv	s9,a5
    80007bc0:	f8040793          	addi	a5,s0,-128
    80007bc4:	01978cb3          	add	s9,a5,s9
    80007bc8:	f7f40d13          	addi	s10,s0,-129
    80007bcc:	000cc503          	lbu	a0,0(s9)
    80007bd0:	fffc8c93          	addi	s9,s9,-1
    80007bd4:	00000097          	auipc	ra,0x0
    80007bd8:	b90080e7          	jalr	-1136(ra) # 80007764 <consputc>
    80007bdc:	ffac98e3          	bne	s9,s10,80007bcc <__printf+0x284>
    80007be0:	00094503          	lbu	a0,0(s2)
    80007be4:	e00514e3          	bnez	a0,800079ec <__printf+0xa4>
    80007be8:	1a0c1663          	bnez	s8,80007d94 <__printf+0x44c>
    80007bec:	08813083          	ld	ra,136(sp)
    80007bf0:	08013403          	ld	s0,128(sp)
    80007bf4:	07813483          	ld	s1,120(sp)
    80007bf8:	07013903          	ld	s2,112(sp)
    80007bfc:	06813983          	ld	s3,104(sp)
    80007c00:	06013a03          	ld	s4,96(sp)
    80007c04:	05813a83          	ld	s5,88(sp)
    80007c08:	05013b03          	ld	s6,80(sp)
    80007c0c:	04813b83          	ld	s7,72(sp)
    80007c10:	04013c03          	ld	s8,64(sp)
    80007c14:	03813c83          	ld	s9,56(sp)
    80007c18:	03013d03          	ld	s10,48(sp)
    80007c1c:	02813d83          	ld	s11,40(sp)
    80007c20:	0d010113          	addi	sp,sp,208
    80007c24:	00008067          	ret
    80007c28:	07300713          	li	a4,115
    80007c2c:	1ce78a63          	beq	a5,a4,80007e00 <__printf+0x4b8>
    80007c30:	07800713          	li	a4,120
    80007c34:	1ee79e63          	bne	a5,a4,80007e30 <__printf+0x4e8>
    80007c38:	f7843783          	ld	a5,-136(s0)
    80007c3c:	0007a703          	lw	a4,0(a5)
    80007c40:	00878793          	addi	a5,a5,8
    80007c44:	f6f43c23          	sd	a5,-136(s0)
    80007c48:	28074263          	bltz	a4,80007ecc <__printf+0x584>
    80007c4c:	00002d97          	auipc	s11,0x2
    80007c50:	ab4d8d93          	addi	s11,s11,-1356 # 80009700 <digits>
    80007c54:	00f77793          	andi	a5,a4,15
    80007c58:	00fd87b3          	add	a5,s11,a5
    80007c5c:	0007c683          	lbu	a3,0(a5)
    80007c60:	00f00613          	li	a2,15
    80007c64:	0007079b          	sext.w	a5,a4
    80007c68:	f8d40023          	sb	a3,-128(s0)
    80007c6c:	0047559b          	srliw	a1,a4,0x4
    80007c70:	0047569b          	srliw	a3,a4,0x4
    80007c74:	00000c93          	li	s9,0
    80007c78:	0ee65063          	bge	a2,a4,80007d58 <__printf+0x410>
    80007c7c:	00f6f693          	andi	a3,a3,15
    80007c80:	00dd86b3          	add	a3,s11,a3
    80007c84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c88:	0087d79b          	srliw	a5,a5,0x8
    80007c8c:	00100c93          	li	s9,1
    80007c90:	f8d400a3          	sb	a3,-127(s0)
    80007c94:	0cb67263          	bgeu	a2,a1,80007d58 <__printf+0x410>
    80007c98:	00f7f693          	andi	a3,a5,15
    80007c9c:	00dd86b3          	add	a3,s11,a3
    80007ca0:	0006c583          	lbu	a1,0(a3)
    80007ca4:	00f00613          	li	a2,15
    80007ca8:	0047d69b          	srliw	a3,a5,0x4
    80007cac:	f8b40123          	sb	a1,-126(s0)
    80007cb0:	0047d593          	srli	a1,a5,0x4
    80007cb4:	28f67e63          	bgeu	a2,a5,80007f50 <__printf+0x608>
    80007cb8:	00f6f693          	andi	a3,a3,15
    80007cbc:	00dd86b3          	add	a3,s11,a3
    80007cc0:	0006c503          	lbu	a0,0(a3)
    80007cc4:	0087d813          	srli	a6,a5,0x8
    80007cc8:	0087d69b          	srliw	a3,a5,0x8
    80007ccc:	f8a401a3          	sb	a0,-125(s0)
    80007cd0:	28b67663          	bgeu	a2,a1,80007f5c <__printf+0x614>
    80007cd4:	00f6f693          	andi	a3,a3,15
    80007cd8:	00dd86b3          	add	a3,s11,a3
    80007cdc:	0006c583          	lbu	a1,0(a3)
    80007ce0:	00c7d513          	srli	a0,a5,0xc
    80007ce4:	00c7d69b          	srliw	a3,a5,0xc
    80007ce8:	f8b40223          	sb	a1,-124(s0)
    80007cec:	29067a63          	bgeu	a2,a6,80007f80 <__printf+0x638>
    80007cf0:	00f6f693          	andi	a3,a3,15
    80007cf4:	00dd86b3          	add	a3,s11,a3
    80007cf8:	0006c583          	lbu	a1,0(a3)
    80007cfc:	0107d813          	srli	a6,a5,0x10
    80007d00:	0107d69b          	srliw	a3,a5,0x10
    80007d04:	f8b402a3          	sb	a1,-123(s0)
    80007d08:	28a67263          	bgeu	a2,a0,80007f8c <__printf+0x644>
    80007d0c:	00f6f693          	andi	a3,a3,15
    80007d10:	00dd86b3          	add	a3,s11,a3
    80007d14:	0006c683          	lbu	a3,0(a3)
    80007d18:	0147d79b          	srliw	a5,a5,0x14
    80007d1c:	f8d40323          	sb	a3,-122(s0)
    80007d20:	21067663          	bgeu	a2,a6,80007f2c <__printf+0x5e4>
    80007d24:	02079793          	slli	a5,a5,0x20
    80007d28:	0207d793          	srli	a5,a5,0x20
    80007d2c:	00fd8db3          	add	s11,s11,a5
    80007d30:	000dc683          	lbu	a3,0(s11)
    80007d34:	00800793          	li	a5,8
    80007d38:	00700c93          	li	s9,7
    80007d3c:	f8d403a3          	sb	a3,-121(s0)
    80007d40:	00075c63          	bgez	a4,80007d58 <__printf+0x410>
    80007d44:	f9040713          	addi	a4,s0,-112
    80007d48:	00f70733          	add	a4,a4,a5
    80007d4c:	02d00693          	li	a3,45
    80007d50:	fed70823          	sb	a3,-16(a4)
    80007d54:	00078c93          	mv	s9,a5
    80007d58:	f8040793          	addi	a5,s0,-128
    80007d5c:	01978cb3          	add	s9,a5,s9
    80007d60:	f7f40d13          	addi	s10,s0,-129
    80007d64:	000cc503          	lbu	a0,0(s9)
    80007d68:	fffc8c93          	addi	s9,s9,-1
    80007d6c:	00000097          	auipc	ra,0x0
    80007d70:	9f8080e7          	jalr	-1544(ra) # 80007764 <consputc>
    80007d74:	ff9d18e3          	bne	s10,s9,80007d64 <__printf+0x41c>
    80007d78:	0100006f          	j	80007d88 <__printf+0x440>
    80007d7c:	00000097          	auipc	ra,0x0
    80007d80:	9e8080e7          	jalr	-1560(ra) # 80007764 <consputc>
    80007d84:	000c8493          	mv	s1,s9
    80007d88:	00094503          	lbu	a0,0(s2)
    80007d8c:	c60510e3          	bnez	a0,800079ec <__printf+0xa4>
    80007d90:	e40c0ee3          	beqz	s8,80007bec <__printf+0x2a4>
    80007d94:	00005517          	auipc	a0,0x5
    80007d98:	08c50513          	addi	a0,a0,140 # 8000ce20 <pr>
    80007d9c:	00001097          	auipc	ra,0x1
    80007da0:	94c080e7          	jalr	-1716(ra) # 800086e8 <release>
    80007da4:	e49ff06f          	j	80007bec <__printf+0x2a4>
    80007da8:	f7843783          	ld	a5,-136(s0)
    80007dac:	03000513          	li	a0,48
    80007db0:	01000d13          	li	s10,16
    80007db4:	00878713          	addi	a4,a5,8
    80007db8:	0007bc83          	ld	s9,0(a5)
    80007dbc:	f6e43c23          	sd	a4,-136(s0)
    80007dc0:	00000097          	auipc	ra,0x0
    80007dc4:	9a4080e7          	jalr	-1628(ra) # 80007764 <consputc>
    80007dc8:	07800513          	li	a0,120
    80007dcc:	00000097          	auipc	ra,0x0
    80007dd0:	998080e7          	jalr	-1640(ra) # 80007764 <consputc>
    80007dd4:	00002d97          	auipc	s11,0x2
    80007dd8:	92cd8d93          	addi	s11,s11,-1748 # 80009700 <digits>
    80007ddc:	03ccd793          	srli	a5,s9,0x3c
    80007de0:	00fd87b3          	add	a5,s11,a5
    80007de4:	0007c503          	lbu	a0,0(a5)
    80007de8:	fffd0d1b          	addiw	s10,s10,-1
    80007dec:	004c9c93          	slli	s9,s9,0x4
    80007df0:	00000097          	auipc	ra,0x0
    80007df4:	974080e7          	jalr	-1676(ra) # 80007764 <consputc>
    80007df8:	fe0d12e3          	bnez	s10,80007ddc <__printf+0x494>
    80007dfc:	f8dff06f          	j	80007d88 <__printf+0x440>
    80007e00:	f7843783          	ld	a5,-136(s0)
    80007e04:	0007bc83          	ld	s9,0(a5)
    80007e08:	00878793          	addi	a5,a5,8
    80007e0c:	f6f43c23          	sd	a5,-136(s0)
    80007e10:	000c9a63          	bnez	s9,80007e24 <__printf+0x4dc>
    80007e14:	1080006f          	j	80007f1c <__printf+0x5d4>
    80007e18:	001c8c93          	addi	s9,s9,1
    80007e1c:	00000097          	auipc	ra,0x0
    80007e20:	948080e7          	jalr	-1720(ra) # 80007764 <consputc>
    80007e24:	000cc503          	lbu	a0,0(s9)
    80007e28:	fe0518e3          	bnez	a0,80007e18 <__printf+0x4d0>
    80007e2c:	f5dff06f          	j	80007d88 <__printf+0x440>
    80007e30:	02500513          	li	a0,37
    80007e34:	00000097          	auipc	ra,0x0
    80007e38:	930080e7          	jalr	-1744(ra) # 80007764 <consputc>
    80007e3c:	000c8513          	mv	a0,s9
    80007e40:	00000097          	auipc	ra,0x0
    80007e44:	924080e7          	jalr	-1756(ra) # 80007764 <consputc>
    80007e48:	f41ff06f          	j	80007d88 <__printf+0x440>
    80007e4c:	02500513          	li	a0,37
    80007e50:	00000097          	auipc	ra,0x0
    80007e54:	914080e7          	jalr	-1772(ra) # 80007764 <consputc>
    80007e58:	f31ff06f          	j	80007d88 <__printf+0x440>
    80007e5c:	00030513          	mv	a0,t1
    80007e60:	00000097          	auipc	ra,0x0
    80007e64:	7bc080e7          	jalr	1980(ra) # 8000861c <acquire>
    80007e68:	b4dff06f          	j	800079b4 <__printf+0x6c>
    80007e6c:	40c0053b          	negw	a0,a2
    80007e70:	00a00713          	li	a4,10
    80007e74:	02e576bb          	remuw	a3,a0,a4
    80007e78:	00002d97          	auipc	s11,0x2
    80007e7c:	888d8d93          	addi	s11,s11,-1912 # 80009700 <digits>
    80007e80:	ff700593          	li	a1,-9
    80007e84:	02069693          	slli	a3,a3,0x20
    80007e88:	0206d693          	srli	a3,a3,0x20
    80007e8c:	00dd86b3          	add	a3,s11,a3
    80007e90:	0006c683          	lbu	a3,0(a3)
    80007e94:	02e557bb          	divuw	a5,a0,a4
    80007e98:	f8d40023          	sb	a3,-128(s0)
    80007e9c:	10b65e63          	bge	a2,a1,80007fb8 <__printf+0x670>
    80007ea0:	06300593          	li	a1,99
    80007ea4:	02e7f6bb          	remuw	a3,a5,a4
    80007ea8:	02069693          	slli	a3,a3,0x20
    80007eac:	0206d693          	srli	a3,a3,0x20
    80007eb0:	00dd86b3          	add	a3,s11,a3
    80007eb4:	0006c683          	lbu	a3,0(a3)
    80007eb8:	02e7d73b          	divuw	a4,a5,a4
    80007ebc:	00200793          	li	a5,2
    80007ec0:	f8d400a3          	sb	a3,-127(s0)
    80007ec4:	bca5ece3          	bltu	a1,a0,80007a9c <__printf+0x154>
    80007ec8:	ce5ff06f          	j	80007bac <__printf+0x264>
    80007ecc:	40e007bb          	negw	a5,a4
    80007ed0:	00002d97          	auipc	s11,0x2
    80007ed4:	830d8d93          	addi	s11,s11,-2000 # 80009700 <digits>
    80007ed8:	00f7f693          	andi	a3,a5,15
    80007edc:	00dd86b3          	add	a3,s11,a3
    80007ee0:	0006c583          	lbu	a1,0(a3)
    80007ee4:	ff100613          	li	a2,-15
    80007ee8:	0047d69b          	srliw	a3,a5,0x4
    80007eec:	f8b40023          	sb	a1,-128(s0)
    80007ef0:	0047d59b          	srliw	a1,a5,0x4
    80007ef4:	0ac75e63          	bge	a4,a2,80007fb0 <__printf+0x668>
    80007ef8:	00f6f693          	andi	a3,a3,15
    80007efc:	00dd86b3          	add	a3,s11,a3
    80007f00:	0006c603          	lbu	a2,0(a3)
    80007f04:	00f00693          	li	a3,15
    80007f08:	0087d79b          	srliw	a5,a5,0x8
    80007f0c:	f8c400a3          	sb	a2,-127(s0)
    80007f10:	d8b6e4e3          	bltu	a3,a1,80007c98 <__printf+0x350>
    80007f14:	00200793          	li	a5,2
    80007f18:	e2dff06f          	j	80007d44 <__printf+0x3fc>
    80007f1c:	00001c97          	auipc	s9,0x1
    80007f20:	7c4c8c93          	addi	s9,s9,1988 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80007f24:	02800513          	li	a0,40
    80007f28:	ef1ff06f          	j	80007e18 <__printf+0x4d0>
    80007f2c:	00700793          	li	a5,7
    80007f30:	00600c93          	li	s9,6
    80007f34:	e0dff06f          	j	80007d40 <__printf+0x3f8>
    80007f38:	00700793          	li	a5,7
    80007f3c:	00600c93          	li	s9,6
    80007f40:	c69ff06f          	j	80007ba8 <__printf+0x260>
    80007f44:	00300793          	li	a5,3
    80007f48:	00200c93          	li	s9,2
    80007f4c:	c5dff06f          	j	80007ba8 <__printf+0x260>
    80007f50:	00300793          	li	a5,3
    80007f54:	00200c93          	li	s9,2
    80007f58:	de9ff06f          	j	80007d40 <__printf+0x3f8>
    80007f5c:	00400793          	li	a5,4
    80007f60:	00300c93          	li	s9,3
    80007f64:	dddff06f          	j	80007d40 <__printf+0x3f8>
    80007f68:	00400793          	li	a5,4
    80007f6c:	00300c93          	li	s9,3
    80007f70:	c39ff06f          	j	80007ba8 <__printf+0x260>
    80007f74:	00500793          	li	a5,5
    80007f78:	00400c93          	li	s9,4
    80007f7c:	c2dff06f          	j	80007ba8 <__printf+0x260>
    80007f80:	00500793          	li	a5,5
    80007f84:	00400c93          	li	s9,4
    80007f88:	db9ff06f          	j	80007d40 <__printf+0x3f8>
    80007f8c:	00600793          	li	a5,6
    80007f90:	00500c93          	li	s9,5
    80007f94:	dadff06f          	j	80007d40 <__printf+0x3f8>
    80007f98:	00600793          	li	a5,6
    80007f9c:	00500c93          	li	s9,5
    80007fa0:	c09ff06f          	j	80007ba8 <__printf+0x260>
    80007fa4:	00800793          	li	a5,8
    80007fa8:	00700c93          	li	s9,7
    80007fac:	bfdff06f          	j	80007ba8 <__printf+0x260>
    80007fb0:	00100793          	li	a5,1
    80007fb4:	d91ff06f          	j	80007d44 <__printf+0x3fc>
    80007fb8:	00100793          	li	a5,1
    80007fbc:	bf1ff06f          	j	80007bac <__printf+0x264>
    80007fc0:	00900793          	li	a5,9
    80007fc4:	00800c93          	li	s9,8
    80007fc8:	be1ff06f          	j	80007ba8 <__printf+0x260>
    80007fcc:	00001517          	auipc	a0,0x1
    80007fd0:	71c50513          	addi	a0,a0,1820 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007fd4:	00000097          	auipc	ra,0x0
    80007fd8:	918080e7          	jalr	-1768(ra) # 800078ec <panic>

0000000080007fdc <printfinit>:
    80007fdc:	fe010113          	addi	sp,sp,-32
    80007fe0:	00813823          	sd	s0,16(sp)
    80007fe4:	00913423          	sd	s1,8(sp)
    80007fe8:	00113c23          	sd	ra,24(sp)
    80007fec:	02010413          	addi	s0,sp,32
    80007ff0:	00005497          	auipc	s1,0x5
    80007ff4:	e3048493          	addi	s1,s1,-464 # 8000ce20 <pr>
    80007ff8:	00048513          	mv	a0,s1
    80007ffc:	00001597          	auipc	a1,0x1
    80008000:	6fc58593          	addi	a1,a1,1788 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80008004:	00000097          	auipc	ra,0x0
    80008008:	5f4080e7          	jalr	1524(ra) # 800085f8 <initlock>
    8000800c:	01813083          	ld	ra,24(sp)
    80008010:	01013403          	ld	s0,16(sp)
    80008014:	0004ac23          	sw	zero,24(s1)
    80008018:	00813483          	ld	s1,8(sp)
    8000801c:	02010113          	addi	sp,sp,32
    80008020:	00008067          	ret

0000000080008024 <uartinit>:
    80008024:	ff010113          	addi	sp,sp,-16
    80008028:	00813423          	sd	s0,8(sp)
    8000802c:	01010413          	addi	s0,sp,16
    80008030:	100007b7          	lui	a5,0x10000
    80008034:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008038:	f8000713          	li	a4,-128
    8000803c:	00e781a3          	sb	a4,3(a5)
    80008040:	00300713          	li	a4,3
    80008044:	00e78023          	sb	a4,0(a5)
    80008048:	000780a3          	sb	zero,1(a5)
    8000804c:	00e781a3          	sb	a4,3(a5)
    80008050:	00700693          	li	a3,7
    80008054:	00d78123          	sb	a3,2(a5)
    80008058:	00e780a3          	sb	a4,1(a5)
    8000805c:	00813403          	ld	s0,8(sp)
    80008060:	01010113          	addi	sp,sp,16
    80008064:	00008067          	ret

0000000080008068 <uartputc>:
    80008068:	00004797          	auipc	a5,0x4
    8000806c:	ac07a783          	lw	a5,-1344(a5) # 8000bb28 <panicked>
    80008070:	00078463          	beqz	a5,80008078 <uartputc+0x10>
    80008074:	0000006f          	j	80008074 <uartputc+0xc>
    80008078:	fd010113          	addi	sp,sp,-48
    8000807c:	02813023          	sd	s0,32(sp)
    80008080:	00913c23          	sd	s1,24(sp)
    80008084:	01213823          	sd	s2,16(sp)
    80008088:	01313423          	sd	s3,8(sp)
    8000808c:	02113423          	sd	ra,40(sp)
    80008090:	03010413          	addi	s0,sp,48
    80008094:	00004917          	auipc	s2,0x4
    80008098:	a9c90913          	addi	s2,s2,-1380 # 8000bb30 <uart_tx_r>
    8000809c:	00093783          	ld	a5,0(s2)
    800080a0:	00004497          	auipc	s1,0x4
    800080a4:	a9848493          	addi	s1,s1,-1384 # 8000bb38 <uart_tx_w>
    800080a8:	0004b703          	ld	a4,0(s1)
    800080ac:	02078693          	addi	a3,a5,32
    800080b0:	00050993          	mv	s3,a0
    800080b4:	02e69c63          	bne	a3,a4,800080ec <uartputc+0x84>
    800080b8:	00001097          	auipc	ra,0x1
    800080bc:	834080e7          	jalr	-1996(ra) # 800088ec <push_on>
    800080c0:	00093783          	ld	a5,0(s2)
    800080c4:	0004b703          	ld	a4,0(s1)
    800080c8:	02078793          	addi	a5,a5,32
    800080cc:	00e79463          	bne	a5,a4,800080d4 <uartputc+0x6c>
    800080d0:	0000006f          	j	800080d0 <uartputc+0x68>
    800080d4:	00001097          	auipc	ra,0x1
    800080d8:	88c080e7          	jalr	-1908(ra) # 80008960 <pop_on>
    800080dc:	00093783          	ld	a5,0(s2)
    800080e0:	0004b703          	ld	a4,0(s1)
    800080e4:	02078693          	addi	a3,a5,32
    800080e8:	fce688e3          	beq	a3,a4,800080b8 <uartputc+0x50>
    800080ec:	01f77693          	andi	a3,a4,31
    800080f0:	00005597          	auipc	a1,0x5
    800080f4:	d5058593          	addi	a1,a1,-688 # 8000ce40 <uart_tx_buf>
    800080f8:	00d586b3          	add	a3,a1,a3
    800080fc:	00170713          	addi	a4,a4,1
    80008100:	01368023          	sb	s3,0(a3)
    80008104:	00e4b023          	sd	a4,0(s1)
    80008108:	10000637          	lui	a2,0x10000
    8000810c:	02f71063          	bne	a4,a5,8000812c <uartputc+0xc4>
    80008110:	0340006f          	j	80008144 <uartputc+0xdc>
    80008114:	00074703          	lbu	a4,0(a4)
    80008118:	00f93023          	sd	a5,0(s2)
    8000811c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008120:	00093783          	ld	a5,0(s2)
    80008124:	0004b703          	ld	a4,0(s1)
    80008128:	00f70e63          	beq	a4,a5,80008144 <uartputc+0xdc>
    8000812c:	00564683          	lbu	a3,5(a2)
    80008130:	01f7f713          	andi	a4,a5,31
    80008134:	00e58733          	add	a4,a1,a4
    80008138:	0206f693          	andi	a3,a3,32
    8000813c:	00178793          	addi	a5,a5,1
    80008140:	fc069ae3          	bnez	a3,80008114 <uartputc+0xac>
    80008144:	02813083          	ld	ra,40(sp)
    80008148:	02013403          	ld	s0,32(sp)
    8000814c:	01813483          	ld	s1,24(sp)
    80008150:	01013903          	ld	s2,16(sp)
    80008154:	00813983          	ld	s3,8(sp)
    80008158:	03010113          	addi	sp,sp,48
    8000815c:	00008067          	ret

0000000080008160 <uartputc_sync>:
    80008160:	ff010113          	addi	sp,sp,-16
    80008164:	00813423          	sd	s0,8(sp)
    80008168:	01010413          	addi	s0,sp,16
    8000816c:	00004717          	auipc	a4,0x4
    80008170:	9bc72703          	lw	a4,-1604(a4) # 8000bb28 <panicked>
    80008174:	02071663          	bnez	a4,800081a0 <uartputc_sync+0x40>
    80008178:	00050793          	mv	a5,a0
    8000817c:	100006b7          	lui	a3,0x10000
    80008180:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008184:	02077713          	andi	a4,a4,32
    80008188:	fe070ce3          	beqz	a4,80008180 <uartputc_sync+0x20>
    8000818c:	0ff7f793          	andi	a5,a5,255
    80008190:	00f68023          	sb	a5,0(a3)
    80008194:	00813403          	ld	s0,8(sp)
    80008198:	01010113          	addi	sp,sp,16
    8000819c:	00008067          	ret
    800081a0:	0000006f          	j	800081a0 <uartputc_sync+0x40>

00000000800081a4 <uartstart>:
    800081a4:	ff010113          	addi	sp,sp,-16
    800081a8:	00813423          	sd	s0,8(sp)
    800081ac:	01010413          	addi	s0,sp,16
    800081b0:	00004617          	auipc	a2,0x4
    800081b4:	98060613          	addi	a2,a2,-1664 # 8000bb30 <uart_tx_r>
    800081b8:	00004517          	auipc	a0,0x4
    800081bc:	98050513          	addi	a0,a0,-1664 # 8000bb38 <uart_tx_w>
    800081c0:	00063783          	ld	a5,0(a2)
    800081c4:	00053703          	ld	a4,0(a0)
    800081c8:	04f70263          	beq	a4,a5,8000820c <uartstart+0x68>
    800081cc:	100005b7          	lui	a1,0x10000
    800081d0:	00005817          	auipc	a6,0x5
    800081d4:	c7080813          	addi	a6,a6,-912 # 8000ce40 <uart_tx_buf>
    800081d8:	01c0006f          	j	800081f4 <uartstart+0x50>
    800081dc:	0006c703          	lbu	a4,0(a3)
    800081e0:	00f63023          	sd	a5,0(a2)
    800081e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081e8:	00063783          	ld	a5,0(a2)
    800081ec:	00053703          	ld	a4,0(a0)
    800081f0:	00f70e63          	beq	a4,a5,8000820c <uartstart+0x68>
    800081f4:	01f7f713          	andi	a4,a5,31
    800081f8:	00e806b3          	add	a3,a6,a4
    800081fc:	0055c703          	lbu	a4,5(a1)
    80008200:	00178793          	addi	a5,a5,1
    80008204:	02077713          	andi	a4,a4,32
    80008208:	fc071ae3          	bnez	a4,800081dc <uartstart+0x38>
    8000820c:	00813403          	ld	s0,8(sp)
    80008210:	01010113          	addi	sp,sp,16
    80008214:	00008067          	ret

0000000080008218 <uartgetc>:
    80008218:	ff010113          	addi	sp,sp,-16
    8000821c:	00813423          	sd	s0,8(sp)
    80008220:	01010413          	addi	s0,sp,16
    80008224:	10000737          	lui	a4,0x10000
    80008228:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000822c:	0017f793          	andi	a5,a5,1
    80008230:	00078c63          	beqz	a5,80008248 <uartgetc+0x30>
    80008234:	00074503          	lbu	a0,0(a4)
    80008238:	0ff57513          	andi	a0,a0,255
    8000823c:	00813403          	ld	s0,8(sp)
    80008240:	01010113          	addi	sp,sp,16
    80008244:	00008067          	ret
    80008248:	fff00513          	li	a0,-1
    8000824c:	ff1ff06f          	j	8000823c <uartgetc+0x24>

0000000080008250 <uartintr>:
    80008250:	100007b7          	lui	a5,0x10000
    80008254:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008258:	0017f793          	andi	a5,a5,1
    8000825c:	0a078463          	beqz	a5,80008304 <uartintr+0xb4>
    80008260:	fe010113          	addi	sp,sp,-32
    80008264:	00813823          	sd	s0,16(sp)
    80008268:	00913423          	sd	s1,8(sp)
    8000826c:	00113c23          	sd	ra,24(sp)
    80008270:	02010413          	addi	s0,sp,32
    80008274:	100004b7          	lui	s1,0x10000
    80008278:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000827c:	0ff57513          	andi	a0,a0,255
    80008280:	fffff097          	auipc	ra,0xfffff
    80008284:	534080e7          	jalr	1332(ra) # 800077b4 <consoleintr>
    80008288:	0054c783          	lbu	a5,5(s1)
    8000828c:	0017f793          	andi	a5,a5,1
    80008290:	fe0794e3          	bnez	a5,80008278 <uartintr+0x28>
    80008294:	00004617          	auipc	a2,0x4
    80008298:	89c60613          	addi	a2,a2,-1892 # 8000bb30 <uart_tx_r>
    8000829c:	00004517          	auipc	a0,0x4
    800082a0:	89c50513          	addi	a0,a0,-1892 # 8000bb38 <uart_tx_w>
    800082a4:	00063783          	ld	a5,0(a2)
    800082a8:	00053703          	ld	a4,0(a0)
    800082ac:	04f70263          	beq	a4,a5,800082f0 <uartintr+0xa0>
    800082b0:	100005b7          	lui	a1,0x10000
    800082b4:	00005817          	auipc	a6,0x5
    800082b8:	b8c80813          	addi	a6,a6,-1140 # 8000ce40 <uart_tx_buf>
    800082bc:	01c0006f          	j	800082d8 <uartintr+0x88>
    800082c0:	0006c703          	lbu	a4,0(a3)
    800082c4:	00f63023          	sd	a5,0(a2)
    800082c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082cc:	00063783          	ld	a5,0(a2)
    800082d0:	00053703          	ld	a4,0(a0)
    800082d4:	00f70e63          	beq	a4,a5,800082f0 <uartintr+0xa0>
    800082d8:	01f7f713          	andi	a4,a5,31
    800082dc:	00e806b3          	add	a3,a6,a4
    800082e0:	0055c703          	lbu	a4,5(a1)
    800082e4:	00178793          	addi	a5,a5,1
    800082e8:	02077713          	andi	a4,a4,32
    800082ec:	fc071ae3          	bnez	a4,800082c0 <uartintr+0x70>
    800082f0:	01813083          	ld	ra,24(sp)
    800082f4:	01013403          	ld	s0,16(sp)
    800082f8:	00813483          	ld	s1,8(sp)
    800082fc:	02010113          	addi	sp,sp,32
    80008300:	00008067          	ret
    80008304:	00004617          	auipc	a2,0x4
    80008308:	82c60613          	addi	a2,a2,-2004 # 8000bb30 <uart_tx_r>
    8000830c:	00004517          	auipc	a0,0x4
    80008310:	82c50513          	addi	a0,a0,-2004 # 8000bb38 <uart_tx_w>
    80008314:	00063783          	ld	a5,0(a2)
    80008318:	00053703          	ld	a4,0(a0)
    8000831c:	04f70263          	beq	a4,a5,80008360 <uartintr+0x110>
    80008320:	100005b7          	lui	a1,0x10000
    80008324:	00005817          	auipc	a6,0x5
    80008328:	b1c80813          	addi	a6,a6,-1252 # 8000ce40 <uart_tx_buf>
    8000832c:	01c0006f          	j	80008348 <uartintr+0xf8>
    80008330:	0006c703          	lbu	a4,0(a3)
    80008334:	00f63023          	sd	a5,0(a2)
    80008338:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000833c:	00063783          	ld	a5,0(a2)
    80008340:	00053703          	ld	a4,0(a0)
    80008344:	02f70063          	beq	a4,a5,80008364 <uartintr+0x114>
    80008348:	01f7f713          	andi	a4,a5,31
    8000834c:	00e806b3          	add	a3,a6,a4
    80008350:	0055c703          	lbu	a4,5(a1)
    80008354:	00178793          	addi	a5,a5,1
    80008358:	02077713          	andi	a4,a4,32
    8000835c:	fc071ae3          	bnez	a4,80008330 <uartintr+0xe0>
    80008360:	00008067          	ret
    80008364:	00008067          	ret

0000000080008368 <kinit>:
    80008368:	fc010113          	addi	sp,sp,-64
    8000836c:	02913423          	sd	s1,40(sp)
    80008370:	fffff7b7          	lui	a5,0xfffff
    80008374:	00006497          	auipc	s1,0x6
    80008378:	aeb48493          	addi	s1,s1,-1301 # 8000de5f <end+0xfff>
    8000837c:	02813823          	sd	s0,48(sp)
    80008380:	01313c23          	sd	s3,24(sp)
    80008384:	00f4f4b3          	and	s1,s1,a5
    80008388:	02113c23          	sd	ra,56(sp)
    8000838c:	03213023          	sd	s2,32(sp)
    80008390:	01413823          	sd	s4,16(sp)
    80008394:	01513423          	sd	s5,8(sp)
    80008398:	04010413          	addi	s0,sp,64
    8000839c:	000017b7          	lui	a5,0x1
    800083a0:	01100993          	li	s3,17
    800083a4:	00f487b3          	add	a5,s1,a5
    800083a8:	01b99993          	slli	s3,s3,0x1b
    800083ac:	06f9e063          	bltu	s3,a5,8000840c <kinit+0xa4>
    800083b0:	00005a97          	auipc	s5,0x5
    800083b4:	ab0a8a93          	addi	s5,s5,-1360 # 8000ce60 <end>
    800083b8:	0754ec63          	bltu	s1,s5,80008430 <kinit+0xc8>
    800083bc:	0734fa63          	bgeu	s1,s3,80008430 <kinit+0xc8>
    800083c0:	00088a37          	lui	s4,0x88
    800083c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800083c8:	00003917          	auipc	s2,0x3
    800083cc:	77890913          	addi	s2,s2,1912 # 8000bb40 <kmem>
    800083d0:	00ca1a13          	slli	s4,s4,0xc
    800083d4:	0140006f          	j	800083e8 <kinit+0x80>
    800083d8:	000017b7          	lui	a5,0x1
    800083dc:	00f484b3          	add	s1,s1,a5
    800083e0:	0554e863          	bltu	s1,s5,80008430 <kinit+0xc8>
    800083e4:	0534f663          	bgeu	s1,s3,80008430 <kinit+0xc8>
    800083e8:	00001637          	lui	a2,0x1
    800083ec:	00100593          	li	a1,1
    800083f0:	00048513          	mv	a0,s1
    800083f4:	00000097          	auipc	ra,0x0
    800083f8:	5e4080e7          	jalr	1508(ra) # 800089d8 <__memset>
    800083fc:	00093783          	ld	a5,0(s2)
    80008400:	00f4b023          	sd	a5,0(s1)
    80008404:	00993023          	sd	s1,0(s2)
    80008408:	fd4498e3          	bne	s1,s4,800083d8 <kinit+0x70>
    8000840c:	03813083          	ld	ra,56(sp)
    80008410:	03013403          	ld	s0,48(sp)
    80008414:	02813483          	ld	s1,40(sp)
    80008418:	02013903          	ld	s2,32(sp)
    8000841c:	01813983          	ld	s3,24(sp)
    80008420:	01013a03          	ld	s4,16(sp)
    80008424:	00813a83          	ld	s5,8(sp)
    80008428:	04010113          	addi	sp,sp,64
    8000842c:	00008067          	ret
    80008430:	00001517          	auipc	a0,0x1
    80008434:	2e850513          	addi	a0,a0,744 # 80009718 <digits+0x18>
    80008438:	fffff097          	auipc	ra,0xfffff
    8000843c:	4b4080e7          	jalr	1204(ra) # 800078ec <panic>

0000000080008440 <freerange>:
    80008440:	fc010113          	addi	sp,sp,-64
    80008444:	000017b7          	lui	a5,0x1
    80008448:	02913423          	sd	s1,40(sp)
    8000844c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008450:	009504b3          	add	s1,a0,s1
    80008454:	fffff537          	lui	a0,0xfffff
    80008458:	02813823          	sd	s0,48(sp)
    8000845c:	02113c23          	sd	ra,56(sp)
    80008460:	03213023          	sd	s2,32(sp)
    80008464:	01313c23          	sd	s3,24(sp)
    80008468:	01413823          	sd	s4,16(sp)
    8000846c:	01513423          	sd	s5,8(sp)
    80008470:	01613023          	sd	s6,0(sp)
    80008474:	04010413          	addi	s0,sp,64
    80008478:	00a4f4b3          	and	s1,s1,a0
    8000847c:	00f487b3          	add	a5,s1,a5
    80008480:	06f5e463          	bltu	a1,a5,800084e8 <freerange+0xa8>
    80008484:	00005a97          	auipc	s5,0x5
    80008488:	9dca8a93          	addi	s5,s5,-1572 # 8000ce60 <end>
    8000848c:	0954e263          	bltu	s1,s5,80008510 <freerange+0xd0>
    80008490:	01100993          	li	s3,17
    80008494:	01b99993          	slli	s3,s3,0x1b
    80008498:	0734fc63          	bgeu	s1,s3,80008510 <freerange+0xd0>
    8000849c:	00058a13          	mv	s4,a1
    800084a0:	00003917          	auipc	s2,0x3
    800084a4:	6a090913          	addi	s2,s2,1696 # 8000bb40 <kmem>
    800084a8:	00002b37          	lui	s6,0x2
    800084ac:	0140006f          	j	800084c0 <freerange+0x80>
    800084b0:	000017b7          	lui	a5,0x1
    800084b4:	00f484b3          	add	s1,s1,a5
    800084b8:	0554ec63          	bltu	s1,s5,80008510 <freerange+0xd0>
    800084bc:	0534fa63          	bgeu	s1,s3,80008510 <freerange+0xd0>
    800084c0:	00001637          	lui	a2,0x1
    800084c4:	00100593          	li	a1,1
    800084c8:	00048513          	mv	a0,s1
    800084cc:	00000097          	auipc	ra,0x0
    800084d0:	50c080e7          	jalr	1292(ra) # 800089d8 <__memset>
    800084d4:	00093703          	ld	a4,0(s2)
    800084d8:	016487b3          	add	a5,s1,s6
    800084dc:	00e4b023          	sd	a4,0(s1)
    800084e0:	00993023          	sd	s1,0(s2)
    800084e4:	fcfa76e3          	bgeu	s4,a5,800084b0 <freerange+0x70>
    800084e8:	03813083          	ld	ra,56(sp)
    800084ec:	03013403          	ld	s0,48(sp)
    800084f0:	02813483          	ld	s1,40(sp)
    800084f4:	02013903          	ld	s2,32(sp)
    800084f8:	01813983          	ld	s3,24(sp)
    800084fc:	01013a03          	ld	s4,16(sp)
    80008500:	00813a83          	ld	s5,8(sp)
    80008504:	00013b03          	ld	s6,0(sp)
    80008508:	04010113          	addi	sp,sp,64
    8000850c:	00008067          	ret
    80008510:	00001517          	auipc	a0,0x1
    80008514:	20850513          	addi	a0,a0,520 # 80009718 <digits+0x18>
    80008518:	fffff097          	auipc	ra,0xfffff
    8000851c:	3d4080e7          	jalr	980(ra) # 800078ec <panic>

0000000080008520 <kfree>:
    80008520:	fe010113          	addi	sp,sp,-32
    80008524:	00813823          	sd	s0,16(sp)
    80008528:	00113c23          	sd	ra,24(sp)
    8000852c:	00913423          	sd	s1,8(sp)
    80008530:	02010413          	addi	s0,sp,32
    80008534:	03451793          	slli	a5,a0,0x34
    80008538:	04079c63          	bnez	a5,80008590 <kfree+0x70>
    8000853c:	00005797          	auipc	a5,0x5
    80008540:	92478793          	addi	a5,a5,-1756 # 8000ce60 <end>
    80008544:	00050493          	mv	s1,a0
    80008548:	04f56463          	bltu	a0,a5,80008590 <kfree+0x70>
    8000854c:	01100793          	li	a5,17
    80008550:	01b79793          	slli	a5,a5,0x1b
    80008554:	02f57e63          	bgeu	a0,a5,80008590 <kfree+0x70>
    80008558:	00001637          	lui	a2,0x1
    8000855c:	00100593          	li	a1,1
    80008560:	00000097          	auipc	ra,0x0
    80008564:	478080e7          	jalr	1144(ra) # 800089d8 <__memset>
    80008568:	00003797          	auipc	a5,0x3
    8000856c:	5d878793          	addi	a5,a5,1496 # 8000bb40 <kmem>
    80008570:	0007b703          	ld	a4,0(a5)
    80008574:	01813083          	ld	ra,24(sp)
    80008578:	01013403          	ld	s0,16(sp)
    8000857c:	00e4b023          	sd	a4,0(s1)
    80008580:	0097b023          	sd	s1,0(a5)
    80008584:	00813483          	ld	s1,8(sp)
    80008588:	02010113          	addi	sp,sp,32
    8000858c:	00008067          	ret
    80008590:	00001517          	auipc	a0,0x1
    80008594:	18850513          	addi	a0,a0,392 # 80009718 <digits+0x18>
    80008598:	fffff097          	auipc	ra,0xfffff
    8000859c:	354080e7          	jalr	852(ra) # 800078ec <panic>

00000000800085a0 <kalloc>:
    800085a0:	fe010113          	addi	sp,sp,-32
    800085a4:	00813823          	sd	s0,16(sp)
    800085a8:	00913423          	sd	s1,8(sp)
    800085ac:	00113c23          	sd	ra,24(sp)
    800085b0:	02010413          	addi	s0,sp,32
    800085b4:	00003797          	auipc	a5,0x3
    800085b8:	58c78793          	addi	a5,a5,1420 # 8000bb40 <kmem>
    800085bc:	0007b483          	ld	s1,0(a5)
    800085c0:	02048063          	beqz	s1,800085e0 <kalloc+0x40>
    800085c4:	0004b703          	ld	a4,0(s1)
    800085c8:	00001637          	lui	a2,0x1
    800085cc:	00500593          	li	a1,5
    800085d0:	00048513          	mv	a0,s1
    800085d4:	00e7b023          	sd	a4,0(a5)
    800085d8:	00000097          	auipc	ra,0x0
    800085dc:	400080e7          	jalr	1024(ra) # 800089d8 <__memset>
    800085e0:	01813083          	ld	ra,24(sp)
    800085e4:	01013403          	ld	s0,16(sp)
    800085e8:	00048513          	mv	a0,s1
    800085ec:	00813483          	ld	s1,8(sp)
    800085f0:	02010113          	addi	sp,sp,32
    800085f4:	00008067          	ret

00000000800085f8 <initlock>:
    800085f8:	ff010113          	addi	sp,sp,-16
    800085fc:	00813423          	sd	s0,8(sp)
    80008600:	01010413          	addi	s0,sp,16
    80008604:	00813403          	ld	s0,8(sp)
    80008608:	00b53423          	sd	a1,8(a0)
    8000860c:	00052023          	sw	zero,0(a0)
    80008610:	00053823          	sd	zero,16(a0)
    80008614:	01010113          	addi	sp,sp,16
    80008618:	00008067          	ret

000000008000861c <acquire>:
    8000861c:	fe010113          	addi	sp,sp,-32
    80008620:	00813823          	sd	s0,16(sp)
    80008624:	00913423          	sd	s1,8(sp)
    80008628:	00113c23          	sd	ra,24(sp)
    8000862c:	01213023          	sd	s2,0(sp)
    80008630:	02010413          	addi	s0,sp,32
    80008634:	00050493          	mv	s1,a0
    80008638:	10002973          	csrr	s2,sstatus
    8000863c:	100027f3          	csrr	a5,sstatus
    80008640:	ffd7f793          	andi	a5,a5,-3
    80008644:	10079073          	csrw	sstatus,a5
    80008648:	fffff097          	auipc	ra,0xfffff
    8000864c:	8e8080e7          	jalr	-1816(ra) # 80006f30 <mycpu>
    80008650:	07852783          	lw	a5,120(a0)
    80008654:	06078e63          	beqz	a5,800086d0 <acquire+0xb4>
    80008658:	fffff097          	auipc	ra,0xfffff
    8000865c:	8d8080e7          	jalr	-1832(ra) # 80006f30 <mycpu>
    80008660:	07852783          	lw	a5,120(a0)
    80008664:	0004a703          	lw	a4,0(s1)
    80008668:	0017879b          	addiw	a5,a5,1
    8000866c:	06f52c23          	sw	a5,120(a0)
    80008670:	04071063          	bnez	a4,800086b0 <acquire+0x94>
    80008674:	00100713          	li	a4,1
    80008678:	00070793          	mv	a5,a4
    8000867c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008680:	0007879b          	sext.w	a5,a5
    80008684:	fe079ae3          	bnez	a5,80008678 <acquire+0x5c>
    80008688:	0ff0000f          	fence
    8000868c:	fffff097          	auipc	ra,0xfffff
    80008690:	8a4080e7          	jalr	-1884(ra) # 80006f30 <mycpu>
    80008694:	01813083          	ld	ra,24(sp)
    80008698:	01013403          	ld	s0,16(sp)
    8000869c:	00a4b823          	sd	a0,16(s1)
    800086a0:	00013903          	ld	s2,0(sp)
    800086a4:	00813483          	ld	s1,8(sp)
    800086a8:	02010113          	addi	sp,sp,32
    800086ac:	00008067          	ret
    800086b0:	0104b903          	ld	s2,16(s1)
    800086b4:	fffff097          	auipc	ra,0xfffff
    800086b8:	87c080e7          	jalr	-1924(ra) # 80006f30 <mycpu>
    800086bc:	faa91ce3          	bne	s2,a0,80008674 <acquire+0x58>
    800086c0:	00001517          	auipc	a0,0x1
    800086c4:	06050513          	addi	a0,a0,96 # 80009720 <digits+0x20>
    800086c8:	fffff097          	auipc	ra,0xfffff
    800086cc:	224080e7          	jalr	548(ra) # 800078ec <panic>
    800086d0:	00195913          	srli	s2,s2,0x1
    800086d4:	fffff097          	auipc	ra,0xfffff
    800086d8:	85c080e7          	jalr	-1956(ra) # 80006f30 <mycpu>
    800086dc:	00197913          	andi	s2,s2,1
    800086e0:	07252e23          	sw	s2,124(a0)
    800086e4:	f75ff06f          	j	80008658 <acquire+0x3c>

00000000800086e8 <release>:
    800086e8:	fe010113          	addi	sp,sp,-32
    800086ec:	00813823          	sd	s0,16(sp)
    800086f0:	00113c23          	sd	ra,24(sp)
    800086f4:	00913423          	sd	s1,8(sp)
    800086f8:	01213023          	sd	s2,0(sp)
    800086fc:	02010413          	addi	s0,sp,32
    80008700:	00052783          	lw	a5,0(a0)
    80008704:	00079a63          	bnez	a5,80008718 <release+0x30>
    80008708:	00001517          	auipc	a0,0x1
    8000870c:	02050513          	addi	a0,a0,32 # 80009728 <digits+0x28>
    80008710:	fffff097          	auipc	ra,0xfffff
    80008714:	1dc080e7          	jalr	476(ra) # 800078ec <panic>
    80008718:	01053903          	ld	s2,16(a0)
    8000871c:	00050493          	mv	s1,a0
    80008720:	fffff097          	auipc	ra,0xfffff
    80008724:	810080e7          	jalr	-2032(ra) # 80006f30 <mycpu>
    80008728:	fea910e3          	bne	s2,a0,80008708 <release+0x20>
    8000872c:	0004b823          	sd	zero,16(s1)
    80008730:	0ff0000f          	fence
    80008734:	0f50000f          	fence	iorw,ow
    80008738:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000873c:	ffffe097          	auipc	ra,0xffffe
    80008740:	7f4080e7          	jalr	2036(ra) # 80006f30 <mycpu>
    80008744:	100027f3          	csrr	a5,sstatus
    80008748:	0027f793          	andi	a5,a5,2
    8000874c:	04079a63          	bnez	a5,800087a0 <release+0xb8>
    80008750:	07852783          	lw	a5,120(a0)
    80008754:	02f05e63          	blez	a5,80008790 <release+0xa8>
    80008758:	fff7871b          	addiw	a4,a5,-1
    8000875c:	06e52c23          	sw	a4,120(a0)
    80008760:	00071c63          	bnez	a4,80008778 <release+0x90>
    80008764:	07c52783          	lw	a5,124(a0)
    80008768:	00078863          	beqz	a5,80008778 <release+0x90>
    8000876c:	100027f3          	csrr	a5,sstatus
    80008770:	0027e793          	ori	a5,a5,2
    80008774:	10079073          	csrw	sstatus,a5
    80008778:	01813083          	ld	ra,24(sp)
    8000877c:	01013403          	ld	s0,16(sp)
    80008780:	00813483          	ld	s1,8(sp)
    80008784:	00013903          	ld	s2,0(sp)
    80008788:	02010113          	addi	sp,sp,32
    8000878c:	00008067          	ret
    80008790:	00001517          	auipc	a0,0x1
    80008794:	fb850513          	addi	a0,a0,-72 # 80009748 <digits+0x48>
    80008798:	fffff097          	auipc	ra,0xfffff
    8000879c:	154080e7          	jalr	340(ra) # 800078ec <panic>
    800087a0:	00001517          	auipc	a0,0x1
    800087a4:	f9050513          	addi	a0,a0,-112 # 80009730 <digits+0x30>
    800087a8:	fffff097          	auipc	ra,0xfffff
    800087ac:	144080e7          	jalr	324(ra) # 800078ec <panic>

00000000800087b0 <holding>:
    800087b0:	00052783          	lw	a5,0(a0)
    800087b4:	00079663          	bnez	a5,800087c0 <holding+0x10>
    800087b8:	00000513          	li	a0,0
    800087bc:	00008067          	ret
    800087c0:	fe010113          	addi	sp,sp,-32
    800087c4:	00813823          	sd	s0,16(sp)
    800087c8:	00913423          	sd	s1,8(sp)
    800087cc:	00113c23          	sd	ra,24(sp)
    800087d0:	02010413          	addi	s0,sp,32
    800087d4:	01053483          	ld	s1,16(a0)
    800087d8:	ffffe097          	auipc	ra,0xffffe
    800087dc:	758080e7          	jalr	1880(ra) # 80006f30 <mycpu>
    800087e0:	01813083          	ld	ra,24(sp)
    800087e4:	01013403          	ld	s0,16(sp)
    800087e8:	40a48533          	sub	a0,s1,a0
    800087ec:	00153513          	seqz	a0,a0
    800087f0:	00813483          	ld	s1,8(sp)
    800087f4:	02010113          	addi	sp,sp,32
    800087f8:	00008067          	ret

00000000800087fc <push_off>:
    800087fc:	fe010113          	addi	sp,sp,-32
    80008800:	00813823          	sd	s0,16(sp)
    80008804:	00113c23          	sd	ra,24(sp)
    80008808:	00913423          	sd	s1,8(sp)
    8000880c:	02010413          	addi	s0,sp,32
    80008810:	100024f3          	csrr	s1,sstatus
    80008814:	100027f3          	csrr	a5,sstatus
    80008818:	ffd7f793          	andi	a5,a5,-3
    8000881c:	10079073          	csrw	sstatus,a5
    80008820:	ffffe097          	auipc	ra,0xffffe
    80008824:	710080e7          	jalr	1808(ra) # 80006f30 <mycpu>
    80008828:	07852783          	lw	a5,120(a0)
    8000882c:	02078663          	beqz	a5,80008858 <push_off+0x5c>
    80008830:	ffffe097          	auipc	ra,0xffffe
    80008834:	700080e7          	jalr	1792(ra) # 80006f30 <mycpu>
    80008838:	07852783          	lw	a5,120(a0)
    8000883c:	01813083          	ld	ra,24(sp)
    80008840:	01013403          	ld	s0,16(sp)
    80008844:	0017879b          	addiw	a5,a5,1
    80008848:	06f52c23          	sw	a5,120(a0)
    8000884c:	00813483          	ld	s1,8(sp)
    80008850:	02010113          	addi	sp,sp,32
    80008854:	00008067          	ret
    80008858:	0014d493          	srli	s1,s1,0x1
    8000885c:	ffffe097          	auipc	ra,0xffffe
    80008860:	6d4080e7          	jalr	1748(ra) # 80006f30 <mycpu>
    80008864:	0014f493          	andi	s1,s1,1
    80008868:	06952e23          	sw	s1,124(a0)
    8000886c:	fc5ff06f          	j	80008830 <push_off+0x34>

0000000080008870 <pop_off>:
    80008870:	ff010113          	addi	sp,sp,-16
    80008874:	00813023          	sd	s0,0(sp)
    80008878:	00113423          	sd	ra,8(sp)
    8000887c:	01010413          	addi	s0,sp,16
    80008880:	ffffe097          	auipc	ra,0xffffe
    80008884:	6b0080e7          	jalr	1712(ra) # 80006f30 <mycpu>
    80008888:	100027f3          	csrr	a5,sstatus
    8000888c:	0027f793          	andi	a5,a5,2
    80008890:	04079663          	bnez	a5,800088dc <pop_off+0x6c>
    80008894:	07852783          	lw	a5,120(a0)
    80008898:	02f05a63          	blez	a5,800088cc <pop_off+0x5c>
    8000889c:	fff7871b          	addiw	a4,a5,-1
    800088a0:	06e52c23          	sw	a4,120(a0)
    800088a4:	00071c63          	bnez	a4,800088bc <pop_off+0x4c>
    800088a8:	07c52783          	lw	a5,124(a0)
    800088ac:	00078863          	beqz	a5,800088bc <pop_off+0x4c>
    800088b0:	100027f3          	csrr	a5,sstatus
    800088b4:	0027e793          	ori	a5,a5,2
    800088b8:	10079073          	csrw	sstatus,a5
    800088bc:	00813083          	ld	ra,8(sp)
    800088c0:	00013403          	ld	s0,0(sp)
    800088c4:	01010113          	addi	sp,sp,16
    800088c8:	00008067          	ret
    800088cc:	00001517          	auipc	a0,0x1
    800088d0:	e7c50513          	addi	a0,a0,-388 # 80009748 <digits+0x48>
    800088d4:	fffff097          	auipc	ra,0xfffff
    800088d8:	018080e7          	jalr	24(ra) # 800078ec <panic>
    800088dc:	00001517          	auipc	a0,0x1
    800088e0:	e5450513          	addi	a0,a0,-428 # 80009730 <digits+0x30>
    800088e4:	fffff097          	auipc	ra,0xfffff
    800088e8:	008080e7          	jalr	8(ra) # 800078ec <panic>

00000000800088ec <push_on>:
    800088ec:	fe010113          	addi	sp,sp,-32
    800088f0:	00813823          	sd	s0,16(sp)
    800088f4:	00113c23          	sd	ra,24(sp)
    800088f8:	00913423          	sd	s1,8(sp)
    800088fc:	02010413          	addi	s0,sp,32
    80008900:	100024f3          	csrr	s1,sstatus
    80008904:	100027f3          	csrr	a5,sstatus
    80008908:	0027e793          	ori	a5,a5,2
    8000890c:	10079073          	csrw	sstatus,a5
    80008910:	ffffe097          	auipc	ra,0xffffe
    80008914:	620080e7          	jalr	1568(ra) # 80006f30 <mycpu>
    80008918:	07852783          	lw	a5,120(a0)
    8000891c:	02078663          	beqz	a5,80008948 <push_on+0x5c>
    80008920:	ffffe097          	auipc	ra,0xffffe
    80008924:	610080e7          	jalr	1552(ra) # 80006f30 <mycpu>
    80008928:	07852783          	lw	a5,120(a0)
    8000892c:	01813083          	ld	ra,24(sp)
    80008930:	01013403          	ld	s0,16(sp)
    80008934:	0017879b          	addiw	a5,a5,1
    80008938:	06f52c23          	sw	a5,120(a0)
    8000893c:	00813483          	ld	s1,8(sp)
    80008940:	02010113          	addi	sp,sp,32
    80008944:	00008067          	ret
    80008948:	0014d493          	srli	s1,s1,0x1
    8000894c:	ffffe097          	auipc	ra,0xffffe
    80008950:	5e4080e7          	jalr	1508(ra) # 80006f30 <mycpu>
    80008954:	0014f493          	andi	s1,s1,1
    80008958:	06952e23          	sw	s1,124(a0)
    8000895c:	fc5ff06f          	j	80008920 <push_on+0x34>

0000000080008960 <pop_on>:
    80008960:	ff010113          	addi	sp,sp,-16
    80008964:	00813023          	sd	s0,0(sp)
    80008968:	00113423          	sd	ra,8(sp)
    8000896c:	01010413          	addi	s0,sp,16
    80008970:	ffffe097          	auipc	ra,0xffffe
    80008974:	5c0080e7          	jalr	1472(ra) # 80006f30 <mycpu>
    80008978:	100027f3          	csrr	a5,sstatus
    8000897c:	0027f793          	andi	a5,a5,2
    80008980:	04078463          	beqz	a5,800089c8 <pop_on+0x68>
    80008984:	07852783          	lw	a5,120(a0)
    80008988:	02f05863          	blez	a5,800089b8 <pop_on+0x58>
    8000898c:	fff7879b          	addiw	a5,a5,-1
    80008990:	06f52c23          	sw	a5,120(a0)
    80008994:	07853783          	ld	a5,120(a0)
    80008998:	00079863          	bnez	a5,800089a8 <pop_on+0x48>
    8000899c:	100027f3          	csrr	a5,sstatus
    800089a0:	ffd7f793          	andi	a5,a5,-3
    800089a4:	10079073          	csrw	sstatus,a5
    800089a8:	00813083          	ld	ra,8(sp)
    800089ac:	00013403          	ld	s0,0(sp)
    800089b0:	01010113          	addi	sp,sp,16
    800089b4:	00008067          	ret
    800089b8:	00001517          	auipc	a0,0x1
    800089bc:	db850513          	addi	a0,a0,-584 # 80009770 <digits+0x70>
    800089c0:	fffff097          	auipc	ra,0xfffff
    800089c4:	f2c080e7          	jalr	-212(ra) # 800078ec <panic>
    800089c8:	00001517          	auipc	a0,0x1
    800089cc:	d8850513          	addi	a0,a0,-632 # 80009750 <digits+0x50>
    800089d0:	fffff097          	auipc	ra,0xfffff
    800089d4:	f1c080e7          	jalr	-228(ra) # 800078ec <panic>

00000000800089d8 <__memset>:
    800089d8:	ff010113          	addi	sp,sp,-16
    800089dc:	00813423          	sd	s0,8(sp)
    800089e0:	01010413          	addi	s0,sp,16
    800089e4:	1a060e63          	beqz	a2,80008ba0 <__memset+0x1c8>
    800089e8:	40a007b3          	neg	a5,a0
    800089ec:	0077f793          	andi	a5,a5,7
    800089f0:	00778693          	addi	a3,a5,7
    800089f4:	00b00813          	li	a6,11
    800089f8:	0ff5f593          	andi	a1,a1,255
    800089fc:	fff6071b          	addiw	a4,a2,-1
    80008a00:	1b06e663          	bltu	a3,a6,80008bac <__memset+0x1d4>
    80008a04:	1cd76463          	bltu	a4,a3,80008bcc <__memset+0x1f4>
    80008a08:	1a078e63          	beqz	a5,80008bc4 <__memset+0x1ec>
    80008a0c:	00b50023          	sb	a1,0(a0)
    80008a10:	00100713          	li	a4,1
    80008a14:	1ae78463          	beq	a5,a4,80008bbc <__memset+0x1e4>
    80008a18:	00b500a3          	sb	a1,1(a0)
    80008a1c:	00200713          	li	a4,2
    80008a20:	1ae78a63          	beq	a5,a4,80008bd4 <__memset+0x1fc>
    80008a24:	00b50123          	sb	a1,2(a0)
    80008a28:	00300713          	li	a4,3
    80008a2c:	18e78463          	beq	a5,a4,80008bb4 <__memset+0x1dc>
    80008a30:	00b501a3          	sb	a1,3(a0)
    80008a34:	00400713          	li	a4,4
    80008a38:	1ae78263          	beq	a5,a4,80008bdc <__memset+0x204>
    80008a3c:	00b50223          	sb	a1,4(a0)
    80008a40:	00500713          	li	a4,5
    80008a44:	1ae78063          	beq	a5,a4,80008be4 <__memset+0x20c>
    80008a48:	00b502a3          	sb	a1,5(a0)
    80008a4c:	00700713          	li	a4,7
    80008a50:	18e79e63          	bne	a5,a4,80008bec <__memset+0x214>
    80008a54:	00b50323          	sb	a1,6(a0)
    80008a58:	00700e93          	li	t4,7
    80008a5c:	00859713          	slli	a4,a1,0x8
    80008a60:	00e5e733          	or	a4,a1,a4
    80008a64:	01059e13          	slli	t3,a1,0x10
    80008a68:	01c76e33          	or	t3,a4,t3
    80008a6c:	01859313          	slli	t1,a1,0x18
    80008a70:	006e6333          	or	t1,t3,t1
    80008a74:	02059893          	slli	a7,a1,0x20
    80008a78:	40f60e3b          	subw	t3,a2,a5
    80008a7c:	011368b3          	or	a7,t1,a7
    80008a80:	02859813          	slli	a6,a1,0x28
    80008a84:	0108e833          	or	a6,a7,a6
    80008a88:	03059693          	slli	a3,a1,0x30
    80008a8c:	003e589b          	srliw	a7,t3,0x3
    80008a90:	00d866b3          	or	a3,a6,a3
    80008a94:	03859713          	slli	a4,a1,0x38
    80008a98:	00389813          	slli	a6,a7,0x3
    80008a9c:	00f507b3          	add	a5,a0,a5
    80008aa0:	00e6e733          	or	a4,a3,a4
    80008aa4:	000e089b          	sext.w	a7,t3
    80008aa8:	00f806b3          	add	a3,a6,a5
    80008aac:	00e7b023          	sd	a4,0(a5)
    80008ab0:	00878793          	addi	a5,a5,8
    80008ab4:	fed79ce3          	bne	a5,a3,80008aac <__memset+0xd4>
    80008ab8:	ff8e7793          	andi	a5,t3,-8
    80008abc:	0007871b          	sext.w	a4,a5
    80008ac0:	01d787bb          	addw	a5,a5,t4
    80008ac4:	0ce88e63          	beq	a7,a4,80008ba0 <__memset+0x1c8>
    80008ac8:	00f50733          	add	a4,a0,a5
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0017871b          	addiw	a4,a5,1
    80008ad4:	0cc77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0027871b          	addiw	a4,a5,2
    80008ae4:	0ac77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0037871b          	addiw	a4,a5,3
    80008af4:	0ac77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0047871b          	addiw	a4,a5,4
    80008b04:	08c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	0057871b          	addiw	a4,a5,5
    80008b14:	08c77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	0067871b          	addiw	a4,a5,6
    80008b24:	06c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0077871b          	addiw	a4,a5,7
    80008b34:	06c77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	0087871b          	addiw	a4,a5,8
    80008b44:	04c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	0097871b          	addiw	a4,a5,9
    80008b54:	04c77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	00a7871b          	addiw	a4,a5,10
    80008b64:	02c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	00b7871b          	addiw	a4,a5,11
    80008b74:	02c77663          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b78:	00e50733          	add	a4,a0,a4
    80008b7c:	00b70023          	sb	a1,0(a4)
    80008b80:	00c7871b          	addiw	a4,a5,12
    80008b84:	00c77e63          	bgeu	a4,a2,80008ba0 <__memset+0x1c8>
    80008b88:	00e50733          	add	a4,a0,a4
    80008b8c:	00b70023          	sb	a1,0(a4)
    80008b90:	00d7879b          	addiw	a5,a5,13
    80008b94:	00c7f663          	bgeu	a5,a2,80008ba0 <__memset+0x1c8>
    80008b98:	00f507b3          	add	a5,a0,a5
    80008b9c:	00b78023          	sb	a1,0(a5)
    80008ba0:	00813403          	ld	s0,8(sp)
    80008ba4:	01010113          	addi	sp,sp,16
    80008ba8:	00008067          	ret
    80008bac:	00b00693          	li	a3,11
    80008bb0:	e55ff06f          	j	80008a04 <__memset+0x2c>
    80008bb4:	00300e93          	li	t4,3
    80008bb8:	ea5ff06f          	j	80008a5c <__memset+0x84>
    80008bbc:	00100e93          	li	t4,1
    80008bc0:	e9dff06f          	j	80008a5c <__memset+0x84>
    80008bc4:	00000e93          	li	t4,0
    80008bc8:	e95ff06f          	j	80008a5c <__memset+0x84>
    80008bcc:	00000793          	li	a5,0
    80008bd0:	ef9ff06f          	j	80008ac8 <__memset+0xf0>
    80008bd4:	00200e93          	li	t4,2
    80008bd8:	e85ff06f          	j	80008a5c <__memset+0x84>
    80008bdc:	00400e93          	li	t4,4
    80008be0:	e7dff06f          	j	80008a5c <__memset+0x84>
    80008be4:	00500e93          	li	t4,5
    80008be8:	e75ff06f          	j	80008a5c <__memset+0x84>
    80008bec:	00600e93          	li	t4,6
    80008bf0:	e6dff06f          	j	80008a5c <__memset+0x84>

0000000080008bf4 <__memmove>:
    80008bf4:	ff010113          	addi	sp,sp,-16
    80008bf8:	00813423          	sd	s0,8(sp)
    80008bfc:	01010413          	addi	s0,sp,16
    80008c00:	0e060863          	beqz	a2,80008cf0 <__memmove+0xfc>
    80008c04:	fff6069b          	addiw	a3,a2,-1
    80008c08:	0006881b          	sext.w	a6,a3
    80008c0c:	0ea5e863          	bltu	a1,a0,80008cfc <__memmove+0x108>
    80008c10:	00758713          	addi	a4,a1,7
    80008c14:	00a5e7b3          	or	a5,a1,a0
    80008c18:	40a70733          	sub	a4,a4,a0
    80008c1c:	0077f793          	andi	a5,a5,7
    80008c20:	00f73713          	sltiu	a4,a4,15
    80008c24:	00174713          	xori	a4,a4,1
    80008c28:	0017b793          	seqz	a5,a5
    80008c2c:	00e7f7b3          	and	a5,a5,a4
    80008c30:	10078863          	beqz	a5,80008d40 <__memmove+0x14c>
    80008c34:	00900793          	li	a5,9
    80008c38:	1107f463          	bgeu	a5,a6,80008d40 <__memmove+0x14c>
    80008c3c:	0036581b          	srliw	a6,a2,0x3
    80008c40:	fff8081b          	addiw	a6,a6,-1
    80008c44:	02081813          	slli	a6,a6,0x20
    80008c48:	01d85893          	srli	a7,a6,0x1d
    80008c4c:	00858813          	addi	a6,a1,8
    80008c50:	00058793          	mv	a5,a1
    80008c54:	00050713          	mv	a4,a0
    80008c58:	01088833          	add	a6,a7,a6
    80008c5c:	0007b883          	ld	a7,0(a5)
    80008c60:	00878793          	addi	a5,a5,8
    80008c64:	00870713          	addi	a4,a4,8
    80008c68:	ff173c23          	sd	a7,-8(a4)
    80008c6c:	ff0798e3          	bne	a5,a6,80008c5c <__memmove+0x68>
    80008c70:	ff867713          	andi	a4,a2,-8
    80008c74:	02071793          	slli	a5,a4,0x20
    80008c78:	0207d793          	srli	a5,a5,0x20
    80008c7c:	00f585b3          	add	a1,a1,a5
    80008c80:	40e686bb          	subw	a3,a3,a4
    80008c84:	00f507b3          	add	a5,a0,a5
    80008c88:	06e60463          	beq	a2,a4,80008cf0 <__memmove+0xfc>
    80008c8c:	0005c703          	lbu	a4,0(a1)
    80008c90:	00e78023          	sb	a4,0(a5)
    80008c94:	04068e63          	beqz	a3,80008cf0 <__memmove+0xfc>
    80008c98:	0015c603          	lbu	a2,1(a1)
    80008c9c:	00100713          	li	a4,1
    80008ca0:	00c780a3          	sb	a2,1(a5)
    80008ca4:	04e68663          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008ca8:	0025c603          	lbu	a2,2(a1)
    80008cac:	00200713          	li	a4,2
    80008cb0:	00c78123          	sb	a2,2(a5)
    80008cb4:	02e68e63          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008cb8:	0035c603          	lbu	a2,3(a1)
    80008cbc:	00300713          	li	a4,3
    80008cc0:	00c781a3          	sb	a2,3(a5)
    80008cc4:	02e68663          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008cc8:	0045c603          	lbu	a2,4(a1)
    80008ccc:	00400713          	li	a4,4
    80008cd0:	00c78223          	sb	a2,4(a5)
    80008cd4:	00e68e63          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008cd8:	0055c603          	lbu	a2,5(a1)
    80008cdc:	00500713          	li	a4,5
    80008ce0:	00c782a3          	sb	a2,5(a5)
    80008ce4:	00e68663          	beq	a3,a4,80008cf0 <__memmove+0xfc>
    80008ce8:	0065c703          	lbu	a4,6(a1)
    80008cec:	00e78323          	sb	a4,6(a5)
    80008cf0:	00813403          	ld	s0,8(sp)
    80008cf4:	01010113          	addi	sp,sp,16
    80008cf8:	00008067          	ret
    80008cfc:	02061713          	slli	a4,a2,0x20
    80008d00:	02075713          	srli	a4,a4,0x20
    80008d04:	00e587b3          	add	a5,a1,a4
    80008d08:	f0f574e3          	bgeu	a0,a5,80008c10 <__memmove+0x1c>
    80008d0c:	02069613          	slli	a2,a3,0x20
    80008d10:	02065613          	srli	a2,a2,0x20
    80008d14:	fff64613          	not	a2,a2
    80008d18:	00e50733          	add	a4,a0,a4
    80008d1c:	00c78633          	add	a2,a5,a2
    80008d20:	fff7c683          	lbu	a3,-1(a5)
    80008d24:	fff78793          	addi	a5,a5,-1
    80008d28:	fff70713          	addi	a4,a4,-1
    80008d2c:	00d70023          	sb	a3,0(a4)
    80008d30:	fec798e3          	bne	a5,a2,80008d20 <__memmove+0x12c>
    80008d34:	00813403          	ld	s0,8(sp)
    80008d38:	01010113          	addi	sp,sp,16
    80008d3c:	00008067          	ret
    80008d40:	02069713          	slli	a4,a3,0x20
    80008d44:	02075713          	srli	a4,a4,0x20
    80008d48:	00170713          	addi	a4,a4,1
    80008d4c:	00e50733          	add	a4,a0,a4
    80008d50:	00050793          	mv	a5,a0
    80008d54:	0005c683          	lbu	a3,0(a1)
    80008d58:	00178793          	addi	a5,a5,1
    80008d5c:	00158593          	addi	a1,a1,1
    80008d60:	fed78fa3          	sb	a3,-1(a5)
    80008d64:	fee798e3          	bne	a5,a4,80008d54 <__memmove+0x160>
    80008d68:	f89ff06f          	j	80008cf0 <__memmove+0xfc>
	...
