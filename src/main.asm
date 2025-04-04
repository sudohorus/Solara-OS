;org (directive)
;tells assembler where we expect our code to be loaded. The assembler uses this information to calculate label addresses

;org (directive)
;informa ao montador onde esperamos que o código seja carregado. O montador usa essa informação para calcular os endereços dos rótulos

org 0x7C00

;bits (directive)
;tells assembler to emit 16/32/64-bit code

;bits (directive)
;informa ao montador para gerar código de 16/32/64 bits
bits 16

%define ENDL 0x0D, 0x0A


start:
	jmp main

;print a string to the screen
;Params:
;	- ds:si points to string
;//////////////////////////////
;imprime uma string na tela
;Parâmetros:
;	- ds:si aponta para a string

puts:
	;save registers 
	push si
	push ax

.loop:
	;lodsb lodsw, lodsd
	;these instructions load a byte/word/double-word from DS:SI into AL/AX/EAX, then increment SI by the number of bytes loaded
	;essas instruções carregam um byte/palavra/palavra dupla de DS:SI para AL/AX/EAX, e então incrementam SI pelo número de bytes carregados
	lodsb			;loads next character in al
	
	;or destination, source
	;performs bitwise OR between source and destination, stores result in destination
	;realiza um OU bit a bit entre o operando de origem e o de destino, e armazena o resultado no destino

	or al, al 		; verify if next character is null // verifica se o proximo caractere é nulo
	
	;jz destination
	;jumps to destination if zero flag is set
	;salta para o destino se o flag zero estiver ativado
	jz .done

	mov ah, 0x0e	; call bios interrupt // ativa a interrupção da bios
	int 0x10

	jmp .loop

.done:
	pop ax
	pop si
	ret


main:
	;setup data segments
	mov ax, 0 		;cant write to ds/es directly // não é possível escrever diretamente nos registradores ds/es
	mov ds, ax
	mov es, ax

	;setup stack
	;memory acessed in a FIFIO (first in, first out) manner using push and pop
	;used to save the return address when calling functions
	;memória acessada em modo FIFO (primeiro a entrar, primeiro a sair) usando push e pop
	;usado para salvar o endereço de retorno ao chamar funções 
	mov ss, ax
	mov sp, 0x7C00	;stack grows downwards from where we are loaded in memory // ;a pilha cresce para baixo a partir do ponto onde o programa é carregado na memória

	hlt ;hlt stops the cpu from executing (it can be resumed by an interrupt) // para a execução da CPU (pode ser retomada por uma interrupção)

	;print message
	;mostra a mensagem
	mov si, msg_hello
	call puts

.halt:
	;jmp location, jumps to give location unconditionally (equivalent with goto instruction in C)
	;salta para a localização indicada incondicionalmente (equivalente à instrução goto em C)
	jmp .halt


;db byte1, byte2, byte3...
;stands for "define byte(s)". Writes given byte(s) to the assembled binary file]
;significa "definir byte(s)". Escreve o(s) byte(s) fornecido(s) no arquivo binário montado

;times number instruction/data
;repeats given instruction or pieace of data a number of times
;repete a instrução ou dado especificado um certo número de vezes

;$
;special symbol which is equal to the memory offset of the current line
;símbolo especial que representa o deslocamento de memória da linha atual

;$$ 
;special symbol which is equal to the memory offset of the beginning of the current section (in this case, program).
;símbolo especial que representa o deslocamento de memória do início da seção atual (neste caso, do programa)

;$-$$
;gives the size of our progrram so far (in bytes)
;informa o tamanho do nosso programa até o momento (em bytes)

msg_hello: db 'Hello, World! Solara OS', ENDL, 0

times 510-($-$$) db 0
;dw word1, word2, word3...
;stans for "define word(s)". Writes given word(s) (2 byte value, encoded in little endian) to the assembled binary file
;significa "definir palavra(s)". Escreve a(s) palavra(s) fornecida(s) (valor de 2 bytes, codificado em little endian) no arquivo binário montado
dw 0AA55h
