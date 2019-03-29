.class public Lcom/phone/stop/b/c;
.super Landroid/database/ContentObserver;
.source " to close"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/phone/stop/b/a;)Landroid/content/Context;
    .locals 1

    const-wide/high16 p190, 0x5697000000000000L    # 1.3504119850949541E109

    #unknown opcode: 0x3e
    nop
.end method

.method private a()V
    .locals 6

    :cond_0
    aput-short p55, p181, p189

    #Method index out of bounds: 60536
    #disallowed odex opcode
    #invoke-object-init/range {p31553 .. p31699}, method@60536
    nop

    cmpg-float p186, p149, p5

    return-wide p160

    int-to-byte p8, v0

    float-to-double v4, v0

    #Field index out of bounds: 39308
    #disallowed odex opcode
    #iput-object-volatile p4, v1, field@39308
    nop

    and-int/2addr p7, p9

    sub-float p49, p224, p11

    aget-byte p35, p194, p222

    #Field index out of bounds: 51947
    #disallowed odex opcode
    #sget-volatile p47, field@51947
    nop

    #unknown opcode: 0x41
    nop

    if-eq v0, v0, :cond_0

    sub-long p37, p233, p5

    div-float p15, p158, p50

    move/16 p44163, p32096

    const-wide p221, -0x2102e146c7832ac8L    # -3.723483573742994E149

    neg-int p6, v5

    const-wide p14, -0x4c739cf8c9cd4cd5L    # -2.208145865781403E-60

    #Method index out of bounds: 57067
    #invoke-super/range {p61925 .. p62133}, method@57067
    nop

    rsub-int/lit8 p11, p75, -0x46

    #Type index out of bounds: 3186
    #filled-new-array/range {p61655 .. p61719}, type@3186
    nop

    #Type index out of bounds: 32211
    #new-instance p23, type@32211
    nop

    rsub-int v1, v4, 0x6f51

    double-to-float p7, p0

    move/from16 p42, p15180

    if-gt p1, v2, :cond_1

    div-long p146, p141, p37

    mul-double p177, p93, p135

