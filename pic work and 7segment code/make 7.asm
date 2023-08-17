;Main Programm---------------------------------------------------
Start
                            bsf STATUS , RP0
                            movlw b'11111111' 
                            movwf TRISB
                            
                            movlw b'11111110'
                            movwf TRISB
                            bcf STATUS , RP0
MainLoop
                            btfss PORTB,2
                            btfss PORTB,3
                            goto Button_Is_Off
Button_Is_On
                            bsf PORTB,5
                            bsf PORTB,4
                            goto MainLoop
Button_Is_Off
                            btfss PORTB,5
                            btfss PORTB,4
                            goto MainLoop
                            end