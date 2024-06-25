from machine import Pin
import dht

sensor = dht.DHT11(Pin(4))

while True:
    sensor.measure()
    print("Temperatura: {}°C".format(sensor.temperature()))
