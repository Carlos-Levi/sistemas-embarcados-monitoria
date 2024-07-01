# Contador de Luzes de LED em Assembly

Projeto desenvolvido como parte da disciplina de **Sistemas Embarcados** do curso de Engenharia da Computação, com o auxílio do professor.

## Descrição do Projeto

O objetivo deste projeto é criar um contador simples utilizando LEDs. Cada LED representa um bit, e o contador incrementa de 0 até o número máximo de LEDs disponíveis. Isso permite visualizar o funcionamento de um contador em sistemas embarcados.

## Componentes Necessários

- LEDs (quantidade variável)
- Resistores para limitar a corrente dos LEDs
- Placa de desenvolvimento (como Arduino, Raspberry Pi, STM32, etc.)

## Funcionamento

1. Conectar os LEDs à placa de desenvolvimento, cada um em um pino de saída diferente.
2. Inicializar o contador em 0.
3. Em um loop infinito:
   - Atualizar os LEDs para representar o valor atual do contador.
   - Incrementar o contador.
   - Aguardar um pequeno intervalo de tempo para que o contador seja visível.

## Objetivos de Aprendizado

- Aprender a configurar pinos de saída em sistemas embarcados.
- Entender como manipular bits para controlar dispositivos de E/S.
- Familiarizar-se com conceitos de temporização e loops em Assembly.
- Praticar o uso de instruções de controle de fluxo.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este projeto está licenciado sob a [Licença MIT](https://opensource.org/licenses/MIT).
