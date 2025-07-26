10 DEFINT A-Y ' Define all variables A through Y as integers (except Z)
20 M=64:DIM X(M):Z=.04 ' Max paths=64, array for positions, 4% branch chance
30 X=RND(-TIME):X(1)=INT(RND(1)*128):N=1 ' Seed RNG, start 1 path at random X (0-127)
40 IC=INT(RND(1)*4) ' Random color selection (0-3)
50 IF IC=0 THEN C=5 ' Color 5 (typically purple/magenta)
60 IF IC=1 THEN C=6 ' Color 6 (typically brown/dark yellow)
70 IF IC=2 THEN C=10 ' Color 10 (typically light green)
80 IF IC=3 THEN C=15 ' Color 15 (bright white)
90 COLOR 15,1,1:SCREEN 2 ' White text, black bg, set 256x192 graphics mode
100 FOR Y=0 TO 191 ' Main loop - draw each scanline top to bottom
110   FOR I=1 TO N ' Process all active paths
120     DX=INT(RND(1)*3)-1:X(I)=X(I)+DX ' Random step: -1(left), 0(center), or +1(right)
130     IF X(I)>0 AND X(I)<=255 THEN PSET (X(I),Y),C ' Draw if within screen bounds
140   NEXT I ' Process next path
150   IF N>=M THEN GOTO 170 ' Skip branching if at max paths (64)
160   IF RND(1)<Z THEN N=N+1:R=INT(RND(1)*(N-1))+1:X(N)=X(R) ' 4% chance to branch from random existing path
170 NEXT Y ' Move to next scanline
180 GOTO 30 ' Restart with new pattern when bottom reached