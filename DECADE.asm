MOV 30,#3FH
MOV 31,#06H
MOV 32,#5BH
MOV 33,#4FH
MOV 34,#66H
MOV 35,#6DH
MOV 36,#7DH
MOV 37,#07H
MOV 38,#7FH
MOV 39,#6FH
START : MOV R1,#30H
LOOP:MOV P1,R1
     INC R1
     LCALL DELAY
     CJNE R1,#3AH,LOOP
SJMP START
DELAY: MOV R2,#04H
LOOP1:MOV R3,#04H
HERE: DJNZ R3,HERE
DJNZ R2, LOOP1
RET
