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
	@3 // 前回の値
	D=D-M
	@KEYBOARDREAD
	D; JEQ
// 今回の値を前回の値として格納
	@2
	D=M
	@3
	M=D
// DISPの初期処理
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
	@KEYBOARDREAD // DISPが最後まで終わったらKEYBOARDへ
	D; JLT
// 読み出した値をDISPPOINTERに書き込む
	@2
	D=M
	@1
	A=M
	M=D
// DISPPOINTERに1を足す
	@1
	M=M+1
	@DISPLOOP
	0; JMP

	