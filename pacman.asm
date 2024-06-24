INCLUDE Irvine32.inc

.data

ground BYTE "------------------------------------------------------------------------------------------------------------------------",0
ground1 BYTE "|",0ah,0
ground2 BYTE "|",0
horizontalwallbig byte "-----------------------------------", 0
verticalwall byte "|", 0
horizontalwallsmall byte "---------", 0
maze1vertcoord1 db 21,5,21,6,21,7,21,8,21,9,21,10,21,11,35,7,35,8,35,9,85,7,85,8,85,9,100,5,100,6,100,7,100,8,100,9,100,10,100,11,21,14,21,15,21,16,59,14
maze1vertcoord2 db 59,15,59,16,100,14,100,15,100,16,21,19,21,20,21,21,21,22,21,23,21,24,21,25,35,21,35,22,35,23,85,21,85,22, 85,23,100,19,100,20,100,21,100,22,100,23,100,24 
maze1vertcoord3 db 100,25
maze2vertcoord1 db 21,5,21,6,21,7,21,8,21,9,21,10,21,11,59,6,59,7,100,5,100,6,100,7,100,8,100,9,100,10,100,11,21,13,21,14,21,15,21,16,21,17,36,11,36,12,36,13
maze2vertcoord2 db 48,12,48,13,48,14,63,13,63,14,63,15,59,14,59,15,59,16,81,16,81,17,81,18,78,17,78,18,78,19,100,13,100,14,100,15,100,16,100,17,21,19,21,20,21,21,21,22
maze2vertcoord3 db 21,23,21,24,21,25,59,23,59,24,100,19,100,20,100,21,100,22,100,23,100,24,100,25
maze3vertcoord1 db 5,4,5,5,5,6,10,6,10,7,10,8,10,9,10,10,10,11,10,12,10,13,10,14,10,15,10,16,10,17,10,18,10,19,10,20,10,21,10,22,10,23,10,24
maze3vertcoord2 db 16,6,16,7,16,8,16,9,16,10,16,11,16,12,16,18,16,19,16,20,16,21,16,22,16,23,16,24,44,12,44,13,44,14,44,15,44,16,44,17,44,18,59,7,59,8,59,9
maze3vertcoord3 db 59,21,59,22,59,23,59,12,59,13,59,14,59,15,59,16,59,17,59,18,74,12,74,13,74,14,74,15,74,16,74,17,74,18,101,6,101,7,101,8,101,9,101,10,101,11,101,12
maze3vertcoord4 db 101,18,101,19,101,20,101,21,101,22,101,23,101,24,114,13,114,14,114,15,114,16,114,17,114,23,114,24,114,25,114,26
maze3vertcoord5 db 107,6,107,7,107,8,107,9,107,10,107,11,107,12,107,13,107,14,107,15,107,16,107,17,107,18,107,19,107,20,107,21,107,22,107,23,107,24
maze1horsmallcoord db 30,3,55,3,80,3,12,8,22,8,91,8,101,8,30,15,80,15,12,22,22,22,91,22,101,22,30,27,55,27,80,27
maze2horsmallcoord db 12,8,22,8,51,5,60,5,91,8,101,8,22,15,37,13,40,11,55,12,59,17,73,15,78,20,91,15,12,22,22,22,32,25,51,25,60,25,91,22,101,22
maze3horsmallcoord db 5,3,55,3,11,15,20,15,17,18,26,6,26,24,35,12,35,18,50,15,60,15,75,12,75,18,84,6,92,12,84,24,92,18,89,15,98,15,55,27,105,26,17,12
maze1horbigcoord db 42,8,42,22
maze2horbigcoord db 42,8,42,22
maze3horbigcoord db 42,6,42,24
m1coinsY db 3,6,11,13,18,21,24,27 
m1coinsX db 5,15,25,42,46,50,66,70,74,94,104,114
m2coinsY db 3,6,11,13,18,21,24,27 
m2coinsX db 5,15,25,42,46,50,66,70,74,94,104,114
m3coinsY db 3,6,11,13,18,21,24,27 
m3coinsX db 5,15,25,42,46,50,66,70,74,94,104,114
maze1coinscoord db 5,3,5,6,5,11,5,13,5,18,5,21,5,24,5,27,15,3,15,6,15,11,15,13,15,18,15,21,15,24,15,27,25,3,25,6,25,11,25,13,25,18,25,21,25,24,25,27 
           db 42,3,42,6,42,11,42,13,42,18,42,21,42,24,42,27,46,3,46,6,46,11,46,13,46,18,46,21,46,24,46,27,50,3,50,6,50,11,50,13,50,18,50,21,50,24,50,27
           db 66,3,66,6,66,11,66,13,66,18,66,21,66,24,66,27,70,3,70,6,70,11,70,13,70,18,70,21,70,24,70,27,74,3,74,6,74,11,74,13,74,18,74,21,74,24,74,27
           db 94,3,94,6,94,11,94,13,94,18,94,21,94,24,94,27,104,3,104,6,104,11,104,13,104,18,104,21,104,24,104,27,114,3,114,6,114,11,114,13,114,18,114,21,114,24,114,27
maze2coinscoord db 5,3,5,6,5,11,5,13,5,18,5,21,5,24,5,27,15,3,15,6,15,11,15,13,15,18,15,21,15,24,15,27,25,3,25,6,25,11,25,13,25,18,25,21,25,24,25,27 
           db 42,3,42,6,42,11,42,13,42,18,42,21,42,24,42,27,46,3,46,6,46,11,46,13,46,18,46,21,46,24,46,27,50,3,50,6,50,11,50,13,50,18,50,21,50,24,50,27
           db 66,3,66,6,66,11,66,13,66,18,66,21,66,24,66,27,70,3,70,6,70,11,70,13,70,18,70,21,70,24,70,27,74,3,74,6,74,11,74,13,74,18,74,21,74,24,74,27
           db 94,3,94,6,94,11,94,13,94,18,94,21,94,24,94,27,104,3,104,6,104,11,104,13,104,18,104,21,104,24,104,27,114,3,114,6,114,11,114,13,114,18,114,21,114,24,114,27
maze3coinscoord db 5,3,5,6,5,11,5,13,5,18,5,21,5,24,5,27,15,3,15,6,15,11,15,13,15,18,15,21,15,24,15,27,25,3,25,6,25,11,25,13,25,18,25,21,25,24,25,27 
           db 42,3,42,6,42,11,42,13,42,18,42,21,42,24,42,27,46,3,46,6,46,11,46,13,46,18,46,21,46,24,46,27,50,3,50,6,50,11,50,13,50,18,50,21,50,24,50,27
           db 66,3,66,6,66,11,66,13,66,18,66,21,66,24,66,27,70,3,70,6,70,11,70,13,70,18,70,21,70,24,70,27,74,3,74,6,74,11,74,13,74,18,74,21,74,24,74,27
           db 94,3,94,6,94,11,94,13,94,18,94,21,94,24,94,27,104,3,104,6,104,11,104,13,104,18,104,21,104,24,104,27,114,3,114,6,114,11,114,13,114,18,114,21,114,24,114,27
temp1 byte 2
temp2 byte 0
coin byte "o", 0
temp byte ?
currentLevel db 0

strScore BYTE "Your score is: ",0
score BYTE 0

strLives BYTE "Lives Remaining: ",0
lives BYTE 3

xPos BYTE 5
yPos BYTE 23

xFruitPos BYTE ?
yFruitPos BYTE ?

xPPPos BYTE ?
yPPPos BYTE ?

inputChar BYTE ?

title1 db " .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .-----------------.",0
title2 db "| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |",0
title3 db "| |   ______     | || |      __      | || |     ______   | || | ____    ____ | || |      __      | || | ____  _____  | |",0
title4 db "| |  |_   __ \   | || |     /  \     | || |   .' ___  |  | || ||_   \  /   _|| || |     /  \     | || ||_   \|_   _| | |",0
title5 db "| |    | |__) |  | || |    / /\ \    | || |  / .'   \_|  | || |  |   \/   |  | || |    / /\ \    | || |  |   \ | |   | |",0
title6 db "| |    |  ___/   | || |   / ____ \   | || |  | |         | || |  | |\  /| |  | || |   / ____ \   | || |  | |\ \| |   | |",0
title7 db "| |   _| |_      | || | _/ /    \ \_ | || |  \ `.___.'\  | || | _| |_\/_| |_ | || | _/ /    \ \_ | || | _| |_\   |_  | |",0
title8 db "| |  |_____|     | || ||____|  |____|| || |   `._____.'  | || ||_____||_____|| || ||____|  |____|| || ||_____|\____| | |",0
title9 db "| |              | || |              | || |              | || |              | || |              | || |              | |",0
title10 db "| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |",0
title11 db " '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------' ", 0
namePrompt db "PLEASE ENTER YOUR NAME: ", 0
userName db ?
insTitle db "GAME INSTRUCTIONS", 0
instructions db "           THE PLAYER CONTROLS PAC-MAN, REPRESENTED BY AN X ON THE SCREEN.", 0Ah, "            YOU MUST EAT ALL THE DOTS IN THE ENCLOSED MAZE BUT ALSO AVOID THE GHOSTS.", 0Ah, "          IF A GHOST CATCHES YOU, YOU LOSE A LIFE.", 0Ah, "           YOU ONLY HAVE 3 LIVES, AND THEN IT'S GAME OVER.", 0Ah, "            USE POWERUPS AND GET THE HIGHEST SCORE.", 0Ah, 0Ah, "                       GOOD LUCK!!!", 0
menuTitle1 db "                 _____          __  __ ______        __  __ ______ _   _ _    _ ", 0
menuTitle2 db "                / ____|   /\   |  \/  |  ____|      |  \/  |  ____| \ | | |  | |", 0
menuTitle3 db "               | |  __   /  \  | \  / | |__         | \  / | |__  |  \| | |  | |", 0
menuTitle4 db "               | | |_ | / /\ \ | |\/| |  __|        | |\/| |  __| | . ` | |  | |", 0
menuTitle5 db "               | |__| |/ ____ \| |  | | |____       | |  | | |____| |\  | |__| |", 0
menuTitle6 db "                \_____/_/    \_\_|  |_|______|      |_|  |_|______|_| \_|\____/ ", 0
currPage db 1
playGame1 db "                              1. PLAY GAME",0
inst1 db "                              2. INSTRUCTIONS",0
hs1 db "                              3. HIGH SCORES",0
leave1 db "                              4. EXIT",0
menuPrompt db "Please enter the number of your choice: ", 0
menuChoice db ?
levelone1 db "                           __       ___________    ____  _______  __          __  ", 0
levelone2 db "                          |  |     |   ____\   \  /   / |   ____||  |        /_ | ", 0
levelone3 db "                          |  |     |  |__   \   \/   /  |  |__   |  |         | | ", 0
levelone4 db "                          |  |     |   __|   \      /   |   __|  |  |         | | ", 0
levelone5 db "                          |  `----.|  |____   \    /    |  |____ |  `----.    | | ", 0
levelone6 db "                          |_______||_______|   \__/     |_______||_______|    |_| ", 0

leveltwo1 db "                           __       ___________    ____  _______  __          ___   ", 0
leveltwo2 db "                          |  |     |   ____\   \  /   / |   ____||  |        |__ \  ", 0
leveltwo3 db "                          |  |     |  |__   \   \/   /  |  |__   |  |           ) | ", 0
leveltwo4 db "                          |  |     |   __|   \      /   |   __|  |  |          / /  ", 0
leveltwo5 db "                          |  `----.|  |____   \    /    |  |____ |  `----.    / /_  ", 0
leveltwo6 db "                          |_______||_______|   \__/     |_______||_______|   |____| ", 0

levelthree1 db "                         __       ___________    ____  _______  __          ____   ", 0
levelthree2 db "                        |  |     |   ____\   \  /   / |   ____||  |        |___ \  ", 0
levelthree3 db "                        |  |     |  |__   \   \/   /  |  |__   |  |          __) | ", 0
levelthree4 db "                        |  |     |   __|   \      /   |   __|  |  |         |__ <  ", 0
levelthree5 db "                        |  `----.|  |____   \    /    |  |____ |  `----.    ___) | ", 0
levelthree6 db "                        |_______||_______|   \__/     |_______||_______|   |____/  ", 0
onefruitmade db 0
nameenter1 db "                  _____ _   _ _____ ___________  __   _______ _   _______   _   _   ___  ___  ___ _____ ", 0
nameenter2 db "                 |  ___| \ | |_   _|  ___| ___ \ \ \ / /  _  | | | | ___ \ | \ | | / _ \ |  \/  ||  ___|", 0
nameenter3 db "                 | |__ |  \| | | | | |__ | |_/ /  \ V /| | | | | | | |_/ / |  \| |/ /_\ \| .  . || |__  ", 0
nameenter4 db "                 |  __|| . ` | | | |  __||    /    \ / | | | | | | |    /  | . ` ||  _  || |\/| ||  __| ", 0
nameenter5 db "                 | |___| |\  | | | | |___| |\ \    | | \ \_/ / |_| | |\ \  | |\  || | | || |  | || |___ ", 0
nameenter6 db "                 \____/\_| \_/ \_/ \____/\_| \_|   \_/  \___/ \___/\_| \_| \_| \_/\_| |_/\_|  |_/\____/ ", 0
gameSetup1 db "                       _____   ___  ___  ___ _____       _____ _____ _____ _   _______ ", 0
gameSetup2 db "                      |  __ \ / _ \ |  \/  ||  ___|     /  ___|  ___|_   _| | | | ___ \", 0
gameSetup3 db "                      | |  \// /_\ \| .  . || |__       \ `--.| |__   | | | | | | |_/ /", 0
gameSetup4 db "                      | | __ |  _  || |\/| ||  __|       `--. \  __|  | | | | | |  __/ ", 0
gameSetup5 db "                      | |_\ \| | | || |  | || |___      /\__/ / |___  | | | |_| | |    ", 0
gameSetup6 db "                       \____/\_| |_/\_|  |_/\____/      \____/\____/  \_/  \___/\_|    ", 0
setupText db "          CONTROLS:  W,A,S,D FOR MOVEMENT", 0Ah, 0Ah, "          OBJECTIVES: 96 SCORE TO COMPLETE LEVEL 1, 174 SCORE TO COMPLETE LEVEL 2, 300 TO WIN THE GAME", 0Ah, 0Ah, "          FRIENDS: FOOD, FRUIT (F), POWER PELLET (P)", 0Ah, 0Ah, "          ENEMIES: GHOSTS", 0
instructions1 db "           _____ _   _  _____ ___________ _   _ _____ _____ _____ _____ _   _  _____ ", 0
instructions2 db "          |_   _| \ | |/  ___|_   _| ___ \ | | /  __ \_   _|_   _|  _  | \ | |/  ___|", 0
instructions3 db "            | | |  \| |\ `--.  | | | |_/ / | | | /  \/ | |   | | | | | |  \| |\ `--. ", 0
instructions4 db "            | | | . ` | `--. \ | | |    /| | | | |     | |   | | | | | | . ` | `--. \", 0
instructions5 db "           _| |_| |\  |/\__/ / | | | |\ \| |_| | \__/\ | |  _| |_\ \_/ / |\  |/\__/ /", 0
instructions6 db "           \___/\_| \_/\____/  \_/ \_| \_|\___/ \____/ \_/  \___/ \___/\_| \_/\____/ ", 0
youwin1 db "                ____    ____  ______    __    __     ____    __    ____  __  .__   __.  __  ", 0
youwin2 db "                \   \  /   / /  __  \  |  |  |  |    \   \  /  \  /   / |  | |  \ |  | |  | ", 0
youwin3 db "                 \   \/   / |  |  |  | |  |  |  |     \   \/    \/   /  |  | |   \|  | |  | ", 0
youwin4 db "                  \_    _/  |  |  |  | |  |  |  |      \            /   |  | |  . `  | |  | ", 0
youwin5 db "                    |  |    |  `--'  | |  `--'  |       \    /\    /    |  | |  |\   | |__| ", 0
youwin6 db "                    |__|     \______/   \______/         \__/  \__/     |__| |__| \__| (__) ", 0
youwinPrompt db "               WOULD YOU LIKE TO PLAY AGAIN? ", 0Ah, 0Ah, 0Ah, "               Press y for yes, n for no", 0
youwinChoice db 0
youlose1 db "           ____    ____  ______    __    __      __        ______        _______. _______                  ___", 0
youlose2 db "           \   \  /   / /  __  \  |  |  |  |    |  |      /  __  \      /       ||   ____|          _     /  /", 0
youlose3 db "            \   \/   / |  |  |  | |  |  |  |    |  |     |  |  |  |    |   (----`|  |__            (_)   |  | ", 0
youlose4 db "             \_    _/  |  |  |  | |  |  |  |    |  |     |  |  |  |     \   \    |   __|                 |  | ", 0
youlose5 db "               |  |    |  `--'  | |  `--'  |    |  `----.|  `--'  | .----)   |   |  |____           _    |  | ", 0
youlose6 db "               |__|     \______/   \______/     |_______| \______/  |_______/    |_______|         (_)   |  | ", 0
youlose7 db "                                                                                                          \__\", 0
youlosePrompt db "               WOULD YOU LIKE TO TRY AGAIN? ", 0Ah, 0Ah, 0Ah, "               Press y for yes, n for no", 0 
youloseChoice db 0
ghost1 db "G",0
xGhost1Pos db ?
yGhost1Pos db ?
ghost2 db "G",0
xGhost2Pos db ?
yGhost2Pos db ?
ghost3 db "G",0
xGhost3Pos db ?
yGhost3Pos db ?
ghost4 db "G",0
xGhost4Pos db ?
yGhost4Pos db ?
collision db 0
G2collision db 0
G3collision db 0
G4collision db 0
upB db 0
downB db 0
leftB db 0
rightB db 1
G2upB db 0
G2downB db 0
G2rightB db 0
G2leftB db 1
G3upB db 0
G3downB db 0
G3rightB db 0
G3leftB db 1
G4upB db 0
G4downB db 0
G4rightB db 0
G4leftB db 1
ghostMovementCounter dword 0
G1halvesRes db 0
G2halvesRes db 0
G3halvesRes db 0
G4halvesRes db 0
G1MovRes db 0
G2MovRes db 0
G3MovRes db 0
G4MovRes db 0
G1movement db 1
G2movement db 1
G3movement db 1
G4movement db 1
PP db 0
inputfilename db "input.txt", 0
outputfilename db "output.txt", 0
fileHandle HANDLE ?
playerInfo db 500 dup(?)
stringLength dd 0
usernamelength dd 0
bytesWritten dd 0

.code
   
   read PROC
      mov edx,offset inputfilename
      call OpenInputFile
      mov eax,fileHandle
      mov edx,offset playerInfo
      mov ecx,500
      call ReadFromFile
      mov stringLength,eax
      ret
   read ENDP

   write PROC
       mov edx,offset outputfilename
       call CreateOutputFile
       mov fileHandle, eax
       mov ecx, stringLength
       mov edx, offset playerInfo
       call WriteToFile
;       mov bytesWritten,stringLength
       ret
   write ENDP

    AppendToString PROC
        mov ebp, stringLength
        inc ebp
        mov edi, offset playerInfo
        mov esi, offset userName

        mov ecx, usernamelength
        AddName:
            mov al, [esi]
            mov [edi+ebp], al
            inc esi
            inc ebp
        Loop AddName

        AddScore:
        mov al, " "
        mov [edi+ebp], al
        mov al, score
        mov [edi+ebp+1], al
        mov al, " "
        mov [edi+ebp], al

        ret
    AppendToString ENDP


    maze1 PROC
        mov currentLevel, 1
        mov eax, yellow+(yellow*16)
        call SetTextColor

        mov ecx, 24
        mov esi, offset maze1vertcoord1
        m1v1:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m1v1

        mov ecx, 24
        mov esi, offset maze1vertcoord2
        m1v2:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m1v2

        mov esi, offset maze1vertcoord3
        mov dl, [esi]
        inc esi
        mov dh, [esi]
        call Gotoxy
        mov eax, 15
        call delay
        mov edx, offset verticalwall
        call writestring

        mov ecx, 16
        mov esi, offset maze1horsmallcoord
        m1hs:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            mov eax, 50
            call delay
            call Gotoxy
            mov edx, offset horizontalwallsmall
            call writestring
        loop m1hs

        mov ecx, 2
        mov esi, offset maze1horbigcoord
        m1hb:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 50
            call delay
            mov edx, offset horizontalwallbig
            call writestring
        loop m1hb

        ret
    maze1 ENDP

    maze2 PROC
        mov currentLevel, 2
        mov eax, lightgreen+(lightgreen*16)
        call SetTextColor

        mov ecx, 24
        mov esi, offset maze2vertcoord1
        m2v1:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m2v1

        mov ecx, 24
        mov esi, offset maze2vertcoord2
        m2v2:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m2v2

        mov ecx, 12
        mov esi, offset maze2vertcoord3
        m2v3:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m2v3

        mov ecx, 21
        mov esi, offset maze2horsmallcoord
        m2hs:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 50
            call delay
            mov edx, offset horizontalwallsmall
            call writestring
        loop m2hs

        mov ecx, 2
        mov esi, offset maze2horbigcoord
        m2hb:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 50
            call delay
            mov edx, offset horizontalwallbig
            call writestring
        loop m2hb

        ret
    maze2 ENDP


    maze3 PROC
        mov currentLevel, 3
        mov eax, magenta+(magenta*16)
        call SetTextColor

        mov ecx, 22
        mov esi, offset maze3vertcoord1
        m3v1:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m3v1

        mov ecx, 24
        mov esi, offset maze3vertcoord2
        m3v2:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m3v2

        mov ecx, 24
        mov esi, offset maze3vertcoord3
        m3v3:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m3v3

        mov ecx, 16
        mov esi, offset maze3vertcoord4
        m3v4:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m3v4

        mov ecx, 19
        mov esi, offset maze3vertcoord5
        m3v5:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 15
            call delay
            mov edx, offset verticalwall
            call writestring
        loop m3v5

        mov ecx, 22
        mov esi, offset maze3horsmallcoord
        m3hs:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 50
            call delay
            mov edx, offset horizontalwallsmall
            call writestring
        loop m3hs

        mov ecx, 2
        mov esi, offset maze3horbigcoord
        m3hb:
            mov dl, [esi]
            inc esi
            mov dh, [esi]
            inc esi
            call Gotoxy
            mov eax, 50
            call delay
            mov edx, offset horizontalwallbig
            call writestring
        loop m3hb
        
        ret
    maze3 ENDP

    printCoins PROC
        ;28x119 screensize
        mov eax, yellow
        call SetTextColor

        cmp currentLevel, 1
        je printmaze1coins
        cmp currentLevel, 2
        je printmaze2coins
        cmp currentLevel, 3
        je printmaze3coins

        printmaze1coins:
            mov esi, offset m1coinsY
            mov edi, offset m1coinsX
            mov ecx, 8
            m1cY:
                mov edi, offset m1coinsX
                mov temp, cl
                mov ecx, 12
                m1cX:
                    mov dh, [esi]
                    mov dl, [edi]
                    call Gotoxy
                    mov eax, 20
                    call delay
                    mov edx, offset coin
                    call writestring
                    inc edi
                loop m1cX
                inc esi
                mov cl, temp
            loop m1cY
            jmp printingDone

        printmaze2coins:
            mov esi, offset m2coinsY
            mov edi, offset m2coinsX
            mov ecx, 8
            m2cY:
                mov edi, offset m2coinsX
                mov temp, cl
                mov ecx, 12
                m2cX:
                    mov dh, [esi]
                    mov dl, [edi]
                    call Gotoxy
                    mov edx, offset coin
                    call writestring
                    inc edi
                loop m2cX
                inc esi
                mov cl, temp
            loop m2cY
            jmp printingDone

        printmaze3coins:
            mov esi, offset m3coinsY
            mov edi, offset m3coinsX
            mov ecx, 8
            m3cY:
                mov edi, offset m3coinsX
                mov temp, cl
                mov ecx, 12
                m3cX:
                    mov dh, [esi]
                    mov dl, [edi]
                    call Gotoxy
                    mov edx, offset coin
                    call writestring
                    inc edi
                loop m3cX
                inc esi
                mov cl, temp
            loop m3cY
        jmp printingDone

        printingDone:
            ret
    printCoins ENDP

    page1 PROC
        mov eax, yellow+(black*16)
        call SetTextColor
        call clrscr
        mov dl, 0
        mov dh, 10
        call Gotoxy

        mov eax, 30
        call delay
        mov edx, offset title1
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title2
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title3
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title4
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title5
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title6
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title7
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title8
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title9
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title10
        call writestring
        mov eax, 30
        call delay
        mov edx, offset title11
        call writestring

        mov eax, 3000
        call delay
        call clrscr
        mov dh, 0
        mov dl, 0
        call Gotoxy

        mov eax, yellow+(black*16)
        call SetTextColor

        mov eax, 30
        call delay
        mov edx, offset nameenter1
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset nameenter2
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset nameenter3
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset nameenter4
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset nameenter5
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset nameenter6
        call writestring

        mov dl, 30
        mov dh, 15
        call Gotoxy
        mov eax, 30
        call delay
        mov edx, offset namePrompt
        call writestring
        mov userName, 0
        mov edx, offset userName
        mov ecx, 15
        call readstring

        mov usernamelength, eax
        mov dl, 20
        mov dh, 27
        call Gotoxy
        call waitmsg
        ret
    page1 ENDP

    inst PROC
        mov eax, blue+(black*16)
        call SetTextColor
        call clrscr
        mov eax, 30
        call delay
        mov edx, offset instructions1
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset instructions2
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset instructions3
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset instructions4
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset instructions5
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset instructions6
        call writestring
        call crlf

        mov eax, red+(black*16)
        call SetTextColor

        mov dl, 0
        mov dh, 10
        call Gotoxy
        mov eax, 30
        call delay
        mov edx, offset instructions
        call writestring

        mov eax, 5000
        call delay
        ret
    inst ENDP

    menu PROC
        mov eax, yellow+(black*16)
        call SetTextColor
        call clrscr
        mov eax, 30
        call delay
        mov edx, offset menuTitle1
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset menuTitle2
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset menuTitle3
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset menuTitle4
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset menuTitle5
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset menuTitle6
        call writestring
        
        mov ecx, 6
        nextpls:
            call crlf
        loop nextpls

        mov eax, 1000
        call delay

        mov eax, red+(black*16)
        call SetTextColor

        mov dl, 0
        mov dh, 12
        mov eax, 30
        call delay
        mov edx, offset playGame1
        call writestring
        call crlf
        call crlf
        mov dl, 0
        mov dh, 3
        mov eax, 30
        call delay
        mov edx, offset inst1
        call writestring
        call crlf
        call crlf
        mov dl, 0
        mov dh, 3
        mov eax, 30
        call delay
        mov edx, offset hs1
        call writestring
        call crlf
        call crlf
        mov dl, 0
        mov dh, 3
        mov eax, 30
        call delay
        mov edx, offset leave1
        call writestring
        call crlf
        call crlf
        
        mov eax, 1000
        call delay

        mov dl, 40
        mov dh, 20
        call Gotoxy
        mov eax, 30
        call delay
        mov edx, offset menuPrompt
        call writestring
        call readint
        mov menuChoice, al

        mov dl, 50
        mov dh, 25
        call Gotoxy
        call waitmsg

        ret
    menu ENDP

    makeGround PROC
        mov eax, black+(black*16)
        call SetTextColor
        call clrscr
        call printCoins
        ; draw ground at (0,29):
        mov eax,blue+(blue*16) ;(black * 16)
        call SetTextColor
        mov dl,0
        mov dh,29
        call Gotoxy
        mov eax, 30
        call delay
        mov edx,OFFSET ground
        call WriteString
        mov dl,0
        mov dh,1
        call Gotoxy
        mov edx,OFFSET ground
        call WriteString

        mov ecx,28
        mov dh,1
        mov temp, dh
        l1:
        mov dl,0
        mov dh, temp
        call Gotoxy
        mov eax, 30
        call delay
        mov edx,OFFSET ground2
        call WriteString
        inc temp
        loop l1

        mov ecx,27
        mov dh,2
        mov temp,dh
        l2:
        mov dh,temp
        mov dl,119
        call Gotoxy
        mov eax, 30
        call delay
        mov edx,OFFSET ground2
        call WriteString
        inc temp
        loop l2
        call DrawPlayer

        ret
    makeGround ENDP

    dispLevel1 PROC
        mov eax, yellow+(black*16)
        call SetTextColor
        call clrscr
        mov dl, 0
        mov dh, 10
        call Gotoxy

        mov eax, 30
        call delay
        mov edx, offset levelone1
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelone2
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelone3
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelone4
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelone5
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelone6
        call writestring
        mov eax, 1000
        call delay

        ret
    dispLevel1 ENDP

    dispLevel2 PROC
        mov eax, yellow+(black*16)
        call SetTextColor
        call clrscr
        mov dl, 0
        mov dh, 10
        call Gotoxy

        mov eax, 30
        call delay
        mov edx, offset leveltwo1
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset leveltwo2
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset leveltwo3
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset leveltwo4
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset leveltwo5
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset leveltwo6
        call writestring
        mov eax, 1000
        call delay
        ret
    dispLevel2 ENDP

    dispLevel3 PROC
        mov eax, yellow+(black*16)
        call SetTextColor
        call clrscr
        mov dl, 0
        mov dh, 10
        call Gotoxy
        mov eax, 30
        call delay
        mov edx, offset levelthree1
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelthree2
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelthree3
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelthree4
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelthree5
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset levelthree6
        call writestring
        mov eax, 1000
        call delay

        ret
    dispLevel3 ENDP

    gameSetup PROC
        mov eax, yellow+(black*16)
        call SetTextColor
        call clrscr
        mov eax, 30
        call delay
        mov edx, offset gameSetup1
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset gameSetup2
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset gameSetup3
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset gameSetup4
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset gameSetup5
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset gameSetup6
        call writestring
        call crlf

        mov eax, red+(black*16)
        call SetTextColor

        mov dl, 0
        mov dh, 10
        call Gotoxy
        mov eax, 30
        call delay
        mov edx, offset setupText
        call writestring

        mov eax, 5000
        call delay

        ret
    gameSetup ENDP

    youWin PROC
        mov eax, yellow+(black*16)
        call SetTextColor
        call clrscr
        mov dl, 0
        mov dh, 10
        call Gotoxy

        mov eax, 30
        call delay
        mov edx, offset youwin1
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youwin2
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youwin3
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youwin4
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youwin5
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youwin6
        call writestring
        mov eax, 1000
        call delay

        mov dl, 0
        mov dh, 20
        call Gotoxy
        mov edx, offset youwinPrompt
        call writestring

        call readchar

        mov youwinChoice, al

        ret
    youWin ENDP

youLose PROC
        mov eax, yellow+(black*16)
        call SetTextColor
        call clrscr
        mov dl, 0
        mov dh, 10
        call Gotoxy

        mov eax, 30
        call delay
        mov edx, offset youlose1
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youlose2
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youlose3
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youlose4
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youlose5
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youlose6
        call writestring
        call crlf
        mov eax, 30
        call delay
        mov edx, offset youlose7
        call writestring
        mov eax, 1000
        call delay

        mov dl, 0
        mov dh, 20
        call Gotoxy
        mov edx, offset youlosePrompt
        call writestring

        call readchar

        mov youloseChoice, al

    ret
youLose ENDP

main PROC
    StartGame:
        
    mov lives, 3
    mov score, 0
    mov onefruitmade, 0
    mov G1Movement, 1
    mov G2Movement, 1
    mov G3Movement, 1
    mov G4Movement, 1
    mov PP, 0
    call page1
    call clrscr
    call menu

    checkAgain:
    cmp menuChoice, 1
    je gameLagao
    cmp menuChoice, 2
    je instructionsDikhao
    cmp menuChoice, 4
    je gameBandKaro
    exit

    gameBandKaro:
        exit

    instructionsDikhao:
        call inst
        mov menuChoice, 0
        call menu
        jmp checkAgain

    gameLagao:
    call clrscr
    call gameSetup
    call dispLevel1

    mov eax, black+(black*16)
    call SetTextColor
    call clrscr
    call printCoins
    ; draw ground at (0,29):
    mov eax,blue+(blue*16) ;(black * 16)
    call SetTextColor
    mov dl,0
    mov dh,29
    mov eax, 30
    call delay
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov dl,0
    mov dh,1
    mov eax, 30
    call delay
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString

    mov ecx,28
    mov dh,1
    mov temp, dh
    l1:
    mov dl,0
    mov dh, temp
    call Gotoxy
    mov eax, 30
    call delay
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l1

    mov ecx,27
    mov dh,2
    mov temp,dh
    l2:
    mov dh,temp
    mov dl,119
    call Gotoxy
    mov eax, 30
    call delay
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2
    call DrawPlayer

;    call CreateRandomFruit
;    call DrawFruit

    comment @
    call CreateGhost1
    call DrawGhost1
    call CreateGhost2
    call DrawGhost2
    call CreateGhost3
    call DrawGhost3
    call CreateGhost4
    call DrawGhost4
    @

    call Randomize

    call maze1
    ;call maze2
    ;call maze3

    gameLoop:
        cmp lives, 0
        je lose
        jmp froot
        lose:
;            call read
;            call AppendToString
;            call write
            call youLose
            cmp youLoseChoice, 'n'
            je khatamShadL
            cmp youLoseChoice, 'y'
            je StartGame

        khatamShadL:
            exit
          
        froot:
        cmp currentLevel, 1
        je fruit
        cmp currentLevel, 2
        je fruit
        cmp currentLevel, 3
        je fruit

        fruit:
            cmp onefruitmade, 0
            je makeNew
            jmp proceed
            makeNew:
            call CreateRandomFruit
            call DrawFruit
            cmp currentLevel, 1
            je fruitmade
            call CreateRandomPP
            call DrawPP
            fruitmade:
            mov onefruitmade, 1

        proceed:

        cmp currentLevel, 1
        je PlayerFruitCol

        cmp PP, 1
        je GhostPlayerCol
        ;GHOST FRUIT COLLISIONS
        call G1FruitCol
        call G2FruitCol
        call G3FruitCol
        call G4FruitCol
        
        ;GHOST COIN COLLISIONS
        call G1coincollision
        call G2coincollision
        call G3coincollision
        call G4coincollision

        ;GHOST PP COLLISIONS
        call G1PPCol
        call G2PPCol
        call G3PPCol
        call G4PPCol

        GhostPlayerCol:
        ;GHOST PLAYER COLLISIONS
        
        call G1PlayerCol
        call G2PlayerCol
        call G3PlayerCol
        call G4PlayerCol

        playerFruitCol:
        ;PLAYER FRUIT COLLISION
        mov bl,xPos
        cmp bl,xFruitPos
        jne PlayerPPCollision
        mov bl,yPos
        cmp bl,yFruitPos
        jne PlayerPPCollision
        ; player is intersecting fruit:
        add score, 20
        call CreateRandomFruit
        call DrawFruit

        cmp currentLevel, 1
        je notCollecting

        PlayerPPCollision:
        cmp currentLevel, 1
        je notCollecting

        ;PLAYER PP COLLISION
        mov bl,xPos
        cmp bl,xPPPos
        jne notCollecting
        mov bl,yPos
        cmp bl,yPPPos
        jne notCollecting
        ; player is intersecting PP:
        mov PP, 1
        notCollecting:


        ; getting points:
            cmp currentLevel, 1
            je getL1points
            cmp currentLevel, 2
            je getL2points
            jmp getL3points
            
            getL1points:
                mov esi, offset maze1coinscoord
                mov ecx, 96
                call GetPoints
                jmp teleportation
            getL2points:
                mov esi, offset maze2coinscoord
                mov ecx, 96
                call GetPoints
                jmp teleportation
            getL3points:
                mov esi, offset maze3coinscoord
                mov ecx, 96
                call GetPoints
                jmp teleportation

        teleportation:
        cmp currentLevel, 1
        je checkTeleport1
        cmp currentLevel, 2
        je checkTeleport2
        cmp currentLevel, 3
        je checkTeleport3
        jmp scoreCont

        checkTeleport1:
            cmp xPos, 42
            je checkteleportY1
            jmp scoreCont
            checkteleportY1:
                cmp yPos, 22
                je level2
                jmp scoreCont

        checkTeleport2:
            cmp xPos, 42
            je checkteleportY2
            jmp scoreCont
            checkteleportY2:
                cmp yPos, 22
                je level3
                jmp scoreCont

        checkTeleport3:
            cmp xPos, 42
            je checkteleportY3
            jmp scoreCont
            checkteleportY3:
                cmp yPos, 24
                je win
                jmp scoreCont

        scoreCont:

        cmp score, 50
        je level2

        cmp score, 80
        je level3
        jmp continue

        cmp score, 120
        je win
        jmp continue

        level2:
            call UpdatePlayer
            mov xPos, 5
            mov yPos, 23
            call DrawPlayer
            inc score
            call clrscr
            call dispLevel2
            call makeGround
            call maze2
            call CreateGhost1
            call DrawGhost1
            call CreateGhost2
            call DrawGhost2
            call CreateGhost3
            call DrawGhost3
            call CreateGhost4
            call DrawGhost4
            mov G1movement, 1
            mov G2movement, 1
            mov G3movement, 1
            mov G4movement, 1
            mov onefruitmade, 0
            jmp gameLoop

        level3:
            call UpdatePlayer
            mov xPos, 5
            mov yPos, 23
            call DrawPlayer
            inc score
            call clrscr
            call dispLevel3
            call makeGround
            call maze3
            call CreateGhost1
            call DrawGhost1
            call CreateGhost2
            call DrawGhost2
            call CreateGhost3
            call DrawGhost3
            call CreateGhost4
            call DrawGhost4
            mov G1movement, 1
            mov G2movement, 1
            mov G3movement, 1
            mov G4movement, 1
            mov onefruitmade, 0
            jmp gameLoop

        win:
;            call read
;            call AppendToString
;            call write
            call youWin
            cmp youWinChoice, 'n'
            je khatamShadW
            cmp youWinChoice, 'y'
            je StartGame

        khatamShadW:
            exit

        continue:
        mov eax,white (black * 16)
        call SetTextColor

        ; draw score:
        mov dl,0
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov al,score
        call WriteInt

        mov dl,100
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strLives
        call writestring
        mov al,lives
        call writeint

        mov dl,50
        mov dh,0
        call Gotoxy
        mov edx,OFFSET ghostMovementCounter
        call writeint

        mov collision, 0

        cmp currentLevel, 1
        je userMovement

        cmp PP, 1
        je userMovement
        
        moveGhosts:
            cmp G1Movement, 0
            je G2
            call G1halves
            call Ghost1Movement

            G2:
            cmp G2Movement, 0
            je G3
            call G2halves
            call Ghost2Movement

            G3:
            cmp G3Movement, 0
            je G4
            call G3halves
            call Ghost3Movement

            G4:
            cmp G4Movement, 0
            je userMovement
            call G4halves
            call Ghost4Movement

        userMovement:
        ; get user key input:
        mov eax, 50
        call delay

        call ReadKey
        jz gameLoop
        mov inputChar,al
        add ghostMovementCounter, 1

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        moveUp:
        ; allow player to jump:
        cmp yPos, 2
        je gameLoop
        UpPossible:


        cmp currentLevel, 1
        je Uchecklvl1coord
        cmp currentLevel, 2
        je Uchecklvl2coord
        cmp currentLevel, 3
        je Uchecklvl3coord
        jmp GOUP

        Uchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c1:
                mov al, xPos
                mov bl, yPos
                dec bl
                cmp al, [esi]
                je c2
                jmp f1
                c2:
                    cmp bl, [esi+1]
                    je mf1
                    jmp f1
                    mf1:
                        jmp gameLoop
                f1:
                    add esi, 2
            loop c1

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c3:
                mov al, xPos
                mov bl, yPos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c4
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                jmp f2
                c4:
                    cmp bl, [esi+1]
                    je mf2
                    jmp f2
                    mf2:
                        jmp gameLoop
                f2:
                    add esi, 2
            loop c3
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c5:
                mov al, xPos
                mov bl, yPos
                dec bl
                cmp al, [esi]
                je c6
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times1:
                    cmp al, dl
                    je c6
                    inc dl
                loop check34times1     

                jmp f3
                c6:
                    cmp bl, [esi+1]
                    je mf3
                    jmp f3
                    mf3:
                        jmp gameLoop
                f3:
                    add esi, 2
                mov cl, temp
            loop c5
        jmp GOUP

        Uchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c7:
                mov al, xPos
                mov bl, yPos
                dec bl
                cmp al, [esi]
                je c8
                jmp f4
                c8:
                    cmp bl, [esi+1]
                    je mf4
                    jmp f4
                    mf4:
                        jmp gameLoop
                f4:
                    add esi, 2
            loop c7

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c9:
                mov al, xPos
                mov bl, yPos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c10
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                jmp f5
                c10:
                    cmp bl, [esi+1]
                    je mf5
                    jmp f5
                    mf5:
                        jmp gameLoop
                f5:
                    add esi, 2
            loop c9
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c11:
                mov al, xPos
                mov bl, yPos
                dec bl
                cmp al, [esi]
                je c12
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times2:
                    cmp al, dl
                    je c12
                    inc dl
                loop check34times2
                jmp f3
                c12:
                    cmp bl, [esi+1]
                    je mf6
                    jmp f6
                    mf6:
                        jmp gameLoop
                f6:
                    add esi, 2
                mov cl, temp
            loop c11
        jmp GOUP

        Uchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c13:
                mov al, xPos
                mov bl, yPos
                dec bl
                cmp al, [esi]
                je c14
                jmp f7
                c14:
                    cmp bl, [esi+1]
                    je mf7
                    jmp f7
                    mf7:
                        jmp gameLoop
                f7:
                    add esi, 2
            loop c13

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c15:
                mov al, xPos
                mov bl, yPos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c16
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                jmp f8
                c16:
                    cmp bl, [esi+1]
                    je mf8
                    jmp f8
                    mf8:
                        jmp gameLoop
                f8:
                    add esi, 2
            loop c15
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c17:
                mov al, xPos
                mov bl, yPos
                dec bl
                cmp al, [esi]
                je c18
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times3:
                    cmp al, dl
                    je c18
                    inc dl
                loop check34times3
                jmp f9
                c18:
                    cmp bl, [esi+1]
                    je mf9
                    jmp f9
                    mf9:
                        jmp gameLoop
                f9:
                    add esi, 2
                mov cl, temp
            loop c17
        jmp GOUP

        GOUP:
        call UpdatePlayer
        dec yPos
        call DrawPlayer
        jmp gameLoop

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        moveDown:
        cmp yPos, 28
        je gameLoop
        DownPossible: 
        
        cmp currentLevel, 1
        je Dchecklvl1coord
        cmp currentLevel, 2
        je Dchecklvl2coord
        cmp currentLevel, 3
        je Dchecklvl3coord
        jmp GODOWN
        
        Dchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c19:
                mov al, xPos
                mov bl, yPos
                inc bl
                cmp al, [esi]
                je c20
                jmp f10
                c20:
                    cmp bl, [esi+1]
                    je mf10
                    jmp f10
                    mf10:
                        jmp gameLoop
                f10:
                    add esi, 2
            loop c19

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c21:
                mov al, xPos
                mov bl, yPos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c22
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                jmp f11
                c22:
                    cmp bl, [esi+1]
                    je mf11
                    jmp f11
                    mf11:
                        jmp gameLoop
                f11:
                    add esi, 2
            loop c21
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c23:
                mov al, xPos
                mov bl, yPos
                inc bl
                cmp al, [esi]
                je c24
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times4:
                    cmp al, dl
                    je c24
                    inc dl
                loop check34times4     

                jmp f12
                c24:
                    cmp bl, [esi+1]
                    je mf12
                    jmp f12
                    mf12:
                        jmp gameLoop
                f12:
                    add esi, 2
                mov cl, temp
            loop c23
            jmp GODOWN

        Dchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c25:
                mov al, xPos
                mov bl, yPos
                inc bl
                cmp al, [esi]
                je c26
                jmp f13
                c26:
                    cmp bl, [esi+1]
                    je mf13
                    jmp f13
                    mf13:
                        jmp gameLoop
                f13:
                    add esi, 2
            loop c25

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c27:
                mov al, xPos
                mov bl, yPos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c28
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                jmp f14
                c28:
                    cmp bl, [esi+1]
                    je mf14
                    jmp f14
                    mf14:
                        jmp gameLoop
                f14:
                    add esi, 2
            loop c27
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c29:
                mov al, xPos
                mov bl, yPos
                inc bl
                cmp al, [esi]
                je c30
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times5:
                    cmp al, dl
                    je c30
                    inc dl
                loop check34times5
                jmp f15
                c30:
                    cmp bl, [esi+1]
                    je mf15
                    jmp f15
                    mf15:
                        jmp gameLoop
                f15:
                    add esi, 2
                mov cl, temp
            loop c29
            jmp GODOWN

        Dchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c31:
                mov al, xPos
                mov bl, yPos
                inc bl
                cmp al, [esi]
                je c32
                jmp f16
                c32:
                    cmp bl, [esi+1]
                    je mf16
                    jmp f16
                    mf16:
                        jmp gameLoop
                f16:
                    add esi, 2
            loop c31

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c33:
                mov al, xPos
                mov bl, yPos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c34
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                jmp f17
                c34:
                    cmp bl, [esi+1]
                    je mf17
                    jmp f17
                    mf17:
                        jmp gameLoop
                f17:
                    add esi, 2
            loop c33
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c35:
                mov al, xPos
                mov bl, yPos
                inc bl
                cmp al, [esi]
                je c36
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times6:
                    cmp al, dl
                    je c36
                    inc dl
                loop check34times6
                jmp f18
                c36:
                    cmp bl, [esi+1]
                    je mf18
                    jmp f18
                    mf18:
                        jmp gameLoop
                f18:
                    add esi, 2
                mov cl, temp
            loop c35
            jmp GODOWN


        GODOWN:
        call UpdatePlayer
        inc yPos
        call DrawPlayer
        jmp gameLoop

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        moveLeft:
        cmp xPos, 1
        je gameLoop
        LeftPossible:

        cmp currentLevel, 1
        je Lchecklvl1coord
        cmp currentLevel, 2
        je Lchecklvl2coord
        cmp currentLevel, 3
        je Lchecklvl3coord
        jmp GOLEFT

        Lchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c37:
                mov al, xPos
                mov bl, yPos
                dec al
                cmp al, [esi]
                je c38
                jmp f19
                c38:
                    cmp bl, [esi+1]
                    je mf19
                    jmp f19
                    mf19:
                        jmp gameLoop
                f19:
                    add esi, 2
            loop c37

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c39:
                mov al, xPos
                mov bl, yPos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c40
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                jmp f20
                c40:
                    cmp bl, [esi+1]
                    je mf20
                    jmp f20
                    mf20:
                        jmp gameLoop
                f20:
                    add esi, 2
            loop c39
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c41:
                mov al, xPos
                mov bl, yPos
                dec al
                cmp al, [esi]
                je c42
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times7:
                    cmp al, dl
                    je c42
                    inc dl
                loop check34times7     

                jmp f21
                c42:
                    cmp bl, [esi+1]
                    je mf21
                    jmp f21
                    mf21:
                        jmp gameLoop
                f21:
                    add esi, 2
                mov cl, temp
            loop c41
            jmp GOLEFT

        Lchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c43:
                mov al, xPos
                mov bl, yPos
                dec al
                cmp al, [esi]
                je c44
                jmp f22
                c44:
                    cmp bl, [esi+1]
                    je mf22
                    jmp f22
                    mf22:
                        jmp gameLoop
                f22:
                    add esi, 2
            loop c43

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c45:
                mov al, xPos
                mov bl, yPos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c46
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                jmp f23
                c46:
                    cmp bl, [esi+1]
                    je mf23
                    jmp f23
                    mf23:
                        jmp gameLoop
                f23:
                    add esi, 2
            loop c45
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c47:
                mov al, xPos
                mov bl, yPos
                dec al
                cmp al, [esi]
                je c48
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times8:
                    cmp al, dl
                    je c48
                    inc dl
                loop check34times8
                jmp f24
                c48:
                    cmp bl, [esi+1]
                    je mf24
                    jmp f24
                    mf24:
                        jmp gameLoop
                f24:
                    add esi, 2
                mov cl, temp
            loop c47
            jmp GOLEFT


        Lchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c49:
                mov al, xPos
                mov bl, yPos
                dec al
                cmp al, [esi]
                je c50
                jmp f25
                c50:
                    cmp bl, [esi+1]
                    je mf25
                    jmp f25
                    mf25:
                        jmp gameLoop
                f25:
                    add esi, 2
            loop c49

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c51:
                mov al, xPos
                mov bl, yPos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c52
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                jmp f26
                c52:
                    cmp bl, [esi+1]
                    je mf26
                    jmp f26
                    mf26:
                        jmp gameLoop
                f26:
                    add esi, 2
            loop c51
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c53:
                mov al, xPos
                mov bl, yPos
                dec al
                cmp al, [esi]
                je c54
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times9:
                    cmp al, dl
                    je c54
                    inc dl
                loop check34times9
                jmp f27
                c54:
                    cmp bl, [esi+1]
                    je mf27
                    jmp f27
                    mf27:
                        jmp gameLoop
                f27:
                    add esi, 2
                mov cl, temp
            loop c53
            jmp GOLEFT

        GOLEFT:
        call UpdatePlayer
        dec xPos
        call DrawPlayer
        jmp gameLoop

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        moveRight:
        cmp xPos, 118
        je gameLoop
        RightPossible:

        cmp currentLevel, 1
        je Rchecklvl1coord
        cmp currentLevel, 2
        je Rchecklvl2coord
        cmp currentLevel, 3
        je Rchecklvl3coord
        jmp GORIGHT

        Rchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c55:
                mov al, xPos
                mov bl, yPos
                inc al
                cmp al, [esi]
                je c56
                jmp f28
                c56:
                    cmp bl, [esi+1]
                    je mf28
                    jmp f28
                    mf28:
                        jmp gameLoop
                f28:
                    add esi, 2
            loop c55

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c57:
                mov al, xPos
                mov bl, yPos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c58
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                jmp f29
                c58:
                    cmp bl, [esi+1]
                    je mf29
                    jmp f29
                    mf29:
                        jmp gameLoop
                f29:
                    add esi, 2
            loop c57
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c59:
                mov al, xPos
                mov bl, yPos
                inc al
                cmp al, [esi]
                je c60
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times10:
                    cmp al, dl
                    je c60
                    inc dl
                loop check34times10     

                jmp f30
                c60:
                    cmp bl, [esi+1]
                    je mf30
                    jmp f30
                    mf30:
                        jmp gameLoop
                f30:
                    add esi, 2
                mov cl, temp
            loop c59
        jmp GORIGHT

        Rchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c61:
                mov al, xPos
                mov bl, yPos
                inc al
                cmp al, [esi]
                je c62
                jmp f31
                c62:
                    cmp bl, [esi+1]
                    je mf31
                    jmp f31
                    mf31:
                        jmp gameLoop
                f31:
                    add esi, 2
            loop c61

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c63:
                mov al, xPos
                mov bl, yPos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c64
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                jmp f32
                c64:
                    cmp bl, [esi+1]
                    je mf32
                    jmp f32
                    mf32:
                        jmp gameLoop
                f32:
                    add esi, 2
            loop c63
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c65:
                mov al, xPos
                mov bl, yPos
                inc al
                cmp al, [esi]
                je c66
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times11:
                    cmp al, dl
                    je c66
                    inc dl
                loop check34times11
                jmp f33
                c66:
                    cmp bl, [esi+1]
                    je mf33
                    jmp f33
                    mf33:
                        jmp gameLoop
                f33:
                    add esi, 2
                mov cl, temp
            loop c65
        jmp GORIGHT

        Rchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c67:
                mov al, xPos
                mov bl, yPos
                inc al
                cmp al, [esi]
                je c68
                jmp f34
                c68:
                    cmp bl, [esi+1]
                    je mf34
                    jmp f34
                    mf34:
                        jmp gameLoop
                f34:
                    add esi, 2
            loop c67

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c69:
                mov al, xPos
                mov bl, yPos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c70
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                jmp f35
                c70:
                    cmp bl, [esi+1]
                    je mf35
                    jmp f35
                    mf35:
                        jmp gameLoop
                f35:
                    add esi, 2
            loop c69
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c71:
                mov al, xPos
                mov bl, yPos
                inc al
                cmp al, [esi]
                je c72
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times12:
                    cmp al, dl
                    je c72
                    inc dl
                loop check34times12
                jmp f36
                c72:
                    cmp bl, [esi+1]
                    je mf36
                    jmp f36
                    mf36:
                        jmp gameLoop
                f36:
                    add esi, 2
                mov cl, temp
            loop c71
        jmp GORIGHT

        GORIGHT:
        call UpdatePlayer
        inc xPos
        call DrawPlayer
        jmp gameLoop

    jmp gameLoop

    exitGame:
    exit
main ENDP

DrawPlayer PROC
    ; draw player at (xPos,yPos):
    mov eax,yellow ;(blue*16)
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al,"X"
    call WriteChar
    ret
DrawPlayer ENDP

UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP

DrawFruit PROC
    mov eax,lightgreen
    call SetTextColor
    mov dl,xFruitPos
    mov dh,yFruitPos
    call Gotoxy
    mov al,"F"
    call WriteChar
    ret
DrawFruit ENDP

DrawPP PROC
    mov eax,white
    call SetTextColor
    mov dl,xPPPos
    mov dh,yPPPos
    call Gotoxy
    mov al,"P"
    call WriteChar
    ret
DrawPP ENDP

CreateRandomPP PROC
    mov eax,125
    inc eax
    call RandomRange
    mov xPPPos,al
    mov yPPPos,4
    ret
CreateRandomPP ENDP


CreateRandomFruit PROC
    mov eax,125
    inc eax
    call RandomRange
    mov xFruitPos,al
    mov yFruitPos,14
    ret
CreateRandomFruit ENDP

CreateGhost1 PROC
    mov xGhost1Pos,11
    mov yGhost1Pos,5
    ret
CreateGhost1 ENDP

DrawGhost1 PROC
    mov eax,red
    call SetTextColor
    mov dl,xGhost1Pos
    mov dh,yGhost1Pos
    call Gotoxy
    mov edx, offset ghost1
    call writestring
    ret
DrawGhost1 ENDP

CreateGhost2 PROC
    mov xGhost2Pos,115
    mov yGhost2Pos,5
    ret
CreateGhost2 ENDP

DrawGhost2 PROC
    mov eax,red
    call SetTextColor
    mov dl,xGhost2Pos
    mov dh,yGhost2Pos
    call Gotoxy
    mov edx, offset ghost2
    call writestring
    ret
DrawGhost2 ENDP

CreateGhost3 PROC
    mov xGhost3Pos,11
    mov yGhost3Pos,25
    ret
CreateGhost3 ENDP

DrawGhost3 PROC
    mov eax,red
    call SetTextColor
    mov dl,xGhost3Pos
    mov dh,yGhost3Pos
    call Gotoxy
    mov edx, offset ghost3
    call writestring
    ret
DrawGhost3 ENDP

CreateGhost4 PROC
    mov xGhost4Pos,115
    mov yGhost4Pos,25
    ret
CreateGhost4 ENDP

DrawGhost4 PROC
    mov eax,red
    call SetTextColor
    mov dl,xGhost4Pos
    mov dh,yGhost4Pos
    call Gotoxy
    mov edx, offset ghost4
    call writestring
    ret
DrawGhost4 ENDP

UpdateGhost1 PROC
    mov dl,xGhost1Pos
    mov dh,yGhost1Pos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdateGhost1 ENDP

UpdateGhost2 PROC
    mov dl,xGhost2Pos
    mov dh,yGhost2Pos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdateGhost2 ENDP

UpdateGhost3 PROC
    mov dl,xGhost3Pos
    mov dh,yGhost3Pos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdateGhost3 ENDP

UpdateGhost4 PROC
    mov dl,xGhost4Pos
    mov dh,yGhost4Pos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdateGhost4 ENDP

checkUpCollisionG1 PROC
    cmp currentLevel, 1
    je Uchecklvl1coord
    cmp currentLevel, 2
    je Uchecklvl2coord
    cmp currentLevel, 3
    je Uchecklvl3coord
    ret

    Uchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c1:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec bl
                cmp al, [esi]
                je c2
                jmp f1
                c2:
                    cmp bl, [esi+1]
                    je mf1
                    jmp f1
                    mf1:
                        mov collision, 1
                        ret
                f1:
                    add esi, 2
            loop c1

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c3:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c4
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                jmp f2
                c4:
                    cmp bl, [esi+1]
                    je mf2
                    jmp f2
                    mf2:
                        mov collision, 1
                        ret
                f2:
                    add esi, 2
            loop c3
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c5:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec bl
                cmp al, [esi]
                je c6
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times1:
                    cmp al, dl
                    je c6
                    inc dl
                loop check34times1     

                jmp f3
                c6:
                    cmp bl, [esi+1]
                    je mf3
                    jmp f3
                    mf3:
                        mov collision, 1
                        ret
                f3:
                    add esi, 2
                mov cl, temp
            loop c5
        ret

        Uchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c7:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec bl
                cmp al, [esi]
                je c8
                jmp f4
                c8:
                    cmp bl, [esi+1]
                    je mf4
                    jmp f4
                    mf4:
                        mov collision, 1
                        ret
                f4:
                    add esi, 2
            loop c7

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c9:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c10
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                jmp f5
                c10:
                    cmp bl, [esi+1]
                    je mf5
                    jmp f5
                    mf5:
                        mov collision, 1
                        ret
                f5:
                    add esi, 2
            loop c9
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c11:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec bl
                cmp al, [esi]
                je c12
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times2:
                    cmp al, dl
                    je c12
                    inc dl
                loop check34times2
                jmp f3
                c12:
                    cmp bl, [esi+1]
                    je mf6
                    jmp f6
                    mf6:
                        mov collision, 1
                        ret
                f6:
                    add esi, 2
                mov cl, temp
            loop c11
        ret

        Uchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c13:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec bl
                cmp al, [esi]
                je c14
                jmp f7
                c14:
                    cmp bl, [esi+1]
                    je mf7
                    jmp f7
                    mf7:
                        mov collision, 1
                        ret
                f7:
                    add esi, 2
            loop c13

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c15:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c16
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                jmp f8
                c16:
                    cmp bl, [esi+1]
                    je mf8
                    jmp f8
                    mf8:
                        mov collision, 1
                        ret
                f8:
                    add esi, 2
            loop c15
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c17:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec bl
                cmp al, [esi]
                je c18
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times3:
                    cmp al, dl
                    je c18
                    inc dl
                loop check34times3
                jmp f9
                c18:
                    cmp bl, [esi+1]
                    je mf9
                    jmp f9
                    mf9:
                        mov collision, 1
                        ret
                f9:
                    add esi, 2
                mov cl, temp
            loop c17
        ret
checkUpCollisionG1 ENDP

checkUpCollisionG2 PROC
    cmp currentLevel, 1
    je Uchecklvl1coord
    cmp currentLevel, 2
    je Uchecklvl2coord
    cmp currentLevel, 3
    je Uchecklvl3coord
    ret

    Uchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c1:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec bl
                cmp al, [esi]
                je c2
                jmp f1
                c2:
                    cmp bl, [esi+1]
                    je mf1
                    jmp f1
                    mf1:
                        mov G2collision, 1
                        ret
                f1:
                    add esi, 2
            loop c1

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c3:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c4
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                jmp f2
                c4:
                    cmp bl, [esi+1]
                    je mf2
                    jmp f2
                    mf2:
                        mov G2collision, 1
                        ret
                f2:
                    add esi, 2
            loop c3
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c5:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec bl
                cmp al, [esi]
                je c6
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times1:
                    cmp al, dl
                    je c6
                    inc dl
                loop check34times1     

                jmp f3
                c6:
                    cmp bl, [esi+1]
                    je mf3
                    jmp f3
                    mf3:
                        mov G2collision, 1
                        ret
                f3:
                    add esi, 2
                mov cl, temp
            loop c5
        ret

        Uchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c7:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec bl
                cmp al, [esi]
                je c8
                jmp f4
                c8:
                    cmp bl, [esi+1]
                    je mf4
                    jmp f4
                    mf4:
                        mov G2collision, 1
                        ret
                f4:
                    add esi, 2
            loop c7

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c9:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c10
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                jmp f5
                c10:
                    cmp bl, [esi+1]
                    je mf5
                    jmp f5
                    mf5:
                        mov G2collision, 1
                        ret
                f5:
                    add esi, 2
            loop c9
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c11:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec bl
                cmp al, [esi]
                je c12
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times2:
                    cmp al, dl
                    je c12
                    inc dl
                loop check34times2
                jmp f3
                c12:
                    cmp bl, [esi+1]
                    je mf6
                    jmp f6
                    mf6:
                        mov G2collision, 1
                        ret
                f6:
                    add esi, 2
                mov cl, temp
            loop c11
        ret

        Uchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c13:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec bl
                cmp al, [esi]
                je c14
                jmp f7
                c14:
                    cmp bl, [esi+1]
                    je mf7
                    jmp f7
                    mf7:
                        mov G2collision, 1
                        ret
                f7:
                    add esi, 2
            loop c13

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c15:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c16
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                jmp f8
                c16:
                    cmp bl, [esi+1]
                    je mf8
                    jmp f8
                    mf8:
                        mov G2collision, 1
                        ret
                f8:
                    add esi, 2
            loop c15
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c17:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec bl
                cmp al, [esi]
                je c18
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times3:
                    cmp al, dl
                    je c18
                    inc dl
                loop check34times3
                jmp f9
                c18:
                    cmp bl, [esi+1]
                    je mf9
                    jmp f9
                    mf9:
                        mov G2collision, 1
                        ret
                f9:
                    add esi, 2
                mov cl, temp
            loop c17
        ret
checkUpCollisionG2 ENDP


checkUpCollisionG3 PROC
    cmp currentLevel, 1
    je Uchecklvl1coord
    cmp currentLevel, 2
    je Uchecklvl2coord
    cmp currentLevel, 3
    je Uchecklvl3coord
    ret

    Uchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c1:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec bl
                cmp al, [esi]
                je c2
                jmp f1
                c2:
                    cmp bl, [esi+1]
                    je mf1
                    jmp f1
                    mf1:
                        mov G3collision, 1
                        ret
                f1:
                    add esi, 2
            loop c1

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c3:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c4
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                jmp f2
                c4:
                    cmp bl, [esi+1]
                    je mf2
                    jmp f2
                    mf2:
                        mov G3collision, 1
                        ret
                f2:
                    add esi, 2
            loop c3
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c5:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec bl
                cmp al, [esi]
                je c6
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times1:
                    cmp al, dl
                    je c6
                    inc dl
                loop check34times1     

                jmp f3
                c6:
                    cmp bl, [esi+1]
                    je mf3
                    jmp f3
                    mf3:
                        mov G3collision, 1
                        ret
                f3:
                    add esi, 2
                mov cl, temp
            loop c5
        ret

        Uchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c7:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec bl
                cmp al, [esi]
                je c8
                jmp f4
                c8:
                    cmp bl, [esi+1]
                    je mf4
                    jmp f4
                    mf4:
                        mov G3collision, 1
                        ret
                f4:
                    add esi, 2
            loop c7

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c9:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c10
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                jmp f5
                c10:
                    cmp bl, [esi+1]
                    je mf5
                    jmp f5
                    mf5:
                        mov G3collision, 1
                        ret
                f5:
                    add esi, 2
            loop c9
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c11:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec bl
                cmp al, [esi]
                je c12
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times2:
                    cmp al, dl
                    je c12
                    inc dl
                loop check34times2
                jmp f3
                c12:
                    cmp bl, [esi+1]
                    je mf6
                    jmp f6
                    mf6:
                        mov G3collision, 1
                        ret
                f6:
                    add esi, 2
                mov cl, temp
            loop c11
        ret

        Uchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c13:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec bl
                cmp al, [esi]
                je c14
                jmp f7
                c14:
                    cmp bl, [esi+1]
                    je mf7
                    jmp f7
                    mf7:
                        mov G3collision, 1
                        ret
                f7:
                    add esi, 2
            loop c13

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c15:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c16
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                jmp f8
                c16:
                    cmp bl, [esi+1]
                    je mf8
                    jmp f8
                    mf8:
                        mov G3collision, 1
                        ret
                f8:
                    add esi, 2
            loop c15
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c17:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec bl
                cmp al, [esi]
                je c18
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times3:
                    cmp al, dl
                    je c18
                    inc dl
                loop check34times3
                jmp f9
                c18:
                    cmp bl, [esi+1]
                    je mf9
                    jmp f9
                    mf9:
                        mov G3collision, 1
                        ret
                f9:
                    add esi, 2
                mov cl, temp
            loop c17
        ret
checkUpCollisionG3 ENDP


checkUpCollisionG4 PROC
    cmp currentLevel, 1
    je Uchecklvl1coord
    cmp currentLevel, 2
    je Uchecklvl2coord
    cmp currentLevel, 3
    je Uchecklvl3coord
    ret

    Uchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c1:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec bl
                cmp al, [esi]
                je c2
                jmp f1
                c2:
                    cmp bl, [esi+1]
                    je mf1
                    jmp f1
                    mf1:
                        mov G4collision, 1
                        ret
                f1:
                    add esi, 2
            loop c1

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c3:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c4
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                inc dl
                cmp al, dl
                je c4
                jmp f2
                c4:
                    cmp bl, [esi+1]
                    je mf2
                    jmp f2
                    mf2:
                        mov G4collision, 1
                        ret
                f2:
                    add esi, 2
            loop c3
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c5:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec bl
                cmp al, [esi]
                je c6
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times1:
                    cmp al, dl
                    je c6
                    inc dl
                loop check34times1     

                jmp f3
                c6:
                    cmp bl, [esi+1]
                    je mf3
                    jmp f3
                    mf3:
                        mov G4collision, 1
                        ret
                f3:
                    add esi, 2
                mov cl, temp
            loop c5
        ret

        Uchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c7:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec bl
                cmp al, [esi]
                je c8
                jmp f4
                c8:
                    cmp bl, [esi+1]
                    je mf4
                    jmp f4
                    mf4:
                        mov G4collision, 1
                        ret
                f4:
                    add esi, 2
            loop c7

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c9:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c10
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                inc dl
                cmp al, dl
                je c10
                jmp f5
                c10:
                    cmp bl, [esi+1]
                    je mf5
                    jmp f5
                    mf5:
                        mov G4collision, 1
                        ret
                f5:
                    add esi, 2
            loop c9
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c11:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec bl
                cmp al, [esi]
                je c12
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times2:
                    cmp al, dl
                    je c12
                    inc dl
                loop check34times2
                jmp f3
                c12:
                    cmp bl, [esi+1]
                    je mf6
                    jmp f6
                    mf6:
                        mov G4collision, 1
                        ret
                f6:
                    add esi, 2
                mov cl, temp
            loop c11
        ret

        Uchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c13:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec bl
                cmp al, [esi]
                je c14
                jmp f7
                c14:
                    cmp bl, [esi+1]
                    je mf7
                    jmp f7
                    mf7:
                        mov G4collision, 1
                        ret
                f7:
                    add esi, 2
            loop c13

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c15:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c16
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                inc dl
                cmp al, dl
                je c16
                jmp f8
                c16:
                    cmp bl, [esi+1]
                    je mf8
                    jmp f8
                    mf8:
                        mov G4collision, 1
                        ret
                f8:
                    add esi, 2
            loop c15
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c17:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec bl
                cmp al, [esi]
                je c18
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times3:
                    cmp al, dl
                    je c18
                    inc dl
                loop check34times3
                jmp f9
                c18:
                    cmp bl, [esi+1]
                    je mf9
                    jmp f9
                    mf9:
                        mov G4collision, 1
                        ret
                f9:
                    add esi, 2
                mov cl, temp
            loop c17
        ret
checkUpCollisionG4 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CheckDownCollisionG1 PROC
        cmp currentLevel, 1
        je Dchecklvl1coord
        cmp currentLevel, 2
        je Dchecklvl2coord
        cmp currentLevel, 3
        je Dchecklvl3coord
        ret
        
        Dchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c19:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc bl
                cmp al, [esi]
                je c20
                jmp f10
                c20:
                    cmp bl, [esi+1]
                    je mf10
                    jmp f10
                    mf10:
                        mov collision, 1
                        ret
                f10:
                    add esi, 2
            loop c19

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c21:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c22
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                jmp f11
                c22:
                    cmp bl, [esi+1]
                    je mf11
                    jmp f11
                    mf11:
                        mov collision, 1
                        ret
                f11:
                    add esi, 2
            loop c21
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c23:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc bl
                cmp al, [esi]
                je c24
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times4:
                    cmp al, dl
                    je c24
                    inc dl
                loop check34times4     

                jmp f12
                c24:
                    cmp bl, [esi+1]
                    je mf12
                    jmp f12
                    mf12:
                        mov collision, 1
                        ret
                f12:
                    add esi, 2
                mov cl, temp
            loop c23
        ret

        Dchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c25:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc bl
                cmp al, [esi]
                je c26
                jmp f13
                c26:
                    cmp bl, [esi+1]
                    je mf13
                    jmp f13
                    mf13:
                        mov collision, 1 
                        ret
                f13:
                    add esi, 2
            loop c25

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c27:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c28
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                jmp f14
                c28:
                    cmp bl, [esi+1]
                    je mf14
                    jmp f14
                    mf14:
                        mov collision, 1
                        ret
                f14:
                    add esi, 2
            loop c27
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c29:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc bl
                cmp al, [esi]
                je c30
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times5:
                    cmp al, dl
                    je c30
                    inc dl
                loop check34times5
                jmp f15
                c30:
                    cmp bl, [esi+1]
                    je mf15
                    jmp f15
                    mf15:
                        mov collision, 1
                        ret
                f15:
                    add esi, 2
                mov cl, temp
            loop c29
            ret

        Dchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c31:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc bl
                cmp al, [esi]
                je c32
                jmp f16
                c32:
                    cmp bl, [esi+1]
                    je mf16
                    jmp f16
                    mf16:
                        mov collision, 1
                        ret
                f16:
                    add esi, 2
            loop c31

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c33:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c34
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                jmp f17
                c34:
                    cmp bl, [esi+1]
                    je mf17
                    jmp f17
                    mf17:
                        mov collision, 1
                        ret
                f17:
                    add esi, 2
            loop c33
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c35:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc bl
                cmp al, [esi]
                je c36
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times6:
                    cmp al, dl
                    je c36
                    inc dl
                loop check34times6
                jmp f18
                c36:
                    cmp bl, [esi+1]
                    je mf18
                    jmp f18
                    mf18:
                        mov collision, 1
                        ret
                f18:
                    add esi, 2
                mov cl, temp
            loop c35
        ret
CheckDownCollisionG1 ENDP

CheckDownCollisionG2 PROC
        cmp currentLevel, 1
        je Dchecklvl1coord
        cmp currentLevel, 2
        je Dchecklvl2coord
        cmp currentLevel, 3
        je Dchecklvl3coord
        ret
        
        Dchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c19:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc bl
                cmp al, [esi]
                je c20
                jmp f10
                c20:
                    cmp bl, [esi+1]
                    je mf10
                    jmp f10
                    mf10:
                        mov G2collision, 1
                        ret
                f10:
                    add esi, 2
            loop c19

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c21:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c22
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                jmp f11
                c22:
                    cmp bl, [esi+1]
                    je mf11
                    jmp f11
                    mf11:
                        mov G2collision, 1
                        ret
                f11:
                    add esi, 2
            loop c21
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c23:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc bl
                cmp al, [esi]
                je c24
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times4:
                    cmp al, dl
                    je c24
                    inc dl
                loop check34times4     

                jmp f12
                c24:
                    cmp bl, [esi+1]
                    je mf12
                    jmp f12
                    mf12:
                        mov G2collision, 1
                        ret
                f12:
                    add esi, 2
                mov cl, temp
            loop c23
        ret

        Dchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c25:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc bl
                cmp al, [esi]
                je c26
                jmp f13
                c26:
                    cmp bl, [esi+1]
                    je mf13
                    jmp f13
                    mf13:
                        mov G2collision, 1 
                        ret
                f13:
                    add esi, 2
            loop c25

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c27:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c28
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                jmp f14
                c28:
                    cmp bl, [esi+1]
                    je mf14
                    jmp f14
                    mf14:
                        mov G2collision, 1
                        ret
                f14:
                    add esi, 2
            loop c27
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c29:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc bl
                cmp al, [esi]
                je c30
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times5:
                    cmp al, dl
                    je c30
                    inc dl
                loop check34times5
                jmp f15
                c30:
                    cmp bl, [esi+1]
                    je mf15
                    jmp f15
                    mf15:
                        mov G2collision, 1
                        ret
                f15:
                    add esi, 2
                mov cl, temp
            loop c29
            ret

        Dchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c31:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc bl
                cmp al, [esi]
                je c32
                jmp f16
                c32:
                    cmp bl, [esi+1]
                    je mf16
                    jmp f16
                    mf16:
                        mov G2collision, 1
                        ret
                f16:
                    add esi, 2
            loop c31

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c33:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c34
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                jmp f17
                c34:
                    cmp bl, [esi+1]
                    je mf17
                    jmp f17
                    mf17:
                        mov G2collision, 1
                        ret
                f17:
                    add esi, 2
            loop c33
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c35:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc bl
                cmp al, [esi]
                je c36
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times6:
                    cmp al, dl
                    je c36
                    inc dl
                loop check34times6
                jmp f18
                c36:
                    cmp bl, [esi+1]
                    je mf18
                    jmp f18
                    mf18:
                        mov G2collision, 1
                        ret
                f18:
                    add esi, 2
                mov cl, temp
            loop c35
        ret
CheckDownCollisionG2 ENDP

checkDownCollisionG3 PROC
        cmp currentLevel, 1
        je Dchecklvl1coord
        cmp currentLevel, 2
        je Dchecklvl2coord
        cmp currentLevel, 3
        je Dchecklvl3coord
        ret
        
        Dchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c19:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc bl
                cmp al, [esi]
                je c20
                jmp f10
                c20:
                    cmp bl, [esi+1]
                    je mf10
                    jmp f10
                    mf10:
                        mov G3collision, 1
                        ret
                f10:
                    add esi, 2
            loop c19

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c21:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c22
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                jmp f11
                c22:
                    cmp bl, [esi+1]
                    je mf11
                    jmp f11
                    mf11:
                        mov G3collision, 1
                        ret
                f11:
                    add esi, 2
            loop c21
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c23:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc bl
                cmp al, [esi]
                je c24
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times4:
                    cmp al, dl
                    je c24
                    inc dl
                loop check34times4     

                jmp f12
                c24:
                    cmp bl, [esi+1]
                    je mf12
                    jmp f12
                    mf12:
                        mov G3collision, 1
                        ret
                f12:
                    add esi, 2
                mov cl, temp
            loop c23
        ret

        Dchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c25:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc bl
                cmp al, [esi]
                je c26
                jmp f13
                c26:
                    cmp bl, [esi+1]
                    je mf13
                    jmp f13
                    mf13:
                        mov G3collision, 1 
                        ret
                f13:
                    add esi, 2
            loop c25

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c27:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c28
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                jmp f14
                c28:
                    cmp bl, [esi+1]
                    je mf14
                    jmp f14
                    mf14:
                        mov G3collision, 1
                        ret
                f14:
                    add esi, 2
            loop c27
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c29:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc bl
                cmp al, [esi]
                je c30
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times5:
                    cmp al, dl
                    je c30
                    inc dl
                loop check34times5
                jmp f15
                c30:
                    cmp bl, [esi+1]
                    je mf15
                    jmp f15
                    mf15:
                        mov G3collision, 1
                        ret
                f15:
                    add esi, 2
                mov cl, temp
            loop c29
            ret

        Dchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c31:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc bl
                cmp al, [esi]
                je c32
                jmp f16
                c32:
                    cmp bl, [esi+1]
                    je mf16
                    jmp f16
                    mf16:
                        mov G3collision, 1
                        ret
                f16:
                    add esi, 2
            loop c31

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c33:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c34
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                jmp f17
                c34:
                    cmp bl, [esi+1]
                    je mf17
                    jmp f17
                    mf17:
                        mov G3collision, 1
                        ret
                f17:
                    add esi, 2
            loop c33
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c35:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc bl
                cmp al, [esi]
                je c36
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times6:
                    cmp al, dl
                    je c36
                    inc dl
                loop check34times6
                jmp f18
                c36:
                    cmp bl, [esi+1]
                    je mf18
                    jmp f18
                    mf18:
                        mov G3collision, 1
                        ret
                f18:
                    add esi, 2
                mov cl, temp
            loop c35
        ret
CheckDownCollisionG3 ENDP

checkDownCollisionG4 PROC
        cmp currentLevel, 1
        je Dchecklvl1coord
        cmp currentLevel, 2
        je Dchecklvl2coord
        cmp currentLevel, 3
        je Dchecklvl3coord
        ret
        
        Dchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c19:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc bl
                cmp al, [esi]
                je c20
                jmp f10
                c20:
                    cmp bl, [esi+1]
                    je mf10
                    jmp f10
                    mf10:
                        mov G4collision, 1
                        ret
                f10:
                    add esi, 2
            loop c19

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c21:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c22
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                inc dl
                cmp al, dl
                je c22
                jmp f11
                c22:
                    cmp bl, [esi+1]
                    je mf11
                    jmp f11
                    mf11:
                        mov G4collision, 1
                        ret
                f11:
                    add esi, 2
            loop c21
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c23:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc bl
                cmp al, [esi]
                je c24
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times4:
                    cmp al, dl
                    je c24
                    inc dl
                loop check34times4     

                jmp f12
                c24:
                    cmp bl, [esi+1]
                    je mf12
                    jmp f12
                    mf12:
                        mov G4collision, 1
                        ret
                f12:
                    add esi, 2
                mov cl, temp
            loop c23
        ret

        Dchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c25:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc bl
                cmp al, [esi]
                je c26
                jmp f13
                c26:
                    cmp bl, [esi+1]
                    je mf13
                    jmp f13
                    mf13:
                        mov G4collision, 1 
                        ret
                f13:
                    add esi, 2
            loop c25

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c27:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c28
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                inc dl
                cmp al, dl
                je c28
                jmp f14
                c28:
                    cmp bl, [esi+1]
                    je mf14
                    jmp f14
                    mf14:
                        mov G4collision, 1
                        ret
                f14:
                    add esi, 2
            loop c27
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c29:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc bl
                cmp al, [esi]
                je c30
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times5:
                    cmp al, dl
                    je c30
                    inc dl
                loop check34times5
                jmp f15
                c30:
                    cmp bl, [esi+1]
                    je mf15
                    jmp f15
                    mf15:
                        mov G4collision, 1
                        ret
                f15:
                    add esi, 2
                mov cl, temp
            loop c29
            ret

        Dchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c31:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc bl
                cmp al, [esi]
                je c32
                jmp f16
                c32:
                    cmp bl, [esi+1]
                    je mf16
                    jmp f16
                    mf16:
                        mov G4collision, 1
                        ret
                f16:
                    add esi, 2
            loop c31

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c33:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc bl
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c34
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                inc dl
                cmp al, dl
                je c34
                jmp f17
                c34:
                    cmp bl, [esi+1]
                    je mf17
                    jmp f17
                    mf17:
                        mov G4collision, 1
                        ret
                f17:
                    add esi, 2
            loop c33
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c35:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc bl
                cmp al, [esi]
                je c36
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times6:
                    cmp al, dl
                    je c36
                    inc dl
                loop check34times6
                jmp f18
                c36:
                    cmp bl, [esi+1]
                    je mf18
                    jmp f18
                    mf18:
                        mov G4collision, 1
                        ret
                f18:
                    add esi, 2
                mov cl, temp
            loop c35
        ret
CheckDownCollisionG4 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CheckLeftCollisionG1 PROC
        cmp currentLevel, 1
        je Lchecklvl1coord
        cmp currentLevel, 2
        je Lchecklvl2coord
        cmp currentLevel, 3
        je Lchecklvl3coord
        ret

        Lchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c37:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec al
                cmp al, [esi]
                je c38
                jmp f19
                c38:
                    cmp bl, [esi+1]
                    je mf19
                    jmp f19
                    mf19:
                        mov collision, 1
                        ret
                f19:
                    add esi, 2
            loop c37

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c39:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c40
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                jmp f20
                c40:
                    cmp bl, [esi+1]
                    je mf20
                    jmp f20
                    mf20:
                        mov collision, 1
                        ret
                f20:
                    add esi, 2
            loop c39
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c41:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec al
                cmp al, [esi]
                je c42
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times7:
                    cmp al, dl
                    je c42
                    inc dl
                loop check34times7     

                jmp f21
                c42:
                    cmp bl, [esi+1]
                    je mf21
                    jmp f21
                    mf21:
                        mov collision, 1
                        ret
                f21:
                    add esi, 2
                mov cl, temp
            loop c41
        ret

        Lchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c43:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec al
                cmp al, [esi]
                je c44
                jmp f22
                c44:
                    cmp bl, [esi+1]
                    je mf22
                    jmp f22
                    mf22:
                        mov collision, 1
                        ret
                f22:
                    add esi, 2
            loop c43

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c45:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c46
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                jmp f23
                c46:
                    cmp bl, [esi+1]
                    je mf23
                    jmp f23
                    mf23:
                        mov collision, 1
                        ret
                f23:
                    add esi, 2
            loop c45
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c47:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec al
                cmp al, [esi]
                je c48
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times8:
                    cmp al, dl
                    je c48
                    inc dl
                loop check34times8
                jmp f24
                c48:
                    cmp bl, [esi+1]
                    je mf24
                    jmp f24
                    mf24:
                        mov collision, 1
                        ret
                f24:
                    add esi, 2
                mov cl, temp
            loop c47
        ret


        Lchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c49:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec al
                cmp al, [esi]
                je c50
                jmp f25
                c50:
                    cmp bl, [esi+1]
                    je mf25
                    jmp f25
                    mf25:
                        mov collision, 1
                        ret
                f25:
                    add esi, 2
            loop c49

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c51:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c52
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                jmp f26
                c52:
                    cmp bl, [esi+1]
                    je mf26
                    jmp f26
                    mf26:
                        mov collision, 1
                        ret
                f26:
                    add esi, 2
            loop c51
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c53:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                dec al
                cmp al, [esi]
                je c54
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times9:
                    cmp al, dl
                    je c54
                    inc dl
                loop check34times9
                jmp f27
                c54:
                    cmp bl, [esi+1]
                    je mf27
                    jmp f27
                    mf27:
                        mov collision, 1
                        ret
                f27:
                    add esi, 2
                mov cl, temp
            loop c53
        ret
CheckLeftCollisionG1 ENDP

CheckLeftCollisionG2 PROC
        cmp currentLevel, 1
        je Lchecklvl1coord
        cmp currentLevel, 2
        je Lchecklvl2coord
        cmp currentLevel, 3
        je Lchecklvl3coord
        ret

        Lchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c37:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec al
                cmp al, [esi]
                je c38
                jmp f19
                c38:
                    cmp bl, [esi+1]
                    je mf19
                    jmp f19
                    mf19:
                        mov G2collision, 1
                        ret
                f19:
                    add esi, 2
            loop c37

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c39:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c40
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                jmp f20
                c40:
                    cmp bl, [esi+1]
                    je mf20
                    jmp f20
                    mf20:
                        mov G2collision, 1
                        ret
                f20:
                    add esi, 2
            loop c39
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c41:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec al
                cmp al, [esi]
                je c42
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times7:
                    cmp al, dl
                    je c42
                    inc dl
                loop check34times7     

                jmp f21
                c42:
                    cmp bl, [esi+1]
                    je mf21
                    jmp f21
                    mf21:
                        mov G2collision, 1
                        ret
                f21:
                    add esi, 2
                mov cl, temp
            loop c41
        ret

        Lchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c43:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec al
                cmp al, [esi]
                je c44
                jmp f22
                c44:
                    cmp bl, [esi+1]
                    je mf22
                    jmp f22
                    mf22:
                        mov G2collision, 1
                        ret
                f22:
                    add esi, 2
            loop c43

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c45:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c46
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                jmp f23
                c46:
                    cmp bl, [esi+1]
                    je mf23
                    jmp f23
                    mf23:
                        mov G2collision, 1
                        ret
                f23:
                    add esi, 2
            loop c45
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c47:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec al
                cmp al, [esi]
                je c48
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times8:
                    cmp al, dl
                    je c48
                    inc dl
                loop check34times8
                jmp f24
                c48:
                    cmp bl, [esi+1]
                    je mf24
                    jmp f24
                    mf24:
                        mov G2collision, 1
                        ret
                f24:
                    add esi, 2
                mov cl, temp
            loop c47
        ret


        Lchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c49:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec al
                cmp al, [esi]
                je c50
                jmp f25
                c50:
                    cmp bl, [esi+1]
                    je mf25
                    jmp f25
                    mf25:
                        mov G2collision, 1
                        ret
                f25:
                    add esi, 2
            loop c49

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c51:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c52
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                jmp f26
                c52:
                    cmp bl, [esi+1]
                    je mf26
                    jmp f26
                    mf26:
                        mov G2collision, 1
                        ret
                f26:
                    add esi, 2
            loop c51
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c53:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                dec al
                cmp al, [esi]
                je c54
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times9:
                    cmp al, dl
                    je c54
                    inc dl
                loop check34times9
                jmp f27
                c54:
                    cmp bl, [esi+1]
                    je mf27
                    jmp f27
                    mf27:
                        mov G2collision, 1
                        ret
                f27:
                    add esi, 2
                mov cl, temp
            loop c53
        ret
CheckLeftCollisionG2 ENDP

CheckLeftCollisionG3 PROC
        cmp currentLevel, 1
        je Lchecklvl1coord
        cmp currentLevel, 2
        je Lchecklvl2coord
        cmp currentLevel, 3
        je Lchecklvl3coord
        ret

        Lchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c37:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec al
                cmp al, [esi]
                je c38
                jmp f19
                c38:
                    cmp bl, [esi+1]
                    je mf19
                    jmp f19
                    mf19:
                        mov G3collision, 1
                        ret
                f19:
                    add esi, 2
            loop c37

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c39:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c40
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                jmp f20
                c40:
                    cmp bl, [esi+1]
                    je mf20
                    jmp f20
                    mf20:
                        mov G3collision, 1
                        ret
                f20:
                    add esi, 2
            loop c39
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c41:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec al
                cmp al, [esi]
                je c42
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times7:
                    cmp al, dl
                    je c42
                    inc dl
                loop check34times7     

                jmp f21
                c42:
                    cmp bl, [esi+1]
                    je mf21
                    jmp f21
                    mf21:
                        mov G3collision, 1
                        ret
                f21:
                    add esi, 2
                mov cl, temp
            loop c41
        ret

        Lchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c43:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec al
                cmp al, [esi]
                je c44
                jmp f22
                c44:
                    cmp bl, [esi+1]
                    je mf22
                    jmp f22
                    mf22:
                        mov G3collision, 1
                        ret
                f22:
                    add esi, 2
            loop c43

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c45:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c46
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                jmp f23
                c46:
                    cmp bl, [esi+1]
                    je mf23
                    jmp f23
                    mf23:
                        mov G3collision, 1
                        ret
                f23:
                    add esi, 2
            loop c45
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c47:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec al
                cmp al, [esi]
                je c48
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times8:
                    cmp al, dl
                    je c48
                    inc dl
                loop check34times8
                jmp f24
                c48:
                    cmp bl, [esi+1]
                    je mf24
                    jmp f24
                    mf24:
                        mov G3collision, 1
                        ret
                f24:
                    add esi, 2
                mov cl, temp
            loop c47
        ret


        Lchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c49:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec al
                cmp al, [esi]
                je c50
                jmp f25
                c50:
                    cmp bl, [esi+1]
                    je mf25
                    jmp f25
                    mf25:
                        mov G3collision, 1
                        ret
                f25:
                    add esi, 2
            loop c49

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c51:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c52
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                jmp f26
                c52:
                    cmp bl, [esi+1]
                    je mf26
                    jmp f26
                    mf26:
                        mov G3collision, 1
                        ret
                f26:
                    add esi, 2
            loop c51
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c53:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                dec al
                cmp al, [esi]
                je c54
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times9:
                    cmp al, dl
                    je c54
                    inc dl
                loop check34times9
                jmp f27
                c54:
                    cmp bl, [esi+1]
                    je mf27
                    jmp f27
                    mf27:
                        mov G3collision, 1
                        ret
                f27:
                    add esi, 2
                mov cl, temp
            loop c53
        ret
CheckLeftCollisionG3 ENDP

CheckLeftCollisionG4 PROC
        cmp currentLevel, 1
        je Lchecklvl1coord
        cmp currentLevel, 2
        je Lchecklvl2coord
        cmp currentLevel, 3
        je Lchecklvl3coord
        ret

        Lchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c37:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec al
                cmp al, [esi]
                je c38
                jmp f19
                c38:
                    cmp bl, [esi+1]
                    je mf19
                    jmp f19
                    mf19:
                        mov G4collision, 1
                        ret
                f19:
                    add esi, 2
            loop c37

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c39:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c40
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                inc dl
                cmp al, dl
                je c40
                jmp f20
                c40:
                    cmp bl, [esi+1]
                    je mf20
                    jmp f20
                    mf20:
                        mov G4collision, 1
                        ret
                f20:
                    add esi, 2
            loop c39
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c41:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec al
                cmp al, [esi]
                je c42
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times7:
                    cmp al, dl
                    je c42
                    inc dl
                loop check34times7     

                jmp f21
                c42:
                    cmp bl, [esi+1]
                    je mf21
                    jmp f21
                    mf21:
                        mov G4collision, 1
                        ret
                f21:
                    add esi, 2
                mov cl, temp
            loop c41
        ret

        Lchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c43:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec al
                cmp al, [esi]
                je c44
                jmp f22
                c44:
                    cmp bl, [esi+1]
                    je mf22
                    jmp f22
                    mf22:
                        mov G4collision, 1
                        ret
                f22:
                    add esi, 2
            loop c43

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c45:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c46
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                inc dl
                cmp al, dl
                je c46
                jmp f23
                c46:
                    cmp bl, [esi+1]
                    je mf23
                    jmp f23
                    mf23:
                        mov G4collision, 1
                        ret
                f23:
                    add esi, 2
            loop c45
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c47:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec al
                cmp al, [esi]
                je c48
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times8:
                    cmp al, dl
                    je c48
                    inc dl
                loop check34times8
                jmp f24
                c48:
                    cmp bl, [esi+1]
                    je mf24
                    jmp f24
                    mf24:
                        mov G4collision, 1
                        ret
                f24:
                    add esi, 2
                mov cl, temp
            loop c47
        ret


        Lchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c49:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec al
                cmp al, [esi]
                je c50
                jmp f25
                c50:
                    cmp bl, [esi+1]
                    je mf25
                    jmp f25
                    mf25:
                        mov G4collision, 1
                        ret
                f25:
                    add esi, 2
            loop c49

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c51:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c52
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                inc dl
                cmp al, dl
                je c52
                jmp f26
                c52:
                    cmp bl, [esi+1]
                    je mf26
                    jmp f26
                    mf26:
                        mov G4collision, 1
                        ret
                f26:
                    add esi, 2
            loop c51
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c53:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                dec al
                cmp al, [esi]
                je c54
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times9:
                    cmp al, dl
                    je c54
                    inc dl
                loop check34times9
                jmp f27
                c54:
                    cmp bl, [esi+1]
                    je mf27
                    jmp f27
                    mf27:
                        mov G4collision, 1
                        ret
                f27:
                    add esi, 2
                mov cl, temp
            loop c53
        ret
CheckLeftCollisionG4 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

CheckRightCollisionG1 PROC
        cmp currentLevel, 1
        je Rchecklvl1coord
        cmp currentLevel, 2
        je Rchecklvl2coord
        cmp currentLevel, 3
        je Rchecklvl3coord
        ret

        Rchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c55:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc al
                cmp al, [esi]
                je c56
                jmp f28
                c56:
                    cmp bl, [esi+1]
                    je mf28
                    jmp f28
                    mf28:
                        mov collision, 1
                        ret
                f28:
                    add esi, 2
            loop c55

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c57:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c58
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                jmp f29
                c58:
                    cmp bl, [esi+1]
                    je mf29
                    jmp f29
                    mf29:
                        mov collision, 1
                        ret
                f29:
                    add esi, 2
            loop c57
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c59:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc al
                cmp al, [esi]
                je c60
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times10:
                    cmp al, dl
                    je c60
                    inc dl
                loop check34times10     

                jmp f30
                c60:
                    cmp bl, [esi+1]
                    je mf30
                    jmp f30
                    mf30:
                        mov collision, 1
                        ret
                f30:
                    add esi, 2
                mov cl, temp
            loop c59
        ret

        Rchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c61:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc al
                cmp al, [esi]
                je c62
                jmp f31
                c62:
                    cmp bl, [esi+1]
                    je mf31
                    jmp f31
                    mf31:
                        mov collision, 1
                        ret
                f31:
                    add esi, 2
            loop c61

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c63:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c64
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                jmp f32
                c64:
                    cmp bl, [esi+1]
                    je mf32
                    jmp f32
                    mf32:
                        mov collision, 1 
                        ret
                f32:
                    add esi, 2
            loop c63
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c65:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc al
                cmp al, [esi]
                je c66
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times11:
                    cmp al, dl
                    je c66
                    inc dl
                loop check34times11
                jmp f33
                c66:
                    cmp bl, [esi+1]
                    je mf33
                    jmp f33
                    mf33:
                        mov collision, 1
                        ret
                f33:
                    add esi, 2
                mov cl, temp
            loop c65
        ret

        Rchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c67:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc al
                cmp al, [esi]
                je c68
                jmp f34
                c68:
                    cmp bl, [esi+1]
                    je mf34
                    jmp f34
                    mf34:
                        mov collision, 1
                        ret
                f34:
                    add esi, 2
            loop c67

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c69:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c70
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                jmp f35
                c70:
                    cmp bl, [esi+1]
                    je mf35
                    jmp f35
                    mf35:
                        mov collision, 1
                        ret
                f35:
                    add esi, 2
            loop c69
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c71:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                inc al
                cmp al, [esi]
                je c72
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times12:
                    cmp al, dl
                    je c72
                    inc dl
                loop check34times12
                jmp f36
                c72:
                    cmp bl, [esi+1]
                    je mf36
                    jmp f36
                    mf36:
                        mov collision, 1 
                        ret
                f36:
                    add esi, 2
                mov cl, temp
            loop c71
        ret
CheckRightCollisionG1 ENDP

CheckRightCollisionG2 PROC
        cmp currentLevel, 1
        je Rchecklvl1coord
        cmp currentLevel, 2
        je Rchecklvl2coord
        cmp currentLevel, 3
        je Rchecklvl3coord
        ret

        Rchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c55:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc al
                cmp al, [esi]
                je c56
                jmp f28
                c56:
                    cmp bl, [esi+1]
                    je mf28
                    jmp f28
                    mf28:
                        mov G2collision, 1
                        ret
                f28:
                    add esi, 2
            loop c55

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c57:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c58
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                jmp f29
                c58:
                    cmp bl, [esi+1]
                    je mf29
                    jmp f29
                    mf29:
                        mov G2collision, 1
                        ret
                f29:
                    add esi, 2
            loop c57
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c59:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc al
                cmp al, [esi]
                je c60
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times10:
                    cmp al, dl
                    je c60
                    inc dl
                loop check34times10     

                jmp f30
                c60:
                    cmp bl, [esi+1]
                    je mf30
                    jmp f30
                    mf30:
                        mov G2collision, 1
                        ret
                f30:
                    add esi, 2
                mov cl, temp
            loop c59
        ret

        Rchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c61:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc al
                cmp al, [esi]
                je c62
                jmp f31
                c62:
                    cmp bl, [esi+1]
                    je mf31
                    jmp f31
                    mf31:
                        mov G2collision, 1
                        ret
                f31:
                    add esi, 2
            loop c61

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c63:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c64
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                jmp f32
                c64:
                    cmp bl, [esi+1]
                    je mf32
                    jmp f32
                    mf32:
                        mov G2collision, 1 
                        ret
                f32:
                    add esi, 2
            loop c63
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c65:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc al
                cmp al, [esi]
                je c66
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times11:
                    cmp al, dl
                    je c66
                    inc dl
                loop check34times11
                jmp f33
                c66:
                    cmp bl, [esi+1]
                    je mf33
                    jmp f33
                    mf33:
                        mov G2collision, 1
                        ret
                f33:
                    add esi, 2
                mov cl, temp
            loop c65
        ret

        Rchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c67:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc al
                cmp al, [esi]
                je c68
                jmp f34
                c68:
                    cmp bl, [esi+1]
                    je mf34
                    jmp f34
                    mf34:
                        mov G2collision, 1
                        ret
                f34:
                    add esi, 2
            loop c67

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c69:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c70
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                jmp f35
                c70:
                    cmp bl, [esi+1]
                    je mf35
                    jmp f35
                    mf35:
                        mov G2collision, 1
                        ret
                f35:
                    add esi, 2
            loop c69
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c71:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                inc al
                cmp al, [esi]
                je c72
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times12:
                    cmp al, dl
                    je c72
                    inc dl
                loop check34times12
                jmp f36
                c72:
                    cmp bl, [esi+1]
                    je mf36
                    jmp f36
                    mf36:
                        mov G2collision, 1 
                        ret
                f36:
                    add esi, 2
                mov cl, temp
            loop c71
        ret
CheckRightCollisionG2 ENDP

CheckRightCollisionG3 PROC
        cmp currentLevel, 1
        je Rchecklvl1coord
        cmp currentLevel, 2
        je Rchecklvl2coord
        cmp currentLevel, 3
        je Rchecklvl3coord
        ret

        Rchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c55:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc al
                cmp al, [esi]
                je c56
                jmp f28
                c56:
                    cmp bl, [esi+1]
                    je mf28
                    jmp f28
                    mf28:
                        mov G3collision, 1
                        ret
                f28:
                    add esi, 2
            loop c55

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c57:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c58
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                jmp f29
                c58:
                    cmp bl, [esi+1]
                    je mf29
                    jmp f29
                    mf29:
                        mov G3collision, 1
                        ret
                f29:
                    add esi, 2
            loop c57
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c59:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc al
                cmp al, [esi]
                je c60
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times10:
                    cmp al, dl
                    je c60
                    inc dl
                loop check34times10     

                jmp f30
                c60:
                    cmp bl, [esi+1]
                    je mf30
                    jmp f30
                    mf30:
                        mov G3collision, 1
                        ret
                f30:
                    add esi, 2
                mov cl, temp
            loop c59
        ret

        Rchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c61:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc al
                cmp al, [esi]
                je c62
                jmp f31
                c62:
                    cmp bl, [esi+1]
                    je mf31
                    jmp f31
                    mf31:
                        mov G3collision, 1
                        ret
                f31:
                    add esi, 2
            loop c61

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c63:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c64
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                jmp f32
                c64:
                    cmp bl, [esi+1]
                    je mf32
                    jmp f32
                    mf32:
                        mov G3collision, 1 
                        ret
                f32:
                    add esi, 2
            loop c63
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c65:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc al
                cmp al, [esi]
                je c66
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times11:
                    cmp al, dl
                    je c66
                    inc dl
                loop check34times11
                jmp f33
                c66:
                    cmp bl, [esi+1]
                    je mf33
                    jmp f33
                    mf33:
                        mov G3collision, 1
                        ret
                f33:
                    add esi, 2
                mov cl, temp
            loop c65
        ret

        Rchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c67:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc al
                cmp al, [esi]
                je c68
                jmp f34
                c68:
                    cmp bl, [esi+1]
                    je mf34
                    jmp f34
                    mf34:
                        mov G3collision, 1
                        ret
                f34:
                    add esi, 2
            loop c67

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c69:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c70
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                jmp f35
                c70:
                    cmp bl, [esi+1]
                    je mf35
                    jmp f35
                    mf35:
                        mov G3collision, 1
                        ret
                f35:
                    add esi, 2
            loop c69
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c71:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                inc al
                cmp al, [esi]
                je c72
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times12:
                    cmp al, dl
                    je c72
                    inc dl
                loop check34times12
                jmp f36
                c72:
                    cmp bl, [esi+1]
                    je mf36
                    jmp f36
                    mf36:
                        mov G3collision, 1 
                        ret
                f36:
                    add esi, 2
                mov cl, temp
            loop c71
        ret
CheckRightCollisionG3 ENDP

CheckRightCollisionG4 PROC
        cmp currentLevel, 1
        je Rchecklvl1coord
        cmp currentLevel, 2
        je Rchecklvl2coord
        cmp currentLevel, 3
        je Rchecklvl3coord
        ret

        Rchecklvl1coord:
            mov esi, offset maze1vertcoord1
            mov ecx, 49
            c55:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc al
                cmp al, [esi]
                je c56
                jmp f28
                c56:
                    cmp bl, [esi+1]
                    je mf28
                    jmp f28
                    mf28:
                        mov G4collision, 1
                        ret
                f28:
                    add esi, 2
            loop c55

            mov esi, offset maze1horsmallcoord
            mov ecx, 16
            c57:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c58
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                inc dl
                cmp al, dl
                je c58
                jmp f29
                c58:
                    cmp bl, [esi+1]
                    je mf29
                    jmp f29
                    mf29:
                        mov G4collision, 1
                        ret
                f29:
                    add esi, 2
            loop c57
            
            mov esi, offset maze1horbigcoord
            mov ecx, 2
            c59:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc al
                cmp al, [esi]
                je c60
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times10:
                    cmp al, dl
                    je c60
                    inc dl
                loop check34times10     

                jmp f30
                c60:
                    cmp bl, [esi+1]
                    je mf30
                    jmp f30
                    mf30:
                        mov G4collision, 1
                        ret
                f30:
                    add esi, 2
                mov cl, temp
            loop c59
        ret

        Rchecklvl2coord:
            mov esi, offset maze2vertcoord1
            mov ecx, 60
            c61:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc al
                cmp al, [esi]
                je c62
                jmp f31
                c62:
                    cmp bl, [esi+1]
                    je mf31
                    jmp f31
                    mf31:
                        mov G4collision, 1
                        ret
                f31:
                    add esi, 2
            loop c61

            mov esi, offset maze2horsmallcoord
            mov ecx, 21
            c63:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c64
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                inc dl
                cmp al, dl
                je c64
                jmp f32
                c64:
                    cmp bl, [esi+1]
                    je mf32
                    jmp f32
                    mf32:
                        mov G4collision, 1 
                        ret
                f32:
                    add esi, 2
            loop c63
            
            mov esi, offset maze2horbigcoord
            mov ecx, 2
            c65:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc al
                cmp al, [esi]
                je c66
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times11:
                    cmp al, dl
                    je c66
                    inc dl
                loop check34times11
                jmp f33
                c66:
                    cmp bl, [esi+1]
                    je mf33
                    jmp f33
                    mf33:
                        mov G4collision, 1
                        ret
                f33:
                    add esi, 2
                mov cl, temp
            loop c65
        ret

        Rchecklvl3coord:
            mov esi, offset maze3vertcoord1
            mov ecx, 105
            c67:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc al
                cmp al, [esi]
                je c68
                jmp f34
                c68:
                    cmp bl, [esi+1]
                    je mf34
                    jmp f34
                    mf34:
                        mov G4collision, 1
                        ret
                f34:
                    add esi, 2
            loop c67

            mov esi, offset maze3horsmallcoord
            mov ecx, 22
            c69:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc al
                mov dl, [esi] 
                inc dl
                cmp al, [esi]
                je c70
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                inc dl
                cmp al, dl
                je c70
                jmp f35
                c70:
                    cmp bl, [esi+1]
                    je mf35
                    jmp f35
                    mf35:
                        mov G4collision, 1
                        ret
                f35:
                    add esi, 2
            loop c69
            
            mov esi, offset maze3horbigcoord
            mov ecx, 2
            c71:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                inc al
                cmp al, [esi]
                je c72
                mov dl, [esi]
                inc dl
                mov temp, cl
                mov ecx, 34
                check34times12:
                    cmp al, dl
                    je c72
                    inc dl
                loop check34times12
                jmp f36
                c72:
                    cmp bl, [esi+1]
                    je mf36
                    jmp f36
                    mf36:
                        mov G4collision, 1 
                        ret
                f36:
                    add esi, 2
                mov cl, temp
            loop c71
        ret
CheckRightCollisionG4 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

G1halves PROC
        uphalf1:
            cmp xGhost1Pos, 59
            je uphalf2
            jmp downhalf1
            uphalf2:
                cmp yGhost1Pos, 2
                je earlydown
                jmp downhalf1
                earlydown:
                    mov downB, 1
                    mov rightB, 0
                    mov upB, 0
                    mov leftB, 0
                    call UpdateGhost1
                    cmp currentLevel, 1
                    je uL1
                    cmp currentLevel, 2
                    je uL2
                    jmp uL3
                    uL1:
                        mov xGhost1Pos, 60
                        mov yGhost1Pos, 5
                        jmp ucont
                    uL2:
                        mov xGhost1Pos, 55
                        mov yGhost1Pos, 17
                        jmp ucont
                    uL3:
                        mov xGhost1Pos, 56
                        mov yGhost1Pos, 10
                    ucont:
                    call DrawGhost1
                    mov G1halvesRes, 1
                    ret
        ;down boundary half
        downhalf1:
            cmp xGhost1Pos, 59
            je downhalf2
            jmp lefthalf1
            downhalf2:
                cmp yGhost1Pos, 28
                je earlyleft
                jmp lefthalf1
                earlyup:
                    mov upB, 1
                    mov rightB, 0
                    mov leftB, 0
                    mov downB, 0
                    call UpdateGhost1
                    cmp currentLevel, 1
                    je dL1
                    cmp currentLevel, 2
                    je dL2
                    jmp dL3
                    dL1:
                        mov xGhost1Pos, 28
                        mov yGhost1Pos, 17
                        jmp dcont
                    dL2:
                        mov xGhost1Pos, 31
                        mov yGhost1Pos, 20
                        jmp dcont
                    dL3:
                        mov xGhost1Pos, 35
                        mov yGhost1Pos, 15
                    dcont:
                    call DrawGhost1
                    mov G1halvesRes, 1
                    ret
        ;left boundary half
        lefthalf1:
            cmp xGhost1Pos, 1
            je lefthalf2
            jmp righthalf1
            lefthalf2:
                cmp yGhost1Pos, 14
                je earlyright
                jmp righthalf1
                earlyright:
                    mov rightB, 1
                    mov upB, 0
                    mov leftB, 0
                    mov downB, 0
                    call UpdateGhost1
                    cmp currentLevel, 1
                    je lL1
                    cmp currentLevel, 2
                    je lL2
                    jmp lL3
                    lL1:
                        mov xGhost1Pos, 60
                        mov yGhost1Pos, 11
                        jmp lcont
                    lL2:
                        mov xGhost1Pos, 80
                        mov yGhost1Pos, 12
                        jmp lcont
                    lL3:
                        mov xGhost1Pos, 85
                        mov yGhost1Pos, 15
                    lcont:
                    call DrawGhost1
                    mov G1halvesRes, 1
                    ret
        ;rightboundary half
        righthalf1:
            cmp xGhost1Pos, 118
            je righthalf2
            jmp fail
            righthalf2:
                cmp yGhost1Pos, 14
                je earlyleft
                jmp fail
                earlyleft:
                    mov leftB, 1
                    mov upB, 0
                    mov rightB, 0
                    mov downB, 0
                    call UpdateGhost1
                    cmp currentLevel, 1
                    je rL1
                    cmp currentLevel, 2
                    je rL2
                    jmp rL3
                    rL1:
                        mov xGhost1Pos, 88
                        mov yGhost1Pos, 13
                        jmp rcont
                    rL2:
                        mov xGhost1Pos, 80
                        mov yGhost1Pos, 24
                        jmp rcont
                    rL3:
                        mov xGhost1Pos, 65
                        mov yGhost1Pos, 20
                    rcont:
                    call DrawGhost1
                    mov G1halvesRes, 1
                    ret
    fail:
    mov G1halvesRes, 0
    ret
G1halves ENDP

G2halves PROC
        ;left down right up
        uphalf1:
            cmp xGhost2Pos, 59
            je uphalf2
            jmp downhalf1
            uphalf2:
                cmp yGhost2Pos, 2
                je earlydown
                jmp downhalf1
                earlydown:                    
                    mov G2downB, 1
                    mov G2rightB, 0
                    mov G2upB, 0
                    mov G2leftB, 0
                    call UpdateGhost2
                    cmp currentLevel, 1
                    je uL1
                    cmp currentLevel, 2
                    je uL2
                    jmp uL3
                    uL1:
                        mov xGhost2Pos, 28
                        mov yGhost2Pos, 17
                        jmp ucont
                    uL2:
                        mov xGhost2Pos, 80
                        mov yGhost2Pos, 12
                        jmp ucont
                    uL3:
                        mov xGhost2Pos, 56
                        mov yGhost2Pos, 10
                    ucont:
                    call DrawGhost2
                    mov G2halvesRes, 1
                    ret
        ;down boundary half
        downhalf1:
            cmp xGhost2Pos, 59
            je downhalf2
            jmp lefthalf1
            downhalf2:
                cmp yGhost2Pos, 28
                je earlyup
                jmp lefthalf1
                earlyup:
                    mov G2upB, 1
                    mov G2rightB, 0
                    mov G2leftB, 0
                    mov G2downB, 0
                    call UpdateGhost2
                    cmp currentLevel, 1
                    je dL1
                    cmp currentLevel, 2
                    je dL2
                    jmp dL3
                    dL1:
                        mov xGhost2Pos, 60
                        mov yGhost2Pos, 5
                        jmp dcont
                    dL2:
                        mov xGhost2Pos, 55
                        mov yGhost2Pos, 17
                        jmp dcont
                    dL3:
                        mov xGhost2Pos, 85
                        mov yGhost2Pos, 15
                    dcont:
                    call DrawGhost2
                    mov G2halvesRes, 1
                    ret
        ;left boundary half
        lefthalf1:
            cmp xGhost2Pos, 1
            je lefthalf2
            jmp righthalf1
            lefthalf2:
                cmp yGhost2Pos, 14
                je earlyright
                jmp righthalf1
                earlyright:
                    mov G2rightB, 1
                    mov G2upB, 0
                    mov G2leftB, 0
                    mov G2downB, 0
                    call UpdateGhost2
                    cmp currentLevel, 1
                    je lL1
                    cmp currentLevel, 2
                    je lL2
                    jmp lL3
                    lL1:
                        mov xGhost2Pos, 60
                        mov yGhost2Pos, 11
                        jmp lcont
                    lL2:
                        mov xGhost2Pos, 31
                        mov yGhost2Pos, 20
                        jmp lcont
                    lL3:
                        mov xGhost2Pos, 65
                        mov yGhost2Pos, 20
                    lcont:
                    call DrawGhost2
                    mov G2halvesRes, 1
                    ret
        ;rightboundary half
        righthalf1:
            cmp xGhost2Pos, 118
            je righthalf2
            jmp fail
            righthalf2:
                cmp yGhost2Pos, 14
                je earlyleft
                jmp fail
                earlyleft:
                    mov G2leftB, 1
                    mov G2upB, 0
                    mov G2rightB, 0
                    mov G2downB, 0
                    call UpdateGhost2
                    cmp currentLevel, 1
                    je rL1
                    cmp currentLevel, 2
                    je rL2
                    jmp rL3
                    rL1:
                        mov xGhost2Pos, 88
                        mov yGhost2Pos, 13
                        jmp rcont
                    rL2:
                        mov xGhost2Pos, 80
                        mov yGhost2Pos, 24
                        jmp rcont
                    rL3:
                        mov xGhost2Pos, 35
                        mov yGhost2Pos, 15
                    rcont:
                    call DrawGhost2
                    mov G2halvesRes, 1
                    ret
    fail:
    mov G2halvesRes, 0
    ret
G2halves ENDP

G3halves PROC
        ;up right down left
        uphalf1:
            cmp xGhost3Pos, 59
            je uphalf2
            jmp downhalf1
            uphalf2:
                cmp yGhost3Pos, 2
                je earlydown
                jmp downhalf1
                earlydown:
                    mov G3downB, 1
                    mov G3rightB, 0
                    mov G3upB, 0
                    mov G3leftB, 0
                    call UpdateGhost3
                    cmp currentLevel, 1
                    je uL1
                    cmp currentLevel, 2
                    je uL2
                    jmp uL3
                    uL1:
                        mov xGhost3Pos, 60
                        mov yGhost3Pos, 11
                        jmp ucont
                    uL2:
                        mov xGhost3Pos, 31
                        mov yGhost3Pos, 20
                        jmp ucont
                    uL3:
                        mov xGhost3Pos, 65
                        mov yGhost3Pos, 20
                    ucont:
                    call DrawGhost3
                    mov G3halvesRes, 1
                    ret
        ;down boundary half
        downhalf1:
            cmp xGhost3Pos, 59
            je downhalf2
            jmp lefthalf1
            downhalf2:
                cmp yGhost3Pos, 28
                je earlyleft
                jmp lefthalf1
                earlyup:
                    mov G3upB, 1
                    mov G3rightB, 0
                    mov G3leftB, 0
                    mov G3downB, 0
                    call UpdateGhost3
                    cmp currentLevel, 1
                    je dL1
                    cmp currentLevel, 2
                    je dL2
                    jmp dL3
                    dL1:
                        mov xGhost3Pos, 28
                        mov yGhost3Pos, 17
                        jmp dcont
                    dL2:
                        mov xGhost3Pos, 80
                        mov yGhost3Pos, 12
                        jmp dcont
                    dL3:
                        mov xGhost3Pos, 56
                        mov yGhost3Pos, 10
                    dcont:
                    call DrawGhost3
                    mov G3halvesRes, 1
                    ret
        ;left boundary half
        lefthalf1:
            cmp xGhost3Pos, 1
            je lefthalf2
            jmp righthalf1
            lefthalf2:
                cmp yGhost3Pos, 14
                je earlyright
                jmp righthalf1
                earlyright:
                    mov G3rightB, 1
                    mov G3upB, 0
                    mov G3leftB, 0
                    mov G3downB, 0
                    call UpdateGhost3
                    cmp currentLevel, 1
                    je lL1
                    cmp currentLevel, 2
                    je lL2
                    jmp lL3
                    lL1:
                        mov xGhost3Pos, 60
                        mov yGhost3Pos, 5
                        jmp lcont
                    lL2:
                        mov xGhost3Pos, 55
                        mov yGhost3Pos, 17
                        jmp lcont
                    lL3:
                        mov xGhost3Pos, 85
                        mov yGhost3Pos, 15
                    lcont:
                    call DrawGhost3
                    mov G3halvesRes, 1
                    ret
        ;rightboundary half
        righthalf1:
            cmp xGhost3Pos, 118
            je righthalf2
            jmp fail
            righthalf2:
                cmp yGhost3Pos, 14
                je earlyleft
                jmp fail
                earlyleft:
                    mov G3leftB, 1
                    mov G3upB, 0
                    mov G3rightB, 0
                    mov G3downB, 0
                    call UpdateGhost3
                    cmp currentLevel, 1
                    je rL1
                    cmp currentLevel, 2
                    je rL2
                    jmp rL3
                    rL1:
                        mov xGhost3Pos, 88
                        mov yGhost3Pos, 13
                        jmp rcont
                    rL2:
                        mov xGhost3Pos, 80
                        mov yGhost3Pos, 24
                        jmp rcont
                    rL3:
                        mov xGhost3Pos, 35
                        mov yGhost3Pos, 15
                    rcont:
                    call DrawGhost3
                    mov G3halvesRes, 1
                    ret
    fail:
    mov G3halvesRes, 0
    ret
G3halves ENDP

G4halves PROC
        ;up right down left
        uphalf1:
            cmp xGhost4Pos, 59
            je uphalf2
            jmp downhalf1
            uphalf2:
                cmp yGhost4Pos, 2
                je earlydown
                jmp downhalf1
                earlydown:
                    mov G4downB, 1
                    mov G4rightB, 0
                    mov G4upB, 0
                    mov G4leftB, 0
                    call UpdateGhost4
                    cmp currentLevel, 1
                    je uL1
                    cmp currentLevel, 2
                    je uL2
                    jmp uL3
                    uL1:
                        mov xGhost4Pos, 88
                        mov yGhost4Pos, 13
                        jmp ucont
                    uL2:
                        mov xGhost4Pos, 80
                        mov yGhost4Pos, 24
                        jmp ucont
                    uL3:
                        mov xGhost4Pos, 35
                        mov yGhost4Pos, 15
                    ucont:
                    call DrawGhost4
                    mov G4halvesRes, 1
                    ret
        ;down boundary half
        downhalf1:
            cmp xGhost4Pos, 59
            je downhalf2
            jmp lefthalf1
            downhalf2:
                cmp yGhost4Pos, 28
                je earlyleft
                jmp lefthalf1
                earlyup:
                    mov G4upB, 1
                    mov G4rightB, 0
                    mov G4leftB, 0
                    mov G4downB, 0
                    call UpdateGhost4
                    cmp currentLevel, 1
                    je dL1
                    cmp currentLevel, 2
                    je dL2
                    jmp dL3
                    dL1:
                        mov xGhost4Pos, 60
                        mov yGhost4Pos, 5
                        jmp dcont
                    dL2:
                        mov xGhost4Pos, 55
                        mov yGhost4Pos, 17
                        jmp dcont
                    dL3:
                        mov xGhost4Pos, 85
                        mov yGhost4Pos, 15
                    dcont:
                    call DrawGhost4
                    mov G4halvesRes, 1
                    ret
        ;left boundary half
        lefthalf1:
            cmp xGhost4Pos, 1
            je lefthalf2
            jmp righthalf1
            lefthalf2:
                cmp yGhost4Pos, 14
                je earlyright
                jmp righthalf1
                earlyright:
                    mov G4rightB, 1
                    mov G4upB, 0
                    mov G4leftB, 0
                    mov G4downB, 0
                    call UpdateGhost4
                    cmp currentLevel, 1
                    je lL1
                    cmp currentLevel, 2
                    je lL2
                    jmp lL3
                    lL1:
                        mov xGhost4Pos, 28
                        mov yGhost4Pos, 17
                        jmp lcont
                    lL2:
                        mov xGhost4Pos, 80
                        mov yGhost4Pos, 12
                        jmp lcont
                    lL3:
                        mov xGhost4Pos, 56
                        mov yGhost4Pos, 10
                    lcont:
                    call DrawGhost4
                    mov G4halvesRes, 1
                    ret
        ;rightboundary half
        righthalf1:
            cmp xGhost4Pos, 118
            je righthalf2
            jmp fail
            righthalf2:
                cmp yGhost4Pos, 14
                je earlyleft
                jmp fail
                earlyleft:
                    mov G4leftB, 1
                    mov G4upB, 0
                    mov G4rightB, 0
                    mov G4downB, 0
                    call UpdateGhost4
                    cmp currentLevel, 1
                    je rL1
                    cmp currentLevel, 2
                    je rL2
                    jmp rL3
                    rL1:
                        mov xGhost4Pos, 60
                        mov yGhost4Pos, 11
                        jmp rcont
                    rL2:
                        mov xGhost4Pos, 31
                        mov yGhost4Pos, 20
                        jmp rcont
                    rL3:
                        mov xGhost4Pos, 65
                        mov yGhost4Pos, 20
                    rcont:
                    call DrawGhost4
                    mov G4halvesRes, 1
                    ret
    fail:
    mov G4halvesRes, 0
    ret
G4halves ENDP


Ghost1Movement PROC
        cmp rightB, 1
        je rightward
        cmp upB, 1
        je upward
        cmp leftB, 1
        je leftward
        cmp downB, 1
        je downward

            rightward:
                mov collision, 0

                ;check boundary, if at boundary go 2 lines down
                rightBoundary:
                    cmp xGhost1Pos, 118
                    je down
                
                cmp rightB, 1
                je checkright
                                    
                down:
                mov downB, 1
                mov upB, 0
                mov leftB, 0
                mov rightB, 0
                jmp downward
                checkright:
                    call CheckRightCollisionG1
                    cmp collision, 0
                    je goR
                    mov downB, 1
                    mov upB, 0
                    mov leftB, 0
                    mov rightB, 0
                    jmp downward
                    goR:
                        mov rightB, 1
                        mov upB, 0
                        mov downB, 0
                        mov leftB, 0
                        call UpdateGhost1
                        inc xGhost1Pos
                        call DrawGhost1
                        mov G1movRes, 1
                        ret
            downward:
                mov collision, 0
                ;check boundary, if at boundary go 2 lines down
                DownBoundary:
                    cmp yGhost1Pos, 28
                    je left

                cmp downB, 1
                je checkdown

                left:
                mov leftB, 1
                mov rightB, 0
                mov upB, 0
                mov downB, 0
                jmp leftward
                checkdown:
                    call CheckDownCollisionG1
                    cmp collision, 0
                    je goD
                    mov leftB, 1
                    mov rightB, 0
                    mov upB, 0
                    mov downB, 0
                    jmp leftward
                    goD:
                        mov downB, 1
                        mov rightB, 0
                        mov upB, 0
                        mov leftB, 0
                        call UpdateGhost1
                        inc yGhost1Pos
                        call DrawGhost1
                        mov G1movRes, 1
                        ret
            leftward:
                mov collision, 0
                ;check boundary, if at boundary go 2 lines down
                LeftBoundary:
                    cmp xGhost1Pos, 1
                    je up

                cmp leftB, 1
                je checkleft
                up:
                mov upB, 1
                mov rightB, 0
                mov leftB, 0
                mov downB, 0
                jmp upward
                checkleft:
                    call CheckLeftCollisionG1
                    cmp collision, 0
                    je goL
                    mov upB, 1
                    mov rightB, 0
                    mov leftB, 0
                    mov downB, 0
                    jmp upward
                    goL:
                        mov leftB, 1
                        mov rightB, 0
                        mov upB, 0
                        mov downB, 0
                        call UpdateGhost1
                        dec xGhost1Pos
                        call DrawGhost1
                        mov G1movRes, 1
                        ret
            upward:
                mov collision, 0
                ;check boundary, if at boundary go 2 lines down
                UpBoundary:
                    cmp yGhost1Pos, 2
                    je right
                cmp upB, 1
                je checkup
                right:
                mov rightB, 1
                mov upB, 0
                mov leftB, 0
                mov downB, 0
                jmp fin
                checkup:
                    call CheckUpCollisionG1
                    cmp collision, 0
                    je goU
                    mov rightB, 1
                    mov upB, 0
                    mov leftB, 0
                    mov downB, 0
                    jmp fin
                    goU:
                        mov upB, 1
                        mov rightB, 0
                        mov leftB, 0
                        mov downB, 0
                        call UpdateGhost1
                        dec yGhost1Pos
                        call DrawGhost1
                        mov G1movRes, 1
                        ret
    fin:
    mov G1movRes, 0
    ret
Ghost1Movement ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Ghost2Movement PROC
        cmp G2leftB, 1
        je leftward
        cmp G2downB, 1
        je downward
        cmp G2rightB, 1
        je rightward
        cmp G2upB, 1
        je upward

            leftward:
                mov G2collision, 0
                ;check boundary, if at boundary go 2 lines down
                LeftBoundary:
                    cmp xGhost2Pos, 1
                    je down

                cmp G2leftB, 1
                je checkleft
                down:
                mov G2upB, 0
                mov G2rightB, 0
                mov G2leftB, 0
                mov G2downB, 1
                jmp downward
                checkleft:
                    call CheckLeftCollisionG2
                    cmp G2collision, 0
                    je goL
                    mov G2upB, 0
                    mov G2rightB, 0
                    mov G2leftB, 0
                    mov G2downB, 1
                    jmp downward
                    goL:
                        mov G2leftB, 1
                        mov G2rightB, 0
                        mov G2upB, 0
                        mov G2downB, 0
                        call UpdateGhost2
                        dec xGhost2Pos
                        call DrawGhost2
                        mov G2movRes, 1
                        ret
            downward:
                mov G2collision, 0
                ;check boundary, if at boundary go 2 lines down
                DownBoundary:
                    cmp yGhost2Pos, 28
                    je right

                cmp G2downB, 1
                je checkdown

                right:
                mov G2leftB, 0
                mov G2rightB, 1
                mov G2upB, 0
                mov G2downB, 0
                jmp rightward
                checkdown:
                    call CheckDownCollisionG2
                    cmp G2collision, 0
                    je goD
                    mov G2leftB, 0
                    mov G2rightB, 1
                    mov G2upB, 0
                    mov G2downB, 0
                    jmp rightward
                    goD:
                        mov G2downB, 1
                        mov G2rightB, 0
                        mov G2upB, 0
                        mov G2leftB, 0
                        call UpdateGhost2
                        inc yGhost2Pos
                        call DrawGhost2
                        mov G2movRes, 1
                        ret
            rightward:
                mov G2collision, 0

                ;check boundary, if at boundary go 2 lines down
                rightBoundary:
                    cmp xGhost2Pos, 118
                    je up
                
                cmp G2rightB, 1
                je checkright
                                    
                up:
                mov G2downB, 0
                mov G2upB, 1
                mov G2leftB, 0
                mov G2rightB, 0
                jmp upward
                checkright:
                    call CheckRightCollisionG2
                    cmp G2collision, 0
                    je goR
                    mov G2downB, 0
                    mov G2upB, 1
                    mov G2leftB, 0
                    mov G2rightB, 0
                    jmp upward
                    goR:
                        mov G2rightB, 1
                        mov G2upB, 0
                        mov G2downB, 0
                        mov G2leftB, 0
                        call UpdateGhost2
                        inc xGhost2Pos
                        call DrawGhost2
                        mov G2movRes, 1
                        ret
            upward:
                mov G2collision, 0
                ;check boundary, if at boundary go 2 lines down
                UpBoundary:
                    cmp yGhost2Pos, 2
                    je left
                cmp G2upB, 1
                je checkup
                left:
                mov G2rightB, 0
                mov G2upB, 0
                mov G2leftB, 1
                mov G2downB, 0
                jmp fin
                checkup:
                    call CheckUpCollisionG2
                    cmp G2collision, 0
                    je goU
                    mov G2rightB, 0
                    mov G2upB, 0
                    mov G2leftB, 1
                    mov G2downB, 0
                    jmp fin
                    goU:
                        mov G2upB, 1
                        mov G2rightB, 0
                        mov G2leftB, 0
                        mov G2downB, 0
                        call UpdateGhost2
                        dec yGhost2Pos
                        call DrawGhost2
                        mov G2movRes, 1
                        ret
    fin:
    mov G2movRes, 0
    ret
Ghost2Movement ENDP


Ghost3Movement PROC
        cmp G3upB, 1
        je upward
        cmp G3rightB, 1
        je rightward
        cmp G3downB, 1
        je downward
        cmp G3leftB, 1
        je leftward

            upward:
                mov G3collision, 0
                ;check boundary, if at boundary go 2 lines down
                UpBoundary:
                    cmp yGhost3Pos, 2
                    je right
                cmp G3upB, 1
                je checkup
                right:
                mov G3rightB, 1
                mov G3upB, 0
                mov G3leftB, 0
                mov G3downB, 0
                jmp rightward
                checkup:
                    call CheckUpCollisionG3
                    cmp G3collision, 0
                    je goU
                    mov G3rightB, 1
                    mov G3upB, 0
                    mov G3leftB, 0
                    mov G3downB, 0
                    jmp rightward
                    goU:
                        mov G3upB, 1
                        mov G3rightB, 0
                        mov G3leftB, 0
                        mov G3downB, 0
                        call UpdateGhost3
                        dec yGhost3Pos
                        call DrawGhost3
                        mov G3movRes, 1
                        ret
            rightward:
                mov G3collision, 0

                ;check boundary, if at boundary go 2 lines down
                rightBoundary:
                    cmp xGhost3Pos, 118
                    je down
                
                cmp G3rightB, 1
                je checkright
                                    
                down:
                mov G3downB, 1
                mov G3upB, 0
                mov G3leftB, 0
                mov G3rightB, 0
                jmp downward
                checkright:
                    call CheckRightCollisionG3
                    cmp G3collision, 0
                    je goR
                    mov G3downB, 1
                    mov G3upB, 0
                    mov G3leftB, 0
                    mov G3rightB, 0
                    jmp downward
                    goR:
                        mov G3rightB, 1
                        mov G3upB, 0
                        mov G3downB, 0
                        mov G3leftB, 0
                        call UpdateGhost3
                        inc xGhost3Pos
                        call DrawGhost3
                        mov G3movRes, 1
                        ret
            downward:
                mov G3collision, 0
                ;check boundary, if at boundary go 2 lines down
                DownBoundary:
                    cmp yGhost3Pos, 28
                    je left

                cmp G3downB, 1
                je checkdown

                left:
                mov G3leftB, 1
                mov G3rightB, 0
                mov G3upB, 0
                mov G3downB, 0
                jmp leftward
                checkdown:
                    call CheckDownCollisionG3
                    cmp G3collision, 0
                    je goD
                    mov G3leftB, 1
                    mov G3rightB, 0
                    mov G3upB, 0
                    mov G3downB, 0
                    jmp leftward
                    goD:
                        mov G3downB, 1
                        mov G3rightB, 0
                        mov G3upB, 0
                        mov G3leftB, 0
                        call UpdateGhost3
                        inc yGhost3Pos
                        call DrawGhost3
                        mov G3movRes, 1
                        ret
            leftward:
                mov G3collision, 0
                ;check boundary, if at boundary go 2 lines down
                LeftBoundary:
                    cmp xGhost3Pos, 1
                    je up

                cmp G3leftB, 1
                je checkleft
                up:
                mov G3upB, 1
                mov G3rightB, 0
                mov G3leftB, 0
                mov G3downB, 1
                jmp fin
                checkleft:
                    call CheckLeftCollisionG3
                    cmp G3collision, 0
                    je goL
                    mov G3upB, 1
                    mov G3rightB, 0
                    mov G3leftB, 0
                    mov G3downB, 0
                    jmp fin
                    goL:
                        mov G3leftB, 1
                        mov G3rightB, 0
                        mov G3upB, 0
                        mov G3downB, 0
                        call UpdateGhost3
                        dec xGhost3Pos
                        call DrawGhost3
                        mov G3movRes, 1
                        ret
    fin:
    mov G3movRes, 0
    ret
Ghost3Movement ENDP

Ghost4Movement PROC
        ;down left up right
        cmp G4downB, 1
        je downward
        cmp G4leftB, 1
        je leftward
        cmp G4upB, 1
        je upward
        cmp G4rightB, 1
        je rightward


            downward:
                mov G4collision, 0
                ;check boundary, if at boundary go 2 lines down
                DownBoundary:
                    cmp yGhost4Pos, 28
                    je left

                cmp G4downB, 1
                je checkdown

                left:
                mov G4leftB, 1
                mov G4rightB, 0
                mov G4upB, 0
                mov G4downB, 0
                jmp leftward
                checkdown:
                    call CheckDownCollisionG4
                    cmp G4collision, 0
                    je goD
                    mov G4leftB, 1
                    mov G4rightB, 0
                    mov G4upB, 0
                    mov G4downB, 0
                    jmp leftward
                    goD:
                        mov G4downB, 1
                        mov G4rightB, 0
                        mov G4upB, 0
                        mov G4leftB, 0
                        call UpdateGhost4
                        inc yGhost4Pos
                        call DrawGhost4
                        mov G4movRes, 1
                        ret
            leftward:
                mov G4collision, 0
                ;check boundary, if at boundary go 2 lines down
                LeftBoundary:
                    cmp xGhost4Pos, 1
                    je up

                cmp G4leftB, 1
                je checkleft
                up:
                mov G4upB, 1
                mov G4rightB, 0
                mov G4leftB, 0
                mov G4downB, 1
                jmp upward
                checkleft:
                    call CheckLeftCollisionG4
                    cmp G4collision, 0
                    je goL
                    mov G4upB, 1
                    mov G4rightB, 0
                    mov G4leftB, 0
                    mov G4downB, 0
                    jmp upward
                    goL:
                        mov G4leftB, 1
                        mov G4rightB, 0
                        mov G4upB, 0
                        mov G4downB, 0
                        call UpdateGhost4
                        dec xGhost4Pos
                        call DrawGhost4
                        mov G4movRes, 1
                        ret
            upward:
                mov G4collision, 0
                ;check boundary, if at boundary go 2 lines down
                UpBoundary:
                    cmp yGhost4Pos, 2
                    je right
                cmp G4upB, 1
                je checkup
                right:
                mov G4rightB, 1
                mov G4upB, 0
                mov G4leftB, 0
                mov G4downB, 0
                jmp rightward
                checkup:
                    call CheckUpCollisionG4
                    cmp G4collision, 0
                    je goU
                    mov G4rightB, 1
                    mov G4upB, 0
                    mov G4leftB, 0
                    mov G4downB, 0
                    jmp rightward
                    goU:
                        mov G4upB, 1
                        mov G4rightB, 0
                        mov G4leftB, 0
                        mov G4downB, 0
                        call UpdateGhost4
                        dec yGhost4Pos
                        call DrawGhost4
                        mov G4movRes, 1
                        ret
            rightward:
                mov G4collision, 0

                ;check boundary, if at boundary go 2 lines down
                rightBoundary:
                    cmp xGhost4Pos, 118
                    je down
                
                cmp G4rightB, 1
                je checkright
                                    
                down:
                mov G4downB, 1
                mov G4upB, 0
                mov G4leftB, 0
                mov G4rightB, 0
                jmp fin
                checkright:
                    call CheckRightCollisionG4
                    cmp G4collision, 0
                    je goR
                    mov G4downB, 1
                    mov G4upB, 0
                    mov G4leftB, 0
                    mov G4rightB, 0
                    jmp fin
                    goR:
                        mov G4rightB, 1
                        mov G4upB, 0
                        mov G4downB, 0
                        mov G4leftB, 0
                        call UpdateGhost4
                        inc xGhost4Pos
                        call DrawGhost4
                        mov G4movRes, 1
                        ret
    fin:
    mov G4movRes, 0
    ret
Ghost4Movement ENDP

G1coincollision PROC
            cmp currentLevel, 1
            je m1
            cmp currentLevel, 2
            je m2
            mov esi, offset maze3coinscoord
            jmp proceed

            m1:
                mov esi, offset maze1coinscoord
                jmp proceed
            m2:
                mov esi, offset maze2coinscoord
                jmp proceed

            proceed:
            mov ecx, 96
            checkX:
                mov al, xGhost1Pos
                mov bl, yGhost1Pos
                cmp al, [esi]
                je checkY
                jmp nah
                checkY:
                    cmp bl, [esi+1]
                    je yea
                    jmp nah
                    yea:
                        mov al, 250
                        mov [esi], al
                        mov [esi+1], al
                nah:
                    add esi, 2
            loop checkX
    ret
G1coincollision ENDP

G2coincollision PROC
            cmp currentLevel, 1
            je m1
            cmp currentLevel, 2
            je m2
            mov esi, offset maze3coinscoord
            jmp proceed

            m1:
                mov esi, offset maze1coinscoord
                jmp proceed
            m2:
                mov esi, offset maze2coinscoord
                jmp proceed

            proceed:
            mov ecx, 96
            checkX:
                mov al, xGhost2Pos
                mov bl, yGhost2Pos
                cmp al, [esi]
                je checkY
                jmp nah
                checkY:
                    cmp bl, [esi+1]
                    je yea
                    jmp nah
                    yea:
                        mov al, 250
                        mov [esi], al
                        mov [esi+1], al
                nah:
                    add esi, 2
            loop checkX
    ret
G2coincollision ENDP

G3coincollision PROC
            cmp currentLevel, 1
            je m1
            cmp currentLevel, 2
            je m2
            mov esi, offset maze3coinscoord
            jmp proceed

            m1:
                mov esi, offset maze1coinscoord
                jmp proceed
            m2:
                mov esi, offset maze2coinscoord
                jmp proceed

            proceed:
            mov ecx, 96
            checkX:
                mov al, xGhost3Pos
                mov bl, yGhost3Pos
                cmp al, [esi]
                je checkY
                jmp nah
                checkY:
                    cmp bl, [esi+1]
                    je yea
                    jmp nah
                    yea:
                        mov al, 250
                        mov [esi], al
                        mov [esi+1], al
                nah:
                    add esi, 2
            loop checkX
    ret
G3coincollision ENDP

G4coincollision PROC
            cmp currentLevel, 1
            je m1
            cmp currentLevel, 2
            je m2
            mov esi, offset maze3coinscoord
            jmp proceed

            m1:
                mov esi, offset maze1coinscoord
                jmp proceed
            m2:
                mov esi, offset maze2coinscoord
                jmp proceed

            proceed:
            mov ecx, 96
            checkX:
                mov al, xGhost4Pos
                mov bl, yGhost4Pos
                cmp al, [esi]
                je checkY
                jmp nah
                checkY:
                    cmp bl, [esi+1]
                    je yea
                    jmp nah
                    yea:
                        mov al, 250
                        mov [esi], al
                        mov [esi+1], al
                nah:
                    add esi, 2
            loop checkX
    ret
G4coincollision ENDP

G1FruitCol PROC
        mov bl,xGhost1Pos
        cmp bl,xFruitPos
        jne fin
        mov bl,yGhost1Pos
        cmp bl,yFruitPos
        jne fin
        ; ghost1 is intersecting fruit:
        call CreateRandomFruit
        call DrawFruit
    fin:
    ret
G1FruitCol ENDP


G2FruitCol PROC
        mov bl,xGhost2Pos
        cmp bl,xFruitPos
        jne fin
        mov bl,yGhost2Pos
        cmp bl,yFruitPos
        jne fin
        ; ghost2 is intersecting fruit:
        call CreateRandomFruit
        call DrawFruit
    fin:
    ret
G2FruitCol ENDP

G3FruitCol PROC
        mov bl,xGhost3Pos
        cmp bl,xFruitPos
        jne fin
        mov bl,yGhost3Pos
        cmp bl,yFruitPos
        jne fin
        ; ghost3 is intersecting fruit:
        call CreateRandomFruit
        call DrawFruit
    fin:
    ret
G3FruitCol ENDP

G4FruitCol PROC
        mov bl,xGhost4Pos
        cmp bl,xFruitPos
        jne fin
        mov bl,yGhost4Pos
        cmp bl,yFruitPos
        jne fin
        ; ghost4 is intersecting fruit:
        call CreateRandomFruit
        call DrawFruit
    fin:
    ret
G4FruitCol ENDP

G1PPCol PROC
        mov bl,xGhost1Pos
        cmp bl,xPPPos
        jne fin
        mov bl,yGhost1Pos
        cmp bl,yPPPos
        jne fin
        ; ghost1 is intersecting fruit:
        call CreateRandomPP
        call DrawPP
    fin:
    ret
G1PPCol ENDP

G2PPCol PROC
        mov bl,xGhost2Pos
        cmp bl,xPPPos
        jne fin
        mov bl,yGhost2Pos
        cmp bl,yPPPos
        jne fin
        ; ghost1 is intersecting fruit:
        call CreateRandomPP
        call DrawPP
    fin:
    ret
G2PPCol ENDP

G3PPCol PROC
        mov bl,xGhost3Pos
        cmp bl,xPPPos
        jne fin
        mov bl,yGhost3Pos
        cmp bl,yPPPos
        jne fin
        ; ghost1 is intersecting fruit:
        call CreateRandomPP
        call DrawPP
    fin:
    ret
G3PPCol ENDP

G4PPCol PROC
        mov bl,xGhost4Pos
        cmp bl,xPPPos
        jne fin
        mov bl,yGhost4Pos
        cmp bl,yPPPos
        jne fin
        ; ghost1 is intersecting fruit:
        call CreateRandomPP
        call DrawPP
    fin:
    ret
G4PPCol ENDP

G1PlayerCol PROC
        mov bl,xGhost1Pos
        cmp bl,xPos
        jne fin
        mov bl,yGhost1Pos
        cmp bl,yPos
        jne fin
        ; ghost1 is intersecting player:
        cmp PP, 1
        je DestroyGhost
        jmp loseLife
        DestroyGhost:
            mov PP, 0
            mov G1Movement, 0
            call UpdateGhost1
            mov xGhost1Pos, 200
            mov yGhost1Pos, 1
            call CreateRandomPP
            call DrawPP
            jmp player
        loseLife:
        dec lives
        player:
        call UpdatePlayer
        mov xPos, 5
        mov yPos, 23
        call DrawPlayer
    fin:
    ret
G1PlayerCol ENDP

G2PlayerCol PROC
        mov bl,xGhost2Pos
        cmp bl,xPos
        jne fin
        mov bl,yGhost2Pos
        cmp bl,yPos
        jne fin
        ; ghost2 is intersecting player:
        cmp PP, 1
        je DestroyGhost
        jmp loseLife
        DestroyGhost:
            mov PP, 0
            mov G2Movement, 0
            call UpdateGhost2
            mov xGhost2Pos, 200
            mov yGhost2Pos, 1
            call CreateRandomPP
            call DrawPP
            jmp player
        loseLife:
        dec lives
        player:
        call UpdatePlayer
        mov xPos, 5
        mov yPos, 23
        call DrawPlayer
    fin:
    ret
G2PlayerCol ENDP

G3PlayerCol PROC
        mov bl,xGhost3Pos
        cmp bl,xPos
        jne fin
        mov bl,yGhost3Pos
        cmp bl,yPos
        jne fin
        ; ghost3 is intersecting player:
        cmp PP, 1
        je DestroyGhost
        jmp loseLife
        DestroyGhost:
            mov PP, 0
            mov G3Movement, 0
            call UpdateGhost3
            mov xGhost3Pos, 200
            mov yGhost3Pos, 1
            call CreateRandomPP
            call DrawPP
            jmp player
        loseLife:
        dec lives
        player:
        call UpdatePlayer
        mov xPos, 5
        mov yPos, 23
        call DrawPlayer
    fin:
    ret
G3PlayerCol ENDP

G4PlayerCol PROC
        mov bl,xGhost4Pos
        cmp bl,xPos
        jne fin
        mov bl,yGhost4Pos
        cmp bl,yPos
        jne fin
        ; ghost4 is intersecting player:
        cmp PP, 1
        je DestroyGhost
        jmp loseLife
        DestroyGhost:
            mov PP, 0
            mov G4Movement, 0
            call UpdateGhost4
            mov xGhost4Pos, 200
            mov yGhost4Pos, 1
            call CreateRandomPP
            call DrawPP
            jmp player
        loseLife:
        dec lives
        player:
        call UpdatePlayer
        mov xPos, 5
        mov yPos, 23
        call DrawPlayer
    fin:
    ret
G4PlayerCol ENDP

GetPoints PROC
    checkX:
        mov al, xPos
        mov bl, yPos
        cmp al, [esi]   
        je checkY
        jmp nah
        checkY:
            cmp bl, [esi+1]
            je yea
            jmp nah
            yea:
                add score, 1
                mov al, 250
                mov [esi], al
                mov [esi+1], al
                nah:
                    add esi, 2
            loop checkX
    ret
GetPoints ENDP

END main