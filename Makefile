# Makefile for the Smithbug and the Motorola 6800 (MP-02 Retr6800)
# ncherry@linuxha.com 2024/03/09

SRC = smithbug.asm asl.inc smithbug.inc motorola.inc MC6800.inc

all:	smithbug.s19

# ------------------------------------------------------------------------------
#
smithbug: smithbug.s19 $(SRC)

smithbug.s19: smithbug.p
	p2hex +5 -F Moto -r \$$-\$$ smithbug.p smithbug.s19
	ls
	srec_info smithbug.s19

smithbug.lst: smithbug.asm asl.inc smithbug.inc motorola.inc MC6800.inc
	asl -i . -D _E000 -L smithbug.asm

smithbug.p: smithbug.asm asl.inc smithbug.inc motorola.inc MC6800.inc
	asl -i . -D _E000 -L smithbug.asm

# ------------------------------------------------------------------------------
#
clean:
	rm -f *.lst *.p foo bar *~ *.bin *.hex *.s19 dstfile.srec *.srec
	echo Done

# ------------------------------------------------------------------------------
#
burn: lilbug.s19
	@# We don't need to convert to binary and memory fill is done in the asm file
	miniprohex --offset -0xE000 -p AT28C64B -w smithbug.s19

.PHONY: smithbug clean burn

# -[ Fini ]---------------------------------------------------------------------
