			#include<p18F4550.inc>
			
			org 0x00
			goto start
			org 0x08
			retfie
			org 0x18
			retfie

;***************************************
;My Main Program
;***************************************

start		CLRF	TRISD, A
			SETF	TRISB, A
			MOVLW	B'00000011'
			MOVWF	PORTD, A

LED1		BTFSC	PORTB, 0, A
			BRA		lightLED1
			BSF 	PORTD, 0, A
LED2		BTFSC	PORTB, 1, A
			BRA		lightLED2
			BSF		PORTD, 1, A
			BRA		LED1

lightLED1	BCF		PORTD, 0, A
			BRA		LED2
lightLED2	BCF		PORTD, 1, A
			BRA		LED1	

			END