.class public Ljavax/activation/r;
.super Ljavax/activation/FileTypeMap;
.source "EHLO "


# static fields
.field private static final PROG:I

.field private static defDB:Lcom/sun/activation/registries/MimeTypeFile;

.field private static defaultType:Ljava/lang/String;


# instance fields
.field private DB:[Lcom/sun/activation/registries/MimeTypeFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    const-string v0, "application/octet-stream"

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/activation/FileTypeMap;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "MimetypesFileTypeMap: load HOME"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mime.types"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const-string v1, "MimetypesFileTypeMap: load SYS"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mime.types"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    const-string v1, "MimetypesFileTypeMap: load JAR"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    const-string v1, "mime.types"

    invoke-direct {p0, v0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V

    const-string v1, "MimetypesFileTypeMap: load DEF"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    const-class v1, Ljavax/activation/MimetypesFileTypeMap;

    monitor-enter v1

    :try_start_2
    sget-object v2, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    if-nez v2, :cond_2

    const-string v2, "/mimetypes.default"

    invoke-direct {p0, v2}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v2

    sput-object v2, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    if-eqz v1, :cond_3

    sget-object v1, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/activation/registries/MimeTypeFile;

    iput-object v1, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    iget-object v1, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    :try_start_0
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-void
.end method

.method private loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V
    .locals 9

    :pswitch_data_0
    :cond_0
    :cond_1
    :goto_0
    :cond_2
    mul-long p213, p161, p204

    :try_start_0
    const/4 p5, 0x6

    aget p73, p126, p223

    aput p77, p42, p31

    int-to-short p2, p3

    neg-long v8, v4

    int-to-char p0, v0

    shl-int/2addr p0, p1

    aput p144, p132, p200

    move-exception p40

    move/from16 p141, p10750

    #Field index out of bounds: 44950
    #sget-object p101, field@44950
    nop

    #Type index out of bounds: 21138
    #const-class v3, type@21138
    nop

    rem-float p15, p203, p141

    div-int/2addr p4, v1

    aput-object p183, p219, p63

    #Field index out of bounds: 12910
    #sget-object p198, field@12910
    nop

    xor-long p204, p147, p62

    #Field index out of bounds: 5904
    #sput-object p166, field@5904
    nop

    #Field index out of bounds: 62816
    #iput-byte v5, p1, field@62816
    nop

    #Field index out of bounds: 26026
    #disallowed odex opcode
    #iput-object-volatile p3, p2, field@26026
    nop

    shr-long/2addr v6, v3

    #invalid payload reference
    #packed-switch p125, :pswitch_data_0
    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    long-to-float p2, v1

    #Field index out of bounds: 25058
    #sget-short p237, field@25058
    nop

    goto/16 :goto_2

    and-int/2addr p2, p2

    #unknown opcode: 0x42
    nop

    aput-char p216, p35, p115

    rem-float/2addr p3, v7

    int-to-long p4, v4

    move-result-wide p148

    return-wide p77

    div-float/2addr p5, p4

    #Field index out of bounds: 35756
    #sget p119, field@35756
    nop

    sub-double p167, p184, p90

    add-float p101, p42, p170

    aput-wide p198, p195, p240

    div-int/lit16 v1, v8, -0x10a6

    #unknown opcode: 0x41
    nop

    #disallowed odex opcode
    #iput-object-quick v0, p4, field@0x1a1b
    nop

    ushr-int/lit8 p179, p166, -0x20

    #Field index out of bounds: 37739
    #sget-wide p201, field@37739
    nop

    move-wide v4, v5

    :try_start_1
    #disallowed odex opcode
    #iput-quick v6, v1, field@0x5e09
    nop

    aget-byte p236, p27, p10

    long-to-double p1, v8

    add-double p94, p238, p101

    aget-object p145, p180, p11

    double-to-long v8, p5

    #Field index out of bounds: 28205
    #iput v4, p3, field@28205
    nop

    #Field index out of bounds: 55240
    #disallowed odex opcode
    #iget-volatile v4, v6, field@55240
    nop

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@45207
    nop

    shl-int p8, p136, p159

    new-array p1, v5, Lcom/sun/mail/imap/protocol/m;

    const-wide/32 p27, 0x29440e86

    not-int v1, p3

    rem-double/2addr v4, v2

    aget-object p186, p115, p150

    #disallowed odex opcode
    #execute-inline/range {p11300 .. p11447}, inline@8227
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v4, p0, v8, v5, v0}, vtable@17761
    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    #Type index out of bounds: 63320
    #check-cast p48, type@63320
    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #unknown opcode: 0x79
    nop

    const/high16 p111, -0x25dd0000

    :try_start_3
    return p61

    ushr-int/2addr p6, p4

    #Field index out of bounds: 12559
    #disallowed odex opcode
    #sget-volatile p237, field@12559
    nop

    const p91, -0x2f58573f

    #Field index out of bounds: 24681
    #iput-boolean v5, p3, field@24681
    nop

    cmpg-float p21, p17, p79

    #Method index out of bounds: 46647
    #invoke-interface {}, method@46647
    nop

    #Type index out of bounds: 19587
    #new-instance p221, type@19587
    nop

    or-long/2addr v5, p2

    mul-long p159, p67, p128

    #Method index out of bounds: 43318
    #disallowed odex opcode
    #invoke-object-init/range {p37687 .. p37769}, method@43318
    nop

    sub-long/2addr v6, v6

    #unknown opcode: 0x43
    nop

    #Field index out of bounds: 7989
    #sput-byte p158, field@7989
    nop

    move-exception p193

    move/from16 p7, p25273

    aget-boolean p25, p208, p0

    int-to-float p5, v5

    aget-char p218, v0, p222
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    div-int/2addr v6, p6

    add-double v1, p189, p87

    :try_start_4
    sub-double p166, p181, p80
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    xor-int/2addr p5, p0

    #Type index out of bounds: 31763
    #const-class p92, type@31763
    nop

    long-to-double v4, v8

    add-float/2addr v4, p5

    :try_start_5
    #Field index out of bounds: 58082
    #iput p5, p5, field@58082
    nop

    mul-int/2addr p0, v3

    long-to-int p4, v4

    const/16 p228, 0x6471

    #Field index out of bounds: 38588
    #disallowed odex opcode
    #iget-object-volatile v4, p2, field@38588
    nop

    sub-double p85, p184, v8

    #unknown opcode: 0x79
    nop

    #Type index out of bounds: 60840
    #instance-of v7, p4, type@60840
    nop

    sub-long p159, p146, p95

    goto/16 :goto_0

    add-double p230, p56, p117

    rem-long/2addr p3, p2

    const/high16 p94, -0x69780000

    mul-int p112, p186, p53
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    aget-boolean v6, p202, p231

    :catch_0
    aput-char p235, p238, p91

    #Field index out of bounds: 37818
    #sget-byte p219, field@37818
    nop

    div-int p0, p108, p174

    :try_start_6
    if-gez p115, :cond_0

    #Type index out of bounds: 44017
    #check-cast p156, type@44017
    nop

    shl-int/2addr p4, p3

    #Field index out of bounds: 19439
    #disallowed odex opcode
    #iget-volatile v8, p5, field@19439
    nop

    add-long/2addr p3, v7

    ushr-int p233, p110, p123

    xor-int p167, p233, p202

    mul-float/2addr p2, p3

    int-to-long v5, v6

    goto :goto_1

    cmpl-double p208, p108, p28

    return-wide p231

    #String index out of bounds: 21186
    #const-string p166, string@21186
    nop

    mul-long p67, p134, p216

    #Type index out of bounds: 33996
    #filled-new-array/range {p34425 .. p34550}, type@33996
    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    rem-int/2addr v8, p4

    neg-long p4, p4

    mul-int/lit8 p119, p66, 0x4f
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_1
    return-object p180

    #Field index out of bounds: 3083
    #disallowed odex opcode
    #sput-wide-volatile p88, field@3083
    nop

    :catch_2
    if-gtz p105, :cond_1

    :goto_1
    #Field index out of bounds: 60609
    #iput-byte p1, v2, field@60609
    nop

    :try_start_8
    shr-int/2addr v3, p6

    if-le p4, v7, :cond_3

    #unknown opcode: 0x3f
    nop

    double-to-float p5, v6

    aput-boolean p97, p185, p169

    and-long/2addr p5, v8

    #Field index out of bounds: 10977
    #iput-char p4, v0, field@10977
    nop

    rem-double/2addr v4, v3

    const/high16 p28, -0x6bf30000

    #Field index out of bounds: 41542
    #iget-short p0, v7, field@41542
    nop

    cmpl-float p1, p30, p112

    #Field index out of bounds: 31091
    #iget-wide v0, v2, field@31091
    nop

    #Field index out of bounds: 47231
    #iget-short p0, v5, field@47231
    nop

    invoke-virtual {}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #Method index out of bounds: 49783
    #invoke-interface {}, method@49783
    nop

    :try_start_9
    div-double/2addr p3, p2

    sput-boolean p2, Lcom/sun/mail/smtp/SMTPSendFailedException;->rc:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_3
    add-int p68, p177, p129

    :catchall_0
    #Field index out of bounds: 3701
    #iput-char v8, p2, field@3701
    nop

    aget-byte p99, p165, p51

    :try_start_a
    #unknown opcode: 0xff
    nop

    xor-long/2addr v1, p4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    #Method index out of bounds: 48269
    #invoke-super {}, method@48269
    nop
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    #Method index out of bounds: 18015
    #invoke-virtual {v7, v5}, method@18015
    nop

    ushr-int p219, p115, p186

    cmpg-float p245, p168, p167

    sub-long/2addr v0, p1

    or-int v6, p32, p5

    #unknown opcode: 0x40
    nop

    #Type index out of bounds: 29957
    #new-instance p160, type@29957
    nop

    mul-double/2addr p4, p4

    if-ge v7, p0, :cond_2

    #disallowed odex opcode
    #iput-object-quick v1, p2, field@0xa967
    nop

    #Field index out of bounds: 33823
    #disallowed odex opcode
    #sput-object-volatile p165, field@33823
    nop

    #Field index out of bounds: 48670
    #disallowed odex opcode
    #sget-object-volatile p24, field@48670
    nop

    #disallowed odex opcode
    #invoke-virtual-quick/range {p7917 .. p8155}, vtable@9139
    nop

    :catch_5
    #Field index out of bounds: 29465
    #disallowed odex opcode
    #sget-object-volatile p225, field@29465
    nop

    :catch_6
    #Method index out of bounds: 60460
    #invoke-super {}, method@60460
    nop

    :catch_7
    #invalid payload reference
    #fill-array-data p176, :array_0
    nop

    #Field index out of bounds: 17457
    #iget-boolean p1, p2, field@17457
    nop

    :catchall_1
    add-double p193, p24, p158

    #Field index out of bounds: 49342
    #disallowed odex opcode
    #sput-object-volatile p57, field@49342
    nop

    move v4, v6

    :catch_8
    #Field index out of bounds: 36793
    #iget-object v6, p1, field@36793
    nop

    ushr-int p168, p146, p174

    add-int/2addr p1, v3

    add-float/2addr v7, v5

    :catch_9
    move p0, v5

    aget-object p16, p115, p24

    add-float p215, p188, p209

    div-int/2addr v5, p2

    #Field index out of bounds: 36612
    #disallowed odex opcode
    #sput-volatile p213, field@36612
    nop

    div-float/2addr p1, p1

    sub-double/2addr v5, p1
    :cond_3
    :goto_2
    :array_0
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .locals 2

    add-double p181, p244, p53

    :try_start_0
    float-to-long v1, p11

    #Type index out of bounds: 64795
    #new-instance p100, type@64795
    nop

    or-int/lit16 p3, p10, -0x125c
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #Method index out of bounds: 52896
    #invoke-direct/range {p22588 .. p22821}, method@52896
    nop
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .locals 5

    :goto_0
    :cond_0
    :cond_1
    shr-long p189, p228, p4

    :try_start_0
    xor-int p84, p160, p147

    add-long/2addr p3, p8

    if-eq p10, p0, :cond_0

    #Field index out of bounds: 37408
    #disallowed odex opcode
    #iget-wide-volatile p10, v4, field@37408
    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #Field index out of bounds: 51384
    #sput-object p68, field@51384
    nop

    :try_start_1
    move-object/from16 p163, p44844

    monitor-enter p166

    #Field index out of bounds: 8956
    #disallowed odex opcode
    #sget-volatile p194, field@8956
    nop

    #Field index out of bounds: 40503
    #disallowed odex opcode
    #sget-volatile p56, field@40503
    nop

    #Field index out of bounds: 49850
    #iput p5, p4, field@49850
    nop

    not-long p2, p0

    #Field index out of bounds: 22845
    #iput p3, p0, field@22845
    nop

    #Field index out of bounds: 33443
    #sget-boolean p94, field@33443
    nop

    goto/32 :goto_0

    #Field index out of bounds: 3128
    #iput-char p10, p6, field@3128
    nop

    move-result-wide p36

    const p174, -0x19137df9

    #Field index out of bounds: 63494
    #disallowed odex opcode
    #sget-object-volatile p43, field@63494
    nop

    if-gt v3, v2, :cond_3

    #Type index out of bounds: 45575
    #instance-of p9, v2, type@45575
    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    mul-long p191, p122, p154

    :try_start_2
    #disallowed odex opcode
    #iget-wide-quick p10, p3, field@0xe4fe
    nop

    move-result-object p148
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    #Type index out of bounds: 54680
    #instance-of p9, p8, type@54680
    nop

    :try_start_3
    sub-int/2addr p0, p0

    div-double/2addr p8, p8

    #Field index out of bounds: 39521
    #sput-boolean p169, field@39521
    nop

    #Method index out of bounds: 45490
    #invoke-direct/range {p12541 .. p12590}, method@45490
    nop

    ushr-long v2, p166, p45

    #disallowed odex opcode
    #iget-object-quick v3, v2, field@0x5879
    nop

    if-eqz p16, :cond_2

    monitor-enter p37

    move-result p109

    #disallowed odex opcode
    #iget-object-quick p3, v4, field@0xf3b2
    nop

    #disallowed odex opcode
    #invoke-virtual-quick/range {p46246 .. p46250}, vtable@57764
    nop

    #unknown opcode: 0xff
    nop

    #Type index out of bounds: 33582
    #new-array v3, p3, type@33582
    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p218, :cond_5

    :try_start_4
    #disallowed odex opcode
    #invoke-virtual-quick/range {p15470 .. p15723}, vtable@15988
    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    #Method index out of bounds: 57813
    #invoke-direct/range {p7072 .. p7181}, method@57813
    nop

    :catch_0
    #Field index out of bounds: 13495
    #sget-boolean p19, field@13495
    nop

    :try_start_5
    long-to-int p6, v2

    shr-int/lit8 p220, p108, -0x7d

    #disallowed odex opcode
    #invoke-virtual-quick/range {p49821 .. p49993}, vtable@32530
    nop

    aget-wide p116, p228, p21

    int-to-char v0, p6

    add-int/lit8 p131, p131, 0x5d

    aget-char p89, p23, p121

    if-le p9, v1, :cond_1

    throw p84

    mul-long/2addr p1, p9

    div-long p24, p125, p250

    #Type index out of bounds: 12083
    #const-class p60, type@12083
    nop

    #unknown opcode: 0x40
    nop

    return-void
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-gtz p83, :cond_6

    :try_start_6
    shr-int/lit8 p243, p109, -0x6c

    const/4 p6, -0x5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    div-double p30, p193, p9

    :catch_1
    #unknown opcode: 0x73
    nop

    :catch_2
    and-long p130, p146, p61

    :try_start_7
    int-to-long p8, p10

    or-long p187, p90, p13

    #disallowed odex opcode
    #invoke-super-quick/range {p472 .. p689}, vtable@65526
    nop

    aput p133, p19, p239

    div-int/2addr p8, p2

    #Method index out of bounds: 13905
    #invoke-direct/range {p35139 .. p35164}, method@13905
    nop

    if-gez p199, :cond_4

    #Field index out of bounds: 27601
    #iget-short p4, p3, field@27601
    nop

    or-long/2addr p8, p3

    rem-double/2addr p5, p2

    monitor-enter p97

    #Field index out of bounds: 38809
    #sget-wide p230, field@38809
    nop

    #Type index out of bounds: 46297
    #const-class p61, type@46297
    nop

    ushr-int/lit8 p46, v0, 0xf
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    rem-float/2addr p10, p9

    :try_start_8
    xor-int p53, p166, p64

    #Field index out of bounds: 6046
    #disallowed odex opcode
    #sput-object-volatile p245, field@6046
    nop
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    #Field index out of bounds: 31007
    #sget-object p167, field@31007
    nop

    :catchall_0
    aput-object p13, p37, p159

    add-float/2addr p2, p7

    mul-int/2addr p6, p5

    :try_start_9
    float-to-long p6, v3

    shl-long/2addr p0, p7

    add-int/lit8 p157, v2, 0x5f
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_4
    and-int/2addr p4, v3

    aput-byte p67, p114, p160

    :catch_5
    #Field index out of bounds: 50397
    #sput-wide p53, field@50397
    nop

    :catch_6
    sub-float/2addr p9, p0

    :catchall_1
    mul-double/2addr v1, v4

    const-wide/high16 p46, 0x3be3000000000000L    # 3.218725199566341E-20

    :catch_7
    double-to-long v1, p4

    :catch_8
    or-long p32, p5, p70
    :cond_2
    :cond_3
    :cond_4
    :cond_5
    :cond_6
.end method


# virtual methods
