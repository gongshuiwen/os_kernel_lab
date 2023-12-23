#ifndef __BOOT_ASM_H__
#define __BOOT_ASM_H__

/* Assembler macros to create x86 segments */

/* Normal segment */
#define SEG_NULLASM                                             \
    .word 0, 0;                                                 \
    .byte 0, 0, 0, 0

#define SEG_ASM(type,base,lim)                                  \
    .word (((lim) >> 12) & 0xffff), ((base) & 0xffff);          \
    .byte (((base) >> 16) & 0xff), (0x90 | (type)),             \
        (0xC0 | (((lim) >> 28) & 0xf)), (((base) >> 24) & 0xff)


/* Application segment type bits */
#define STA_X       0x8     // Executable segment 1000
#define STA_E       0x4     // Expand down (non-executable segments) 0100
#define STA_C       0x4     // Conforming code segment (executable only) 0100
#define STA_W       0x2     // Writeable (non-executable segments) 0010
#define STA_R       0x2     // Readable (executable segments) 0010
#define STA_A       0x1     // Accessed 0001

#endif /* !__BOOT_ASM_H__ */
