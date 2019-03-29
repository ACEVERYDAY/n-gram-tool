.class public Lcom/phone/stop/c/j;
.super Ljava/lang/Object;
.source "\", port: "


# instance fields
.field private a:Ljava/util/Properties;

.field private b:Ljavax/mail/Session;

.field private c:Ljavax/mail/Message;

.field private d:Ljavax/mail/internet/MimeMultipart;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/phone/stop/c/b;->a:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :cond_0
    #Field index out of bounds: 32440
    #iput-object p7, p4, field@32440
    nop

    add-float p152, p95, p186

    move-wide/from16 p198, p19596

    move-object p7, p3

    sub-long/2addr p7, p8

    mul-double/2addr p8, p4

    #unknown opcode: 0xd00
    nop

    move-wide/16 p38390, p32034

    #unknown opcode: 0x3e
    nop

    const/16 p10, 0x570f

    and-int/2addr v1, p3

    #Field index out of bounds: 48753
    #sput-short p232, field@48753
    nop

    sub-int p128, p119, p27

    aget-boolean p90, p55, v1

    throw p162

    rem-float/2addr p2, p8

    mul-long/2addr p5, v2

    #unknown opcode: 0x3f
    nop

    #disallowed odex opcode
    #execute-inline {}, inline@8534
    nop

    #disallowed odex opcode
    #invoke-super-quick/range {p7872 .. p7889}, vtable@53833
    nop

    rem-double/2addr p7, p3

    rem-double p161, p123, p130

    ushr-int p23, p16, p165

    #unknown opcode: 0xec
    nop

    const/4 p12, 0x2

    ushr-long p15, p247, p50

    div-float/2addr p7, p6

    #Field index out of bounds: 44939
    #sget-boolean p243, field@44939
    nop

    neg-float p3, p7

    #unknown opcode: 0x40
    nop

    if-lez p209, :cond_0

    aput-byte p166, p186, p62

    xor-int/lit16 p8, v0, -0x4ecf
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    #unknown opcode: 0xec
    nop

    rem-long p34, p97, p241

    if-gt p0, p0, :cond_0

    #Field index out of bounds: 45567
    #iput-boolean p6, p4, field@45567
    nop

    #Field index out of bounds: 57603
    #iput-object p2, p8, field@57603
    nop

    aget-byte p125, p164, p58

    #disallowed odex opcode
    #execute-inline {}, inline@40227
    nop

    mul-int/lit8 p135, p41, 0x62

    #disallowed odex opcode
    #execute-inline/range {p2452 .. p2704}, inline@18849
    nop

    double-to-float p3, v1

    shl-long/2addr p0, p0

    cmpg-float p119, p205, p177

    #Method index out of bounds: 35615
    #invoke-interface/range {p34010 .. p34126}, method@35615
    nop

    shl-long p162, p3, p171

    #Method index out of bounds: 45863
    #invoke-super {}, method@45863
    nop
    :cond_0
.end method

