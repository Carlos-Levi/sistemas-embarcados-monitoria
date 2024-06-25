# Introdução aos Sistemas Embarcados

## 📖 O que são Sistemas Embarcados?

Sistemas embarcados são sistemas computacionais dedicados que realizam funções específicas, muitas vezes em tempo real. Eles são projetados para serem integrados ao hardware que controlam e podem ser encontrados em uma vasta gama de dispositivos, desde eletrodomésticos e automóveis até equipamentos médicos e sistemas industriais.

### Exemplos de Aplicações
- **Dispositivos Médicos**: Marcapassos, monitores de glicose
- **Automóveis**: Sistemas de controle de motor, ABS
- **Eletrônicos de Consumo**: Smartphones, TVs, câmeras

---

## 🏛️ Arquitetura Básica de um Sistema Embarcado

A arquitetura básica de um sistema embarcado geralmente inclui os seguintes componentes:

- **Microcontrolador ou Microprocessador**: O "cérebro" do sistema, responsável por executar o software.
- **Memória**: Armazena o código do programa e os dados necessários para a operação.
- **Interfaces de Entrada/Saída (I/O)**: Permitem a comunicação com outros dispositivos e sensores.
- **Periféricos**: Incluem temporizadores, conversores A/D e interfaces de comunicação.

### Diagrama de Arquitetura
```plaintext
+-----------------------------+
|        Dispositivos         |
|      de Entrada/Saída       |
|       (Sensores, etc.)      |
+-------------+---------------+
              |
              |
+-------------v---------------+
|         Microcontrolador    |
|  (CPU, Memória, Periféricos)|
+-------------+---------------+
              |
              |
+-------------v---------------+
|         Dispositivos        |
|        de Comunicação       |
|      (UART, SPI, I2C)       |
+-----------------------------+
```

### Tecnologias Empregadas

Sistemas embarcados utilizam diversas tecnologias para atender às suas necessidades específicas. Algumas das tecnologias comuns incluem:

- **Microcontroladores e Microprocessadores**: Como ARM, PIC, AVR, MSP430
- **Linguagens de Programação**: C, C++, Assembly
- **Interfaces de Comunicação**: UART, SPI, I2C, CAN
- **Sistemas Operacionais de Tempo Real (RTOS)**: FreeRTOS, VxWorks, QNX

### Exemplos de Microcontroladores
- **ARM Cortex-M**: Utilizado em aplicações de baixo custo e alta eficiência energética.
- **PIC**: Popular em aplicações educacionais e industriais.
- **AVR**: Utilizado no Arduino e em várias outras plataformas de prototipagem.

---

## 📐 Metodologias de Projeto

O desenvolvimento de sistemas embarcados segue metodologias específicas para garantir que os requisitos de tempo real e confiabilidade sejam atendidos. As principais etapas do processo de projeto incluem:

1. **Especificação dos Requisitos**: Definir as funções e características que o sistema deve possuir.
2. **Projeto de Hardware**: Seleção dos componentes e design do circuito.
3. **Desenvolvimento de Software**: Programação e integração do software com o hardware.
4. **Teste e Validação**: Verificação se o sistema atende aos requisitos especificados.
5. **Implementação**: Produção e implementação do sistema final.

---

## 🏗️ Arquiteturas Padrão

Existem várias arquiteturas padrão utilizadas em sistemas embarcados, dependendo das necessidades específicas do projeto. Algumas das mais comuns incluem:

- **Arquitetura Von Neumann**: Onde a memória de programa e a memória de dados compartilham o mesmo barramento.
- **Arquitetura Harvard**: Onde a memória de programa e a memória de dados têm barramentos separados, permitindo maior eficiência.

### Diagrama de Arquitetura Harvard
```plaintext
+-----------------+       +-----------------+
| Memória de Dados| <----> | CPU            |
+-----------------+       +-----------------+
      ^     ^                       ^
      |     |                       |
      v     v                       v
+-----------------+       +-----------------+
|Memória de Programa| ---> | Barramento de Dados |
+-----------------+       +-----------------+
```

---

## ⏲️ Sistemas Operacionais de Tempo Real (RTOS)

Sistemas Operacionais de Tempo Real (RTOS) são utilizados em sistemas embarcados para garantir que as tarefas sejam executadas dentro de prazos específicos. Alguns dos RTOS mais populares incluem:

- **FreeRTOS**: Um RTOS open-source amplamente utilizado em projetos de pequena e média escala.
- **VxWorks**: Um RTOS comercial usado em aplicações críticas como aeroespacial e defesa.
- **QNX**: Conhecido por sua robustez e utilizado em sistemas automotivos e industriais.

### Características de um RTOS
- **Determinismo**: Capacidade de executar tarefas em tempos pré-determinados.
- **Escalonamento**: Gerenciamento eficiente de múltiplas tarefas.
- **Multitarefa**: Suporte para execução concorrente de várias tarefas.

---

## 🔗 Referências

- [FreeRTOS Documentation](https://www.freertos.org/documentation)
- [ARM Developer](https://developer.arm.com/)
- [Microchip Technology](https://www.microchip.com/)
- [Arduino Official Website](https://www.arduino.cc/)
- [Tinkercad](https://www.tinkercad.com/)

Para mais detalhes e recursos adicionais, confira a seção de [Referências](../Referencias).

