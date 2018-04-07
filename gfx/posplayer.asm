*===================================
*     Draw player.
*===================================
        ORG $4E21
*-----------------------------------
        LDX #$700 
        LDB #$2

        ABX
        BSR DUDE 
        BSR DELAY
        BSR BLNK

        ABX
        BSR DUDE
        BSR DELAY
        BSR BLNK

        ABX
        BSR DUDE
        BSR DELAY
        BSR BLNK

        ABX
        BSR DUDE
        
        RTS ; EXIT PROGRAM
*------------------------------------
DUDE    LDA #$3C
        STA ,X  
        LDA #$42  
        STA 32,X  
        STA 64,X  
        STA 128,X  
        LDA #$3C
        STA 160,X
        STA 192,X
        STA 96,X
        LDA #$66
        STA 224,X
        RTS
*-------------------------
BLNK    LDA #$00
        STA ,X
        STA 32,X
        STA 64,X
        STA 96,X 
        STA 128,X
        STA 160,X
        STA 192,X
        STA 224,X
        RTS
*-------------------------
DELAY   PSHU Y
        LDY #$FFFF
LOOP    LEAY -1,Y
        BNE LOOP
        PULU Y
        RTS
