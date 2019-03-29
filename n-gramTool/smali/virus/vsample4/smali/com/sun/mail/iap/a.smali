.class public Lcom/sun/mail/iap/a;
.super Ljava/lang/Object;
.source ".quitwait"


# instance fields
.field protected items:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    return-void
.end method

.method private astring([BLcom/sun/mail/iap/Protocol;)V
    .locals 12

    :cond_0
    :cond_1
    :cond_2
    mul-int/lit16 v9, p2, -0x136b

    add-int/lit8 p32, p158, -0x6

    div-float/2addr v5, v10

    move-object p3, v5

    shr-long p171, p0, p90

    if-ltz p28, :cond_4

    if-nez p13, :cond_3

    #Method index out of bounds: 58588
    #invoke-static {}, method@58588
    nop

    div-int/lit8 p133, p223, -0x10

    move-wide/from16 p237, p59771

    move-wide v3, v7

    shl-int/lit8 v2, p91, 0x31

    and-int/lit16 v3, v3, 0x69d0

    xor-int/lit8 p85, p9, 0x4c

    rem-int v10, p204, p134

    #unknown opcode: 0xc600
    nop

    and-int/lit16 v3, p1, -0x50f1

    #Field index out of bounds: 18781
    #sget-object p38, field@18781
    nop

    xor-int/2addr p0, p1

    and-int/2addr v0, p2

    #unknown opcode: 0x3e
    nop

    if-eq v5, v2, :cond_0

    #Method index out of bounds: 50457
    #invoke-interface {}, method@50457
    nop

    neg-int v11, v6

    #disallowed odex opcode
    #return-void-barrier
    nop

    #Field index out of bounds: 11582
    #iget-boolean v5, p3, field@11582
    nop

    move-result p174

    #Method index out of bounds: 60081
    #invoke-direct/range {p42446 .. p42670}, method@60081
    nop

    aput-object p108, p202, p76

    const-wide/high16 p32, 0x7fee000000000000L

    mul-int/lit8 p151, p61, 0x12

    #Field index out of bounds: 17435
    #sput-char p31, field@17435
    nop

    move-wide v5, v2

    rem-int/lit8 v10, p201, 0x4d

    aget-wide p166, p178, p137

    shr-int p242, v8, p58

    #unknown opcode: 0x73
    nop

    aput p207, p215, v11

    sub-long/2addr p3, v7

    #Type index out of bounds: 9285
    #instance-of v1, v4, type@9285
    nop

    ushr-long p110, p74, p62

    #unknown opcode: 0x3e
    nop

    sub-int/2addr v7, v10

    #Field index out of bounds: 54480
    #iget v6, v0, field@54480
    nop

    #Field index out of bounds: 11754
    #iput-char v8, v0, field@11754
    nop

    if-nez p133, :cond_2

    if-le v8, p0, :cond_1

    and-int/lit8 p22, p120, -0x76

    not-int v10, v9

    #Field index out of bounds: 29503
    #sget-object p214, field@29503
    nop

    #unknown opcode: 0xec
    nop

    cmpg-float p241, p46, p186

    #Field index out of bounds: 9516
    #iget-object v3, p0, field@9516
    nop

    ushr-long p17, p52, p112

    if-eqz p210, :cond_5

    move/from16 p161, p27412

    #unknown opcode: 0x4b00
    nop

    long-to-double v6, v11

    #Type index out of bounds: 31341
    #new-instance p24, type@31341
    nop

    #Field index out of bounds: 31955
    #sget-short p185, field@31955
    nop

    #Method index out of bounds: 37134
    #invoke-super {}, method@37134
    nop

    rem-int/lit8 p180, p37, -0x2d

    #Type index out of bounds: 17370
    #filled-new-array/range {p16363 .. p16597}, type@17370
    nop

    long-to-float v7, v10

    #Field index out of bounds: 5374
    #sput-boolean p221, field@5374
    nop

    #Method index out of bounds: 43522
    #invoke-super/range {p9532 .. p9669}, method@43522
    nop

    double-to-float v6, v0

    int-to-long p1, v8

    #Method index out of bounds: 47544
    #invoke-interface/range {p36693 .. p36749}, method@47544
    nop

    #invalid payload reference
    #packed-switch p139, :pswitch_data_0
    nop

    long-to-float v2, v1

    sub-long/2addr v0, v3
    :cond_3
    :cond_4
    :cond_5
    :pswitch_data_0
.end method

