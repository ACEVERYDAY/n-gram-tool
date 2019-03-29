.class Lcom/sun/mail/pop3/f;
.super Ljava/lang/Object;
.source "Attempt to resolve unknown RecipientType: "


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final POP3_PORT:I = 0x6e

.field private static digits:[C


# instance fields
.field private apopChallenge:Ljava/lang/String;

.field private debug:Z

.field private input:Ljava/io/DataInputStream;

.field private out:Ljava/io/PrintStream;

.field private output:Ljava/io/PrintWriter;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/pop3/Protocol;->digits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    iput-object p4, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apop.enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-ne p2, v6, :cond_1

    const/16 p2, 0x6e

    :cond_1
    if-eqz p3, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG POP3: connecting to host \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSSL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-static {p1, p2, p5, p6, p7}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const-string v5, "iso-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v2, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connect failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    throw v0

    :cond_3
    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v0, v6, :cond_4

    if-eq v2, v6, :cond_4

    iget-object v1, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    :cond_4
    if-eqz p3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG POP3: APOP challenge: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private getDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    aput-byte p173, p184, p126

    const/high16 p238, 0x1b1f0000

    mul-int/lit16 p11, p11, -0x16ce

    add-int/lit16 p4, p5, -0x2445

    add-float p60, p191, p56

    xor-int p126, p81, p11

    #Method index out of bounds: 53750
    #invoke-static/range {p42718 .. p42862}, method@53750
    nop

    div-float/2addr p1, p6

    div-double/2addr p1, p11

    xor-long/2addr v2, p4

    #Field index out of bounds: 27508
    #disallowed odex opcode
    #sput-object-volatile p86, field@27508
    nop

    :try_start_0
    mul-double p226, p94, p232

    rem-int p232, p95, p91

    #disallowed odex opcode
    #invoke-virtual-quick/range {p54570 .. p54763}, vtable@9636
    nop

    #disallowed odex opcode
    #iput-object-quick v2, p8, field@0xa154
    nop

    #Field index out of bounds: 41406
    #iget-boolean p11, p2, field@41406
    nop

    div-double/2addr p4, p2

    rem-long/2addr p5, p4

    #Field index out of bounds: 54341
    #iget-boolean v2, p8, field@54341
    nop
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    and-int p178, p225, p22

    shr-int/2addr v2, p2

    rem-double/2addr p5, p10

    #Type index out of bounds: 1734
    #const-class p35, type@1734
    nop

    :catch_0
    aput-wide p22, p144, p78

    :catch_1
    #Type index out of bounds: 2034
    #new-instance p197, type@2034
    nop
.end method

.method private multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
    .locals 5

    :sswitch_data_0
    :cond_0
    #Field index out of bounds: 16896
    #sput-char p48, field@16896
    nop

    #Method index out of bounds: 48136
    #invoke-direct/range {p11578 .. p11578}, method@48136
    nop

    shl-long p41, p82, p110

    #Type index out of bounds: 6396
    #check-cast p27, type@6396
    nop

    #disallowed odex opcode
    #iput-wide-quick p7, v2, field@0xd137
    nop

    shr-long p108, p61, p26

    #invalid payload reference
    #sparse-switch p61, :sswitch_data_0
    nop

    rem-long p67, p231, p65

    #disallowed odex opcode
    #execute-inline {p9, p0}, inline@55977
    nop

    if-eqz p66, :cond_0

    #Field index out of bounds: 15220
    #iget-byte v4, v3, field@15220
    nop

    sub-float p178, p65, p207

    aput-short p156, p164, p101

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@28685
    nop

    #disallowed odex opcode
    #invoke-super-quick/range {p10922 .. p10996}, vtable@36471
    nop

    #Field index out of bounds: 39772
    #iget-wide p5, p8, field@39772
    nop

    #Field index out of bounds: 44245
    #disallowed odex opcode
    #iget-volatile v1, v2, field@44245
    nop

    add-int p76, p17, p39

    add-int/2addr p8, p2

    #Field index out of bounds: 13050
    #iput-boolean p1, p3, field@13050
    nop

    #Field index out of bounds: 4870
    #sput-wide p188, field@4870
    nop

    int-to-char p10, v3

    add-long p21, p62, p149

    add-double p125, p4, p40

    aput-byte p197, p180, p175

    #Field index out of bounds: 5251
    #iput-object v1, p2, field@5251
    nop

    invoke-virtual/range {p19029 .. p19101}, Ljavax/mail/Service;->addConnectionListener(Ljavax/mail/event/ConnectionListener;)V

    #unknown opcode: 0x40
    nop

    and-int p83, p206, p71

    #Field index out of bounds: 37340
    #sget-char p173, field@37340
    nop

    double-to-long p6, p9

    add-float/2addr p10, v1

    rem-double/2addr v1, p5

    #Field index out of bounds: 44937
    #disallowed odex opcode
    #sput-object-volatile p190, field@44937
    nop

    shr-int/2addr p0, p3

    shl-int/lit8 p153, p83, 0x5a

    and-long/2addr p2, p0

    add-int p142, p129, p218

    double-to-int v1, v1

    move-result-object p32

    rem-long p80, p29, p71

    aput-wide p222, p4, p124

    return-void

    aput-short p150, p151, p177

    #Field index out of bounds: 42237
    #sget-short p41, field@42237
    nop

    aput-char p135, p172, p129

    rem-long p242, p200, p186

    or-int p226, p222, p155

    cmpl-float p1, p30, p111

    #disallowed odex opcode
    #invoke-super-quick/range {p37817 .. p37866}, vtable@51044
    nop

    add-int/lit8 p203, p161, -0x6b

    #Field index out of bounds: 33209
    #disallowed odex opcode
    #sput-wide-volatile p194, field@33209
    nop

    #Field index out of bounds: 51939
    #disallowed odex opcode
    #iput-wide-volatile p9, p2, field@51939
    nop

    move p4, p0

    #Field index out of bounds: 65198
    #sput-char p187, field@65198
    nop

    sub-int/2addr v2, v1

    const-wide/high16 p42, 0x3410000000000000L    # 6.372367644529809E-58
.end method

.method private simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .locals 4

    :sswitch_data_0
    :cond_0
    :cond_1
    #Method index out of bounds: 61870
    #invoke-virtual {v0, p0, p1, v0, p0}, method@61870
    nop

    aget-short p181, p10, p133

    const-wide p40, -0x69c9ec4750b7c61fL

    move v3, p0

    add-float p117, p217, v3

    #Field index out of bounds: 60141
    #disallowed odex opcode
    #iget-wide-volatile p1, v2, field@60141
    nop

    neg-long p5, p8

    #unknown opcode: 0x43
    nop

    #disallowed odex opcode
    #iget-wide-quick p9, p2, field@0xdad7
    nop

    div-double p171, p65, p46

    neg-long v0, p6

    if-lt p1, p0, :cond_2

    add-int p68, p115, p101

    aput-object p224, p251, p109

    const/16 v0, 0x2ec6

    shl-int p19, p180, p91

    #Field index out of bounds: 25657
    #sput-byte p160, field@25657
    nop

    move-wide/16 p8658, p19216

    aget-wide p235, p113, p27

    div-int/2addr p7, v1

    shr-int/lit8 p238, p30, -0x60

    throw v2

    #disallowed odex opcode
    #execute-inline/range {p38582 .. p38727}, inline@16584
    nop

    #Method index out of bounds: 14691
    #invoke-direct {p6}, method@14691
    nop

    aput p25, p15, p123

    #Field index out of bounds: 25023
    #iget-byte p2, p3, field@25023
    nop

    move-exception p187

    xor-int/2addr p6, p5

    add-int/lit8 p226, p207, -0x34

    #unknown opcode: 0x73
    nop

    #unknown opcode: 0x43
    nop

    #Field index out of bounds: 32341
    #iput v1, p7, field@32341
    nop

    #Field index out of bounds: 29416
    #sget-byte p200, field@29416
    nop

    div-int/2addr p4, v3

    #Field index out of bounds: 12949
    #iput-byte p8, p8, field@12949
    nop

    return-object p76

    sub-int p203, p241, p205

    mul-int/2addr p9, p4

    #Field index out of bounds: 22576
    #sput-boolean p187, field@22576
    nop

    if-ge v0, p9, :cond_3

    #Method index out of bounds: 9671
    #disallowed odex opcode
    #invoke-object-init/range {p2408 .. p2490}, method@9671
    nop

    #Field index out of bounds: 60626
    #sput-boolean p243, field@60626
    nop

    const p240, 0x3602be0f

    div-float/2addr p10, p9

    or-long p156, p214, p120

    #Field index out of bounds: 55195
    #sget-char p132, field@55195
    nop

    #Field index out of bounds: 59528
    #iget-boolean v1, p7, field@59528
    nop

    #Method index out of bounds: 9884
    #invoke-static/range {p1792 .. p1956}, method@9884
    nop

    #Field index out of bounds: 10475
    #iget-boolean p2, p10, field@10475
    nop

    const-wide/high16 p52, 0x795f000000000000L    # 4.2931664886708627E276

    neg-int p7, p10

    #Method index out of bounds: 59805
    #disallowed odex opcode
    #invoke-object-init/range {p59480 .. p59687}, method@59805
    nop

    float-to-long p1, v0

    move-object/from16 p248, p3798

    #disallowed odex opcode
    #return-void-barrier
    nop

    rem-int/lit16 p6, p0, 0x1c5f

    not-int p6, v3

    #Field index out of bounds: 55739
    #iput-char p1, p5, field@55739
    nop

    if-ge p11, p1, :cond_1

    rsub-int/lit8 p211, p221, 0x2f

    move-exception p27

    #Method index out of bounds: 9981
    #invoke-super {}, method@9981
    nop

    int-to-short p11, p3

    div-int/lit16 p4, p0, -0x25a5

    aget-short p240, p118, p74

    #invalid payload reference
    #sparse-switch p161, :sswitch_data_0
    nop

    #Method index out of bounds: 11969
    #invoke-interface/range {p35977 .. p36144}, method@11969
    nop

    cmpl-float p0, p207, p169

    aget-wide p237, p103, p91

    mul-long p161, p8, p199

    #Field index out of bounds: 18778
    #disallowed odex opcode
    #iput-volatile p0, p9, field@18778
    nop

    if-gtz p7, :cond_0

    move-object/from16 p55, p60690

    #Field index out of bounds: 17887
    #iget-wide p9, p2, field@17887
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {}, vtable@802
    nop

    float-to-int p2, p5

    aget-wide p181, p165, p225

    move-object p2, p9

    #Field index out of bounds: 27510
    #disallowed odex opcode
    #iget-object-volatile v2, p2, field@27510
    nop

    div-int/lit16 p9, p5, -0x7e60

    #Method index out of bounds: 18620
    #disallowed odex opcode
    #invoke-object-init/range {p31169 .. p31176}, method@18620
    nop

    aput-boolean p27, p77, p205

    float-to-int p10, v3

    #unknown opcode: 0x7a
    nop

    const/4 p8, -0x3

    int-to-short p0, v2

    #Field index out of bounds: 22305
    #sget-object p180, field@22305
    nop

    #Field index out of bounds: 13546
    #iput-char p0, v1, field@13546
    nop

    rem-float/2addr v0, p10

    #Field index out of bounds: 19478
    #sput p171, field@19478
    nop

    #Field index out of bounds: 45124
    #disallowed odex opcode
    #iput-wide-volatile p7, p7, field@45124
    nop

    div-int/lit16 v0, p2, 0x6bfa

    int-to-double v0, p7

    or-int p124, p185, p123

    move-wide/from16 p201, p2209

    move-object v1, v2

    div-int/lit16 p6, p6, 0x798e

    and-int/lit8 p10, p135, 0x68

    mul-float/2addr p8, p7
    :cond_2
    :cond_3
.end method

