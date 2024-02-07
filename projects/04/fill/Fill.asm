// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
(KEYBOARDREAD)
	@24576
	D=M
	@NOTZERO
	D; JNE
(ZERO)
	@2
	M=D
	@DIFF
	0; JMP
(NOTZERO)
	@32767
	D=A
	@32767
	D=D+A
	D=D+1
	@2
	M=D
(DIFF)
	@2
	D=M
	@3 // �O��̒l
	D=D-M
	@KEYBOARDREAD
	D; JEQ
// ����̒l��O��̒l�Ƃ��Ċi�[
	@2
	D=M
	@3
	M=D
// DISP�̏�������
	@16384
	D=A
	@1
	M=D
(DISPLOOP)
	@24575
	D=A
	@1
	A=M
	D=D-A
	@KEYBOARDREAD // DISP���Ō�܂ŏI�������KEYBOARD��
	D; JLT
// �ǂݏo�����l��DISPPOINTER�ɏ�������
	@2
	D=M
	@1
	A=M
	M=D
// DISPPOINTER��1�𑫂�
	@1
	M=M+1
	@DISPLOOP
	0; JMP

	