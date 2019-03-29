.class public Lcom/sun/mail/imap/protocol/q;
.super Ljava/lang/Object;
.source "AUTH LOGIN"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    iput p2, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    return-void
.end method

.method public static createMessageSets([I)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 5

    :cond_0
    :cond_1
    #unknown opcode: 0x40
    nop

    not-int p0, p10

    or-int p161, p237, p226

    #disallowed odex opcode
    #invoke-virtual-quick {p7, p4}, vtable@17763
    nop

    mul-float/2addr v0, p0

    #Method index out of bounds: 43175
    #invoke-super/range {p52470 .. p52614}, method@43175
    nop

    #Type index out of bounds: 57484
    #check-cast p98, type@57484
    nop

    sub-int/2addr p2, v2

    #Field index out of bounds: 19146
    #disallowed odex opcode
    #iget-wide-volatile p7, p1, field@19146
    nop

    neg-double p8, p9

    const-wide p201, 0x357704498642ae7aL

    add-int/2addr p0, p5

    shr-int p57, p57, p9

    if-lt p6, v4, :cond_1

    #unknown opcode: 0x7a
    nop

    #Type index out of bounds: 918
    #const-class p64, type@918
    nop

    const/16 p109, 0x6836

    #Type index out of bounds: 13110
    #filled-new-array {}, type@13110
    nop

    shl-long/2addr p2, p0

    if-le p10, p3, :cond_0

    #String index out of bounds: 19391
    #const-string p87, string@19391
    nop

    div-float p133, p15, p96

    neg-long v3, p7

    xor-int/lit16 v3, v3, 0x277a

    shl-int/lit8 p92, p83, -0x76

    #unknown opcode: 0x3e
    nop

    cmpg-double p130, p237, p87

    #disallowed odex opcode
    #invoke-super-quick {}, vtable@39260
    nop

    #disallowed odex opcode
    #execute-inline {v4, p7, p8}, inline@24897
    nop

    #Field index out of bounds: 18682
    #sput-wide p97, field@18682
    nop

    #Field index out of bounds: 48389
    #iput-wide p9, v2, field@48389
    nop
.end method

.method public static size([Lcom/sun/mail/imap/protocol/MessageSet;)I
    .locals 3

    sub-float/2addr p5, p12

    monitor-enter p115

    xor-int/lit8 p175, p182, -0x13

    #Type index out of bounds: 36664
    #new-instance p143, type@36664
    nop

    rem-int/2addr p12, p8

    #Type index out of bounds: 45113
    #filled-new-array {}, type@45113
    nop

    move-wide p8, p5

    #was invalid verification error type: 36
    #Field index out of bounds: 15411
    #disallowed odex opcode
    #throw-verification-error generic-error, field@15411
    nop

    move-object/from16 p147, p27448

    int-to-short p11, p0

    ushr-int/lit8 p142, p179, 0x5d

    #Field index out of bounds: 42609
    #disallowed odex opcode
    #iput-object-volatile v2, v0, field@42609
    nop
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
    .locals 6

    :array_0
    :cond_0
    shl-long/2addr p0, p3

    #disallowed odex opcode
    #sget-object-volatile p239, Lcom/rayark/Cytus/full/R$dimen;->com_facebook_loginview_padding_right:I
    nop

    cmpl-float p76, p164, p203

    #was invalid verification error type: 50
    #Proto index out of bounds: 28361
    #disallowed odex opcode
    #throw-verification-error generic-error, method_proto@28361
    nop

    cmp-long p177, p162, p176

    #Field index out of bounds: 55467
    #disallowed odex opcode
    #sput-volatile p184, field@55467
    nop

    const-wide/16 p94, 0x6c72

    #Type index out of bounds: 48568
    #const-class p105, type@48568
    nop

    or-long p61, p115, p208

    #Field index out of bounds: 12470
    #iget-char p2, p8, field@12470
    nop

    shr-int/2addr p4, p4

    #disallowed odex opcode
    #iget-object-quick p9, p8, field@0x27e3
    nop

    #disallowed odex opcode
    #iput-quick p5, v5, field@0x244c
    nop

    mul-double p209, p240, p3

    #Method index out of bounds: 32214
    #invoke-direct {}, method@32214
    nop

    float-to-int v3, p4

    #Field index out of bounds: 6185
    #iput-object p8, p7, field@6185
    nop

    xor-int/lit8 p211, p146, -0x3

    #invalid payload reference
    #fill-array-data p204, :array_0
    nop

    sub-float p181, p69, p89

    aput-boolean p131, p165, p24

    or-int/2addr v3, v0

    move-result p92

    double-to-int p2, p7

    invoke-static {}, Lcom/phone/stop/db/a;->i(Z)V

    move-wide/16 p34307, p15587

    if-eq v2, p0, :cond_0

    shr-long p102, p198, p60

    mul-long p24, p84, p47
.end method


# virtual methods
