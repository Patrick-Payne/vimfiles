" Vim syntax file
" Language:	NIOS II

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

setlocal iskeyword=a-z,A-Z,48-57,.,_
setlocal isident=a-z,A-Z,48-57,.,_
syn case ignore

syn keyword nios2Todo		contained TODO FIXME
" a, b r0-7 done with matches
syn keyword nios2Register	r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13
syn keyword nios2Register	r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25
syn keyword nios2Register	r26 r27 r28 r29 r30 r31 at bt gp sp fp ea ba ra
syn keyword nios2Register	ctl0 ctl1 ctl2 ctl3 ctl4 ctl5 status zero estatus
syn keyword nios2Register	bstatus ienable ipending cpuid

syn keyword nios2Instr		addi add sub subi and andi or ori xor xori nor
syn keyword nios2Instr		orhi xorhi mul div divu mov movi addi movui movia
syn keyword nios2Instr		movhi
syn keyword nios2Instr		nori cmpgei cmplti cmpnei cmpeqi cmpgeui andhi
syn keyword nios2Instr		cmpltui cmpge cmplt cmpne cmpeq cmpgeu cmpltu
syn keyword nios2Instr		sll slli srl srli sra srai rol ror roli ldw
syn keyword nios2Instr		ldw stw ldwio stwio ldbu ldb ldhu sth ldh
syn keyword nios2Instr		ldbuio stbio ldbio ldhuio sthio ldhio 

syn keyword nios2Instr_ctl	br bge blt bne beq bgeu bltu call callr ret jmp
syn keyword nios2Instr_ctl	jmpi eret


syn keyword nios2Directive	.data .end .equ .global .hword .include .org
syn keyword nios2Directive	.skip .text .word %hi %lo %hiadj

syn match	nios2NumericOperator	"[+-/*]"

" Any special number formats
syn match nios2HexNumber		"0[xX][0-9a-fA-F]\+\>"
syn match nios2OctNumber		"0[0-7]\+\>"
syn match nios2BinNumber		"0[bB][01]\+\>"
syn match nios2DecNumber		"\<[0-9]\+\>"

syn region	nios2Comment		start="#" end="$" contains=nios2Todo
syn region	nios2CStyleComment	start="/\*" end="\*/" contains=asmx86Todo
syn region	nios2String		start="\"" end="\"\|$"
syn region	nios2String		start="'" end="'\|$"
syn match	nios2Label		"\s*[^; \t]\+:"
syn match	nios2Preprocess		"^\.\w\+\((.*)\)\?"		
syn match	nios2RegIndirectOffset		"^\x\+\((.*)\)\?"

hi def link	nios2NumericOperator	nios2Operator
hi def link	nios2RegIndirectOffset		nios2Operator

hi def link	nios2HexNumber	nios2Number
hi def link	nios2OctNumber	nios2Number
hi def link	nios2BinNumber	nios2Number
hi def link	nios2DecNumber	nios2Number

hi def link	nios2Register	type

hi def link	nios2Preprocess		nios2Directive
hi def link	nios2Include		nios2Directive

"  link to standard syn groups so the 'colorschemes' work:
hi def link	nios2Operator operator
hi def link	nios2Comment comment
hi def link	nios2CStyleComment comment
hi def link	nios2Directive preproc
hi def link	nios2Number number
hi def link	nios2String String
hi def link	nios2Instr keyword
hi def link	nios2Instr_ctl special
hi def link	nios2Label label
hi def link	nios2Prefix preproc
hi def link	nios2Todo todo
hi def link	nios2wreg identifier

let b:current_syntax = "nios2a"
