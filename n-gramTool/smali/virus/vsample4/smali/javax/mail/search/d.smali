.class public final Ljavax/mail/search/d;
.super Ljavax/mail/search/StringTerm;
.source "LISTRIGHTS"


# static fields
.field private static final serialVersionUID:J = -0x43d8ba911c34ab19L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private matchPart(Ljavax/mail/Part;)Z
    .locals 5

    :cond_0
    #Field index out of bounds: 21480
    #sput p134, field@21480
    nop

    :try_start_0
    aget-short p26, p0, p46

    #Field index out of bounds: 26477
    #iput-wide p4, p1, field@26477
    nop

    sub-long p130, p49, v0

    monitor-enter p15

    #disallowed odex opcode
    #invoke-super-quick/range {p4767 .. p4784}, vtable@43573
    nop

    and-long/2addr p4, p5

    #Field index out of bounds: 13187
    #disallowed odex opcode
    #sget-object-volatile v2, field@13187
    nop

    shr-int/2addr p3, v1

    #invalid payload reference
    #packed-switch p209, :pswitch_data_0
    nop

    #Field index out of bounds: 49135
    #sput-byte p48, field@49135
    nop

    move/16 p10830, p28458

    aget-boolean p58, p104, p119

    const-wide/32 p220, -0x24a3167a

    xor-int/lit16 p6, p6, 0x482d

    if-lez p215, :cond_0

    shl-long/2addr v1, p10

    rem-double/2addr p4, p7

    add-float/2addr p0, v4

    #disallowed odex opcode
    #invoke-virtual-quick/range {p22058 .. p22179}, vtable@34671
    nop

    if-ltz p207, :cond_1

    neg-double v1, p6

    sub-double/2addr p7, p10

    #String index out of bounds: 50392
    #const-string p17, string@50392
    nop

    #Field index out of bounds: 3097
    #disallowed odex opcode
    #sget-volatile p235, field@3097
    nop

    and-int v2, p241, p101

    #Field index out of bounds: 59134
    #disallowed odex opcode
    #iput-wide-volatile p9, p2, field@59134
    nop

    #Field index out of bounds: 18655
    #sput-char p122, field@18655
    nop

    #unknown opcode: 0xff
    nop

    aput-boolean p3, p236, p81

    aget p90, p25, p230

    #Field index out of bounds: 36931
    #sput-boolean p158, field@36931
    nop

    rem-double p93, p180, p233

    mul-long p46, p170, p32

    or-int/lit16 p4, v3, 0x62ce

    #unknown opcode: 0xff
    nop

    #Field index out of bounds: 15633
    #disallowed odex opcode
    #iput-volatile p10, p3, field@15633
    nop

    int-to-float p3, v1

    cmp-long p72, p14, p179

    #Method index out of bounds: 26665
    #invoke-direct/range {p6617 .. p6783}, method@26665
    nop

    mul-double/2addr p7, p0

    #Field index out of bounds: 25828
    #iput p5, p0, field@25828
    nop

    sub-float p154, p62, p103
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p132

    :catch_0
    and-int/lit8 p99, p136, 0xd
    :cond_1
    :pswitch_data_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    or-long/2addr p13, p1

    add-int/2addr p6, p2

    #Field index out of bounds: 64460
    #iget-wide p9, p14, field@64460
    nop

    #Method index out of bounds: 64057
    #invoke-super/range {p14870 .. p15083}, method@64057
    nop

    #Field index out of bounds: 49458
    #disallowed odex opcode
    #iput-object-volatile p13, p1, field@49458
    nop

    #Type index out of bounds: 33578
    #check-cast p57, type@33578
    nop
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 1

    move-result-object p105

    rsub-int p10, p5, 0x41ef

    ushr-int p17, p90, p15
.end method
