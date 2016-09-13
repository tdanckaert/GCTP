C **********************************************************************SPLD   1
C ** PROGRAM SPLOAD - LOADS NAD 1927 AND NAD 1983 DIRECT ACCESS FILES **SPLD   2
C ** U. S. GEOLOGICAL SURVEY - CHIPPEAUX AND LINCK           09/19/89 **SPLD   3
C **********************************************************************SPLD   4
      PROGRAM SPLOAD                                                    SPLD   5
C                                                                       SPLD   6
C     PROGRAM TO COPY NAD 1927 AND NAD 1983 SEQUENTIAL FILES TO DIRECT  SPLD   7
C     ACCESS FILES FOR USE BY GCTP                                      SPLD   8
C                                                                       SPLD   9
      REAL*8 PARM(9)                                                    SPLD  10
      INTEGER*4 I, ID, IZONE, LENGTH                                    SPLD  11
      CHARACTER*32 ZNAME
      CHARACTER*1024 GETF, PUTF
C     IPR    = LOGICAL UNIT NUMBER OF PRINTER                           SPLD  15
C     GETF = NAME OF INPUT FILE
C     PUTF = NAME OF OUTPUT FILE
C     LENGTH = LENGTH IN BYTES OR WORDS OF OUTPUT RECORDS               SPLD  22
C                                                                       SPLD  23
      PARAMETER (IPR = 6)                                               SPLD  24
      PARAMETER (LENGTH = 432)                                          SPLD  28

      CALL GETARG(1, GETF)
      CALL GETARG(2, PUTF)

      OPEN(UNIT=2,FILE=GETF,STATUS='OLD',
     .     ACCESS='SEQUENTIAL')                                         SPLD  31
      OPEN(UNIT=3,FILE=PUTF,STATUS='REPLACE',RECL=LENGTH,               SPLD  32
     .     ACCESS='DIRECT')                                             SPLD  33
C                                                                       SPLD  34
    1 FORMAT(A32,7X,I1,31X,I4)                                          SPLD  40
    2 FORMAT(3D25.16)                                                   SPLD  41
    3 FORMAT(1X,I3,5X,A32,5X,I4,5X,I1)                                  SPLD  42
C                                                                       SPLD  43
      I = 0                                                             SPLD  44
   10 READ(2,1,END=40) ZNAME, ID, IZONE                                 SPLD  45
      I = I + 1                                                         SPLD  46
      READ(2,2) PARM(1), PARM(2), PARM(3)                               SPLD  47
      READ(2,2) PARM(4), PARM(5), PARM(6)                               SPLD  48
      READ(2,2) PARM(7), PARM(8), PARM(9)                               SPLD  49
      WRITE(3,REC=I) ZNAME, ID, PARM                                    SPLD  50
      WRITE(IPR,3) I, ZNAME, IZONE, ID                                  SPLD  51
      GO TO 10                                                          SPLD  52
C                                                                       SPLD  53
   40 CLOSE(2)                                                          SPLD  64
      CLOSE(3)                                                          SPLD  65
C                                                                       SPLD  68
      STOP                                                              SPLD  69
      END                                                               SPLD  70
