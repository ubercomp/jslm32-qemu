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
        user r0, r0, r0, 0x1
        addi r24, ba, 4
	b r24
	nop
	nop
        nop
        nop

_instruction_bus_error_handler:
	ori r25, r25, 2
        user r0, r0, r0, 0x2
	addi r24, ea, 4
	b r24
	nop
	nop
        nop
        nop

_watchpoint_handler:
	ori r25, r25, 4
        user r0, r0, r0, 0x3
	addi r24, ba, 4
	b r24
	nop
	nop
        nop
        nop

_data_bus_error_handler:
	ori r25, r25, 8
        user r0, r0, r0, 0x4
	addi r24, ea, 4
	b r24
	nop
	nop
        nop
        nop


_divide_by_zero_handler:
	ori r25, r25, 16
        user r0, r0, r0, 0x5
	addi r24, ea, 4
	b r24
	nop
	nop
        nop
        nop

_interrupt_handler:
	ori r25, r25, 32
        user r0, r0, r0, 0x6
        addi r24, ea, 4
        b r24
	nop
        nop
        nop
        nop

_system_call_handler:
	ori r25, r25, 64
        user r0, r0, r0, 0x7
	addi r23, ea, 4
	b r23
	nop
	nop
        nop
        nop
