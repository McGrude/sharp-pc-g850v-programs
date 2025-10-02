10 CLEAR
20 RANDOMIZE
30 DIM S(24), T(24), A(24)
40 CLS
50 REM Initialize columns
60 FOR X = 1 TO 24
70   A(X) = INT(RND(1)*2)
80   S(X) = INT(RND(1)*3) + 1
90   T(X) = INT(RND(1)*S(X))
100 NEXT X
110 REM Main loop - print one line per iteration
120 FOR X = 1 TO 24
130   T(X) = T(X) - 1
140   IF T(X) > 0 OR A(X) = 0 THEN PRINT " "; : GOTO 200
150   REM Timer reached 0 - print character
160   T(X) = S(X)
165   R = INT(RND(1)*10)
170   IF R < 2 THEN PRINT CHR$(R*5+48); : GOTO 200
175   R = INT(RND(1)*56) + 166
180   PRINT CHR$(R);
200   IF INT(RND(1)*50) = 0 THEN A(X) = 1 - A(X)
210 NEXT X
220 GOTO 120
