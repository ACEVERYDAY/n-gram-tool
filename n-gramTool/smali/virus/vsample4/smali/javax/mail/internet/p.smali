.class public Ljavax/mail/internet/p;
.super Ljavax/mail/Multipart;
.source "ISO-8859-9"


# static fields
.field private static bmparse:Z

.field private static ignoreMissingBoundaryParameter:Z

.field private static ignoreMissingEndBoundary:Z


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    :try_start_0
    const-string v2, "mail.mime.multipart.ignoremissingendboundary"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    const-string v2, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    const-string v2, "mail.mime.multipart.bmparse"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/mail/internet/ContentType;

    const-string v2, "multipart"

    invoke-direct {v1, v2, p1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    :cond_0
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized parsebm()V
    .locals 27

    :pswitch_data_0
    :pswitch_data_1
    :goto_0
    :sswitch_data_0
    :array_0
    :sswitch_data_1
    :cond_0
    :cond_1
    :cond_2
    :cond_3
    :cond_4
    :cond_5
    :cond_6
    :cond_7
    :cond_8
    :cond_9
    :cond_a
    :cond_b
    :cond_c
    :cond_d
    rem-int/lit16 v14, v14, 0x32bb

    :try_start_0
    if-eqz p70, :cond_8

    mul-int/lit8 v1, p51, 0x6b
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    rsub-int v2, v8, 0x2803

    const/16 p145, 0x7272

    or-int/lit8 p139, p154, -0x28

    rem-int/lit8 p170, v8, 0x6f

    :try_start_1
    rem-int/lit16 v9, v12, -0x1ff5

    aget-char p3, p184, p109

    move-result-object p44

    rem-float p82, p206, p83

    #unknown opcode: 0x40
    nop

    aput-char p101, p78, p79

    rem-float p95, p142, p185

    move-wide v11, v11

    xor-int/lit16 v6, v0, 0x53c4

    double-to-long v5, v12

    move-result p98

    monitor-enter p155

    sub-long p66, p71, p226

    shr-int/lit8 p208, p116, -0x62

    rem-float/2addr v13, v7

    const/high16 p215, 0x7f7a0000
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    #Field index out of bounds: 59111
    #disallowed odex opcode
    #iget-wide-volatile v15, v3, field@59111
    nop

    long-to-int v3, v9

    #Field index out of bounds: 46844
    #iput-byte v0, v7, field@46844
    nop

    #Field index out of bounds: 16290
    #disallowed odex opcode
    #sget-wide-volatile p154, field@16290
    nop

    if-gt v9, v14, :cond_2

    mul-int/2addr v5, v8

    if-lt v2, v8, :cond_a

    #Field index out of bounds: 4481
    #disallowed odex opcode
    #sput-wide-volatile p104, field@4481
    nop

    move-wide/from16 p135, p58957

    #Field index out of bounds: 36560
    #disallowed odex opcode
    #sput-volatile p116, field@36560
    nop

    if-eq v4, v5, :cond_9

    shl-int/2addr v1, v11

    aput-short p54, p157, p178

    cmpl-float p146, p113, v5

    #Field index out of bounds: 55334
    #disallowed odex opcode
    #sput-volatile p52, field@55334
    nop

    mul-float/2addr v2, v3

    rem-int p126, v5, v17

    #Field index out of bounds: 25829
    #iput-byte v7, v14, field@25829
    nop

    div-int/lit16 v15, v5, 0x6473

    #invalid payload reference
    #packed-switch p57, :pswitch_data_1
    nop

    #disallowed odex opcode
    #invoke-super-quick {v4, v1}, vtable@33556
    nop

    aget-byte p77, p143, p144
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #Method index out of bounds: 36272
    #invoke-direct {}, method@36272
    nop

    :try_start_3
    add-int/lit8 p15, p39, -0x79

    #Field index out of bounds: 29761
    #iget-char v1, v3, field@29761
    nop

    div-double/2addr v14, v10

    div-int v24, p27, p181

    and-int v25, p117, p177

    rsub-int/lit8 p82, p194, -0x27

    #disallowed odex opcode
    #execute-inline {}, inline@10168
    nop

    xor-int/2addr v0, v5

    aget-char v14, p155, p202

    if-eqz p35, :cond_4

    add-int p190, p79, p73

    cmpl-float p102, p67, p118

    mul-int/lit8 v3, p150, 0x52
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    move-object v10, v7

    #invalid payload reference
    #sparse-switch p28, :sswitch_data_2
    nop

    #Field index out of bounds: 37402
    #disallowed odex opcode
    #sget-object-volatile p61, field@37402
    nop

    div-int/lit8 p58, p39, -0x32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    cmpl-double p87, p71, p221

    :try_start_5
    #invalid payload reference
    #packed-switch p72, :pswitch_data_2
    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catchall {:try_start_6 .. :try_end_5} :catchall_1

    :try_start_6
    :catchall_1
    neg-int v0, v12

    move-object/from16 p121, p26829

    :catch_1
    aget p200, p212, p85

    :try_start_7
    #invalid payload reference
    #sparse-switch p124, :sswitch_data_0
    nop

    #was invalid verification error type: 12
    #Method index out of bounds: 37685
    #disallowed odex opcode
    #throw-verification-error generic-error, method@37685
    nop

    const-wide/high16 p185, -0x7f5f000000000000L

    ushr-int p152, p137, p136

    #unknown opcode: 0x43
    nop

    #unknown opcode: 0x79
    nop

    rem-long/2addr v4, v0

    aget p200, p226, p92

    cmpg-float p67, p173, p120

    add-float p55, p125, p219

    move-object/16 p33637, p50775
    :try_end_6
    .catchall {:try_start_7 .. :try_end_6} :catchall_1

    :try_start_8
    and-int/2addr v12, v5

    cmpl-float p55, v20, p202

    int-to-float v11, v12

    #Field index out of bounds: 57629
    #sput-boolean p9, field@57629
    nop

    aget-short p189, p219, p23

    long-to-float v11, v10

    #invalid payload reference
    #fill-array-data p154, :array_1
    nop

    move-wide/from16 p72, p9379

    #String index out of bounds: 1303421459
    #const-string/jumbo p50, string@1303421459
    nop

    aput-byte p216, p3, p92

    or-long p155, p164, v10

    sub-float/2addr v2, v11

    mul-double/2addr v13, v6

    #disallowed odex opcode
    #execute-inline {}, inline@3420
    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_7} :catch_0
    .catchall {:try_start_8 .. :try_end_7} :catchall_0

    #Method index out of bounds: 41440
    #invoke-static {v15, v10, v9, v9}, method@41440
    nop

    :try_start_9
    rsub-int v5, v4, -0x6e2c

    #Field index out of bounds: 19446
    #disallowed odex opcode
    #sget-wide-volatile p28, field@19446
    nop

    cmpg-float p95, p188, p192

    long-to-float v11, v3
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_8} :catch_0
    .catchall {:try_start_9 .. :try_end_8} :catchall_0

    #unknown opcode: 0xff
    nop

    cmp-long p127, p59, p165

    :try_start_a
    aput-wide p132, p59, p46

    #disallowed odex opcode
    #iget-wide-quick v1, v9, field@0x43dc
    nop

    #Field index out of bounds: 58088
    #sget p57, field@58088
    nop

    #Field index out of bounds: 35057
    #iget v3, v10, field@35057
    nop

    if-eq v13, v5, :cond_e

    shl-long/2addr v3, v5

    #Field index out of bounds: 58977
    #iget v12, v9, field@58977
    nop

    filled-new-array/range {p64077 .. p64173}, Ljavax/mail/event/ConnectionAdapter;

    #Method index out of bounds: 59845
    #invoke-direct/range {p36276 .. p36387}, method@59845
    nop

    #Method index out of bounds: 46250
    #invoke-direct {}, method@46250
    nop

    and-int/2addr v3, v3

    array-length v15, v14

    rem-double/2addr v10, v3

    #disallowed odex opcode
    #iput-wide-quick v14, v3, field@0xa9dd
    nop

    #Field index out of bounds: 3275
    #iput-wide v2, v15, field@3275
    nop

    add-int/lit8 p177, p38, -0x1

    goto/16 :goto_2

    shr-int v21, p198, p129

    #Method index out of bounds: 39620
    #invoke-super {}, method@39620
    nop

    div-int/2addr v6, v7

    aget-short v17, p209, p24

    and-int/lit16 v9, v12, 0x2fb4

    if-gez p30, :cond_5

    or-long/2addr v11, v9

    :catch_2
    sub-double p98, p177, p13

    double-to-float v1, v10

    move-wide v3, v0

    #Method index out of bounds: 12523
    #invoke-virtual {v5, v11, v4, v2}, method@12523
    nop

    #unknown opcode: 0x43
    nop

    int-to-byte v0, v15

    iput-wide v14, v14, Lcom/rayark/Cytus/full/R$attr;->done_button_background:I

    div-float/2addr v10, v8

    and-long p221, p121, v2

    and-int p87, p210, p70

    #unknown opcode: 0x40
    nop

    #Field index out of bounds: 21756
    #iput-char v13, v10, field@21756
    nop

    #disallowed odex opcode
    #invoke-super-quick/range {p15828 .. p15854}, vtable@3026
    nop

    #disallowed odex opcode
    #execute-inline {v11, v12}, inline@9413
    nop

    add-float/2addr v1, v9

    or-long p188, p35, p178

    and-int/lit16 v9, v4, -0x6808

    #Field index out of bounds: 8469
    #iput v6, v2, field@8469
    nop

    #Field index out of bounds: 17698
    #iput-wide v3, v8, field@17698
    nop

    const/16 p146, 0x213f

    move-object v3, v15

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@50775
    nop

    #disallowed odex opcode
    #invoke-super-quick/range {p59223 .. p59436}, vtable@2254
    nop

    float-to-long v2, v6

    #Field index out of bounds: 56370
    #iput-boolean v12, v15, field@56370
    nop

    rem-double/2addr v6, v5

    #disallowed odex opcode
    #iget-quick v1, v6, field@0xa0fc
    nop
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_9} :catch_0
    .catchall {:try_start_a .. :try_end_9} :catchall_0

    shr-int/lit8 p113, p211, -0x4f

    xor-int/2addr v4, v9

    :try_start_b
    #Type index out of bounds: 11606
    #new-array v2, v5, type@11606
    nop

    #disallowed odex opcode
    #iget-wide-quick v15, v1, field@0x5782
    nop
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_a} :catch_4
    .catchall {:try_start_b .. :try_end_a} :catchall_1

    :try_start_c
    move-wide/16 p36128, p52521

    const-wide/16 p175, 0x3fd7
    :try_end_b
    .catchall {:try_start_c .. :try_end_b} :catchall_1

    xor-long/2addr v14, v8

    :try_start_d
    move-object/from16 p100, p55984

    #disallowed odex opcode
    #iput-wide-quick v10, v1, field@0x66fa
    nop

    div-int v21, p136, p70

    or-int/lit16 v10, v4, -0x272a

    shl-long p184, p53, p99

    mul-double p145, v2, p135

    #Method index out of bounds: 34212
    #disallowed odex opcode
    #invoke-object-init/range {p29116 .. p29221}, method@34212
    nop

    move-result v21

    add-double p111, p159, p36

    shr-int p105, p79, p69

    goto :goto_1

    #unknown opcode: 0xec
    nop

    aget-wide v7, p112, p149

    add-double/2addr v3, v12

    mul-double/2addr v1, v7

    #Field index out of bounds: 54220
    #disallowed odex opcode
    #iget-wide-volatile v15, v2, field@54220
    nop

    aput-char p34, p222, p193

    #unknown opcode: 0x42
    nop

    #Field index out of bounds: 57867
    #disallowed odex opcode
    #sput-volatile p140, field@57867
    nop

    #disallowed odex opcode
    #execute-inline/range {p42186 .. p42345}, inline@39457
    nop

    return p118

    aget p212, p113, p67

    move-object/16 p62023, p22388

    cmpg-double p213, p80, p179

    shr-int/lit8 p170, p167, -0x11

    add-int/2addr v9, v7

    monitor-exit p51

    shl-int/2addr v6, v9

    #was invalid verification error type: 51
    #Proto index out of bounds: 3030
    #disallowed odex opcode
    #throw-verification-error generic-error, method_proto@3030
    nop

    shl-int p118, v20, p189

    sub-double p72, p20, p200

    if-gtz p95, :cond_d

    aput-wide p139, p131, p89

    move-result-wide p199

    #Field index out of bounds: 34499
    #iget-char v4, v4, field@34499
    nop

    int-to-float v0, v6

    rem-float/2addr v12, v5

    #Field index out of bounds: 62559
    #disallowed odex opcode
    #iget-wide-volatile v4, v12, field@62559
    nop

    int-to-float v1, v9

    #Field index out of bounds: 54335
    #iput-char v15, v1, field@54335
    nop

    ushr-int v11, p225, p209

    #unknown opcode: 0x3e
    nop

    #Field index out of bounds: 7965
    #sput-short p208, field@7965
    nop

    #Field index out of bounds: 15806
    #disallowed odex opcode
    #iput-wide-volatile v3, v3, field@15806
    nop

    xor-int p154, p111, v10

    double-to-long v8, v4

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@51407
    nop

    rem-long p77, v0, p52

    div-int/lit8 v0, v20, 0x11

    #Type index out of bounds: 20100
    #new-array v2, v15, type@20100
    nop

    goto/32 :goto_4

    div-int/2addr v4, v14

    #Field index out of bounds: 52485
    #disallowed odex opcode
    #sput-object-volatile p127, field@52485
    nop

    rem-int/lit16 v8, v4, -0x6ac3

    move-result-object p31

    #disallowed odex opcode
    #iput-quick v15, v3, field@0xbcb6
    nop

    return-object p188

    or-int/2addr v4, v14

    #invalid payload reference
    #packed-switch p23, :pswitch_data_3
    nop

    :goto_1
    rem-long/2addr v12, v4

    #Method index out of bounds: 37206
    #invoke-virtual/range {p2346 .. p2596}, method@37206
    nop

    const/4 v14, 0x0

    aget-short v3, p112, p153

    throw p14

    aget-byte v6, p131, p10

    #String index out of bounds: 33823
    #const-string p204, string@33823
    nop

    #disallowed odex opcode
    #iput-quick v6, v12, field@0x644e
    nop

    and-int/lit16 v10, v6, 0x5f22

    aget-char p44, p28, p126

    #Type index out of bounds: 47584
    #instance-of v7, v4, type@47584
    nop

    rem-long/2addr v13, v12

    aput p223, p77, v5

    shl-long/2addr v3, v10

    mul-float/2addr v5, v1

    #invalid payload reference
    #packed-switch p176, :pswitch_data_0
    nop

    #Field index out of bounds: 2601
    #iput-boolean v10, v0, field@2601
    nop

    aget-byte p4, p170, p101

    div-long p100, p194, p96

    #Field index out of bounds: 64499
    #disallowed odex opcode
    #sget-volatile p155, field@64499
    nop

    if-ge v8, v5, :cond_3

    #Type index out of bounds: 32976
    #instance-of v4, v7, type@32976
    nop

    sub-double p2, p114, p166

    #Field index out of bounds: 52048
    #disallowed odex opcode
    #sput-wide-volatile p68, field@52048
    nop

    #Field index out of bounds: 61955
    #disallowed odex opcode
    #iput-object-volatile v15, v9, field@61955
    nop

    aget-short p126, p117, p78

    if-eq v13, v13, :cond_10

    #Field index out of bounds: 42949
    #iput-boolean v11, v6, field@42949
    nop

    not-long v12, v0

    or-long/2addr v7, v8

    mul-float p76, v22, v8

    add-float v6, v17, p27

    rem-double p86, p18, p20

    monitor-exit p192

    aget-boolean p18, p29, p60

    move-object/from16 p33, p10258

    sub-long p104, p122, p159

    #Field index out of bounds: 12758
    #sget-byte p42, field@12758
    nop

    add-double/2addr v13, v13

    shl-int/lit8 p120, p127, -0x2b

    if-eq v5, v1, :cond_b

    return-wide p122

    #disallowed odex opcode
    #execute-inline {}, inline@47846
    nop

    shr-long/2addr v3, v7

    #unknown opcode: 0x3e
    nop

    cmp-long p86, p126, p34

    #disallowed odex opcode
    #return-void-barrier
    nop

    array-length v12, v13

    ushr-int/2addr v9, v12

    #Method index out of bounds: 65227
    #invoke-direct/range {p51353 .. p51587}, method@65227
    nop

    neg-double v1, v11

    move-wide/from16 p179, p43918

    div-double p153, p204, p185

    move-object v3, v13

    move-object/16 p40593, p59504

    #Field index out of bounds: 4530
    #disallowed odex opcode
    #sget-object-volatile p101, field@4530
    nop

    aput-byte p8, p123, p8

    ushr-long p210, p17, p63

    #Field index out of bounds: 13831
    #sput-wide p194, field@13831
    nop

    move-result-wide p98

    #Field index out of bounds: 35830
    #iget v14, v9, field@35830
    nop

    add-int/lit16 v0, v10, -0x550d

    double-to-long v5, v6

    aget-object p61, p137, p89

    #Field index out of bounds: 13564
    #disallowed odex opcode
    #sget-object-volatile p141, field@13564
    nop

    #Field index out of bounds: 45697
    #iput-wide v3, v8, field@45697
    nop

    #Field index out of bounds: 46339
    #iput-object v8, v2, field@46339
    nop

    #Field index out of bounds: 58137
    #iput-byte v4, v6, field@58137
    nop

    #Field index out of bounds: 8465
    #disallowed odex opcode
    #sput-volatile p145, field@8465
    nop

    int-to-float v6, v12

    #Field index out of bounds: 45406
    #iget v14, v6, field@45406
    nop

    cmp-long p205, p105, p99

    move/16 p461, p4225

    #disallowed odex opcode
    #iget-object-quick v1, v8, field@0x5773
    nop

    const-wide/high16 p22, 0x7370000000000000L    # 1.1187071843154282E248

    add-int/lit8 p183, p5, 0x57

    aput-object p70, p42, p53

    goto/32 :goto_5

    add-float p26, p22, p158

    float-to-int v9, v0

    shl-int/lit8 p138, v22, -0x26

    add-long p46, v0, p14

    move/16 p29044, p41859

    xor-int p163, p107, p161

    #Method index out of bounds: 49053
    #invoke-super/range {p63708 .. p63828}, method@49053
    nop

    #invalid payload reference
    #sparse-switch p179, :sswitch_data_1
    nop

    if-eq v0, v10, :cond_6

    xor-int/lit16 v7, v12, 0x73a0

    #Field index out of bounds: 37225
    #iput v2, v5, field@37225
    nop

    div-double/2addr v6, v3

    #Field index out of bounds: 2389
    #iget-char v3, v10, field@2389
    nop

    shr-long/2addr v7, v6

    div-double p110, p109, p36

    #Field index out of bounds: 4217
    #iput-byte v9, v0, field@4217
    nop

    rsub-int v8, v7, 0x641d

    #unknown opcode: 0x3e
    nop

    rsub-int v0, v11, -0x60f7

    #Method index out of bounds: 32517
    #invoke-direct {}, method@32517
    nop

    if-nez p215, :cond_0

    #disallowed odex opcode
    #iput-quick v10, v15, field@0x17a2
    nop

    #unknown opcode: 0x42
    nop

    #Method index out of bounds: 51619
    #invoke-super {v1, v7, v13, v14, v4}, method@51619
    nop

    shr-long/2addr v11, v10

    long-to-float v3, v6

    #unknown opcode: 0xff
    nop

    neg-long v6, v15

    or-int/lit8 v12, p173, -0x39

    and-int/2addr v12, v5

    float-to-double v7, v14

    neg-long v15, v13

    #was invalid verification error type: 46
    #Proto index out of bounds: 36447
    #disallowed odex opcode
    #throw-verification-error generic-error, method_proto@36447
    nop

    sub-int/2addr v2, v15

    not-int v1, v10

    if-lt v14, v3, :cond_c

    #Field index out of bounds: 56317
    #disallowed odex opcode
    #sput-wide-volatile p32, field@56317
    nop

    #Field index out of bounds: 4440
    #disallowed odex opcode
    #iget-volatile v14, v4, field@4440
    nop

    shl-int/lit8 p139, p98, 0x6e

    sub-int/2addr v6, v3

    #Field index out of bounds: 35683
    #sget-short p3, field@35683
    nop

    sub-long p77, p218, p48

    return-void

    cmpg-double p69, p44, p75

    #Field index out of bounds: 63699
    #sget-object p27, field@63699
    nop

    double-to-long v7, v11

    shr-int/lit8 v25, p38, -0x6

    mul-int/2addr v4, v2

    if-ge v14, v2, :cond_f

    move/16 p55463, p63291

    shl-int p31, p97, p54

    move/from16 v18, p20068

    shl-long/2addr v3, v12

    if-gez p88, :cond_11

    #Field index out of bounds: 40380
    #sput p5, field@40380
    nop

    #Field index out of bounds: 53879
    #iput-boolean v10, v4, field@53879
    nop

    aput p123, p154, p83

    double-to-int v11, v12

    mul-long/2addr v11, v15

    add-int/lit16 v4, v9, -0xd89

    move-result-object v6

    float-to-double v15, v3

    rem-float/2addr v6, v15

    if-le v0, v13, :cond_1

    aget-wide p105, p65, p197

    const-wide/high16 p120, -0x2ad1000000000000L    # -2.1697527189847478E102

    cmpg-float p35, p100, v1

    #Method index out of bounds: 52666
    #invoke-direct/range {p47362 .. p47476}, method@52666
    nop

    #Field index out of bounds: 58342
    #iget-char v15, v9, field@58342
    nop

    move-object/16 p57750, p59070

    move-wide/16 p8371, p43526

    #disallowed odex opcode
    #iput-object-quick v7, v0, field@0xafa
    nop

    or-int/lit16 v9, v6, -0x7158

    and-long p26, p128, p183

    #Type index out of bounds: 23394
    #instance-of v4, v8, type@23394
    nop

    ushr-int v0, p109, p85

    aget p35, p1, v5

    #disallowed odex opcode
    #invoke-virtual-quick {}, vtable@1505
    nop

    const/16 p100, -0x255b

    div-int/lit16 v0, v4, -0x5bae

    ushr-int p87, p92, p196

    shr-int/2addr v2, v14

    #Method index out of bounds: 60586
    #invoke-interface {}, method@60586
    nop

    #Field index out of bounds: 30207
    #iput-byte v1, v0, field@30207
    nop

    or-int p159, p54, p70

    #String index out of bounds: 36873
    #const-string p125, string@36873
    nop

    #Method index out of bounds: 42184
    #invoke-static {v8, v4, v10, v12, v12}, method@42184
    nop

    aput-short p205, p77, p79

    neg-int v8, v6

    #Field index out of bounds: 37657
    #disallowed odex opcode
    #sput-wide-volatile v21, field@37657
    nop

    cmpl-float p200, p212, p91

    #Field index out of bounds: 61833
    #iget v4, v15, field@61833
    nop

    and-int/2addr v9, v6

    int-to-double v2, v4

    #Field index out of bounds: 9764
    #iget-byte v5, v0, field@9764
    nop

    aput-short p187, p212, p34

    add-double p176, p47, p166

    #unknown opcode: 0x3f
    nop

    #unknown opcode: 0x43
    nop

    move-result-wide p37

    long-to-float v9, v9

    ushr-int/2addr v2, v11

    #unknown opcode: 0x7a
    nop

    #Field index out of bounds: 47102
    #sget-char p62, field@47102
    nop

    if-le v10, v10, :cond_12

    xor-long/2addr v7, v12

    mul-int/2addr v10, v15

    sub-long/2addr v15, v10

    sub-float/2addr v15, v4

    xor-long p210, p69, p159

    #Field index out of bounds: 59265
    #iget-object v9, v2, field@59265
    nop

    move-result p9

    ushr-long p3, v13, p133

    move-wide v1, v13

    div-int/2addr v15, v7

    const p43, -0x34b5241b    # -1.3294565E7f

    and-int p99, p17, p218

    rem-double/2addr v7, v1

    #disallowed odex opcode
    #execute-inline/range {p22328 .. p22532}, inline@22112
    nop

    #invalid payload reference
    #fill-array-data p150, :array_0
    nop

    throw p5

    #Field index out of bounds: 47861
    #disallowed odex opcode
    #sput-object-volatile p3, field@47861
    nop

    aput p137, p137, p118

    not-long v14, v8

    goto/32 :goto_0

    or-int p23, p211, p220

    #Field index out of bounds: 63816
    #iget-wide v9, v13, field@63816
    nop

    xor-long/2addr v10, v13

    or-int/lit8 p216, p87, 0xc

    shr-int/lit8 p123, p179, -0x1a

    aget p104, v14, p42

    div-long/2addr v3, v15

    sub-double p219, p61, p74

    div-int p142, p2, p200

    add-int/lit8 p60, p40, -0x77

    add-int/2addr v2, v4

    #Field index out of bounds: 23450
    #disallowed odex opcode
    #iget-volatile v11, v10, field@23450
    nop

    if-lt v8, v3, :cond_7

    #unknown opcode: 0xff
    nop

    div-long/2addr v13, v7

    aput-byte p111, p164, p24

    #Field index out of bounds: 54168
    #iput-wide v13, v0, field@54168
    nop

    move/16 p23845, p54902

    sput-char p22, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    neg-int v10, v6

    cmpl-double p174, p140, p167

    #Field index out of bounds: 2412
    #iget-char v4, v14, field@2412
    nop

    #Field index out of bounds: 50411
    #disallowed odex opcode
    #sget-volatile p185, field@50411
    nop

    #Field index out of bounds: 44550
    #disallowed odex opcode
    #iget-wide-volatile v2, v11, field@44550
    nop

    aget p125, v26, p109

    #Field index out of bounds: 21311
    #sput-boolean p112, field@21311
    nop

    #unknown opcode: 0x40
    nop
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_c} :catch_0
    .catchall {:try_start_d .. :try_end_c} :catchall_0

    goto/16 :goto_3

    double-to-int v3, v2

    :catch_3
    #Field index out of bounds: 58633
    #iput-object v14, v11, field@58633
    nop

    add-int p158, p210, p9

    :catch_4
    xor-long/2addr v4, v0

    xor-int/lit16 v14, v4, 0x7171

    double-to-long v7, v8

    #Field index out of bounds: 25431
    #iget v1, v11, field@25431
    nop

    #Field index out of bounds: 56059
    #iput-wide v11, v8, field@56059
    nop

    #disallowed odex opcode
    #return-void-barrier
    nop

    shl-long p40, p111, p8

    move-wide/16 p54594, p11493

    mul-long/2addr v15, v6

    move-result-wide p210

    #unknown opcode: 0x6e00
    nop

    #Field index out of bounds: 29396
    #disallowed odex opcode
    #sput-wide-volatile p13, field@29396
    nop

    const-wide/high16 p30, 0x6eff000000000000L    # 4.589849554187963E226

    add-int/lit16 v6, v13, -0x1a9a

    #Method index out of bounds: 32454
    #invoke-static {}, method@32454
    nop

    #Field index out of bounds: 34595
    #iget-short v8, v0, field@34595
    nop

    rem-int/2addr v3, v0
    :cond_e
    :cond_f
    :goto_2
    :cond_10
    :goto_3
    :cond_11
    :cond_12
    :goto_4
    :sswitch_data_2
    :goto_5
    :pswitch_data_2
    :array_1
    :pswitch_data_3
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .locals 2

    int-to-float p9, p4

    rem-double p178, p201, p58

    div-int/lit8 p9, p162, 0x6a

    #Field index out of bounds: 10344
    #disallowed odex opcode
    #sget-volatile p110, field@10344
    nop

    float-to-double v0, p10

    #Field index out of bounds: 18624
    #sget-byte p36, field@18624
    nop

    ushr-int v0, p39, p212

    #disallowed odex opcode
    #invoke-super-quick/range {p1796 .. p1931}, vtable@2775
    nop

    shl-int p54, p154, p224

    or-int/2addr p4, p13

    #Field index out of bounds: 27418
    #disallowed odex opcode
    #iget-object-volatile p12, p4, field@27418
    nop
.end method

