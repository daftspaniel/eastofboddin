*
* Draw bushes across the screen.
* 
        ORG $4E21
        LDX #$600 ; Screen base address 
        LDB #$00 ;
        
BOXROW  BSR BOX ;
        ADDB #$01 ;
        LEAX 1,X ;
        CMPB #$1F ;
        BLE BOXROW ;

        LDB #$00 ; Draw columns so reset B reg.
        LDX #$700 ; Start address 
BOXCOL  BSR BOX ;
        ADDB #$01 ;
        LEAX 256,X ; Add row.
        CMPB #$15 ;
        BLE BOXCOL ;
        
SR      LDB #$00 ; Draw columns so reset B reg.
        LDX #$71F ; Start address 
RHSCOL  BSR RHSBOX ;
        ADDB #$01 ;
        LEAX 256,X ; Add row.
        CMPB #$15 ;
        BLE RHSCOL
        
        LDB #$00 ; 
        LDX #$1D01 ; Start address 
LOWROW  BSR BOX3 ;
        ADDB #$01 ;
        LEAX 1,X ;
        CMPB #$1D ;
        BLE LOWROW ;

        RTS ; EXIT PROGRAM

*-----------------------------------
* Routines to draw graphic blocks.
*-----------------------------------

BOX2    LDA #$FF ;
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

BOX     LDA #$00 ;
        STA ,X  ;
        LDA #$28 ; 
        STA 32,X ;
        LDA #$2A ; 
        STA 64,X ;
        LDA #$2B ;  
        STA 96,X ; 
        LDA #$BB ;  
        STA 128,X ; 
        LDA #$FF ; 
        STA 160,X ; 
        STA 192,X ;
        STA 224,X ;
        RTS

BOX3    LDA #$BB ;
        LDA #$BB ; 
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
        STA 224,X  ;
        RTS

RHSBOX  LDA #$00 ;
        STA ,X  ;
        LDA #$27 ; 
        STA 32,X ;
        LDA #$1F ; 
        STA 64,X ;
        LDA #$2A ;  
        STA 96,X ; 
        RTS
