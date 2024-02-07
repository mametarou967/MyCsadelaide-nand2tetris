// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// ���ʕ�������x����������
	@2
	M=0
	
// �v�Z����
(CALC)
// �v�Z�񐔂��c���Ă��邩�m�F����
	@0
	D=M
	@END
	D; JEQ

// �v�Z�񐔂��ЂƂ��炵�Ă���
	@0
	M=M-1

// ��O�̌v�Z���ʂ����o��
	@2
	D=M

// �v�Z����Ƃ���
	@1
	D=D+M

// �v�Z���ʂ��i�[����
	@2
	M=D

// �������Ɍv�Z���镔���ɔ��
	@CALC
	0; JMP
(END)
	@END
	0; JMP

// �v�Z������������m�F����
	

// �W�����v����Ƃ���