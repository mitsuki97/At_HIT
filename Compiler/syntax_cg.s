ε -1
id 1
const_int 2
const_real 3
const_char 4
const_string 5
const_bool 6
+ 7
- 8
* 9
/ 10
not 11
or 12
and 13
== 14
!= 15
= 16
> 17
< 18
>= 19
<= 20
, 21
; 22
( 23
) 24
[ 25
] 26
{ 27
} 28
char 29
int 30
real 31
bool 32
for 33
while 34
break 35
continue 36
if 37
else 38
return 39
call 40
SS 100
E 101
T 102
F 103
TY 104
D 105
A 106
LEFT 107
ELIST 108
P 109
PA 110
B 111
Y 112
Z 113
R 114
S 115
L 116
PL 117
PO 118
G 119
CC 120
CLIST 121
M 200
M1 201
M2 202
M3 203
M4 204
### ###
SS CC
E E@+@T|E@-@T|T
T T@*@F|T@/@F|F
F id|const_int|const_real|(@E@)
TY char|int|real|bool
D TY@id|TY@id@=@E|D@,@id|D@,@id@=@E|TY@CLIST@]|D@,@CLIST@]
A LEFT@=@E
LEFT ELIST@]|id
ELIST ELIST@,@E|id@[@E
P TY@id@(@PA@)@M@{@L@}
PA TY@id|ε|TY@id@,@PA
B B@or@Y|Y|E@R@E
Y Y@and@Z|Z
Z const_bool|(@B@)
R >|<|==|>=|<=|!=
S if@(@B@)@M1@{@L@}|if@(@B@)@M1@{@L@}@else@M2@{@L@}|while@(@B@)@M4@{@L@}|A@;|D@;|call@id@(@PL@)@;|return@E@;
L L@S|S
PL PL@,@PO|PO
PO E|ε
G D@;|P
CC G|G@CC
M ε
M1 ε
M2 ε
M3 ε
M4 ε
CLIST CLIST@,@const_int|id@[@const_int