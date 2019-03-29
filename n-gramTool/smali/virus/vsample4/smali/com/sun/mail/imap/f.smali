.class public Lcom/sun/mail/imap/f;
.super Ljavax/mail/internet/MimeBodyPart;
.source "; "


# instance fields
.field private bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field private description:Ljava/lang/String;

.field private headersLoaded:Z

.field private message:Lcom/sun/mail/imap/IMAPMessage;

.field private sectionId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V
    .locals 4

    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized loadHeaders()V
    .locals 5

    :cond_0
    :cond_1
    :cond_2
    :cond_3
    :cond_4
    :cond_5
    #disallowed odex opcode
    #return-void-barrier
    nop

    :try_start_0
    int-to-char v2, p2

    #disallowed odex opcode
    #iget-wide-quick v4, p9, field@0xc044
    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    shr-int/lit8 p219, p65, -0x6e

    goto/32 :goto_0

    :try_start_1
    #Type index out of bounds: 10355
    #filled-new-array {p6, p5}, type@10355
    nop

    return-wide p189

    #Field index out of bounds: 38106
    #sput-short p23, field@38106
    nop

    aget-short p1, p1, p144

    sub-double/2addr v1, p1

    move/from16 p120, p484

    #Type index out of bounds: 34995
    #filled-new-array {}, type@34995
    nop

    const/high16 p241, -0x4b390000
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    if-le v0, p1, :cond_1

    double-to-float p3, p1

    #disallowed odex opcode
    #iget-quick p0, v1, field@0x4da5
    nop

    neg-double p7, p4

    return-wide p132

    #Field index out of bounds: 39849
    #disallowed odex opcode
    #sget-wide-volatile p149, field@39849
    nop

    long-to-float p3, p8

    #Field index out of bounds: 65152
    #iget-wide p5, p5, field@65152
    nop

    const-wide p7, 0x50eda75ac6f85223L    # 7.0321504728512484E81

    move/from16 p100, p16568

    #disallowed odex opcode
    #iput-quick p2, p4, field@0x467
    nop

    rem-int/2addr p2, v2

    add-float p60, v3, p24

    add-int/lit8 p215, p206, -0x72

    move/16 p63895, p12356

    move-exception p125

    #Field index out of bounds: 49987
    #iput-short p6, p4, field@49987
    nop

    if-gez p198, :cond_4

    mul-int/lit8 p1, p110, -0xb

    int-to-byte v3, p7

    rem-int/lit8 p78, p129, -0xf

    aput-short p43, p125, p190

    #Field index out of bounds: 20138
    #iput-boolean p8, p2, field@20138
    nop

    monitor-enter p165

    #disallowed odex opcode
    #invoke-super-quick {p1}, vtable@23972
    nop

    #disallowed odex opcode
    #return-void-barrier
    nop

    ushr-int p76, p82, p76

    move-wide/from16 p22, p5750

    div-int/lit8 p235, p40, -0x70

    aget-byte p243, p135, p36

    rem-float/2addr p2, p5

    #Field index out of bounds: 42412
    #iget-wide p6, p3, field@42412
    nop
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    #Type index out of bounds: 12515
    #const-class p70, type@12515
    nop

    #disallowed odex opcode
    #invoke-virtual-quick/range {p16355 .. p16477}, vtable@21082
    nop

    mul-long/2addr v0, p4

    #Field index out of bounds: 5657
    #disallowed odex opcode
    #sget-object-volatile p82, field@5657
    nop

    aput-wide p120, p124, p119

    if-gez p13, :cond_3

    aput-boolean p102, p169, p138

    #disallowed odex opcode
    #invoke-super-quick/range {p16825 .. p16959}, vtable@37956
    nop

    :catchall_0
    #Field index out of bounds: 17380
    #sput-object p188, field@17380
    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catchall {:try_start_4 .. :try_end_3} :catchall_1

    :try_start_4
    :catchall_1
    if-gt v3, p10, :cond_a

    cmpg-double p92, p25, p93

    :try_start_5
    aget-byte p124, p194, p165

    const/16 p82, -0x1828

    int-to-long p2, p10

    #Field index out of bounds: 49509
    #disallowed odex opcode
    #sget-wide-volatile p56, field@49509
    nop

    #Method index out of bounds: 11205
    #invoke-virtual {}, method@11205
    nop

    sub-double/2addr p1, p8

    #Field index out of bounds: 42640
    #iget-char p3, p9, field@42640
    nop
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_4} :catch_1
    .catchall {:try_start_5 .. :try_end_4} :catchall_0

    :catch_1
    const/high16 p73, -0x3deb0000    # -37.25f

    :try_start_6
    shr-int/2addr v1, p3

    if-lt v4, v3, :cond_0

    div-int/lit8 p131, p234, -0x7f

    aget-object p14, p149, p232

    rsub-int/lit8 p72, p54, 0x1
    :try_end_5
    .catchall {:try_start_6 .. :try_end_5} :catchall_0

    :try_start_7
    int-to-double p5, p0

    if-le p8, p9, :cond_8

    add-int/2addr v2, p10

    aput p148, p93, p81
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_6} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_6} :catch_1
    .catchall {:try_start_7 .. :try_end_6} :catchall_0
    .catchall {:try_start_8 .. :try_end_6} :catchall_0

    :try_start_8
    aput-byte p34, p11, p123

    :try_start_9
    aput-wide p18, p133, p188
    :try_end_7
    .catchall {:try_start_9 .. :try_end_7} :catchall_1

    if-ne p5, p9, :cond_6

    :try_start_a
    long-to-double p4, p8

    double-to-float p5, v4

    #Field index out of bounds: 56396
    #iput-short p5, p1, field@56396
    nop

    if-ne v1, v2, :cond_b

    #unknown opcode: 0x3f
    nop

    div-int p130, p228, p51

    rem-int/lit16 v0, p3, -0x4ba0

    int-to-long p7, p6

    int-to-byte v0, p7

    if-ltz p242, :cond_2

    #Field index out of bounds: 42352
    #disallowed odex opcode
    #iput-wide-volatile v3, p4, field@42352
    nop

    cmpl-float p197, p235, p196

    #unknown opcode: 0x42
    nop

    if-ne v2, p10, :cond_9

    add-float p129, p177, p213

    xor-int p78, p106, p47

    const/high16 p32, -0xfde0000

    neg-long p0, v2

    #unknown opcode: 0x3f
    nop

    sub-long p74, p47, p3

    if-ltz v1, :cond_7

    mul-float p171, p123, p126

    #Field index out of bounds: 21642
    #disallowed odex opcode
    #sput-wide-volatile p51, field@21642
    nop

    add-int/2addr v2, p7

    rem-int/lit8 p56, p111, -0x51

    shl-int/lit8 p46, p126, -0x1c

    #disallowed odex opcode
    #execute-inline {v1, p9}, inline@20602
    nop

    not-long v1, p5

    #Field index out of bounds: 13895
    #iput-char p7, p9, field@13895
    nop

    #Field index out of bounds: 31312
    #iput-char p2, p7, field@31312
    nop

    and-int/lit16 p1, p3, -0x62d7

    #unknown opcode: 0x79
    nop

    #Field index out of bounds: 61996
    #iget p3, v1, field@61996
    nop

    mul-int/2addr p6, v0

    #Field index out of bounds: 43298
    #disallowed odex opcode
    #iput-wide-volatile p2, p2, field@43298
    nop

    aget p222, p227, p34

    int-to-double p10, p7

    #Method index out of bounds: 39952
    #invoke-direct/range {p53294 .. p53330}, method@39952
    nop

    aget-object p60, p238, p219

    if-le p2, p5, :cond_5

    mul-float/2addr p3, p8
    :try_end_8
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_8} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_8} :catch_1
    .catchall {:try_start_a .. :try_end_8} :catchall_0

    not-long p2, v0
    :cond_6
    :cond_7
    :cond_8
    :cond_9
    :cond_a
    :cond_b
    :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    div-long/2addr p2, p13

    sub-long/2addr p6, p12

    #Field index out of bounds: 33910
    #sput-byte p36, field@33910
    nop

    if-ge p12, p11, :cond_0

    #Field index out of bounds: 26081
    #iput-boolean v0, p3, field@26081
    nop
    :cond_0
.end method

