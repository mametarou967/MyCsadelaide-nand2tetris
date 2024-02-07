// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// 結果部分を一度初期化する
	@2
	M=0
	
// 計算部分
(CALC)
// 計算回数が残っているか確認する
	@0
	D=M
	@END
	D; JEQ

// 計算回数をひとつ減らしておく
	@0
	M=M-1

// 一つ前の計算結果を取り出す
	@2
	D=M

// 計算するところ
	@1
	D=D+M

// 計算結果を格納する
	@2
	M=D

// 無条件に計算する部分に飛ぶ
	@CALC
	0; JMP
(END)
	@END
	0; JMP

// 計算がおわったか確認する
	

// ジャンプするところ