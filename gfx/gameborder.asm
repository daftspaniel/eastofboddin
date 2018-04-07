*===================================
*     Draw bushes across the screen.
*===================================
        ORG $4E21
        LDX #$701 ; Screen base address 
        LDB #$1D ;
TOPROW  BSR BUSH ;
        DECB ;
        LEAX 1,X ;
        BGE TOPROW ;
        
        LDX #$800 ; Start address 
        LDB #$13 ;
LHSCOL  BSR BUSH ;
        DECB ;
        LEAX 256,X ; Add row.
        BGE LHSCOL ;
        
        LDX #$81F ; Start address 
        LDB #$13 ;
RHSCOL  BSR BUSH ;
        DECB ;
        LEAX 256,X ; Add row.
        BGE RHSCOL
        
        LDX #$1C01 ; Start address 
        LDB #$1D ;
LOWROW  BSR BUSH ;
        DECB ;
        LEAX 1,X ;
        BGE LOWROW ;
        RTS ; EXIT PROGRAM
*------------------------------------
BUSH    LDA #$00 ;
        STA ,X  ;
        LDA #$28 ; 
        STA 32,X ;
        LDA #$2A ; 
        STA 64,X ;
        LDA #$2A ;  
        STA 96,X ; 
        LDA #$BA ;  
        STA 128,X ; 
        LDA #$7E ; 
        STA 160,X ; 
        STA 192,X ;
        LDA #$6E ;
        STA 224,X ;
        RTS
BOX     LDA #$FF ;
        STA ,X  ;
        LDA #$81 ; 
        STA 32,X ; 
        STA 64,X ; 
        STA 128,X ; 
        STA 160,X ; 
        STA 192,X ;
        STA 96,X ; 
        LDA #$FF ;
        STA 224,X ;
        RTS
UBUSH   LDA #$BB ;
        STA 96,X ; 
        LDA #$00 ;
        STA ,X  ;
        LDA #$FF ;
        STA 32,X ;
        STA 64,X ;
        LDA #$2B ;
        STA 128,X ; 
        LDA #$2A ;
        STA 160,X ;
        LDA #$28 ;
        STA 192,X ;
        LDA #$00 ;
        STA 224,X ;
        RTS
