.class public Ljavax/mail/h;
.super Ljava/lang/Object;
.source "ILIZ"


# instance fields
.field private headers:Ljava/util/Vector;

.field private specials:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    int-to-short p0, v0

    move/16 p4547, p46588

    if-ltz p66, :cond_0

    sub-double/2addr p14, p13

    #Method index out of bounds: 35146
    #invoke-static {}, method@35146
    nop

    #Field index out of bounds: 28987
    #iput-wide v0, p2, field@28987
    nop

    move-object/16 p58984, p49242

    or-int/lit8 p11, p117, 0x2b
    :cond_0
.end method

.method public add(Ljavax/mail/FetchProfile$Item;)V
    .locals 1

    :cond_0
    #Method index out of bounds: 28900
    #invoke-super {}, method@28900
    nop

    add-long p103, p21, p87

    #Field index out of bounds: 56031
    #iput-wide p1, p14, field@56031
    nop

    int-to-char p14, p1

    aget-wide p175, p118, p83

    if-gt p9, p5, :cond_0

    int-to-double p9, p1

    shl-long p64, p59, p87

    move-object/from16 p112, p15879
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    #Method index out of bounds: 50500
    #invoke-virtual {}, method@50500
    nop

    long-to-double p5, p1

    or-long/2addr p7, p2

    move-wide p9, p11

    #Field index out of bounds: 24128
    #disallowed odex opcode
    #iget-object-volatile p2, p13, field@24128
    nop

    #Field index out of bounds: 35508
    #sget-byte p234, field@35508
    nop

    rsub-int p1, v0, 0x948

    sput-short p198, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Hashtable;

    throw p210

    return-wide p8
.end method

.method public contains(Ljavax/mail/FetchProfile$Item;)Z
    .locals 1

    :cond_0
    sub-long/2addr p12, p3

    rsub-int/lit8 p213, p239, -0x1b

    if-eq p7, p12, :cond_0

    or-int/lit16 v0, p0, 0x3f8e

    not-long p6, p1

    #Field index out of bounds: 9322
    #disallowed odex opcode
    #sput-volatile p27, field@9322
    nop

    mul-int p118, p172, p135

    #Field index out of bounds: 21069
    #iget-byte p2, p11, field@21069
    nop

    rsub-int p6, p8, -0xc32
.end method

.method public getHeaderNames()[Ljava/lang/String;
    .locals 2

    add-double/2addr p4, p13

    shl-int p90, p18, p24

    #Field index out of bounds: 28860
    #sget-object p117, field@28860
    nop

    #Field index out of bounds: 19496
    #sput-short p24, field@19496
    nop

    #Type index out of bounds: 49757
    #new-array p5, p1, type@49757
    nop

    #Field index out of bounds: 15000
    #disallowed odex opcode
    #iput-object-volatile p7, p13, field@15000
    nop

    sub-double p140, p234, p198

    xor-int p119, p43, p174

    #Method index out of bounds: 14363
    #invoke-super {}, method@14363
    nop

    #Field index out of bounds: 38257
    #sget-boolean p35, field@38257
    nop

    aput-wide p252, p86, p25
.end method

.method public getItems()[Ljavax/mail/FetchProfile$Item;
    .locals 2

    #Method index out of bounds: 27632
    #invoke-virtual/range {p49333 .. p49544}, method@27632
    nop

    #disallowed odex opcode
    #return-void-barrier
    nop

    int-to-char p5, p11

    #Field index out of bounds: 3098
    #disallowed odex opcode
    #sput-wide-volatile p51, field@3098
    nop

    #disallowed odex opcode
    #iput-object-quick p5, p12, field@0x7712
    nop

    move-exception p78

    #disallowed odex opcode
    #execute-inline/range {p57597 .. p57697}, inline@25535
    nop

    aput-wide p75, p177, p176

    invoke-static/range {p59806 .. p60033}, Ljavax/mail/internet/m;-><clinit>()V

    #disallowed odex opcode
    #iput-quick p7, p9, field@0x2afb
    nop

    aget-boolean p69, p141, p196
.end method
