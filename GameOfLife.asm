data segment 
    ;vetores para as comparacoes 
    vetor_inicial db 187 dup(?)
    vetor_final db 187 dup(?) 
    
    ; strings do menu
    str_geracao db "GERACAO: ", "$" 
    str_numGeracao db "000 ", '$' 
    str_celulas db " CELULAS: ", '$' 
    str_numcelulas db "0000 ", '$'  
    str_iniciar db " INICIAR ", '$'
    str_sair db "SAIR", '$'  
    
    ;valores maximos e minimos para os botoes do menu
    maxXstrIniciar equ 540
    minXstrIniciar equ 433
    maxYstrIniciar equ 6
    minYstrIniciar equ 00  
    maxXstrSair equ 620
    minXstrSair equ 560
    maxYstrSair equ 10
    minYstrSair equ 00
      
    
    ;valores maximos e minimos do tamanho da grelha e ecra
    size_celula equ 12
    maxXgrelha_antes equ 435
    maxXgrelha equ 217
    maxYgrelha equ 145
    minXgrelha_antes equ 46
    minXgrelha equ 23
    minYgrelha equ 29
    xMin dw ?
    xMax dw ?
    yMax dw ?
    yMin dw ? 
    
    ;info do jogador
    nomeJogador db 40 dup(0) 
    nomePlayer db 20 dup(0) 
    ficHelp1 db "c:\", 0
    ficHelp2 db ".gam", 0 
    numLetrasJogador dw 0  
    strDay db 3 dup(?)
    strMonth db 3 dup(?)
    strYear db 5 dup(?) 
    strHour db 3 dup(?)
    strMin db 3 dup(?) 
    strNum db 5 dup(?) 
    numDay db ?
    numMonth db ?
    numYear dw ?
    numHour db ?
    numMin db ?
    bar db "_", 0 
    strCelulasGeracao db 10 dup(0) 
    
    ;variaveis Top5
    LinhaEnviaFic db 40 dup(0)
    LinhaAux1 db 40 dup(0)
    LinhaAux2 db 40 dup(0)
    vetorcelulas dw 5 dup(?)
    VetorConverte db 4 dup(48)
    
    ;valores das celulas
    numMaxCelulas equ 187  
    MaxCelulasHorizontal equ 15 
    MaxCelulasVertical equ 9
    numCelulas dw ? 
    numCelulasNovaGeracao dw 0 
    numCelulasMaxJogador dw 15  
    numGeracao dw ?
    numGeracoesMax dw 10
    num_zeros dw 0  
    ecra_Y_celula db 0
    ecra_X_celula db 22 
    ecra_Y_geracao db 0
    ecra_X_geracao db 9 
    origemX equ 23
    origemY equ 29 
    dead_alive db ?
    numCelulasRedor db 0
    
    ;cores
    black equ 00h
    blue equ 03h
    red equ 04h 
    
    ;ficheiros
    handler dw ? 
    handler1 dw ?
    handlerSair dw ? 
    handle dw ?
    nomeFicCarregar db 60 dup(?) 
    strCelulasGeracaoCarregar db 9 dup (0) 
    CarregarJogoVar dw 0  
    ficTop5 db "c:\Top5.txt", 0
    ficSair db "c:\Log.txt", 0
    
    ;tempo 
    tempoEspera db 10
    tempoAtual db ?
      
    ;barreira
    barreira_cima db 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, "$"
    BARREIRA_parte1 db 201, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 187, "$"
    BARREIRA_parte2 db 13, 10, 32, 32, 186, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 186, "$"
    BARREIRA_parte3 db 13, 10, 32, 32, 200, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 188, "$"
    barra_progresso_parte1 db 201, 205, 205, 187, "$"
    barra_progresso_parte2 db 186, 32, 32, 186, "$" 
    barra_progresso_parte3 db 200, 205, 205, 188, "$"
    barra_enche_progresso db 177, 177, "$"
    apaga_barra db 32, 32, "$" 
    
    
    strNomeJogo db "THE GAME OF LIFE", "$"
    strJogar db "JOGAR","$" 
    strCarregar db "CARREGAR","$"
    strGuardar db "GUARDAR", "$"
    strTop5 db "TOP 5","$"
    strCreditos db "CREDITOS", "$"
    strSair db "SAIR","$"
    strMensagemFinal db "VAI DORMIR ZEZOCA!", "$"
    strNome db "NOME:", "$"
    strAprCreditos db "OS AUTORES DESTE TRABALHO SAO:", "$"
    strMiguel db "63064 - MIGUEL FERREIRA", "$"
    strVentura db "62413 - DIOGO VENTURA", "$"
    strXico db "62695 - FRANCISCO RIBEIRO", "$"
    strBenfica db "CARREGA BENFICA", "$"
    strSpace db " ", "$"
    strNomeJog db "$"
    strFicheiroNaoExiste db "ESSE FICHEIRO NAO EXISTE! ANALFABETO", '$'
    strFIcheiroGuardado db "Ficheiro Guardado!", '$'
    strFicheiroApagaMensagem db 35 dup(32) 
   
    
    ;posicao do cursor para o printf do menu
    xNomeJogo db 12
    yNomeJogo db 1
    xJogar db 18
    yJogar db 8
    xCarregar db 3
    yCarregar db 14
    xGuardar db 30
    yGuardar db 14
    xTop5 db 18
    yTop5 db 14
    xCreditos db 3
    yCreditos db 18
    xSair db 32 
    ySair db 18
    
    ;limites dos quadrados das opcoes do menu
    BotaoEsq equ 1
    xMaxJogar equ 403
    yMaxJogar equ 83 
    xMinJogar equ 247
    yMinJogar equ 53
    xMaxCarregar equ 180
    yMaxCarregar equ 123
    xMinCarregar equ 41
    yMinCarregar equ 109
    xMaxGuardar equ 595
    yMaxGuardar equ 123
    xMinGuardar equ 473
    yMinGuardar equ 109
    xMaxTop5 equ 403
    yMaxTop5 equ 123
    xMinTop5 equ 247
    yMinTop5 equ 109
    xMaxCreditos equ 180
    yMaxCreditos equ 154
    xMinCreditos equ 41
    yMinCreditos equ 139
    xMaxSair equ 583
    yMaxSair equ 154
    xMinSair equ 504
    yMinSair equ 139
    ;posicao padrao para o quadrdado
    xQuadrado db 8
    yQuadrado db 1
    
    ;Sao Usadas nos Creditos para contar os 10 segundos
    VarAux db 1
    HorasInicio db ?
    MinutosInicio db ?
    SegundosInicio db ?
    SegundosAcu db 0 
    SegundosMax db 60
    Segundos60 equ 60
    
    ;Limites dos Quadrados do Menu
    cantoSE db 218, "$"
    cantoED db 196, "$"
    cantoSD db 191, "$"
    cantoCB db 179, "$"
    cantoID db 217, "$"
    cantoIE db 192, "$"
    
    str0 db "0", "$"
    str1 db "1", "$"
    str2 db "2", "$"
    str3 db "3", "$"
    Incrementa dw 0
    
    strReceba db "RECEBA", "$"
    strSeta1 db 16, " ", "$"
    strSeta2 db " ", 17, "$"
    strTop5Dados db "Geracao Celulas Jogador Data Hora", "$"
    
    ficOffsetSair dw 33
    VetorFicSair db 300 dup(0) 
    VetorFicTop5 db 150 dup(0)
    AnoTop5 dw ?
    MesTop5 db ?
    DiaTop5 db ? 
    HoraTop5 db ?
    MinutoTop5 db ?
    SegundoTop5 db ?
    BarraDataTop5 db 47
    DoisPontosTop5 db 58
    strNewLine db 0ah, 0dh
    VarAuxSair db 1
    VarAuxTop5 db 1 
    
    strTopGeracaoBarreira db 218, 196, 196, 196, 196, 196, 196, 196, 196, 196, 191, 32, 32, '$';Tambem serve para celulas
    strTopJogadorBarreira db 218, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 191, 32, 32, '$'; Tambem serve para a data e hora
    strMeteTitulos db 179, 32, "GERACAO", 32, 179, 32, 32, 179, 32, "CELULAS", 32, 179, 32, 32, 179, 32, 32, "JOGADOR", 32, 32, 179, 32, 32, 179, 32, 32, 32, "DATAS", 32, 32, 32, 179, 32, 32, 179, 32, 32, 32, "HORAS", 32, 32, 32, 179, '$'
    strMeteSeparacaoGeracao db 195, 196, 196, 196, 196, 196, 196, 196, 196, 196, 180, 32, 32, '$' ;Tambem serve para celulas
    strMeteSeparacaoJogador db 195, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 180, 32, 32, '$'; Tambem serve para a data e hora
    strMeteBarreiraLado db 179, 32, 32, 32, 32, 32, 32, 32, 32, 32, 179, 32, 32, 179, 32, 32, 32, 32, 32, 32, 32, 32, 32, 179, 32, 32, 179, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 179, 32, 32, 179, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 179, 32, 32,179, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 179, 32, 32, '$'
    strMeteBarreiraBaixa db 192, 196, 196, 196, 196, 196, 196, 196, 196, 196, 217, 32, 32, 192, 196, 196, 196, 196, 196, 196, 196, 196, 196, 217, 32, 32, 192, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 217, 32, 32, 192, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 217, 32, 32, 192, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 217, 32, 32, '$'
    LinhaHifen db 40 dup('-')
     
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax      
     
    mov al, 13h
    call setVideoMode
    call press_any_key
    
    call LeFicheiroTop5
    xor bx, bx
    inicioMenu:
    
    ;escreve o nome do jogo
    mov dl, xNomeJogo
    mov dh, yNomeJogo
    call setTextCursor
    lea dx, strNomeJogo
    call printf
    
    ;escreve os limites do nome do jogo 
    xor ax, ax
    mov al, xNomeJogo
    sub al, 2
    mov dl, al 
    xor ax, ax
    mov al, yNomeJogo
    dec al
    mov dh, al
    call setTextCursor
    mov al, xQuadrado
    add al, 10
    mov ah, yQuadrado
    call RetMenu

    
    ;escreve "jogar"
    mov dl, xJogar
    mov dh, yJogar
    call setTextCursor
    lea dx, strJogar
    call printf
    
    ;escreve os limites do "jogo" 
    xor ax, ax
    mov al, xJogar
    sub al, 3
    mov dl, al
    mov al, yJogar
    sub al, 2
    mov dh, al
    call setTextCursor
    
    ;Define os limites do quadrado
    mov al,xQuadrado
    inc al
    mov ah, yQuadrado
    add ah, 2
    call RetMenu 
    
    ;Escreve Carregar
    mov dh, yCarregar
    mov dl, xCarregar
    call setTextCursor
    lea dx, strCarregar
    call printf
    
    ;Define a posicao inicial para escrever o quadrado
    xor ax, ax
    mov al, xCarregar
    dec al
    mov dl, al
    mov al, yCarregar
    dec al
    mov dh, al
    call setTextCursor
    mov al, xQuadrado
    mov ah, yQuadrado
    call RetMenu
    
    ;Escreve Guardar
    mov dh, yGuardar
    mov dl, xGuardar
    call setTextCursor 
    lea dx, strGuardar
    call printf
    
    ;Define a posicao inicial para escrever o quadrado
    xor ax, ax
    mov al, xGuardar
    dec al
    mov dl, al
    mov al, yGuardar 
    dec al
    mov dh, al
    call setTextCursor
    
    ;Define os limites do quadrado 
    mov al, xQuadrado
    dec al
    mov ah, yQuadrado
    call RetMenu 
    
    ;Escreve Top 5
    mov dh, yTop5
    mov dl, xTop5
    call setTextCursor
    lea dx, strTop5
    call printf
    
    ;Define a posicao inicial para escrever o quadrado
    xor ax, ax
    mov al, xTop5
    sub al, 3
    mov dl, al
    mov al, yTop5
    dec al
    mov dh, al
    call setTextCursor
    
    ;Define os limites do quadrado
    mov al, xQuadrado
    inc al
    mov ah, yQuadrado
    call RetMenu
    
    ;Escreve Creditos
    mov dh, yCreditos 
    mov dl, xCreditos
    call setTextCursor
    lea dx, strCreditos
    call printf
    
    ;Define a posicao inicial para escrever o quadrado
    xor ax, ax
    mov al, xCreditos
    dec al
    mov dl, al
    mov al, yCreditos
    dec al
    mov dh, al
    call setTextCursor

    ;Define os limites do quadrado
    mov al, xQuadrado
    mov ah, yQuadrado
    call RetMenu
    
    ;Escreve Sair
    mov dh, ySair
    mov dl, xSair
    call setTextCursor
    lea dx, strSair
    call printf
    
    ;Define a posicao inicial para escrever o quadrado
    xor ax, ax
    mov al, xSair
    dec al
    mov dl, al
    mov al, ySair
    dec al
    mov dh, al
    call setTextCursor
    
    ;Define os limites do quadrado
    mov al, xQuadrado
    sub al, 4
    mov ah, yQuadrado
    call RetMenu 
    
    ;Verifica se clicou no Botao Esquerd
    loop14:
    call getMousePos
    cmp bx, BotaoEsq
    je equal1
    jmp loop14
    equal1:  
    ;Seleciona a opcao pressionada:
    
    ;verifica click "jogar" ou "top5"
    cmp cx, xMaxJogar
    ja next1 
    cmp cx, xMinJogar
    jb next1 
    cmp dx, yMaxJogar
    ja next0
    cmp dx, yMinJogar
    jb next0
    call Jogar
    jmp inicioMenu
    next0:
    cmp dx, yMaxTop5
    ja loop14
    cmp dx, yMinTop5
    jb loop14 
    call Top5
    jmp inicioMenu
    next1:

    ;verifica click "carregar" ou "creditos" 
    cmp cx, xMaxCarregar
    ja next3 
    cmp cx, xMinCarregar
    jb next3
    cmp dx, yMaxCarregar
    ja next2
    cmp dx, yMinCarregar
    jb next2
    call Carregar
    cmp CarregarJogoVar, 0
    je nao_carrega_jogo 
    call Jogo
    nao_carrega_jogo:  
    call clearScreen
    jmp inicioMenu
    next2:
    cmp dx, yMaxCreditos
    ja loop14
    cmp dx, yMinCreditos
    jb loop14 
    call Creditos
    jmp inicioMenu
    next3:

    ;verifica click "guardar"
    cmp cx, xMaxGuardar
    ja next4
    cmp cx, xMinGuardar
    jb next4
    cmp dx, yMaxGuardar
    ja next4
    cmp dx, yMinGuardar
    jb next4 
    call Guardar
    next4:

    ;verifica click "sair"
    cmp cx, xMaxSair
    ja next5
    cmp cx, xMinSair
    jb next5
    cmp dx, yMaxSair
    ja next5
    cmp dx, yMinSair
    jb next5 
    call Sair
    next5:
    
    jmp loop14
    mov ax, 4c00h ; exit to operating system.
    int 21h      
ends
                
    
      
    endProgram: mov ax, 4c00h ; exit to operating system.
    int 21h    
ends 


                        ;ALL OTHER FUNCTIONS 
                     
; *******************************************
; Jogar: Realiza a  opcao Jogar
;
; Input:
; 
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc Jogar 
    mov dh, 22
    mov dl, 10
    call SetTextCursor
    lea dx, strNome
    call printf
    call scanfJogador 
    call clearScreen
    call Jogo
    call clearScreen 
    ret
EndP  
 
 
; *******************************************
; Carregar: Realiza a  opcao Carregar
;
; Input:
; 
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc Carregar   
    ;inicializa numero de celulas
    mov ax, 0
    mov numCelulas, ax  
    mov numCelulasNovaGeracao, ax 
    mov numGeracao, ax 
    
    mov cx, 9
    mov ax,0
    mov di, offset strCelulasGeracaoCarregar
    rep stosb
    
    mov dh, 22
    mov dl, 10
    call SetTextCursor
    lea dx, strNome
    call printf
    call scanfNomeFicheiro ;->fica guardado em nomeFicGuardar
     
    ;coloca o nomeFicCarregar no nomeJogador
    mov cx, 40
    mov ax,0
    mov di, offset nomeJogador
    rep stosb

    mov di, offset nomeJogador
    mov si, offset nomeFicCarregar
    mov cx, 40
    rep movsb
     
    ;abre o ficheiro 
    mov dx, offset nomeFicCarregar 
    mov al, 0
    call fopen 
    jc Nao_Abre_ficheiro_carrega 
    call ClearScreen  
    call CursorInicio
    ;le o numero de celulas e geracao do ficheiro
    mov bx, handler
    mov cx, 8
    mov dx, offset strCelulasGeracaoCarregar
    call fread  
    
    ;mudar o valor das varriaveis numCelulas e numGeracao "0000 000"
    mov si, offset strCelulasGeracaoCarregar
    mov cx, 4
    call convertStrToNum
    mov numCelulas, ax
    
    mov si, offset strCelulasGeracaoCarregar
    add si, 5  
    mov cx, 3
    call convertStrToNum
    mov numGeracao, ax
    
    ;apaga o que esta no vetor nomeFicCarregar 
    mov cx, 60
    mov ax,0
    mov di, offset nomeFicCarregar
    rep stosb
    
    
    ;apaga o que esta no vetor strCelulasGeracaoCarregar  
    
    
    call escreveJogo
    
    
    ;le o ficheiro e guarda no vetor inicial
    mov bx, handler
    mov cx, numMaxCelulas
    mov dx, offset vetor_inicial
    call fread    
    
    ;fecha o ficheiro
    mov bx, handler
    call fclose
    
                      
    ;COLOCA NOVA GERACAO
    mov cx, origemX
    mov dx, origemY 
    mov di, offset vetor_inicial
    add di, 18
    loop15:

    ;define as posicoes max e min da celula
    mov xMin, cx 
    mov ax, cx
    add ax, size_celula
    mov xMax, ax
    mov yMin, dx 
    mov ax, dx
    add ax, size_celula
    mov yMax, ax
    
    ;verifica o que esta no ecra=al com o vetor da proxima geracao=ah
    call getPixel  
    mov ah, [di]  
    inc di
    
    mov bh, blue
    cmp ah, 1
    je changeColor1
    mov bh, black
    changeColor1: mov ah, bh
    cmp ah, al
    jz samePixel1
    mov al, ah
    
    
    ;coloca os pixeis na celula 
    loop16: 
    cmp dx, yMin
    je linhacima2
    cmp dx, yMax
    je linhabaixo2
    mov cx, xMax
    call putPixel
    mov cx, xMin
    call putPixel
    inc dx
    jmp loop16
    linhacima2:
    cmp cx, xMax
    jg muda_linha2
    call putPixel
    inc cx
    jmp linhacima2
    muda_linha2:
    inc dx
    jmp loop16
    linhabaixo2:
    cmp cx, xMax
    jg endloop16
    call putPixel
    inc cx
    jmp linhabaixo2
    endloop16:
    ;repor valores de cx e dx
    mov cx, xMin
    mov dx, yMin

    samePixel1:
    ;comparacoes para o ciclo continuar
    add cx, 13
    cmp cx, maxXgrelha 
    jg changeLine4
    jmp loop15
    
    changeLine4:
    add dx, 13 
    add di, 2
    mov cx, origemX 
    cmp dx, maxYgrelha
    jg endloop15
    
    jmp loop15 
    nao_abre_ficheiro_carrega:
    xor bx, bx
    mov dh, 20
    mov dl, 3
    call setTextCursor
    lea dx, strFicheiroNaoExiste
    call printf
    ret 
    endloop15:
    mov ax, 1
    mov CarregarJogoVar, ax
    ret
EndP  

 
; *******************************************
; Guardar: Realiza a  opcao Guardar
;
; Input:
; 
; Output:Nothing
; Detroys: Nothing
; ******************************************* 
Proc Guardar
    mov ax, numGeracao 
    cmp ax, 0
    je dontSave 
    mov ax, CarregarJogoVar 
    mov cx, 0
    mov CarregarJogoVar, cx
    cmp ax, 1
    je GuardarCarregar
    call CursorInicio
    
    
    ;GUARDA NUM FICHEIRO
    ;coloca no nome do ficheiro o nome do jogador
    mov si, offset ficHelp1
    mov di, offset nomeJogador
    mov cx, 3
    rep movsb
    mov si, offset nomePlayer
    mov cx, numLetrasJogador
    rep movsb 
         
    
    ;coloca a data no ficheiro 
    call systemDate  
    mov numDay, dl
    mov numMonth, dh
    mov numYear, cx 
    
    ;coloca o dia
    mov si, offset strDay 
    xor ax, ax
    mov al, numDay
    call convertNumToStr 
    mov si, offset strDay 
    mov al, numDay
    cmp al, 10
    jae dontAdd0  
    mov al, [si]  
    mov [si], '0'
    mov [si+1], al
    dontAdd0:
    mov cx, 2
    rep movsb 
    
    ;coloca a barra
    mov si, offset bar
    mov cx, 1
    rep movsb
    
    ;coloca o mes
    mov si, offset strMonth
    xor ax, ax
    mov al, numMonth
    call convertNumToStr
    mov si, offset strMonth
    mov al, numMonth
    cmp al, 10
    jae dontAdd01
    mov al, [si]  
    mov [si], '0'
    mov [si+1], al
    dontAdd01:
    mov cx, 2
    rep movsb  
    
    ;coloca a barra
    mov si, offset bar
    mov cx, 1
    rep movsb
    
    ;coloca o ano
    mov si, offset strYear
    mov ax, numYear
    call convertNumToStr
    mov si, offset strYear
    mov cx, 4
    rep movsb 
    
    ;coloca a barra
    mov si, offset bar
    mov cx, 1
    rep movsb
    
    ;coloca horas no ficheiro
    call systemTime
    mov numHour, ch 
    mov numMin, cl
    
    ;coloca hora
    mov si, offset strHour 
    xor ax, ax
    mov al, numHour
    call convertNumToStr
    mov si, offset strHour
    mov al, numHour 
    cmp al, 10
    jae dontAdd02  
    mov al, [si]  
    mov [si], '0'
    mov [si+1], al
    dontAdd02:
    mov cx, 2
    rep movsb
    
    ;coloca a barra
    mov si, offset bar
    mov cx, 1
    rep movsb
    
    ;coloca minutos
    mov si, offset strMin 
    xor ax, ax
    mov al, numMin
    call convertNumToStr
    mov si, offset strMin 
    mov al, numMin
    cmp al, 10
    jae dontAdd03  
    mov al, [si]  
    mov [si], '0'
    mov [si+1], al
    dontAdd03:
    mov cx, 2
    rep movsb
    
    ;coloca o tipo de ficheiro
    mov si, offset ficHelp2
    mov cx, 4
    rep movsb
     
    
    ;coloca o numero de celulas e o numero de geracoes no ficheiro
    ;numero de celulas  
    GuardarCarregar:
    mov si, offset strCelulasGeracao
    mov ax, numCelulas 
    cmp ax, 10
    jae next6 
    mov [si], '0'
    mov [si+1], '0'
    mov [si+2], '0'
    add si, 3 
    jmp next8
    next6: cmp ax, 100
    jae next7
    mov [si], '0'
    mov [si+1], '0'   
    add si, 2 
    jmp next8
    next7: cmp ax, 1000
    jae next8 
    mov [si], '0'
    inc si
    next8:
    call convertNumToStr
    
    ;coloca um espaco no meio
    mov si, offset strCelulasGeracao
    add si, 4
    mov [si], 32 ;->space
      
    
    ;numero de geracoes
    mov si, offset strCelulasGeracao 
    add si, 5
    mov ax, numGeracao
    cmp ax, 10
    jae next9 
    mov [si], '0'
    mov [si+1], '0'
    add si, 2
    jmp next10
    next9:
    cmp ax, 100
    jae next10 
    mov [si], '0'
    inc si
    next10:
    call convertNumToStr  
    
    ;cria o ficheiro 
    lea dx, nomeJogador  
    mov cx, 0
    call fcreate
    mov handler, ax
    
    ;coloca no ficheiro tudo
    mov dx, offset strCelulasGeracao
    mov bx, handler
    mov cx, 8
    call fwrite
    
    ;coloca o vetor no ficheiro 
    mov dx, offset vetor_final 
    mov bx, handler
    mov cx, numMaxCelulas
    call fwrite
    
    ;fecha o ficheiro  
    mov bx, handler
    call fclose
    
    
    xor bx, bx
    mov dh, 20
    mov dl, 3
    call setTextCursor
    
    lea dx, strFicheiroGuardado
    call printf
    
    dontSave: 
    ret
EndP                        
 

; *******************************************
; Top5: Realiza a  opcao Top5 
;
; Input:
; 
; Output:Nothing
; Detroys: Nothing
; *******************************************      
Proc Top5
    call ClearScreen
    call CursorInicio
    
    mov dx, offset ficTop5
    mov al, 2
    call fopen
    jnc AbriuFic5
    ;deu Erro ao abrir (duvidoso)
    ret 

    AbriuFic5:
    mov handle, ax
    mov bx, ax
    mov cx, 0
    mov al, 0
    mov dx, 0
    call fseek
    ;Coloca em modo texto
    xor dx, dx
    xor cx, cx 
    mov ax, 0003h
    mov bx, 0
    int 10h
    
    
    call press_any_key
    
    ;Display
    xor bx, bx
    mov dh, 3
    mov dl, 5 
    call setTextCursor
    
    
    lea dx, strTopGeracaoBarreira 
    call printf
    call printf
    
    lea dx, strTopJogadorBarreira
    call printf
    call printf
    call printf
     
    xor bx, bx
    mov dh, 4
    mov dl, 5 
    call setTextCursor
     
    lea dx, strMeteTitulos 
    call printf
    
    xor bx, bx
    mov dh, 5
    mov dl, 5 
    call setTextCursor
    
    lea dx, strMeteSeparacaoGeracao
    call printf
    call printf
    
    lea dx, strMeteSeparacaoJogador
    call printf
    call printf
    call printf
    
    xor bx, bx
    mov dh, 6
    mov dl, 5
    push dx
    call setTextCursor
    
    
    
    mete_barreira_lado:
    lea dx, strMeteBarreiraLado
    call printf
    pop dx
    inc dh
    push dx
    cmp dh, 17
    je acabaloop_barreira_lado
    call setTextCursor
    jmp mete_barreira_lado
    
    acabaloop_barreira_lado:
    
    pop dx
    call setTextCursor
    
    lea dx, strMeteBarreiraBaixa
    call printf
    
    xor bx, bx
    mov dh, 7
    mov dl, 9
    push dx
    call setTextCursor
    
    
    
    
        
    ;Leitura do ficheiro
    loop_MeteTop5:
    pop dx
    call setTextCursor
    push dx
    mov dx, offset LinhaAux1
    mov bx, handle
    mov cx, 40
    call fread
    
    cmp ax, 0
    jne tem_algo
    mov si, offset LinhaHifen
    jmp nao_tem_algo    
    
    tem_algo:
    mov si, offset LinhaAux1
    nao_tem_algo:
    mov cx, 3
    call printfVetor
    ;Ajuste da posicao
    pop dx
    xor bx, bx
    add dl, 13
    call setTextCursor
    
    push dx
    add si, 2
    mov cx, 3
    call printfVetor
    
    pop dx
    xor bx, bx
    add dl, 11
    push dx
    call setTextCursor
    
    inc si
    mov cx, 8
    call printfVetor
    
    pop dx
    xor bx, bx
    add dl, 15
    push dx
    call setTextCursor
    
    inc si
    mov cx, 8
    call printfVetor
    
    pop dx
    xor bx, bx
    add dl, 15
    push dx
    call setTextCursor
    
    inc si
    mov cx, 8
    call printfVetor
    
    pop dx
    add dh, 2
    mov dl, 9
    push dx
    cmp dh, 15
    jg acabaTabelaTop5
    jmp loop_MeteTop5
    acabaTabelaTop5:
    
    pop dx
    inc cx
    call 10segundos
    mov al, 13h
    call setVideoMode
    mov bx, handler
    call fclose
    call press_any_key
    ret 
EndP
                        
                        
;JOGO
Proc Jogo  
    mov ax, CarregarJogoVar
    cmp ax, 1
    je carregarJogo 
    ;inicializa numero de celulas
    mov ax, 0
    mov numCelulas, ax  
    mov numCelulasNovaGeracao, ax 
    mov numGeracao, ax 
    ;COLOCA O ECRA INICIAL DE JOGO        
    ;limpa vetores  
    mov ax, 0  
    mov cx, numMaxCelulas
    mov di, offset vetor_inicial
    cld
    rep stosb   
    mov di, offset vetor_final
    cld
    rep stosb 
     
    call escreveJogo  
    
    ;inicializa o rato
    call initMouse 
    call showMouse 
    
     
    loop1:  
    carregarJogo:   
    
    ;COLOCA CELULA NO SITIO DO RATO COM CLICK NO BOTAO ESQUERDO  
    loop2:
    mov ax, numCelulas
    cmp ax, numCelulasMaxJogador  
    jae endloop2 
    call getMousePos 
    cmp bx, 1
    jne loop2
    ;verifica se esta na barra de comandos do menu  
    cmp dx, maxYstrSair
    ja here4
    cmp dx, minYstrSair
    jb here4
    here4:
    ;verifica se clicou no "SAIR"
    cmp cx, maxXstrSair
    ja here3
    cmp cx, minXstrSair
    jb here3
    cmp dx, maxYstrSair
    ja here3
    cmp dx, minYstrSair
    jb here3 
    jmp acaba_jogo1
    here3:
    
    ;verfica se clicou "INICIAR"
    cmp cx, maxXstrIniciar
    ja here9
    cmp cx, minXstrIniciar
    jb here9
    cmp dx, maxYstrIniciar
    ja here9
    cmp dx, minYstrIniciar
    jb here9  
    cmp numCelulas, 0
    je loop2
    jmp endloop2 
    here9:   
    
    ;comparacoes para verificar se esta a clicar dentro da grelha do jogo
    cmp cx, maxXgrelha_antes
    ja here5
    cmp cx, minXgrelha_antes
    jb here5
    cmp dx, maxYgrelha
    ja here5
    cmp dx, minYgrelha
    jb here5
    jmp comeca_celula
    here5: jmp loop2 
    
    comeca_celula:
    ;divide o cx por dois porque esta duplicado  
    mov ax, cx
    mov bl, 4
    div bl 
    mov bl, 2
    mul bl
    mov cx, ax
    inc cx 
    
    ;algoritmo para colocar a celula no local correto do ecra
    call alg_escolher_celula
    
    ;define as posicoes max e min da celula
    mov xMin, cx 
    mov ax, cx
    add ax, size_celula
    mov xMax, ax 
    mov ax, dx
    mov yMin, dx
    add ax, size_celula
    mov yMax, ax
    
    ;escolhe a cor do pixel                                                      
    call getPixel
    cmp al, black
    jne delete_Cell
    ;incrementa o numero de celulas
    inc numCelulas
    mov al, blue
    jmp loop4
    ;apaga a celula e decrementa o numero de celulas
    delete_Cell:
    dec numCelulas
    mov al, black
           
    ;coloca no ecra a celula
    loop4: 
    cmp dx, yMin
    je linhacima
    cmp dx, yMax
    je linhabaixo
    mov cx, xMax
    call putPixel
    mov cx, xMin
    call putPixel
    inc dx
    jmp loop4
    linhacima:
    cmp cx, xMax
    jg muda_linha
    call putPixel
    inc cx
    jmp linhacima
    muda_linha:
    inc dx
    jmp loop4
    linhabaixo:
    cmp cx, xMax
    jg endloop4
    call putPixel
    inc cx
    jmp linhabaixo
    endloop4:
    
    
    ;escreve o numero de celulas no ecra
    xor bx, bx
    mov dh, ecra_Y_celula
    mov dl, ecra_X_celula
    call SetTextCursor
    mov num_zeros, 4
    lea si, numCelulas
    call printfNum
    jmp loop2 
    endloop2: 
    
          
    ;COMPARACOES PARA ALTERAR AS CELULAS  
    mov cx, origemX
    mov dx, origemY     
    mov si, offset vetor_inicial 
    mov di, offset vetor_final
    add si, 18
    
    ;verificar se a celula esta viva ou morta no ecra e guarda no vetor inicial  
    loop9:
    call getPixel  ;cor do pixel em al 
    
    cmp al, black
    je dontChange 
    mov [si], 1
    
    dontChange:  
    inc si
    add cx, 13
    cmp cx, maxXgrelha
    ja changeLine1
    jmp loop9
    
    changeLine1:
    add dx, 13
    mov cx, origemX
    add si, 2
    cmp dx, maxYgrelha
    ja endloop9
    jmp loop9
    endloop9: 
    
     
    ;VERIFICACOES NO VETOR INICIAL
    mov dh, 17
    mov dl, 33; para tratar do progresso
    push dx
    mov si, offset vetor_inicial 
    add si, 18 
    mov di, offset vetor_final
    add di, 18
    mov dx, 1
    xor bx, bx  
    
    loop5:
     
    push cx
    push bx
    push dx
    call getMousePos 
    ;verifica se clicou no botao esquerdo do rato
    cmp bx, 1
    jne here6 
    ;verifica se clicou no "SAIR"
    cmp cx, maxXstrSair
    ja here6
    cmp cx, minXstrSair
    jb here6
    cmp dx, maxYstrSair
    ja here6
    cmp dx, minYstrSair
    jb here6  
    ;POR TUDO A ZEROS (VETOR INICIAL)
    pop dx
    pop bx
    pop cx
    pop dx
    jmp acaba_jogo1
    here6:
    pop dx
    pop bx
    pop cx
    
    mov cl, [si]
    
    ;verificar se a celula a direita existe   
    push si
    inc si
    mov cl, [si] 
    cmp cl, 1
    jne notAlive1  
    inc bl
    notAlive1:
    pop si 
            
    ;verificar se a celula a esquerda existe 
    push si
    dec si
    mov cl, [si] 
    cmp cl, 1
    jne notAlive2  
    inc bl
    notAlive2:
    pop si 
            
            
    ;verificar se a celula em cima existe 
    push si
    sub si, 17
    mov cl, [si] 
    cmp cl, 1
    jne notAlive3  
    inc bl
    notAlive3:
    pop si 
            
        
    ;verificar se a celula em baixo existe
    push si
    add si, 17
    mov cl, [si] 
    cmp cl, 1
    jne notAlive4  
    inc bl
    notAlive4:
    pop si      
    
    
    ;verificar se a celula em cima a direita existe  
    push si
    sub si, 16
    mov cl, [si] 
    cmp cl, 1
    jne notAlive5  
    inc bl
    notAlive5:
    pop si 
           
    
    ;verificar se a celula em baixo a direita existe 
    push si
    add si, 18
    mov cl, [si] 
    cmp cl, 1
    jne notAlive6  
    inc bl
    notAlive6:
    pop si        
    
    
    ;verificar se a celula em cima a esquerda existe  
    push si
    sub si, 18
    mov cl, [si] 
    cmp cl, 1
    jne notAlive7  
    inc bl
    notAlive7:
    pop si 
    
    
    ;verificar se a celula em baixo a esquerda existe   
    push si
    add si, 16
    mov cl, [si] 
    cmp cl, 1
    jne notAlive8  
    inc bl
    notAlive8:
    pop si         
    

    ;MATAR OU REVIVER OU MANTER A CELULA 
    inc ch
    cmp ch, 24
    jne progresso
    xor ch, ch
    mov ax, dx
    pop dx                 ;SERVE PARA O PROGRESSO DO JOGO
    push bx
    xor bx, bx
    call setTextCursor
    dec dh
    pop bx
    push dx
    lea dx, barra_enche_progresso
    call printf
    mov dx, ax
    
    progresso:
    mov numCelulasRedor, bl ; bl contem o numero de celulas ao redor 
    mov al, [si]            ;coloca o que estava na geracao anterior na geracao nova
    mov [di], al
     
    cmp al, 0
    je dead  
    cmp al, 1      
    je alive
    
    dead: 
    mov al, bl
    cmp al, 3               
    jne endReviveKill  
    ;revive celula 
    mov [di], 1
    inc bh             ;revive se tiver 3 vizinhos
    jmp endReviveKill 
    
    alive:
    inc bh 
    mov al, bl
    cmp al, 4               
    jae kill                ;mata se tiver mais ou igual a 4 vizinhos
    cmp al, 1
    jbe kill                ;mata se tiver menos ou igual a 1 vizinhos
    jmp endReviveKill 
    kill:  
    ;mata a celula
    dec bh
    mov [di], 0
    
    endReviveKill:
    inc dx
    inc di 
    inc si 
    cmp dx, 16
    jne dontChangeLine 
    add si, 2
    add di, 2
    dontChangeLine:
    
    ;verificacao e inicializacao para continuar o ciclo  
    mov bl, 0   
    cmp si, numMaxCelulas 
    jz endloop5   
    jmp loop5
    endloop5:
    ;guarda o numero de celulas apos as verificacoes
    mov bl, bh
    xor bh, bh
    mov numCelulasNovaGeracao, bx 
                      
    ;COLOCA NOVA GERACAO
    mov cx, origemX
    mov dx, origemY 
    mov di, offset vetor_final 
    add di, 18
    xor bx, bx
    loop7:

    ;define as posicoes max e min da celula
    mov xMin, cx 
    mov ax, cx
    add ax, size_celula
    mov xMax, ax
    mov yMin, dx 
    mov ax, dx
    add ax, size_celula
    mov yMax, ax
    
    ;verifica o que esta no ecra=al com o vetor da proxima geracao=ah
    inc bl
    
    cmp bl, 24
    jne progresso_parte2
    mov ax, dx
    pop dx
    xor bx, bx
    call setTextCursor
    dec dh                           ;barra de progressos
    push dx
    lea dx, barra_enche_progresso
    call printf
    mov dx, ax   
    progresso_parte2:
    
    call getPixel  
    mov ah, [di]  
    inc di
    
    mov bh, blue
    cmp ah, 1
    je changeColor 
    mov bh, black
    changeColor: mov ah, bh
    cmp ah, al
    jz samePixel
    mov al, ah
    
    
    ;coloca os pixeis na celula 
    loop8: 
    cmp dx, yMin
    je linhacima1
    cmp dx, yMax
    je linhabaixo1
    mov cx, xMax
    call putPixel
    mov cx, xMin
    call putPixel
    inc dx
    jmp loop8
    linhacima1:
    cmp cx, xMax
    jg muda_linha1
    call putPixel
    inc cx
    jmp linhacima1
    muda_linha1:
    inc dx
    jmp loop8
    linhabaixo1:
    cmp cx, xMax
    jg endloop8
    call putPixel
    inc cx
    jmp linhabaixo1
    endloop8:
    ;repor valores de cx e dx
    mov cx, xMin
    mov dx, yMin

    samePixel:
    ;comparacoes para o ciclo continuar
    add cx, 13
    cmp cx, maxXgrelha 
    jg changeLine3
    jmp loop7 
    
    changeLine3:
    add dx, 13 
    add di, 2
    mov cx, origemX 
    cmp dx, maxYgrelha
    jg endloop7
    
    jmp loop7
    endloop7: 
    
    
    ;escrever o numero da geracao 
    inc numGeracao
    xor bx, bx
    mov dh, ecra_Y_geracao
    mov dl, ecra_X_geracao
    call SetTextCursor
    mov num_zeros, 3
    lea si, numGeracao
    call printfNum 
    
    ;escrever o numero de celulas
    xor bx, bx
    mov dh, ecra_Y_celula 
    mov dl, ecra_X_celula
    call setTextCursor 
    mov ax, numCelulasNovaGeracao
    mov numCelulas, ax    
    mov ax, 0
    mov numCelulasNovaGeracao, ax
    lea si, numCelulas
    mov num_zeros, 4
    call printfNum
     
    ;acaba a barra de progresso de acordo com o que falta
    pop dx
    xor bx, bx
    termina_progresso:
    cmp dh, 3
    je acaba_todo_progresso
    call setTextCursor
    dec dh
    mov ax, dx
    lea dx, barra_enche_progresso
    call printf
    mov dx, ax
    jmp termina_progresso
    acaba_todo_progresso:
    mov dx, ax
    push dx   
    
    ;VERIFICA SE QUER CONTINUAR A PROXIMA GERACAO 
    ;vai buscar o tempo atual   
    
    call actualTime 
    mov tempoAtual, dh
    
    loop10:
    call getMousePos 
    cmp bx, 1
    jne cmpTime  
    cmp dx, maxYstrIniciar 
    ja cmpTime
    cmp dx, minYstrIniciar
    jb cmpTime
    
    cmp cx, maxXstrIniciar 
    ja naoInicia
    cmp cx, minXstrIniciar
    jb naoInicia
    jmp endloop10
    ;verifica se clicou no "SAIR"
    naoInicia:
    cmp cx, maxXstrSair
    ja cmpTime
    cmp cx, minXstrSair
    jb cmpTime
    jmp acaba_jogo_pop
    
    ;compara o tempo inicial com o atual, acaba se estiver em inativo durante x segundos
    cmpTime: call actualTime
    sub dh, tempoAtual 
    cmp dh, tempoEspera  
    jae acaba_jogo_pop   
    jmp loop10
    endloop10:
    
    ;apaga a barra de progresso toda 
    pop dx
    inc dh
    xor bx, bx
    apaga_progresso:
    cmp dh, 18
    je apagou_todo_progresso
    call setTextCursor
    inc dh
    mov ax, dx
    lea dx, apaga_barra
    call printf
    mov dx, ax
    jmp apaga_progresso
    apagou_todo_progresso: 
    
    ;INICIALIZACAO DOS VETORES
    ;mudar tudo o que esta no vetor final para o inicial
    mov di, offset vetor_inicial
    mov si, offset vetor_final
    mov cx, numMaxCelulas  
    cld 
    rep movsb 
   
    ;colocar o vetor final todo a zeros  
    mov ax, 0
    rep stosb  
     
    jmp endloop9 ;volta a fazer 
    acaba_jogo_pop: pop dx         ;Isto e devido ao facto de se usar o stack para a barra de progresso e caso ele saia a meio do programa ele tera de dar pop para ter o valor certo para voltar      
    acaba_jogo:                    ;Ira colocar se for necessario no Top5
    cmp numCelulas, 0
    je acaba_jogo1
    call AtualizaTop5
    call AtualizaSair
    acaba_jogo1:
    ret              
EndP 

    
Proc escreveJogo
    lea dx, str_geracao
    call printf 
    
    lea si, numGeracao 
    mov num_zeros, 3
    call printfNum 
     
    lea dx, str_celulas
    call printf 
    
    lea si, numCelulas 
    mov num_zeros, 4
    call printfNum 
    
    lea dx, str_iniciar
    call printf 
    
    lea dx, str_sair
    call printf 
    
    mov dh, 1
    mov dl, 0
    call setTextCursor 
    
    lea dx, barreira_cima
    call printf 
    
    mov dh, 3
    mov dl, 2
    call setTextCursor
    
    lea dx, BARREIRA_parte1
    call printf 
    
    xor bx, bx                      ;limpa o registo bx
    mov dx, offset BARREIRA_parte2
    faz_barreira:
    call printf
    inc bl
    cmp bl, 14
    je acaba_barreira
    jmp faz_barreira
    acaba_barreira:
    
    lea dx, BARREIRA_parte3
    call printf 
    
    mov dh, 3
    mov dl, 32
    xor bx, bx
    call setTextCursor  
    
    lea dx, barra_progresso_parte1
    call printf 
    
    mov dh, 4
    mov dl, 32
    faz_barra_progresso:
    xor bx, bx
    call setTextCursor
    push dx
    lea dx, barra_progresso_parte2
    call printf
    pop dx
    inc dh
    cmp dh, 18
    je acaba_barra
    jmp faz_barra_progresso
    acaba_barra:
    
    call setTextCursor
    lea dx, barra_progresso_parte3
    call printf    
    
    ret
EndP

; ****************************************
; Algoritmo para escolher o local onde a celula fica
;
; Input:
; BL- tamanho da celula
; CX- column
; DX- row
; Output:Nothing
; Detroys: Nothing
;
Proc alg_escolher_celula
    mov bl, 13 
    mov ax, cx
    div bl
    call resto10
    xor ah, ah 
    imul bl ;valor de x
    mov cx, ax
    add cl, bh ;; ACABA CXX
    
    mov bl, 13
    mov ax, dx
    div bl
    call resto3
    xor ah, ah
    imul bl ;valor de y
    mov dx, ax
    add dl, bh ;; ACABA DX 
    ret
    ;Serve para ajustar conforme a posicao da celula (no caso de termos a barreira, sem isto iria dar bosta : D )
    proc resto10            
        cmp ah, 10          ;Para CX ( coordenada X )
        jl naoresto10       ;Isto serve para puder corrigir o enquadramento devido a barreira, como a celula e 13 por 13
        mov bh, 10          ;tera de se dividir por 13 e multiplicar por 13 para obtermos o valor correto. No bh estara o valor
        jmp acaba_resto10   ;exato para corrigir o valor final apos o calculo, no caso do X, um exemplo sera CX = 33 (que ira 
        naoresto10:         ;no final colocar o CX a 23 (pois este e o valor inicial que se pode colocar)), 33/13 = 2 resto 7
        mov bh, -3          ;como 7<10 ira se retirar 3 ao valor conseguido. 2*13 = 26-BH=23.
        acaba_resto10:
        ret        
    endp
    proc resto3
        cmp ah, 3           ;Para DX ( coordenada Y )
        jge naoresto3       ;E basicamente o mesmo principio que a coordenada X, contudo e exatamento com os valores ao contrario
        mov bh, -10         ;Exemplo: DX=37/13 = 2, resto 11, como 11=>3, entao ira se somar 3 para colocar bem o valor, 2*13=26+3=29
        jmp acaba_resto3    ;Outro Exemplo: DX=40/13 = 3, resto 1, como 1<3, ira se retirar 10 ao valor, 3*13=39-10=29
        naoresto3:          
        mov bh, 3        
        acaba_resto3:
        ret
    endp


Proc press_any_key
    call Stdin
    mov ah, 7
    int 21h
    ret
EndP 


; ****************************************
; Gets the date
; 
; Input:
; Output:
; CX- year 
; DH- month
; DL- day
; AL- day of the week (00h=Sunday)
; Detroys: Nothing
;
Proc systemDate
    mov ah, 2ah
    int 21h
    ret
Endp


; ****************************************
; Gets the time
;
; Input:
; CL- minutes
; CH- hours  
; DH- seconds
; Output:Nothing
; Detroys: Nothing
;
Proc actualTime
    mov ah, 2ch    
    int 21h
    ret
EndP  


; *******************************************
; RetMenu: Escreve o retangulo a volta de cada
; opcao do menuzao, 
; Descricao: Comeca a escrever o quadrado 
; na posicao do cursor
;
; Input: al:Dimensao do eixo x 
;        ah:Dimensao do eixo y
; 
; Output:Nothing
; Detroys: Nothing
; *******************************************
; 
Proc RetMenu
    ;Da printf do canto sup. esq
    lea dx, cantoSE
    call printf
    mov cx, 0
    
    ;Da printf da linha ate xquadrado
    cima:
    cmp cl, al
    je cantoSupDir
    lea dx, cantoED
    call printf
    inc cl
    jmp cima 
    
    ;Da printf do canto sup. dir
    cantoSupDir:
    lea dx, cantoSD
    call printf
    mov cx, 0
    
    ;Da printf da linha ate yquadrado
    baixo:
    cmp cl, ah 
    je cantoInfDir
    push cx
    call getCursorPosition
    inc dh
    dec dl
    call setTextCursor
    pop cx
    lea dx, cantoCB
    call printf
    inc cl
    jmp baixo
    
    ;Da printf do canto Inf Dir
    cantoInfDir:
    call getCursorPosition
    inc dh
    dec dl
    call setTextCursor
    lea dx, cantoID
    call printf
    mov cx, 0
    
    ;Da printf da linha ate xquadrado
    cima1:
    cmp cl, al
    je cantoInfesq
    push cx
    call getCursorPosition
    dec dl
    dec dl
    call setTextCursor
    pop cx
    lea dx, cantoED
    call printf
    inc cl
    jmp cima1
    
    ;Da printf do Canto Inf Esq 
    cantoInfEsq:
    call getCursorPosition
    dec dl
    dec dl
    call setTextCursor
    lea dx, cantoIE
    call printf
    mov cx, 0 
    
    ;Da printf da linha ate alcancar o canto sup esq
    baixo1:
    cmp cl, ah
    je cantoSupEsq1
    push cx
    call getCursorPosition
    dec dl
    dec dh
    call setTextCursor
    pop cx
    lea dx, cantoCB
    call printf
    inc cl
    jmp baixo1
    cantoSupEsq1:
    ret
Endp    


; *******************************************
; CursorInicio: Coloca o cursor no inicio do ecra 
;
; Input:
; 
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc CursorInicio
    mov dh, 0 
    mov dl, 0 
    mov bh, 0
    call setTextCursor    
    ret
EndP


; *******************************************
; Scanf: Espera por um input do teclado 
;        Espera no maximo 8 chars
;
; Input:
; 
; Output:Escreve o Nome
; Detroys: Nothing
; *******************************************
Proc scanfJogador
    ;esvazia os vetores dos nomes
    call Stdin
    mov cx, 40  
    mov ax, 0 
    mov di, offset nomeJogador
    rep stosb 
    mov di, offset nomePlayer
    mov cx, 20
    rep stosb
    
    mov cx, 0
    mov di, offset nomePlayer
    Inicio:  
    call aux
    
    
    cmp al, 0Dh
    je fim1
    cmp al, 08
    je backspace
    mov [di], al
    inc di
    inc cx
    cmp cx, 8 
    je fim1
    jmp Inicio
    
    backspace:
    cmp cx, 0
    ja here20 
    push cx
    call getCursorPosition  
    mov bh, 0   
    inc dl
    call setCursorPosition 
    pop cx
    jmp Inicio
    here20:
    push cx
    ;mudar a string 
    mov [di], 0
    dec di
    mov [di], 0 
    ;mudar o que esta no ecra  
    lea dx, strSpace
    call printf
    call getCursorPosition  
    mov bh, 0   
    dec dl
    call setCursorPosition 
    pop cx
    dec cx
    jmp Inicio 
    fim1:
    cmp cx, 0
    je Inicio
    mov numLetrasJogador, cx
    ret     
EndP  


; *******************************************
; Scanf: Espera por um input do teclado 
;        Espera no maximo 8 chars
;
; Input:
; 
; Output:Escreve o Nome
; Detroys: Nothing
; *******************************************
Proc scanfNomeFicheiro
    ;esvazia os vetores dos nomes
    call Stdin
    mov cx, 60  
    mov ax, 0 
    mov di, offset nomeFicCarregar
    rep stosb 
    
    mov cx, 0
    mov di, offset nomeFicCarregar 
    mov [di], 'c'
    mov [di+1], ':'
    mov [di+2], '\'
    add di, 3
      
    Inicio1:  
    call aux
    
    cmp al, 0Dh
    je fim2
    cmp al, 08
    je backspace1
    mov [di], al
    inc di
    inc cx
    cmp cx, 40 
    je fim2
    jmp Inicio1
    
    backspace1:
    cmp cx, 0
    ja here21 
    push cx
    call getCursorPosition  
    mov bh, 0   
    inc dl
    call setCursorPosition 
    pop cx
    jmp Inicio1
    here21:
    push cx
    ;mudar a string 
    mov [di], 0
    dec di
    mov [di], 0 
    ;mudar o que esta no ecra  
    lea dx, strSpace
    call printf
    call getCursorPosition  
    mov bh, 0   
    dec dl
    call setCursorPosition 
    pop cx
    dec cx
    jmp Inicio1 
    fim2:
    cmp cx, 0
    je Inicio1
    mov numLetrasJogador, cx  
    
    ;colocar a extensao do ficheiro no nome 
    mov si, offset nomeFicCarregar
    add si, cx  
    add si, 3
    mov [si], '.'
    mov [si+1], 'g'
    mov [si+2], 'a'
    mov [si+3], 'm'    
    ret     
EndP

    
Proc aux     
    mov ah, 01H
    mov dl,al
    int 21H
    ret
EndP 


; *******************************************
; Get system Time: 
;
; Input:
; 
; Output:CH:hour
;        CL:minute
;        DH:Second
;        DL:1/100 seconds
; Detroys: Nothing
; *******************************************
Proc systemTime
    mov ah, 2Ch
    int 21H
    ret
EndP 


; *******************************************
; Get input Status: 
;
; Input:
; 
; Output:AL=00h if no character available
;        AL=0FFh, if character available
; Detroys: Nothing
; ******************************************
Proc CharStatus
    mov ah, 0Bh
    int 21H
    ret
EndP   
 
 
; *******************************************
; Creditos: Realiza a  opcao Creditos:Apresenta
; os autores e limpa ao fim de uma tecla 
; pressionada ou ao fim de 10 segundos
;
; Input:
; 
; Output: Ecreve no ecra os Autores do presente trabalho
; Detroys: Nothing
; *******************************************
Proc Creditos
    ;Escreve os Nomes
    call ClearScreen
    mov dh, 0 
    mov dl, 5 
    mov bh, 0
    call setTextCursor
    lea dx, strAprCreditos
    call printf
    mov dh, 4 
    mov dl, 7 
    mov bh, 0
    call setTextCursor
    lea dx, strSeta1
    call printf
    lea dx, strVentura
    call printf
    lea dx, strSeta2
    call printf
    mov dh, 7 
    mov dl, 5 
    mov bh, 0
    call setTextCursor
    lea dx, strSeta1
    call printf
    lea dx, strXico
    call printf
    lea dx, strSeta2
    call printf
    mov dh, 10 
    mov dl, 6 
    mov bh, 0
    call setTextCursor
    lea dx, strSeta1
    call printf
    lea dx, strMiguel
    call printf
    lea dx, strSeta2
    call printf
    call 10segundos
    ret 
EndP


; *******************************************
; Sair: Realiza a  opcao Sair
;
; Input:
; 
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc Sair
    call clearScreen
    ;Escreve 3, 2, 1, 0 com delay
    mov dh, 10 
    mov dl, 20 
    mov bh, 0
    call setTextCursor
    lea dx, str3
    call printf
    
    mov ax, 100
    call Delay
  
    mov dh, 10 
    mov dl, 20 
    mov bh, 0
    call setTextCursor
    lea dx, strSpace
    call printf 
    
    
    mov dh, 10 
    mov dl, 20 
    mov bh, 0
    call setTextCursor
    lea dx, str2
    call printf
           
    mov ax, 100
    call Delay
           
    mov dh, 10 
    mov dl, 20 
    mov bh, 0
    call setTextCursor
    lea dx, strSpace
    call printf 
    
    
    mov dh, 10 
    mov dl, 20 
    mov bh, 0
    call setTextCursor
    lea dx, str1
    call printf
    
    mov ax, 100
    call Delay 
                
    mov dh, 10 
    mov dl, 20 
    mov bh, 0
    call setTextCursor
    lea dx, strSpace
    call printf
    
    mov dh, 10 
    mov dl, 20 
    mov bh, 0
    call setTextCursor
    lea dx, str0
    call printf
    
    mov ax, 100
    call Delay 
    
    
    ;Escreve Strinf Benfica e string RECEBAA
    mov dh, 10 
    mov dl, 20 
    mov bh, 0
    call setTextCursor
    lea dx, strSpace
    call printf
                                
    mov cx, 15              
    mov dl, 12 
    mov dh, 10
    mov bp, offset strBenfica    
    call writestring
    
    
    mov dh, 20 
    mov dl, 30
    mov bh, 0
    call setTextCursor
    lea dx, strReceba
    call printf            
    
    
    ;Limpa ecra e escreve mensFinal
    call clearScreen
    
    mov dh, 10 
    mov dl, 12 
    mov bh, 0
    call setTextCursor
    lea dx, strMensagemFinal
    call printf 
    call fim
    
    ret    
EndP 


;*************************************************************
;
;LeFicheiroTop5 - Rotina que le o ficheiro e guarda os valores
;                 do top5 num vetor ordenado.
;
;Input - Nenhum
;Output - Valores do Top5 num vetor.
;
;*************************************************************           
Proc LeFicheiroTop5
    
    mov al, 2 
    mov dx, offset ficTop5
    call fopen
    jnc NotcarryAtualiza1
    ;Aqui se ele der carry significa que foi incapaz de abrir, entao ira
    ;criar um ficheiro novo chamado Top5
    
    mov al, 2
    mov dx, offset ficTop5
    mov cx, 00
    call fcreate    
    jnc NotCarryAtualiza1
    ret
    NotCarryAtualiza1:
    mov handler, ax
    
    xor dx, dx
    push dx
    
    ;Coloca o pointer do ficheiro no local correto para ler o primeiro valor das celulas
    
    loopLeFicheiro:
    mov dx, offset LinhaAux1 ;vetor provisorio
    mov cx, 40
    mov bx, handler
    call fread
    
    ;comparar se ele tem NULL no vetor (significa que leu tudo o que e necessario)
    cmp ax, 0
    je acabaLeitura
    
    
    mov di, offset VetorConverte
    mov si, offset LinhaAux1
    add si, 4
    mov cx, 4
    rep movsb
    
    call convert_Number ; Servera para colocar em inteiro o numero de celulas
    
    mov di, offset vetorcelulas
    pop dx      ;Pop da posicao do Top5
    add di, dx
    mov [di], ax
    
    
    cmp dx, 5
    je endLeFicheiro
    add dx, 2
    push dx
    call LimpaVetorConverter
    jmp loopLeFicheiro
    
    ;Se ele veio para aqui significa que nao tem mais nada que ler
    acabaLeitura:
    pop dx
   
    endLeFicheiro:
    mov bx, offset ficTop5
    call fclose
                        
    ret
EndP 


;********************************************************************
;
;AtualizaTop5 - Rotina que ira trocar os valores do top5 caso seja 
;               necessario, ordena no ficheiro e atualiza o vetor
;               Top5.
;
;Input - Jogo (num de celulas, num da geracao, nome)
;
;Output - 
;
;
;
;********************************************************************

Proc AtualizaTop5 
     
    mov al, 2 
    mov dx, offset ficTop5
    call fopen
    jnc NotcarryAtualiza
    ;Aqui se ele der carry significa que foi incapaz de abrir, entao ira
    ;criar um ficheiro novo chamado Top5
    
    mov al, 2
    mov dx, offset ficTop5
    mov cx, 00
    call fcreate    
    jnc NotCarryAtualiza                        
    
    
    NotCarryAtualiza:
    ;Verificacao se o jogo merece estar no top5 ou nao    
     
    mov handler, ax                   
    call VerificaAtualizacao 
    
    cmp cx, 0   ;Caso nao seja merecedor
    je NaoTop5
    
    ;*************************************************
    ;A PARTIR DAQUI ELE IRA COLOCAR CORRETAMENTE ONDE
    ;MERECE ESTAR NO TOP5
    ;*************************************************
    
    
    
    cmp cx, 1    ;caso fiquem em primeiro lugar!  (Basicamente pior caso :o )
    jne NaoTop1
    
    mov di, offset vetorcelulas
    mov ax, [di+1]
    cmp ax, 0
    jne Nao_Unico1
    ;***********************************
    ;
    ;ESCREVE PRIMEIRA POSICAO (0)
    ;CASO NAO HAJA NADA NO TOP 5
    ;
    ;***********************************
    call EscreveNoVetor 
    mov dx, offset LinhaEnviaFic
    mov cx, 40
    mov bx, handler
    call fwrite
    jmp naoTop5
    
    Nao_Unico1:
    ;Se ele estiver aqui ele ira trocar as posicoes
    ;O numero em parenteses e a localizacao do cursor no ficheiro 
    
    
    
    ;***********************************           
    ;
    ;GUARDA PRIMEIRA POSICAO (40)
    ;
    ;***********************************
    call EscreveNoVetor
    mov dx, offset LinhaAux1                         
    mov cx, 40                 
    mov bx, handler
    call fread
    
    ;***********************************
    ;
    ;COLOCA POINTER A 0 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 0
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE PRIMEIRA POSICAO (40)
    ;
    ;***********************************
    mov dx, offset LinhaEnviaFic
    mov cx, 40                        
    mov bx, handler
    call fwrite
    
    ;***********************************
    ;
    ;GUARDA SEGUNDA POSICAO  (80)
    ;
    ;***********************************
    mov dx, offset LinhaAux2
    mov cx, 40                        
    mov bx, handler
    call fread
    push ax
    
    ;***********************************
    ;
    ;COLOCA POINTER A 40 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 40
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE SEGUNDA POSICAO (80)
    ;
    ;***********************************
    mov dx, offset LinhaAux1 
    mov cx, 40
    mov bx, handler                 
    call fwrite
    
    ;***********************************
    ;
    ;Se for 0 significa que nao leu nada
    ;
    ;***********************************
    pop ax
    cmp ax, 0
    je NaoTop5
    
    ;***********************************
    ;
    ;GUARDA TERCEIRA POSICAO (120)
    ;
    ;***********************************
    mov dx, offset LinhaAux1
    mov cx, 40                      
    mov bx, handler
    call fread
    push ax
    ;***********************************
    ;
    ;COLOCA POINTER A 80 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0
    mov dx, 80
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE TERCEIRA POSICAO (120)
    ;
    ;***********************************
    mov dx, offset LinhaAux2
    mov cx, 40
    mov bx, handler
    call fwrite
    
    ;***********************************
    ;
    ;Se for 0 significa que nao leu nada
    ;
    ;***********************************
    pop ax
    cmp ax, 0
    je NaoTop5
    
    ;***********************************
    ;
    ;GUARDA QUARTA POSICAO (160)
    ;
    ;***********************************
    mov dx, offset LinhaAux2
    mov cx, 40
    mov bx, handler
    call fread
    push ax
    
    ;***********************************
    ;
    ;COLOCA POINTER A 120 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0
    mov dx, 120
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE QUARTA POSICAO (160)
    ;
    ;***********************************
    mov dx, offset LinhaAux1
    mov cx, 40
    mov bx, handler
    call fwrite
    
    ;***********************************
    ;
    ;Se for 0 significa que nao leu nada
    ;
    ;***********************************
    pop ax
    cmp ax, 0
    je NaoTop5
    
    ;***********************************
    ;
    ;ESCREVE QUINTA POSICAO (200)
    ;
    ;***********************************
    mov dx, offset LinhaAux2
    mov cx, 40
    mov bx, handler
    call fwrite
    
    ;FIM DO PRIMEIRO CASO
    jmp NaoTop5
    
    
    NaoTop1:
    
    cmp cx, 2
    jne NaoTop2
    
    mov di, offset vetorcelulas
    mov ax, [di+2]
    cmp ax, 0
    jne Nao_Unico2
    
    ;***********************************
    ;
    ;COLOCA POINTER A 40 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 40
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE SEGUNDA POSICAO (80)
    ;CASO NAO HAJA NADA NO TOP 5
    ;
    ;***********************************
    call EscreveNoVetor 
    mov dx, offset LinhaEnviaFic
    mov cx, 40
    mov bx, handler
    call fwrite
    jmp naoTop2          
    
    
    Nao_Unico2:
    
    ;***********************************
    ;
    ;COLOCA POINTER A 40 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 40
    call fseek
    
    ;***********************************           
    ;
    ;GUARDA SEGUNDA POSICAO (80)
    ;
    ;***********************************
    call EscreveNoVetor
    mov dx, offset LinhaAux1                         
    mov cx, 40                 
    mov bx, handler
    call fread
    
    ;***********************************
    ;
    ;COLOCA POINTER A 40 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 40
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE SEGUNDA POSICAO (80)
    ;
    ;***********************************
    mov dx, offset LinhaEnviaFic
    mov cx, 40                        
    mov bx, handler
    call fwrite
    
    ;***********************************
    ;
    ;GUARDA TERCEIRA POSICAO  (120)
    ;
    ;***********************************
    mov dx, offset LinhaAux2
    mov cx, 40                        
    mov bx, handler
    call fread
    push ax
    
    ;***********************************
    ;
    ;COLOCA POINTER A 80 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 80
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE TERCEIRA POSICAO (120)
    ;
    ;***********************************
    mov dx, offset LinhaAux1 
    mov cx, 40
    mov bx, handler                 
    call fwrite
    ;***********************************
    ;
    ;Se for 0 significa que nao leu nada
    ;
    ;***********************************
    pop ax
    cmp ax, 0
    je NaoTop5
    
    ;***********************************
    ;
    ;GUARDA QUARTA POSICAO  (160)
    ;
    ;***********************************
    mov dx, offset LinhaAux1
    mov cx, 40                        
    mov bx, handler
    call fread
    push ax
    
    ;***********************************
    ;
    ;COLOCA POINTER A 120 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 120
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE QUARTA POSICAO (160)
    ;
    ;***********************************
    mov dx, offset LinhaAux2 
    mov cx, 40
    mov bx, handler                 
    call fwrite
    
    ;***********************************
    ;
    ;Se for 0 significa que nao leu nada
    ;
    ;***********************************
    pop ax
    cmp ax, 0
    je NaoTop5
    
    ;***********************************
    ;
    ;ESCREVE QUINTA POSICAO (200)
    ;
    ;***********************************
    mov dx, offset LinhaAux1 
    mov cx, 40
    mov bx, handler                 
    call fwrite
    
    ;FIM DO SEGUNDO CASO
    jmp naoTop5
    
    NaoTop2:
    
    cmp cx, 3
    jne NaoTop3 
    
       
    mov di, offset vetorcelulas
    mov ax, [di+3]
    cmp ax, 0
    jne Nao_Unico3
    
    ;***********************************
    ;
    ;COLOCA POINTER A 80 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 80
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE TERCEIRA POSICAO (120)
    ;CASO NAO HAJA NADA NO TOP 5
    ;
    ;***********************************
    call EscreveNoVetor 
    mov dx, offset LinhaEnviaFic
    mov cx, 40
    mov bx, handler
    call fwrite
    jmp naoTop5          
    
    
    Nao_Unico3:
    
    ;***********************************
    ;
    ;COLOCA POINTER A 80 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 80
    call fseek
    
    ;***********************************           
    ;
    ;GUARDA TERCEIRA POSICAO (120)
    ;
    ;***********************************
    call EscreveNoVetor
    mov dx, offset LinhaAux1                         
    mov cx, 40                 
    mov bx, handler
    call fread
    
    ;***********************************
    ;
    ;COLOCA POINTER A 80 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 80
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE TERCEIRA POSICAO (120)
    ;
    ;***********************************
    mov dx, offset LinhaEnviaFic
    mov cx, 40                        
    mov bx, handler
    call fwrite
    
    ;***********************************
    ;
    ;GUARDA QUARTA POSICAO  (160)
    ;
    ;***********************************
    mov dx, offset LinhaAux2
    mov cx, 40                        
    mov bx, handler
    call fread
    push ax
    
    ;***********************************
    ;
    ;COLOCA POINTER A 120 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 120
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE QUARTA POSICAO (160)
    ;
    ;***********************************
    mov dx, offset LinhaAux1 
    mov cx, 40
    mov bx, handler                 
    call fwrite
    
    ;***********************************
    ;
    ;Se for 0 significa que nao leu nada
    ;
    ;***********************************
    pop ax
    cmp ax, 0
    je NaoTop5
    
    
    
    ;***********************************
    ;
    ;ESCREVE QUINTA POSICAO (200)
    ;
    ;***********************************
    mov dx, offset LinhaAux2 
    mov cx, 40
    mov bx, handler                 
    call fwrite
    
    
    ;FIM DO TERCEIRO CASO
    jmp naoTop5
    NaoTop3:
    
    cmp cx, 4
    jne NaoTop4
    
    mov di, offset vetorcelulas
    mov ax, [di+4]
    cmp ax, 0
    jne Nao_Unico4
    
    ;***********************************
    ;
    ;COLOCA POINTER A 120 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 120
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE QUARTA POSICAO (160)
    ;CASO NAO HAJA NADA NO TOP 5
    ;
    ;***********************************
    call EscreveNoVetor 
    mov dx, offset LinhaEnviaFic
    mov cx, 40
    mov bx, handler
    call fwrite
    jmp naoTop5          
    
    
    Nao_Unico4:
    
    ;***********************************
    ;
    ;COLOCA POINTER A 120 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 120
    call fseek
    
    ;***********************************           
    ;
    ;GUARDA QUARTA POSICAO (160)
    ;
    ;***********************************
    call EscreveNoVetor
    mov dx, offset LinhaAux1                         
    mov cx, 40                 
    mov bx, handler
    call fread
    
    ;***********************************
    ;
    ;COLOCA POINTER A 120 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 120
    call fseek
    
    ;***********************************
    ;
    ;ESCREVE QUARTA POSICAO (160)
    ;
    ;***********************************
    mov dx, offset LinhaEnviaFic
    mov cx, 40                        
    mov bx, handler
    call fwrite
    
    ;***********************************
    ;
    ;ESCREVE QUINTA POSICAO (200)
    ;
    ;***********************************
    mov dx, offset LinhaAux1
    mov cx, 40                        
    mov bx, handler
    call fwrite
    
    ;FIM DO QUARTO CASO
    jmp naoTop5
    
    NaoTop4: 
    
    call EscreveNoVetor
    ;***********************************
    ;
    ;COLOCA POINTER A 160 NO FICHEIRO
    ;
    ;***********************************
    mov bx, handler
    mov al, 0
    mov cx, 0     
    mov dx, 160
    call fseek                 
    
    ;***********************************
    ;
    ;ESCREVE QUINTA POSICAO (200)
    ;
    ;***********************************
    mov dx, offset LinhaEnviaFic
    mov cx, 40                        
    mov bx, handler
    call fwrite
    NaoTop5:
    
    ret  
EndP   


;Retorna cx 0 se Nao for preciso atualiza  cx 1 2 3 4 5 consoante o lugar
;Acabando de receber
;
;
;
 
Proc VerificaAtualizacao
    push ax
    push bx 
    push dx                          ;Ira trocar todo o vetor conforme o pretendido (Neste caso ira colocar em primeiro e apagar o ultimo
    mov dx, numCelulas               ;Confuso? Le a descricao da funcao
    mov cx, 0
    
    mov si, offset vetorcelulas
    
    cmp dx, [si]
    jb NoTop1
    xor bx, bx 
    mov cx, 1    
    loop_trocaTop1:
    xchg dx, [si]
    inc bx
    add si, 2
    cmp bx, 5
    je Atualizou                 
    jmp loop_trocaTop1           
    
    
    
    NoTop1:
    ;CASO FIQUE EM SEGUNDO
    add si, 2
    cmp dx, [si]
    jb NoTop2
    mov bx, 1 
    mov cx, 2    
    loop_trocaTop2:
    xchg dx, [si]
    inc bx
    add si, 2
    cmp bx, 5
    je Atualizou                 
    jmp loop_trocaTop2
    
    Notop2:
    
    add si, 2
    cmp dx, [si]
    jb NoTop3
    mov bx, 2 
    mov cx, 3    
    loop_trocaTop3:
    xchg dx, [si]
    inc bx
    add si, 2
    cmp bx, 5
    je Atualizou                 
    jmp loop_trocaTop3
    
    NoTop3:
   
    add si, 2
    cmp dx, [si]
    jb NoTop4
    mov bx, 3 
    mov cx, 4    
    loop_trocaTop4:
    xchg dx, [si]
    inc bx
    add si, 2
    cmp bx, 5
    je Atualizou                 
    jmp loop_trocaTop4
    
    NoTop4: 
    
    add si, 2
    cmp dx, [si]
    jb NoTop5                        ;Troca 
    xchg dx, [si]
    mov cx, 5
    jmp atualizou
    
    NoTop5:
    
    
    atualizou:
    pop dx
    pop bx
    pop ax
    ret
EndP

     
;    O VENTURA NAO COMENTOU
;
;
;
;     
Proc EscreveNoVetor                                ;Comeca a ecrever aqui
    mov dx, numGeracao
    call convert_Ascii
    
    
    ;COLOCACAO DA GERACAO NO VETOR
    mov si, offset vetorConverte
    inc si
    mov cx, 3
    mov di, offset LinhaEnviaFic
    rep movsb
    inc di ; devido ao espaco
                        
    call LimpaVetorConverter
     
    
    ;COLOCACAO DO NUMERO DE CELULAS NO VETOR
    mov dh, 0
    mov dx, numCelulas
    call convert_Ascii
    
    mov si, offset vetorConverte
    mov cx, 4
    rep movsb
    inc di ;devido ao espaco
    call LimpaVetorConverter
    
    ;COLOCACAO DO NOME DO JOGADOR NO VETOR
    mov si, offset nomePlayer
    mov cx, 8
    rep movsb
    inc di ;devido ao espaco                       
    
    call systemDate
    push dx 
    
    ;COLOCA O ANO NO VETOR
    mov dx, cx
    sub dx, 2000      
    call convert_Ascii
    mov si, offset vetorConverte
    add si, 2
    mov cx, 2
    rep movsb 
    call LimpaVetorConverter
    
    ;COLOCA A BARRA NO VETOR
    mov [di], '/' 
    inc di 
    
    ;COLOCA O MES NO VETOR
    pop ax
    push ax
    xor dx, dx
    xor al, al
    mov dl, ah       
    call convert_Ascii
    mov si, offset vetorConverte
    add si, 2
    mov cx, 2
    rep movsb
     
    call LimpaVetorConverter
    
    ;COLOCA A BARRA NO VETOR
    mov [di], '/' 
    inc di
    
    ;COLOCA O DIA NO VETOR
    pop dx
    xor dh, dh
    call convert_Ascii
    mov si, offset vetorConverte
    add si, 2
    mov cx, 2
    rep movsb
    inc di ;devido ao espaco
    call LimpaVetorConverter
    
    
    call systemTime
    push dx
    push cx
    xor dx, dx
    mov dl, ch
    
    ;COLOCA AS HORAS NO VETOR
    xor dx, dx
    mov dl, ch
    call convert_Ascii
    mov si, offset vetorConverte
    add si, 2
    mov cx, 2
    rep movsb
    
    call LimpaVetorConverter 
    
    ;COLOCA OS DOIS PONTOS NO VETOR
    mov [di], ':'
    inc di
    
    ;COLOCA OS MINUTOS NO VETOR
    pop dx
    xor dh, dh
    call convert_Ascii
    mov si, offset vetorConverte
    add si, 2
    mov cx, 2
    rep movsb
     
    call LimpaVetorConverter
    
    ;COLOCA OS DOIS PONTOS NO VETOR
    mov [di], ':'
    inc di
    
    ;COLOCA OS SEGUNDOS NO VETOR
    pop dx
    mov dl, dh
    xor dh, dh
    call convert_Ascii
    mov si, offset vetorConverte
    add si, 2
    mov cx, 2
    rep movsb
    
    call LimpaVetorConverter      
    ret      
Endp 


;************************************************************
;Convert_Number - Rotina para converter um vetor de digitos
;                 para um numero inteiro. (*Predefenido para
;                 o vetor VetorConverte)
;
;Input - VetorConverte - Numero em algarismos (Predefinido 
;                        para 4 algarismos).
;
;Output - AX - Valor Inteiro
;
;
;************************************************************
Proc convert_Number
    push si
    push bx
    push cx
                                                     ;A rotina multiplica o algarismo por 10 e
    xor cx, cx                                       ;de seguida adiciona o proximo algarismo e
    xor ax, ax                                       ;assim sucessivamente ate acabar o numero
    mov si, offset VetorConverte
    mov bl, 10
    
    
    multiplica_bora:
    sub [si], '0' ; Para converte lo para inteiro
    add ax, [si]
    inc cl
    cmp cl, 4                                        
    je acaba_multiplica
    mul bl
    inc si                                                                     
    jmp multiplica_bora
    
    
    acaba_multiplica:
    
    pop cx
    pop bx
    pop si
    ret    
EndP     

;************************************************************
;Convert - Rotina para converter um numero inteiro em 
;                 um vetor de digitos. (*Predefenido para
;                 o vetor VetorConverte)
;                 Necessario Para o sair
;
;Input - DX - Valor inteiro 
;                        
;
;Output - VetorConverte - Algarismos do numero inteiro
;
;
;************************************************************ 
Proc convert
     mov cx, 0
     mov ax, dx
     
     cmp dx, 2000
     jb Menor2000
     
     
     mov ax, 2
     add al, 48
     mov [vetorConverte], al 
            
     
                           ; multiplica al por 0
     sub dx, 2000
     mov cx, 4
     
     Menor2000:     
     cmp dx, 100
     jb Menor100
     
     mov bl, 100
     div bl
     push ax
     add al, 48
     mov [vetorConverte+1], al 
     pop ax       
     
     mov ah, 0
     mul bl                       ; multiplica al por 0
     sub dx, ax
     
     cmp cx, 0
     ja Menor100
     add cx, 3
     
     Menor100:
     
     
     cmp dx, 10
     jb Menor10
     
     mov ax, dx
     mov bl, 10
     div bl
     push ax
     add al, 48
     mov [vetorConverte+2], al
     pop ax
     
     mov ah, 0
     mul bl                    ; multiplica al por 0
     sub dx, ax
     
     cmp cx, 0
     ja Menor10
     add cx, 2
     
     Menor10:
     mov ax, dx
     add al, 48 
     mov [vetorConverte+3], al 
     
     cmp cx, 0
     ja adeus1
     add cx, 1
     
     adeus1:   
     ret 
     
EndP
;************************************************************
;Convert_Ascii - Rotina para converter um numero inteiro em 
;                 um vetor de digitos. (*Predefenido para
;                 o vetor VetorConverte)
;
;Input - DX - Valor inteiro 
;                        
;
;Output - VetorConverte - Algarismos do numero inteiro
;
;
;************************************************************ 
Proc convert_Ascii
     push di
     push ax
     push bx
     push cx
     push dx
     
     mov cx, 0
     mov ax, dx
     xor dx, dx
     mov di, offset vetorConverte
          
     mov bx, 10
     divide_bora:                ;Este procedimento ira converter o numero para caracteres ascii
     div bx                     ;divindo por 10 o numero de algarismos que o numero recebido tem
     push dx
     xor dx, dx                   
     inc cl
     cmp ax, 0
     je poeVetorNumero
     jmp divide_bora
     
     poeVetorNumero:
     mov bl, 4
     sub bl, cl                 ;Este procedimento ira colocar caracter a caracter no vetor o numero
     add di, bx                 ;de vezes que se dividiu (basicamente o numero de algarismos).
     meteNumero_bora:
     pop ax
     add al, '0'
     mov [di], al
     inc di
     dec cl
     jz adeus
     jmp meteNumero_bora     
     
     adeus:
     pop dx
     pop cx
     pop bx
     pop ax
     pop di   
     ret 
     
EndP 



;********************************************
;LimpaVetorConverter - Limpa o vetor auxiliar
;
;Input - Nada
; 
;Output - Nada
;
;Destroi - VetorConverte
;********************************************

Proc LimpaVetorConverter
   push di
   push cx
   push ax
   mov di, offset vetorConverte
   mov cx, 4
   mov al, 48 
   rep stosb
   pop ax
   pop cx
   pop di
   ret 
Endp
     

;Termina o Programa                                             
Proc Fim
    mov ax, 4c00h ; exit to operating system.
    int 21h     
Endp
      
      
; *******************************************
; DaNewlineNoFic: Escreve no ficheiro a string
; strNewLine
;
; Input:Nothing
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc DaNewLineNoFic
    mov dx, offset StrNewLine       ;Space entre Valores
    mov bx, handlerSair
    mov cx, 2
    call fwrite
    ret
EndP


; *******************************************
; DaNewlineNoFic: Escreve no ficheiro a string
; strSpace
;
; Input:Nothing
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc DaSpaceNoFic
    mov dx, offset StrSpace       ;Space entre Valores
    mov bx, handlerSair
    mov cx, 1 
    call fwrite
    ret
    
EndP


; *******************************************
; 10segundos: Espera durante 10 segundos por 
; uma tecla do ecra se nenhuma tecla for 
; pressionada volta ao menu
;
; Input:Nothing
; 
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc 10segundos
    mov VarAuxTop5, 1
    Segundos10:
    mov SegundosAcu, 0
    ;Verifica se alguma tecla foi pressionada
    call charStatus
    cmp al, 00h
    je NoChar
    
    ;Volta ao menu
    call press_any_key
   
    
    mov dh, 20 
    mov dl, 30
    mov bh, 0
    call setTextCursor
    lea dx, strReceba
    call printf
     
    call ClearScreen
    ret
    
    ;Se nenhuma tecla for pressionada
    Nochar:
    
    mov bh, Segundos60
    call systemTime
    cmp VarAuxTop5, 1
    je TimeInicio
    
    cmp ch, HorasInicio
    je HorasIguais
    
    ;Se Houver mudanca de hora
    sub bh, SegundosInicio
    add SegundosAcu, bh
    add SegundosAcu, dh
    jmp Verifica10Seg
    
    HorasIguais:
    cmp cl, MinutosInicio
    je MinutosIguais 
    
    ;Se houver mudanca de minutos
    sub bh, SegundosInicio
    add SegundosAcu, bh
    add SegundosAcu, dh
    jmp Verifica10Seg
    
    ;No caso de ter Minutos e Horas iguais ao tempo inicio
    MinutosIguais:
    sub dh, SegundosInicio
    add SegundosAcu, dh
    
    ;Verifica se ja ultrapassou os 10 seg
    Verifica10Seg:
    cmp SegundosAcu, 10
    ja Above10
    jmp Segundos10
    Above10:
    mov SegundosAcu, 0
    mov VarAuxTop5, 1
    
    call clearScreen
    ret
    
    ;Assinala nas variaveis o tempo inicio
    TimeInicio:
    mov VarAuxTop5, 0h
    mov HorasInicio, ch
    mov MinutosInicio, cl
    mov SegundosInicio, dh
    jmp Segundos10
    ;pop bx
    
    ret 
EndP


; *******************************************
; Delay: Da delay consoante o ax
;
; Input:ax:Tempo de Delay
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc Delay
    
    push cx
    mov cx, 0
    
    delayy:
    cmp cx, ax
    je Igual100 
    inc cx
    jmp delayy
    Igual100:
    pop cx 
    
    ret
EndP


; *******************************************
; AtualizaSair: Atualiza o ficheiro log
;
; Input:
; 
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc AtualizaSair
    mov dx, offset ficSair
    cmp VarAuxSair, 1
    jne JaCriouSairAtu
    mov cx, 00
    call fcreate
    mov handlerSair, ax
    mov VarAuxSair, 0
    JaCriouSairAtu:  
    mov al, 2
    call fopen
    call EscreveNoFicSair
    
    ret
EndP

; *******************************************
; EscreveNoFicSair: Vai escrevendo no ficheiro
; Log as informacoes de cada jogador
;
; Input:Nothing
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc EscreveNoFicSair

    mov ax, FicOffsetSair
    mov cx, incrementa
    mul cx
    cmp incrementa, 1
    jb igual1
    ;call DaSpaceNoFic
    mov dx, ax
    inc dx
    mov al, 0
	mov bx, handlerSair
	mov cx, 0
    call fseek
    jmp ComecaEscrever
    igual1:
    mov dx, ax
    mov al, 0
	mov bx, handlerSair
	mov cx, 0
    call fseek
    
    ;Escreve No fic Log as informacoes
    ComecaEscrever:
    inc incrementa
    call systemDate
    mov AnoTop5, cx
    mov MesTop5, dh
    mov DiaTop5, dl
    
    
    ;Para so aparecer 22
    mov dx, AnoTop5        
    call convert
    mov dx, offset vetorConverte
    mov bx, 4
    sub bx, cx
    add dx, bx                    
    mov bx, handlerSair
    call fwrite 
    call LimpaVetorConverter
    
          
    mov dh, 0
    mov dl, MesTop5
    call convert
    mov dx, offset vetorConverte
    mov bx, 4
    sub bx, cx
    add dx, bx                    
    mov bx, handlerSair
    call fwrite 
    call LimpaVetorConverter
    
    
    mov dh, 0
    mov dl, DiaTop5
    call convert
    mov dx, offset vetorConverte
    mov bx, 4
    sub bx, cx
    add dx, bx                    
    mov bx, handlerSair
    call fwrite 
    call LimpaVetorConverter
    
    
    
    mov dx, offset DoisPontosTop5
    mov cx, 1
    call fwrite
    
    call systemTime
    mov HoraTop5, ch
    mov MinutoTop5, cl
    mov segundoTop5, dh
    
    mov dh, 0
    mov dl, HoraTop5
    call convert
    mov dx, offset vetorConverte
    mov bx, 4
    sub bx, cx
    add dx, bx                    
    mov bx, handlerSair
    call fwrite
    call LimpaVetorConverter  
    
    mov dh, 0
    mov dl, MinutoTop5
    call convert
    mov dx, offset vetorConverte
    mov bx, 4
    sub bx, cx                      
    add dx, bx                    
    mov bx, handlerSair
    call fwrite 
    call LimpaVetorConverter
    
    mov dh, 0
    mov dl, SegundoTop5
    call convert
    mov dx, offset vetorConverte
    mov bx, 4
    sub bx, cx
    add dx, bx                    
    mov bx, handlerSair
    call fwrite
    call LimpaVetorConverter 
    
    
    mov dx, offset DoisPontosTop5
    mov cx, 1
    call fwrite
   
    mov dx, offset NomePlayer
    mov cx, 8                       ;rever isto: tenho que criar variavel para o tamanho
    call fwrite
     
    mov dx, offset DoisPontosTop5
    mov cx, 1
    call fwrite
                                  
    mov dx, numGeracao
    call convert
    mov dx, offset vetorConverte
    mov bx, 4
    sub bx, cx
    add dx, bx                    
    mov bx, handlerSair                
    ;mov cx, 1                    
    call fwrite 
    call LimpaVetorConverter
     
    
    mov dx, offset DoisPontosTop5
    mov cx, 1
    call fwrite
    
    mov dx, numCelulas
    call convert
    mov dx, offset vetorConverte
    mov bx, 4
    sub bx, cx
    add dx, bx                  
    mov bx, handlerSair
    call fwrite
    call LimpaVetorConverter
    
    
    
    ;mov al, 2 
    ;mov dx, offset ficTop5
    ;call fopen
    
    mov ax, ficOffsetSair
    mov cx, incrementa
    mul cx
    
    mov dx, ax
    mov al, 0
	mov bx, handlerSair
	mov cx, 0
    call fseek 
    
    call DaNewLineNoFic
     
    
    
     
    ;mov bx, handler1                  
    ;call fclose  
     
    ret
    
EndP


Proc writestring 
    mov al, 1
    mov bh, 0
    mov bl, 0000_0100b ;->vermelho
    mov ah, 13h
    int 10h
    ret
EndP  


;**
;
;PrintfNum - Rotina em que envia para o ecra os
;            caracteres guardados num vetor
;
;Input - CX - Numero de caracteres
;        SI - offset do vetor
;
;**

Proc printfVetor
    loopprintfVetor:
    mov dl, [si]
    mov ah, 02
    int 21h
    inc si
    dec cx
    jz acabaprintfVetor
    jmp loopprintfVetor
    acabaprintfVetor:
    ret
EndP
      
                        ;ALL THE "PERFECT" FUNCTIONS  
                        
;*****************************************************************
; convertNumToStr - converte um numero para string
; descricao:
; input ax - numero a converter
; output si - buffer numero em string
;*****************************************************************         
Proc convertNumToStr 
    mov bl, 10 
    xor cx, cx
    xor dx, dx
    lab1: 
    div bl
    push ax  
    xor ah, ah
    inc dx
    cmp ax, 0
    jne lab1 
    xor cx, cx
    lab2: cmp cx, dx
    jz endlab2 
    pop ax  
    add ah, 48
    mov [si], ah  
    inc si
    inc cx
    jmp lab2
    endlab2:
    ret
EndP  


;************************************************************
;convertStrToNum - Rotina para converter um vetor de digitos
;                 para um numero inteiro. 
;
;Input - si - buffer do vetor co o numero 
;      - cx - Numero de caracteres
;
;Output - AX - Valor Inteiro
;
;
;************************************************************
Proc convertStrToNum 
    
    mov bl, 10 
    mov dx, 1
    xor ax, ax
    
    countZeros:  
    cmp [si], '0'
    jne endCountZeros 
    inc si 
    cmp dx, cx
    je endMulNum
    inc dx
    jmp countZeros 
    endCountZeros:
    
    mulNum: 
    push dx 
    mov dx, [si]
    mov dh, 0
    sub dx, '0'
    add ax, dx 
    pop dx
    inc si 
    cmp dx, cx
    je endMulNum 
    mul bl
    inc dx
    jmp mulNum
    endMulNum: ret
EndP
                        
                        
; *******************************************
; Set Text Cursor
;
; Input:
; BL - Number Page
; DH - Row
; DL - Column
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc SetTextCursor  
  push ax
  mov ah, 2 
  int 10h 
  pop ax
  ret
EndP
 
 

; *************************************
; Set Cursor Position
;
; Input:
; DH = row.
; DL = column.
; BH = page number (0..7). 
; Output:Nothing
; Detroys: Nothing
Proc setCursorPosition  
  push ax
  mov ah,2 
  int 10h
  pop ax
  ret
EndP


; *************************************
; Set Cursor Position + Size
;
; Input:
; BH = page number (0..7). 
; Output:
; DH = row. DL = column. CH = Cursor start line. CL = Cursor bottom line.
; Detroys: Nothing
Proc getCursorPosition 
  push ax
  mov ah,3 
  int 10h 
  pop ax
  ret
EndP                        
                        
   
; ****************************************************
; Set Video Mode
;
; Input:
; AL- Video Mode
; - 00h - text mode. 40x25. 16 colors. 8 pages.
; - 03h - text mode. 80x25. 16 colors. 8 pages.
; - 13h - graphical mode. 40x25. 256 colors. 320x200 pixels, 1 page. 
; Output:Nothing
; Detroys: Nothing
Proc setVideoMode 
    push ax
    mov ah,00 ; modo video
    int 10h
    pop ax
    ret
EndP 


; ****************************************
; Put Pixel
;
; Input:
; AL- pixel value
; CX- column
; DX- row
; Output:Nothing
; Detroys: Nothing
;
Proc putPixel
    push ax
    push bx
    mov ah,0ch
    mov bh,00 ; active display page
    int 10h
    pop bx
    pop ax
    ret
EndP
 
 
; ********************************************************
; Get Pixel
;
; Input:
; CX- column
; DX- row
; Output:
; AL- pixel value
; Destroys: Nothing
;
Proc getPixel 
  push bx
  mov ah,0dh
  mov bh,00 ; active display page
  int 10h
  pop bx
  ret
EndP



; ****************************************************
; Initialize Mouse
;
; Input:Nothing
;
; Output:
; AX- 0000h if Error; FFFFh if Detected
; BX=number of mouse buttons
; Destroys:Nothing
;
Proc initMouse 
    mov ax,00
    int 33h
    ret
EndP


; ****************************************************
; Show Mouse Pointer
;
; Input: Nothing
;
; Output: Nothing
;
Proc showMouse
    push ax
    mov ax,01
    int 33h
    pop ax
    ret
EndP


; ****************************************************
; Hide Mouse Pointer
;
; Input: Nothing
; Output: Nothing
;
Proc hideMouse 
    push ax
    mov ax,02
    int 33h
    pop ax
    ret
EndP 
 
 
; ****************************************************
; Get Mouse Position and Button pressed
;Output:
; BX- Button pressed (1 - botao da esquerda, 2 - botao da direita e 3 - ambos os botoes)                                                                                                                                                            
; Input: Nothing
; CX- horizontal position (column)
; DX- Vertical position (row)
; Destroys: Nothing else
;
Proc getMousePos
    push ax
    mov ax,03h
    int 33h
    pop ax
    ret
EndP


;*****************************************************************
; printf - string output
; descricao: rotina que faz o output de uma string NULL terminated para o ecra
; input - si=deslocamento da string a escrever desde o início do segmento de dados
; output - nenhum
; destroi - al, si
;*****************************************************************
Proc printf
    push ax
    mov ah, 9
    int 21h
    pop ax
    ret
EndP  

;*********************************************************
;
; Stdin - Flush keyboard buffer
;
; Input - Nothing
;
; Output - Nothing
;
;*********************************************************
Proc Stdin
    push ax
    mov ah, 0Ch
    mov al, 02
    int 21h
    pop ax
    ret
EndP    
;********************************************************************
; printfnum - number output (numero a numero)
; descricao: rotina que faz o output de um numero de tamanho ate 2 bytes (FFFFh)
; input - si = pointer para o numero que queremos dar printf
;         Num_zeros = numero de zeros pretendidos fazer print antes do numero real
;
;
;
Proc printfNum
     sub cx,cx
     mov bx,10
     mov ax,[si]
     sub dx,dx
     
     divi:
     div bx
     push dx
     sub dx,dx
     inc cx
     
     cmp ax,0
     je finish1 
     jmp divi
     
     finish1:
     
     ;imprime 0 antes do numero real,cx indica o numero de algarismos 
     sub num_zeros, cx
     imprime_zeros:
     
     jz imprime
     mov al, '0'
     call coTeletype
     
     dec num_zeros
     
     jmp imprime_zeros
     
     imprime:
     pop ax
     add ax,'0'
     
     call coTeletype
     
     dec cx
     jz finish2
     jmp imprime
     
     finish2:
     ret
     
EndP

;***********************
; coTeletype - In text mode, prints the character wanted, in the cursor text location
; input - AL - Character to write
;         BL - Foreground color
; output - NADA!!
;***********************

Proc coTeletype
   mov ah, 0Eh
   int 10h
   ret
EndP  


;*****************************************************************
; fcreate - create  file
; descricao:
; input dx - address of the string containing the filename
;       cx - 0-normal file 1-read-only 2-hidden file ...
; output - carry 0 if successful, carry 1 if unsuccessul
;        - ax if successful handler
;        - ax if unsuccessful 3-path not found 5-acess denied
;*****************************************************************
Proc fcreate 
    mov ah, 3ch                
    int 21h 
    ret
EndP


;*****************************************************************
; fopen - open  file
; descricao:
; input dx - address of the string containing the filename
;       al - 0-read-only 1-write-only 2-read/write
; output - carry 0 if successful, carry 1 if unsuccessul
;        - ax if successful handler
;        - ax if unsuccessful ....
;*****************************************************************  
Proc fopen     
    mov ah, 3dh
    int 21h
    ret
EndP 


;**********************************
; Fseek - Set Current File Position
;
; Input - AL - (0 if origin of move
;              (1 if start of file
;              (2 if end of file)
;         BX - File handler
;         DX - offset from origin 
;              of new file position
;
; Output -AX - New file position in
;              bytes from start of
;              life
;
;**********************************
Proc fseek
    mov ah, 42h
    int 21h
    ret     
EndP


;*****************************************************************
; fclose - close  file
; descricao:
; input bx - file handler
; output - carry 0 if successful, carry 1 if unsuccessul
;        - ax if successful 
;        - ax if unsuccessful 6 - file not open or invalid handler 
;*****************************************************************
Proc fclose  
    mov ah, 3eh
    int 21h  
    ret
EndP


;*****************************************************************
; fread - read  file
; descricao:
; input dx - buffer address
;       bx - file handler
;       cx - number of bytes to read
; output - carry 0 if successful, carry 1 if unsuccessul
;        - ax if successful number of bytes effectively read
;        - ax if unsuccessful 5 - access denied 6 - file not open or invalid handler 
;*****************************************************************
Proc fread 
    mov ah, 3fh
    int 21h 
    ret
EndP


;*****************************************************************
; fwrite - write in file
; descricao:
; input dx - buffer address
;       bx - file handler
;       cx - number of bytes to write
; output - carry 0 if successful, carry 1 if unsuccessul
;        - ax if successful number of bytes effectively written
;        - ax if unsuccessful 5 - access denied 6 - file not open or invalid handler 
;*****************************************************************
Proc fwrite 
    mov ah, 40h
    int 21h 
    ret 
EndP 


; *******************************************
; ClearScreen: Limpa o Ecra 
;
; Input:
; 
; Output:Nothing
; Detroys: Nothing
; *******************************************
Proc ClearScreen
    call CursorInicio 
    mov ah, 0Ah
    mov al, 0
    mov cx, 1000
    int 10h     
    ret
endp

end start ; set entry point and stop the assembler.
