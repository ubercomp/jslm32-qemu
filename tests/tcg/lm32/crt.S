.set JSLM32_CTRL_DEV_ADDR, 0x04000000

.text
.global _start

_start:
_reset_handler:
	xor r0, r0, r0
	mvhi r1, hi(_start)
	ori r1, r1, lo(_start)
	wcsr eba, r1
	wcsr deba, r1
	mvhi sp, hi(_fstack)
	ori sp, sp, lo(_fstack)
	bi _main

_breakpoint_handler:
	ori r25, r25, 1
	mvhi r24, hi(JSLM32_CTRL_DEV_ADDR)
	ori r24, r24, lo(JSLM32_CTRL_DEV_ADDR)
	sw (r24+0), r25
	addi r23, ba, 4
	b r23
	nop
	nop

_instruction_bus_error_handler:
	ori r25, r25, 2
	mvhi r24, hi(JSLM32_CTRL_DEV_ADDR)
	ori r24, r24, lo(JSLM32_CTRL_DEV_ADDR)
	sw (r24+0), r25
	addi r23, ea, 4
	b r23
	nop
	nop

_watchpoint_handler:
	ori r25, r25, 4
	mvhi r24, hi(JSLM32_CTRL_DEV_ADDR)
	ori r24, r24, lo(JSLM32_CTRL_DEV_ADDR)
	sw (r24+0), r25
	addi r23, ba, 4
	b r23
	nop
	nop

_data_bus_error_handler:
	ori r25, r25, 8
	mvhi r24, hi(JSLM32_CTRL_DEV_ADDR)
	ori r24, r24, lo(JSLM32_CTRL_DEV_ADDR)
	sw (r24+0), r25
	addi r23, ea, 4
	b r23
	nop
	nop


_divide_by_zero_handler:
	ori r25, r25, 16
	mvhi r24, hi(JSLM32_CTRL_DEV_ADDR)
	ori r24, r24, lo(JSLM32_CTRL_DEV_ADDR)
	sw (r24+0), r25
	addi r23, ea, 4
	b r23
	nop
	nop

_interrupt_handler:
	ori r25, r25, 32
	mvhi r24, hi(JSLM32_CTRL_DEV_ADDR)
	ori r24, r24, lo(JSLM32_CTRL_DEV_ADDR)
	sw (r24+0), r25
	addi r23, ea, 4
	b r23
	nop
	nop

_system_call_handler:
	ori r25, r25, 64
	mvhi r24, hi(JSLM32_CTRL_DEV_ADDR)
	ori r24, r24, lo(JSLM32_CTRL_DEV_ADDR)
	sw (r24+0), r25
	addi r23, ea, 4
	b r23
	nop
	nop
