CROSS=lm32-elf-

SIM = qemu-system-lm32
SIMFLAGS = -M lm32-evr -nographic -semihosting -net none -kernel

CC      = $(CROSS)gcc
AS      = $(CROSS)as
AS      = $(CC) -x assembler
SIZE    = $(CROSS)size
LD      = $(CC)
OBJCOPY = $(CROSS)objcopy

TSRC_PATH = $(shell pwd)
LDFLAGS = -T$(TSRC_PATH)/linker.ld
ASFLAGS += -Wa,-I,$(TSRC_PATH)/

CRT        = crt.o
HELPER     = helper.o

TESTCASES += test_add.tst
TESTCASES += test_addi.tst
TESTCASES += test_and.tst
TESTCASES += test_andhi.tst
TESTCASES += test_andi.tst
TESTCASES += test_b.tst
TESTCASES += test_be.tst
TESTCASES += test_bg.tst
TESTCASES += test_bge.tst
TESTCASES += test_bgeu.tst
TESTCASES += test_bgu.tst
TESTCASES += test_bi.tst
TESTCASES += test_bne.tst
TESTCASES += test_break.tst
TESTCASES += test_bret.tst
TESTCASES += test_call.tst
TESTCASES += test_calli.tst
TESTCASES += test_cmpe.tst
TESTCASES += test_cmpei.tst
TESTCASES += test_cmpg.tst
TESTCASES += test_cmpgi.tst
TESTCASES += test_cmpge.tst
TESTCASES += test_cmpgei.tst
TESTCASES += test_cmpgeu.tst
TESTCASES += test_cmpgeui.tst
TESTCASES += test_cmpgu.tst
TESTCASES += test_cmpgui.tst
TESTCASES += test_cmpne.tst
TESTCASES += test_cmpnei.tst
TESTCASES += test_divu.tst
TESTCASES += test_eret.tst
TESTCASES += test_lb.tst
TESTCASES += test_lbu.tst
TESTCASES += test_lh.tst
TESTCASES += test_lhu.tst
TESTCASES += test_lw.tst
TESTCASES += test_modu.tst
TESTCASES += test_mul.tst
TESTCASES += test_muli.tst
TESTCASES += test_nor.tst
TESTCASES += test_nori.tst
TESTCASES += test_or.tst
TESTCASES += test_ori.tst
TESTCASES += test_orhi.tst
#TESTCASES += test_rcsr.tst
TESTCASES += test_ret.tst
TESTCASES += test_sb.tst
TESTCASES += test_scall.tst
TESTCASES += test_sextb.tst
TESTCASES += test_sexth.tst
TESTCASES += test_sh.tst
TESTCASES += test_sl.tst
TESTCASES += test_sli.tst
TESTCASES += test_sr.tst
TESTCASES += test_sri.tst
TESTCASES += test_sru.tst
TESTCASES += test_srui.tst
TESTCASES += test_sub.tst
TESTCASES += test_sw.tst
#TESTCASES += test_wcsr.tst
TESTCASES += test_xnor.tst
TESTCASES += test_xnori.tst
TESTCASES += test_xor.tst
TESTCASES += test_xori.tst

TESTCASES_BIN+= test_add.bin
TESTCASES_BIN+= test_addi.bin
TESTCASES_BIN+= test_and.bin
TESTCASES_BIN+= test_andhi.bin
TESTCASES_BIN+= test_andi.bin
TESTCASES_BIN+= test_b.bin
TESTCASES_BIN+= test_be.bin
TESTCASES_BIN+= test_bg.bin
TESTCASES_BIN+= test_bge.bin
TESTCASES_BIN+= test_bgeu.bin
TESTCASES_BIN+= test_bgu.bin
TESTCASES_BIN+= test_bi.bin
TESTCASES_BIN+= test_bne.bin
TESTCASES_BIN+= test_break.bin
TESTCASES_BIN+= test_bret.bin
TESTCASES_BIN+= test_call.bin
TESTCASES_BIN+= test_calli.bin
TESTCASES_BIN+= test_cmpe.bin
TESTCASES_BIN+= test_cmpei.bin
TESTCASES_BIN+= test_cmpg.bin
TESTCASES_BIN+= test_cmpgi.bin
TESTCASES_BIN+= test_cmpge.bin
TESTCASES_BIN+= test_cmpgei.bin
TESTCASES_BIN+= test_cmpgeu.bin
TESTCASES_BIN+= test_cmpgeui.bin
TESTCASES_BIN+= test_cmpgu.bin
TESTCASES_BIN+= test_cmpgui.bin
TESTCASES_BIN+= test_cmpne.bin
TESTCASES_BIN+= test_cmpnei.bin
TESTCASES_BIN+= test_divu.bin
TESTCASES_BIN+= test_eret.bin
TESTCASES_BIN+= test_lb.bin
TESTCASES_BIN+= test_lbu.bin
TESTCASES_BIN+= test_lh.bin
TESTCASES_BIN+= test_lhu.bin
TESTCASES_BIN+= test_lw.bin
TESTCASES_BIN+= test_modu.bin
TESTCASES_BIN+= test_mul.bin
TESTCASES_BIN+= test_muli.bin
TESTCASES_BIN+= test_nor.bin
TESTCASES_BIN+= test_nori.bin
TESTCASES_BIN+= test_or.bin
TESTCASES_BIN+= test_ori.bin
TESTCASES_BIN+= test_orhi.bin
#TESTCASES_BIN+= test_rcsr.bin
TESTCASES_BIN+= test_ret.bin
TESTCASES_BIN+= test_sb.bin
TESTCASES_BIN+= test_scall.bin
TESTCASES_BIN+= test_sextb.bin
TESTCASES_BIN+= test_sexth.bin
TESTCASES_BIN+= test_sh.bin
TESTCASES_BIN+= test_sl.bin
TESTCASES_BIN+= test_sli.bin
TESTCASES_BIN+= test_sr.bin
TESTCASES_BIN+= test_sri.bin
TESTCASES_BIN+= test_sru.bin
TESTCASES_BIN+= test_srui.bin
TESTCASES_BIN+= test_sub.bin
TESTCASES_BIN+= test_sw.bin
#TESTCASES_BIN+= test_wcsr.bin
TESTCASES_BIN+= test_xnor.bin
TESTCASES_BIN+= test_xnori.bin
TESTCASES_BIN+= test_xor.bin
TESTCASES_BIN+= test_xori.bin


all: build

%.o: $(TSRC_PATH)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: $(TSRC_PATH)/%.S
	$(AS) $(ASFLAGS) -c $< -o $@

%.tst: %.o $(TSRC_PATH)/macros.inc $(CRT) $(HELPER)
	$(LD) $(LDFLAGS) $(NOSTDFLAGS) $(CRT) $(HELPER) $< -o $@

%.bin: %.tst
	$(OBJCOPY) -O binary $< $@

build: $(TESTCASES) $(TESTCASES_BIN)

check: $(TESTCASES:test_%.tst=check_%)

check_%: test_%.tst
	@$(SIM) $(SIMFLAGS) $<

clean:
	$(RM) -fr $(TESTCASES) $(TESTCASES_BIN) $(CRT) $(HELPER)
