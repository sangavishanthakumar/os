org 0x7C00 ; load os with legacy-booting => load code at 0x7C00
bits 16 ; ensure backwards compability

main:
	hlt ; stop execution of cpu
.halt:
	jmp .halt ; avoid execution of cpu beyond the end ofprogram

times 510-($-$$) db 0 ; check if the last four bytes are AA55
dw 0AA55h ; set signature
