*===================================
*     Draw player.
*===================================
        ORG $4E21
        LDX #$916 ; Screen base address 
        BSR DUDE ;
        RTS ; EXIT PROGRAM
*------------------------------------
DUDE    LDA #$3C ;
        STA ,X  
        LDA #$42  
        STA 32,X  
        STA 64,X  
        STA 128,X  
        LDA #$3C
        STA 160,X ; 
        STA 192,X ;
        STA 96,X ; 
        LDA #$66 ;
        STA 224,X ;
        RTS
