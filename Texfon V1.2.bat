@echo off
set key=^^!ERRORLEVEL^^!
setlocal EnableDelayedExpansion EnableExtensions
pixelfnt.exe 1
mode 255,255
:drawnmario
echo [20;20H    [31m#####[94m    
echo [21;20H   [31m#########[94m 
echo [22;20H   [33m###[93m##[33m#[93m#[94m   
echo [23;20H  [33m#[93m#[33m#[93m###[33m#[93m###[94m 
echo [24;20H  [33m#[93m#[33m##[93m###[33m#[93m###
echo [25;20H [94m [33m##[93m####[33m####[94m 
echo [26;20H    [93m#######[94m  
echo [27;20H   [33m##[31m#[33m###[94m    
echo [28;20H  [33m###[31m#[33m##[31m#[33m###[94m 
echo [29;20H [33m####[31m####[33m####
echo [30;20H [93m##[33m#[31m#[93m#[31m##[93m#[31m#[33m#[93m##
echo [31;20H ###[31m######[93m###
echo [32;20H ##[31m########[93m##
echo [33;20H [94m  [31m###[94m  [31m###[94m  
echo [34;20H  [33m###[94m    [33m###[94m 
echo [35;20H [33m####[94m    [33m####[0m

set va1=5
set va3=2
set va4=2
set col=97
set ln=1
:input5
if %errorlevel% neq 0 set va3=%ln% & set/a va4+=4
:bgky
bg _kbd
if %key% equ 97 set va2=a & goto texfon
if %key% equ 98 set va2=b & goto texfon
if %key% equ 99 set va2=c & goto texfon
if %key% equ 100 set va2=d & goto texfon
if %key% equ 101 set va2=e & goto texfon
if %key% equ 102 set va2=f & goto texfon
if %key% equ 103 set va2=g & goto texfon
if %key% equ 104 set va2=h & goto texfon
if %key% equ 105 set va2=i & goto texfon
if %key% equ 106 set va2=j & goto texfon
if %key% equ 107 set va2=k & goto texfon
if %key% equ 108 set va2=l & goto texfon
if %key% equ 109 set va2=m & goto texfon
if %key% equ 110 set va2=n & goto texfon
if %key% equ 111 set va2=o & goto texfon
if %key% equ 112 set va2=p & goto texfon
if %key% equ 113 set va2=q & goto texfon
if %key% equ 114 set va2=r & goto texfon
if %key% equ 115 set va2=s & goto texfon
if %key% equ 116 set va2=t & goto texfon
if %key% equ 117 set va2=u & goto texfon
if %key% equ 118 set va2=v & goto texfon
if %key% equ 119 set va2=w & goto texfon
if %key% equ 120 set va2=x & goto texfon
if %key% equ 121 set va2=y & goto texfon
if %key% equ 122 set va2=z & goto texfon
if %key% equ 32 set va2=_ & goto texfon
if %key% equ 48 set va2=0 & goto texfon
if %key% equ 49 set va2=1 & goto texfon
if %key% equ 50 set va2=2 & goto texfon
if %key% equ 51 set va2=3 & goto texfon
if %key% equ 52 set va2=4 & goto texfon
if %key% equ 53 set va2=5 & goto texfon
if %key% equ 54 set va2=6 & goto texfon
if %key% equ 55 set va2=7 & goto texfon
if %key% equ 56 set va2=8 & goto texfon
if %key% equ 57 set va2=9 & goto texfon
if %key% equ 46 set va2=. & goto texfon
if %key% equ 44 set va2=vgl & goto texfon
if %key% equ 8 set va1=6 & set va2=_ & goto texfon
if %key% equ 13 set/a ln+=7 & set va4=1 & goto input5
if %key% equ 43 set/a col+=1 & goto bgky
if %key% equ 45 set col=91 & goto bgky
if %key% equ 27 exit
if %key% equ 39 set va2=exp & goto texfon
if %key% equ 47 set va2=irp & goto texfon
if %key% equ 59 set va2=2pi & goto texfon
goto input5
:input6
set /a va4-=8 & set va1=5
goto input5


:texfon
::██████████████████████████████████████████████████████
::█texfon V1.0 (c) 12/06/2022 (c) BDG 2022             █
::█---------------------------------------             █
::█how to use?:                                        █
::█va1: seleciona o local de output                    █
::█Ex:                                                 █
::█val=5                                               █
::█[...]                                               █
::█input5                                              █
::█input4                                              █
::█input2                                              █
::█ Ele retornará em INPUT5                            █
::█va2: seleciona a letra/numero para inprimir na tela █
::█Ex:                                                 █
::█va2=b                                               █
::█ele vai inprimir a letra B na tela (o Texfon pode ap█
::█enas imprimir 1 letra por vez)                      █
::█va3: escolhe a posição Y na tela                    █
::█va4: escolhe a posição X na tela                    █
::█col: seleciona a cor do caractere                   █
::█a cor é conforme a tabela ANSI em batch.            █
::█Ex:                                                 █
::█col=31                                              █
::█a cor do caractere vai ser de fundo preto e cor verm█
::█elha                                                █
::█col=44;31                                           █
::█a cor do caractere vai ser de fundo azul e cor verme█
::█lha                                                 █
::█após selecionar os valores, coloque                 █
::█"goto input" para imprimir.                         █
::██████████████████████████████████████████████████████
::caracteres possiveis com texfon v1.0:
::ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789,.♦
::sequencia: abcdefghijklmnopqrstuvwxyz_0123456789,.♦
::caracteres de 3X5 p.


	if %va2% equ a goto Aprt
	if %va2% equ b goto Bprt
	if %va2% equ c goto Cprt
	if %va2% equ d goto Dprt
	if %va2% equ e goto Eprt
	if %va2% equ f goto Fprt
	if %va2% equ g goto Gprt
	if %va2% equ h goto Hprt
	if %va2% equ i goto Iprt
	if %va2% equ j goto Jprt
	if %va2% equ k goto Kprt
	if %va2% equ l goto Lprt
	if %va2% equ m goto Mprt
	if %va2% equ n goto Nprt
	if %va2% equ o goto Oprt
	if %va2% equ p goto Pprt
	if %va2% equ q goto Qprt
	if %va2% equ r goto Rprt
	if %va2% equ s goto Sprt
	if %va2% equ t goto Tprt
	if %va2% equ u goto Uprt
	if %va2% equ v goto Vprt
	if %va2% equ w goto Wprt
	if %va2% equ x goto Xprt
	if %va2% equ y goto Yprt
	if %va2% equ z goto Zprt
	if %va2% equ _ goto _prt
	if %va2% equ 0 goto 0prt
	if %va2% equ 1 goto 1prt
	if %va2% equ 2 goto 2prt
	if %va2% equ 3 goto 3prt
	if %va2% equ 4 goto 4prt
	if %va2% equ 5 goto 5prt
	if %va2% equ 6 goto 6prt
	if %va2% equ 7 goto 7prt
	if %va2% equ 8 goto 8prt
	if %va2% equ 9 goto 9prt
	if %va2% equ vgl goto VGLprt
	if %va2% equ . goto .prt
	if %va2% equ exp goto EXPprt
	if %va2% equ irp goto IRPprt
	if %va2% equ 2pi goto 2PIprt
	if %va2% equ ♦ goto ♦prt
	if %va2% equ ↨ goto ↨prt
	goto nule
	goto input
		:Aprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
	
		:Bprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m##  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H##  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H##  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
	
		:Cprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m ## 
		
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H ## [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Dprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m##  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H##  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Eprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Fprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Gprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Hprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Iprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%	
	
		:Jprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Kprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H##  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Lprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Mprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Nprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Oprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Pprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H#   [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Qprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H ## 
		set/a va3 +=1
		echo [%va3%;%va4%H  # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Rprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m##  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H##  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Sprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Tprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Uprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Vprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Wprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H# # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Xprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Yprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:Zprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:_prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m    
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H    [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:0prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:1prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H##  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:2prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H### [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:3prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m##  
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H##  
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H##  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:4prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H  # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:5prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H##  
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H##  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:6prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m ## 
		set/a va3 +=1
		echo [%va3%;%va4%H#   
		set/a va3 +=1
		echo [%va3%;%va4%H##  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:7prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m### 
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H#   [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:8prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:9prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H ## 
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H##  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:VGLprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m    
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H ## 
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:.prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m    
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H ## 
		set/a va3 +=1
		echo [%va3%;%va4%H ## [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
	
		:EXPprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H ## [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
	
		:IRPprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m##  
		set/a va3 +=1
		echo [%va3%;%va4%H  # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
	
		:2PIprt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m    
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H    
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H    [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:♦prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
		
		:↨prt
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m #  
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H### 
		set/a va3 +=1
		echo [%va3%;%va4%H #  [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%
	
		:nule
		set/a va3 +=1
		echo [%va3%;%va4%H[%col%m# # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # 
		set/a va3 +=1
		echo [%va3%;%va4%H #  
		set/a va3 +=1
		echo [%va3%;%va4%H# # [0m
		set/a va3 +=2
		::pause>nul
	goto input%va1%