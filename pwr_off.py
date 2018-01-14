#Bibliotheken einbinden
import RPi.GPIO as GPIO
import time
 
#GPIO Modus (BOARD / BCM)
GPIO.setmode(GPIO.BOARD)
  
#Richtung der GPIO-Pins festlegen (IN / OUT)
GPIO.setup(12, GPIO.OUT, initial=GPIO.LOW)  # make pin initially LOW output
   
#Pin 12 HIGH Pegel
GPIO.output(12, True)
#5 Sekunden warten
time.sleep(5)
#Pin 12 LOW Pegel
GPIO.output(12, False)
