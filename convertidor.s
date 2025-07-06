	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.rdata
	.align	2
$LC0:
	.ascii	"=== Conversor ===\000"
	.align	2
$LC1:
	.ascii	"1. Binario a Decimal\000"
	.align	2
$LC2:
	.ascii	"2. Decimal a Binario\000"
	.align	2
$LC3:
	.ascii	"3. Decimal a Hexadecimal\000"
	.align	2
$LC4:
	.ascii	"4. Hexadecimal a Decimal\000"
	.align	2
$LC5:
	.ascii	"5. Binario a Hexadecimal\000"
	.align	2
$LC6:
	.ascii	"6. Hexadecimal a Binario\000"
	.align	2
$LC7:
	.ascii	"0. Salir\000"
	.text
	.align	2
	.globl	menu
	.set	nomips16
	.set	nomicromips
	.ent	menu
	.type	menu, @function
menu:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC2)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC4)
	addiu	$4,$2,%lo($LC4)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC5)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC6)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC7)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	menu
	.size	menu, .-menu
	.align	2
	.globl	binarioADecimal
	.set	nomips16
	.set	nomicromips
	.ent	binarioADecimal
	.type	binarioADecimal, @function
binarioADecimal:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L6:
	lw	$2,16($fp)
	lb	$3,0($2)
	li	$2,48			# 0x30
	beq	$3,$2,$L4
	nop

	lw	$2,16($fp)
	lb	$3,0($2)
	li	$2,49			# 0x31
	beq	$3,$2,$L4
	nop

	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L5
	nop

	.option	pic2
$L4:
	lw	$2,4($fp)
	sll	$3,$2,1
	lw	$2,16($fp)
	lb	$2,0($2)
	addiu	$2,$2,-48
	addu	$2,$3,$2
	sw	$2,4($fp)
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
$L3:
	lw	$2,16($fp)
	lb	$2,0($2)
	bne	$2,$0,$L6
	nop

	lw	$2,4($fp)
$L5:
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	binarioADecimal
	.size	binarioADecimal, .-binarioADecimal
	.align	2
	.globl	decimalABinario
	.set	nomips16
	.set	nomicromips
	.ent	decimalABinario
	.type	decimalABinario, @function
decimalABinario:
	.frame	$fp,88,$31		# vars= 56, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,88($fp)
	sw	$5,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,76($fp)
	lw	$2,88($fp)
	bne	$2,$0,$L8
	nop

	lw	$2,28($fp)
	li	$3,48			# 0x30
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sb	$0,0($2)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L8:
	sw	$0,32($fp)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L12:
	lw	$3,88($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x1
	and	$2,$3,$2
	bgez	$2,$L11
	nop

	addiu	$2,$2,-1
	li	$3,-2			# 0xfffffffffffffffe
	or	$2,$2,$3
	addiu	$2,$2,1
$L11:
	andi	$2,$2,0x00ff
	addiu	$2,$2,48
	andi	$4,$2,0x00ff
	lw	$2,32($fp)
	addiu	$3,$2,1
	sw	$3,32($fp)
	seb	$3,$4
	addiu	$4,$fp,80
	addu	$2,$4,$2
	sb	$3,-40($2)
	lw	$2,88($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,88($fp)
$L10:
	lw	$2,88($fp)
	bgtz	$2,$L12
	nop

	sw	$0,36($fp)
	.option	pic0
	b	$L13
	nop

	.option	pic2
$L14:
	lw	$3,32($fp)
	lw	$2,36($fp)
	subu	$2,$3,$2
	addiu	$3,$2,-1
	lw	$2,36($fp)
	lw	$4,28($fp)
	addu	$2,$4,$2
	addiu	$4,$fp,80
	addu	$3,$4,$3
	lb	$3,-40($3)
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L13:
	lw	$3,36($fp)
	lw	$2,32($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L14
	nop

	lw	$2,32($fp)
	lw	$3,28($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
$L7:
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,76($fp)
	lw	$2,0($2)
	beq	$3,$2,$L15
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L15:
	move	$sp,$fp
	lw	$31,84($sp)
	lw	$fp,80($sp)
	addiu	$sp,$sp,88
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decimalABinario
	.size	decimalABinario, .-decimalABinario
	.align	2
	.globl	decimalAHexadecimal
	.set	nomips16
	.set	nomicromips
	.ent	decimalAHexadecimal
	.type	decimalAHexadecimal, @function
decimalAHexadecimal:
	.frame	$fp,96,$31		# vars= 64, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-96
	sw	$31,92($sp)
	sw	$fp,88($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,96($fp)
	sw	$5,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,84($fp)
	lw	$2,96($fp)
	bne	$2,$0,$L17
	nop

	lw	$2,28($fp)
	li	$3,48			# 0x30
	sb	$3,0($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sb	$0,0($2)
	.option	pic0
	b	$L16
	nop

	.option	pic2
$L17:
	sw	$0,36($fp)
	.option	pic0
	b	$L19
	nop

	.option	pic2
$L24:
	lw	$3,96($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0xf
	and	$2,$3,$2
	bgez	$2,$L20
	nop

	addiu	$2,$2,-1
	li	$3,-16			# 0xfffffffffffffff0
	or	$2,$2,$3
	addiu	$2,$2,1
$L20:
	sw	$2,44($fp)
	lw	$2,44($fp)
	slt	$2,$2,10
	beq	$2,$0,$L21
	nop

	lw	$2,44($fp)
	andi	$2,$2,0x00ff
	addiu	$2,$2,48
	andi	$4,$2,0x00ff
	lw	$2,36($fp)
	addiu	$3,$2,1
	sw	$3,36($fp)
	seb	$3,$4
	addiu	$4,$fp,88
	addu	$2,$4,$2
	sb	$3,-40($2)
	.option	pic0
	b	$L22
	nop

	.option	pic2
$L21:
	lw	$2,44($fp)
	andi	$2,$2,0x00ff
	addiu	$2,$2,55
	andi	$4,$2,0x00ff
	lw	$2,36($fp)
	addiu	$3,$2,1
	sw	$3,36($fp)
	seb	$3,$4
	addiu	$4,$fp,88
	addu	$2,$4,$2
	sb	$3,-40($2)
$L22:
	lw	$2,96($fp)
	bgez	$2,$L23
	nop

	addiu	$2,$2,15
$L23:
	sra	$2,$2,4
	sw	$2,96($fp)
$L19:
	lw	$2,96($fp)
	bgtz	$2,$L24
	nop

	sw	$0,40($fp)
	.option	pic0
	b	$L25
	nop

	.option	pic2
$L26:
	lw	$3,36($fp)
	lw	$2,40($fp)
	subu	$2,$3,$2
	addiu	$3,$2,-1
	lw	$2,40($fp)
	lw	$4,28($fp)
	addu	$2,$4,$2
	addiu	$4,$fp,88
	addu	$3,$4,$3
	lb	$3,-40($3)
	sb	$3,0($2)
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
$L25:
	lw	$3,40($fp)
	lw	$2,36($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L26
	nop

	lw	$2,36($fp)
	lw	$3,28($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
$L16:
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,84($fp)
	lw	$2,0($2)
	beq	$3,$2,$L27
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L27:
	move	$sp,$fp
	lw	$31,92($sp)
	lw	$fp,88($sp)
	addiu	$sp,$sp,96
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decimalAHexadecimal
	.size	decimalAHexadecimal, .-decimalAHexadecimal
	.align	2
	.globl	hexadecimalADecimal
	.set	nomips16
	.set	nomicromips
	.ent	hexadecimalADecimal
	.type	hexadecimalADecimal, @function
hexadecimalADecimal:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$0,8($fp)
	.option	pic0
	b	$L29
	nop

	.option	pic2
$L35:
	lw	$2,24($fp)
	lbu	$2,0($2)
	sb	$2,7($fp)
	lb	$2,7($fp)
	slt	$2,$2,48
	bne	$2,$0,$L30
	nop

	lb	$2,7($fp)
	slt	$2,$2,58
	beq	$2,$0,$L30
	nop

	lb	$2,7($fp)
	addiu	$2,$2,-48
	sw	$2,12($fp)
	.option	pic0
	b	$L31
	nop

	.option	pic2
$L30:
	lb	$2,7($fp)
	slt	$2,$2,65
	bne	$2,$0,$L32
	nop

	lb	$2,7($fp)
	slt	$2,$2,71
	beq	$2,$0,$L32
	nop

	lb	$2,7($fp)
	addiu	$2,$2,-55
	sw	$2,12($fp)
	.option	pic0
	b	$L31
	nop

	.option	pic2
$L32:
	lb	$2,7($fp)
	slt	$2,$2,97
	bne	$2,$0,$L33
	nop

	lb	$2,7($fp)
	slt	$2,$2,103
	beq	$2,$0,$L33
	nop

	lb	$2,7($fp)
	addiu	$2,$2,-87
	sw	$2,12($fp)
	.option	pic0
	b	$L31
	nop

	.option	pic2
$L33:
	li	$2,-1			# 0xffffffffffffffff
	.option	pic0
	b	$L34
	nop

	.option	pic2
$L31:
	lw	$2,8($fp)
	sll	$2,$2,4
	lw	$3,12($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L29:
	lw	$2,24($fp)
	lb	$2,0($2)
	bne	$2,$0,$L35
	nop

	lw	$2,8($fp)
$L34:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	hexadecimalADecimal
	.size	hexadecimalADecimal, .-hexadecimalADecimal
	.rdata
	.align	2
$LC8:
	.ascii	"Error\000"
	.text
	.align	2
	.globl	binarioAHexadecimal
	.set	nomips16
	.set	nomicromips
	.ent	binarioAHexadecimal
	.type	binarioAHexadecimal, @function
binarioAHexadecimal:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	binarioADecimal
	nop

	.option	pic2
	sw	$2,28($fp)
	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L37
	nop

	lw	$2,44($fp)
	lui	$3,%hi($LC8)
	lw	$4,%lo($LC8)($3)
	swl	$4,0($2)
	swr	$4,3($2)
	addiu	$3,$3,%lo($LC8)
	lbu	$4,4($3)
	sb	$4,4($2)
	lbu	$3,5($3)
	sb	$3,5($2)
	.option	pic0
	b	$L36
	nop

	.option	pic2
$L37:
	lw	$5,44($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	decimalAHexadecimal
	nop

	.option	pic2
$L36:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	binarioAHexadecimal
	.size	binarioAHexadecimal, .-binarioAHexadecimal
	.align	2
	.globl	hexadecimalABinario
	.set	nomips16
	.set	nomicromips
	.ent	hexadecimalABinario
	.type	hexadecimalABinario, @function
hexadecimalABinario:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	sw	$5,44($fp)
	lw	$4,40($fp)
	.option	pic0
	jal	hexadecimalADecimal
	nop

	.option	pic2
	sw	$2,28($fp)
	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L40
	nop

	lw	$2,44($fp)
	lui	$3,%hi($LC8)
	lw	$4,%lo($LC8)($3)
	swl	$4,0($2)
	swr	$4,3($2)
	addiu	$3,$3,%lo($LC8)
	lbu	$4,4($3)
	sb	$4,4($2)
	lbu	$3,5($3)
	sb	$3,5($2)
	.option	pic0
	b	$L39
	nop

	.option	pic2
$L40:
	lw	$5,44($fp)
	lw	$4,28($fp)
	.option	pic0
	jal	decimalABinario
	nop

	.option	pic2
$L39:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	hexadecimalABinario
	.size	hexadecimalABinario, .-hexadecimalABinario
	.rdata
	.align	2
$LC9:
	.ascii	"Selecciona una opci\303\263n: \000"
	.align	2
$LC10:
	.ascii	"%d\000"
	.align	2
$LC11:
	.ascii	"Ingresa un n\303\272mero binario: \000"
	.align	2
$LC12:
	.ascii	"%s\000"
	.align	2
$LC13:
	.ascii	"N\303\272mero binario inv\303\241lido.\000"
	.align	2
$LC14:
	.ascii	"Decimal: %d\012\000"
	.align	2
$LC15:
	.ascii	"Ingresa un n\303\272mero decimal: \000"
	.align	2
$LC16:
	.ascii	"Binario: %s\012\000"
	.align	2
$LC17:
	.ascii	"Hexadecimal: %s\012\000"
	.align	2
$LC18:
	.ascii	"Ingresa un n\303\272mero hexadecimal (sin 0x): \000"
	.align	2
$LC19:
	.ascii	"N\303\272mero hexadecimal inv\303\241lido.\000"
	.align	2
$LC20:
	.ascii	"Saliendo...\000"
	.align	2
$LC21:
	.ascii	"Opci\303\263n no v\303\241lida\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,248,$31		# vars= 216, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-248
	sw	$31,244($sp)
	sw	$fp,240($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,236($fp)
$L57:
	.option	pic0
	jal	menu
	nop

	.option	pic2
	lw	$28,16($fp)
	lui	$2,%hi($LC9)
	addiu	$4,$2,%lo($LC9)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,28
	move	$5,$2
	lui	$2,%hi($LC10)
	addiu	$4,$2,%lo($LC10)
	lw	$2,%call16(__isoc99_scanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	sltu	$3,$2,7
	beq	$3,$0,$L43
	nop

	sll	$3,$2,2
	lui	$2,%hi($L45)
	addiu	$2,$2,%lo($L45)
	addu	$2,$3,$2
	lw	$2,0($2)
	jr	$2
	nop

	.rdata
	.align	2
	.align	2
$L45:
	.word	$L44
	.word	$L46
	.word	$L47
	.word	$L48
	.word	$L49
	.word	$L50
	.word	$L51
	.text
$L46:
	lui	$2,%hi($LC11)
	addiu	$4,$2,%lo($LC11)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,36
	move	$5,$2
	lui	$2,%hi($LC12)
	addiu	$4,$2,%lo($LC12)
	lw	$2,%call16(__isoc99_scanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,36
	move	$4,$2
	.option	pic0
	jal	binarioADecimal
	nop

	.option	pic2
	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L52
	nop

	lui	$2,%hi($LC13)
	addiu	$4,$2,%lo($LC13)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L54
	nop

	.option	pic2
$L52:
	lw	$2,32($fp)
	move	$5,$2
	lui	$2,%hi($LC14)
	addiu	$4,$2,%lo($LC14)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L54
	nop

	.option	pic2
$L47:
	lui	$2,%hi($LC15)
	addiu	$4,$2,%lo($LC15)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,32
	move	$5,$2
	lui	$2,%hi($LC10)
	addiu	$4,$2,%lo($LC10)
	lw	$2,%call16(__isoc99_scanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,32($fp)
	addiu	$3,$fp,136
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	decimalABinario
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,136
	move	$5,$2
	lui	$2,%hi($LC16)
	addiu	$4,$2,%lo($LC16)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L54
	nop

	.option	pic2
$L48:
	lui	$2,%hi($LC15)
	addiu	$4,$2,%lo($LC15)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,32
	move	$5,$2
	lui	$2,%hi($LC10)
	addiu	$4,$2,%lo($LC10)
	lw	$2,%call16(__isoc99_scanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,32($fp)
	addiu	$3,$fp,136
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	decimalAHexadecimal
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,136
	move	$5,$2
	lui	$2,%hi($LC17)
	addiu	$4,$2,%lo($LC17)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L54
	nop

	.option	pic2
$L49:
	lui	$2,%hi($LC18)
	addiu	$4,$2,%lo($LC18)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,36
	move	$5,$2
	lui	$2,%hi($LC12)
	addiu	$4,$2,%lo($LC12)
	lw	$2,%call16(__isoc99_scanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,36
	move	$4,$2
	.option	pic0
	jal	hexadecimalADecimal
	nop

	.option	pic2
	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L55
	nop

	lui	$2,%hi($LC19)
	addiu	$4,$2,%lo($LC19)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L54
	nop

	.option	pic2
$L55:
	lw	$2,32($fp)
	move	$5,$2
	lui	$2,%hi($LC14)
	addiu	$4,$2,%lo($LC14)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L54
	nop

	.option	pic2
$L50:
	lui	$2,%hi($LC11)
	addiu	$4,$2,%lo($LC11)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,36
	move	$5,$2
	lui	$2,%hi($LC12)
	addiu	$4,$2,%lo($LC12)
	lw	$2,%call16(__isoc99_scanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$3,$fp,136
	addiu	$2,$fp,36
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	binarioAHexadecimal
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,136
	move	$5,$2
	lui	$2,%hi($LC17)
	addiu	$4,$2,%lo($LC17)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L54
	nop

	.option	pic2
$L51:
	lui	$2,%hi($LC18)
	addiu	$4,$2,%lo($LC18)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,36
	move	$5,$2
	lui	$2,%hi($LC12)
	addiu	$4,$2,%lo($LC12)
	lw	$2,%call16(__isoc99_scanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_scanf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$3,$fp,136
	addiu	$2,$fp,36
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	hexadecimalABinario
	nop

	.option	pic2
	lw	$28,16($fp)
	addiu	$2,$fp,136
	move	$5,$2
	lui	$2,%hi($LC16)
	addiu	$4,$2,%lo($LC16)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L54
	nop

	.option	pic2
$L44:
	lui	$2,%hi($LC20)
	addiu	$4,$2,%lo($LC20)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L54
	nop

	.option	pic2
$L43:
	lui	$2,%hi($LC21)
	addiu	$4,$2,%lo($LC21)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L54:
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	bne	$2,$0,$L57
	nop

	move	$2,$0
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,236($fp)
	lw	$3,0($3)
	beq	$4,$3,$L59
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L59:
	move	$sp,$fp
	lw	$31,244($sp)
	lw	$fp,240($sp)
	addiu	$sp,$sp,248
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
