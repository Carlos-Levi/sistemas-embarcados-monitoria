# Programação para Sistemas Embarcados

Finalizamos com uma introdução à programação para sistemas embarcados, abordando linguagens de programação, ferramentas e práticas comuns utilizadas no desenvolvimento de software embarcado.

## Linguagens de Programação

Existem várias linguagens de programação populares para o desenvolvimento de sistemas embarcados, cada uma com suas características e aplicações específicas:

### 1. **C e C++**

C e C++ são amplamente utilizados em sistemas embarcados devido à sua eficiência, baixo consumo de recursos e acesso direto ao hardware. Eles são ideais para programação de baixo nível e otimização de desempenho.

Exemplo de código em C para piscar um LED:

```c
#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PB0

int main(void) {
    DDRB |= (1 << LED_PIN);

    while (1) {
        PORTB |= (1 << LED_PIN);
        _delay_ms(500);
        PORTB &= ~(1 << LED_PIN);
        _delay_ms(500);
    }

    return 0;
}
```

### 2. **Python (MicroPython e CircuitPython)**

Python, através de implementações como MicroPython e CircuitPython, vem ganhando popularidade em sistemas embarcados devido à sua simplicidade e facilidade de aprendizado. É ideal para prototipagem rápida e desenvolvimento de aplicativos IoT.

Exemplo de código em MicroPython para ler um sensor de temperatura:

```python
from machine import Pin
import dht

sensor = dht.DHT11(Pin(4))

while True:
    sensor.measure()
    print("Temperatura: {}°C".format(sensor.temperature()))
```

### 3. **Java (Android Things)**

Java é amplamente utilizado para o desenvolvimento de aplicativos em dispositivos Android, incluindo dispositivos IoT através da plataforma Android Things.

Exemplo básico em Java para acender um LED em um dispositivo Android Things:

```java
import android.app.Activity;
import android.os.Bundle;
import com.google.android.things.pio.Gpio;
import com.google.android.things.pio.PeripheralManager;

import java.io.IOException;

public class MainActivity extends Activity {

    private static final String GPIO_PIN = "BCM4"; // GPIO4

    private Gpio ledGpio;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        PeripheralManager manager = PeripheralManager.getInstance();
        try {
            ledGpio = manager.openGpio(GPIO_PIN);
            ledGpio.setDirection(Gpio.DIRECTION_OUT_INITIALLY_LOW); // Inicializa o pino como saída, desligado

            // Liga o LED por 3 segundos
            ledGpio.setValue(true);
            Thread.sleep(3000);
            ledGpio.setValue(false);

        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        // Fecha o recurso GPIO quando a aplicação é destruída
        if (ledGpio != null) {
            try {
                ledGpio.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
```

### 4. **Assembly**

Assembly é usado para programação de baixo nível, oferecendo controle direto sobre o hardware. O exemplo a seguir é em Assembly para o microcontrolador AVR, utilizando o compilador GNU Assembler (GAS):

```assembly
.section .text
.global main

main:
    ldi r16, 0b00000001   ; Configura o pino PB0 como saída
    out DDRB, r16

loop:
    ldi r16, 0b00000001   ; Liga o LED (pino PB0)
    out PORTB, r16
    ldi r17, 100          ; Delay aproximado de 100ms
delay_loop:
    dec r17
    brne delay_loop

    ldi r16, 0b00000000   ; Desliga o LED (pino PB0)
    out PORTB, r16
    ldi r17, 100          ; Delay aproximado de 100ms
delay_loop_off:
    dec r17
    brne delay_loop_off

    rjmp loop             ; Repete o loop infinitamente
```