// Usage: RAM[0] = RAM[RAM[1]] + RAM[RAM[1] + 1] + ... + RAM[RAM[1] + RAM[2]-1]
@2
D=M
@37
D;JEQ
@1
D=M // D = RAM[1]
@2
D=D+M // D = RAM[1] + RAM[2]
@3
M=D // RAM[3] = RAM[1] + RAM[2]
@1
D=M // D = RAM[1]
@4
M=D // RAM[4] = RAM[1]
@5
M=0 // RAM[5] = 0
@4
D=M
@3
D=D-M
@31
D;JEQ
@4
A=M
D=M
@5
M=D+M
@4
M=M+1
@16
0;JMP
@5
D=M
@0
M=D
@37
0;JMP
@37
0;JMP
