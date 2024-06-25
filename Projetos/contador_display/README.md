# Projeto de Contador com Display de Sete Segmentos

![Screenshot do Projeto](Contador_Tinkercad.png)

## Descrição

Este projeto utiliza um Arduino Uno R3 para controlar um display de sete segmentos, contando de 0 a 9 com a ajuda de um resistor de 220 ohms para limitação de corrente no segmento.

## Componentes Utilizados

- Arduino Uno R3
- Anodo visor de sete segmentos
- Resistor de 220 ohms

## Código Fonte

O código fonte está disponível no arquivo `contador_display.ino`. Ele utiliza a biblioteca padrão do Arduino para controle do display de sete segmentos e implementa a lógica de contagem de números de 0 a 9.

### Exemplo de Código

```c
#include <avr/io.h>          // Biblioteca para operações de E/S no AVR
#define F_CPU 16000000UL     // Definindo a frequência da CPU como 16 MHz
#include <util/delay.h>      // Biblioteca para funções de delay

int main() {
    // Configura todos os pinos do PORTD como saída
    DDRD = 0xff;
    // Inicializa todos os pinos do PORTD como desligados (nível lógico alto)
    PORTD = 0xff;

    // Array contendo os valores binários para representar os números de 0 a 9 no display de sete segmentos
    unsigned char number[10] = {0x81, 0xB7, 0xC2, 0x92, 0xB4, 0x98, 0x88, 0xB3, 0x80, 0x90};

    int i;

    while (1) {
        // Loop para contar de 0 a 9
        for (i = 0; i < 10; i++) {
            // Envia o valor binário correspondente ao número atual para o PORTD
            PORTD = number[i];
            // Aguarda 1 segundo antes de exibir o próximo número
            _delay_ms(1000);
        }
    }

    return 0; // Retorna 0, embora esse ponto nunca seja alcançado devido ao loop infinito
}

Inclusão de Bibliotecas e Definições:

#include <avr/io.h>: Inclui a biblioteca para operações de entrada/saída do microcontrolador AVR.
#define F_CPU 16000000UL: Define a frequência da CPU como 16 MHz.
#include <util/delay.h>: Inclui a biblioteca para funções de delay, usada para pausar a execução do código.
Configuração dos Pinos de E/S:

DDRD = 0xff: Configura todos os pinos do PORTD como saídas (cada bit do registrador DDRD é configurado como 1).
PORTD = 0xff: Inicializa todos os pinos do PORTD em nível lógico alto (cada bit do registrador PORTD é configurado como 1).
Array de Números:

unsigned char number[10] = {0x81, 0xB7, 0xC2, 0x92, 0xB4, 0x98, 0x88, 0xB3, 0x80, 0x90}: Define um array contendo os valores binários que representam os números de 0 a 9 para o display de sete segmentos.
Loop Principal:

while (1): Inicia um loop infinito.
for (i = 0; i < 10; i++): Loop interno que itera de 0 a 9.
PORTD = number[i]: Envia o valor binário correspondente ao número atual para o PORTD, fazendo o display exibir esse número.
_delay_ms(1000): Pausa a execução por 1000 milissegundos (1 segundo) antes de passar para o próximo número.