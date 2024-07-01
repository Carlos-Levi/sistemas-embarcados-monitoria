section .text
    global _start

_start:
    mov ecx, 0         ; Inicializa o contador em 0
    
loop:
    mov eax, ecx       ; Move o valor do contador para o registrador eax
    and eax, 0xF       ; Mantém apenas os 4 bits menos significativos
    call display_leds  ; Atualiza os LEDs com o valor do contador
    
    inc ecx            ; Incrementa o contador
    cmp ecx, 16        ; Verifica se o contador atingiu o máximo (16 para 4 bits)
    jne loop           ; Se não atingiu, continua o loop

exit:
    ; Aqui você pode adicionar código para finalizar o programa, se necessário
    ; Por exemplo, uma instrução de parada infinita ou um retorno de chamada para o sistema operacional
    
section .data
    ; Aqui você pode definir os padrões de acionamento dos LEDs, dependendo da plataforma de hardware
    
section .bss
    ; Aqui você pode definir variáveis para armazenar o estado atual dos LEDs
