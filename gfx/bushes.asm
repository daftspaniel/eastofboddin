*===================================
*     Draw Bush.
*===================================
        ORG $4E21
*-----------------------------------
        LDX #$701
        LDB #$0A
ROW     BSR BUSH
        DECB
        LEAX 256,X
        LEAX 256,X
        LEAX 4,X
        BGE ROW
        RTS ; EXIT PROGRAM
*------------------------------------
BUSH    LDA #$81
        STA ,X
        STA 224,X
        LDA #$C3
        STA 32,X 
        STA 192,X
        LDA #$7E
        STA 64,X
        STA 160,X        
        LDA #$24
        STA 96,X         
        STA 128,X  
        RTS
