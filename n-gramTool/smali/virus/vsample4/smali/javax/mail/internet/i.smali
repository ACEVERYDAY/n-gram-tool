.class Ljavax/mail/internet/i;
.super Ljava/lang/Object;
.source "ISO-8859-2"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private e:Ljava/util/Iterator;

.field private match:Z

.field private names:[Ljava/lang/String;

.field private next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

.field private want_line:Z


# direct methods
.method constructor <init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;

    iput-object p2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;

    iput-boolean p3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z

    iput-boolean p4, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->want_line:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    return-void
.end method

.method private nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;
    .locals 5

    :cond_0
    int-to-char p1, p10

    add-float/2addr v2, p9

    if-eqz p3, :cond_0

    mul-long/2addr p3, p0

    mul-double/2addr p4, p8

    #Field index out of bounds: 41549
    #sget-object p95, field@41549
    nop

    int-to-float v3, p10

    mul-long p145, p43, p38

    const/high16 p169, -0x47730000

    #Field index out of bounds: 61854
    #disallowed odex opcode
    #sput-wide-volatile p180, field@61854
    nop

    ushr-long/2addr p8, p3

    div-float/2addr v0, p0

    and-int/lit16 v2, v2, 0x1ed0

    #Field index out of bounds: 49375
    #sget-object p121, field@49375
    nop

    #Field index out of bounds: 65476
    #sput-boolean p78, field@65476
    nop

    #Method index out of bounds: 46591
    #invoke-direct {}, method@46591
    nop

    goto :goto_0

    div-double p236, p15, p8

    mul-float/2addr p3, p6

    shl-long/2addr v3, v4

    div-int/lit16 p1, v0, -0x5a34

    #Method index out of bounds: 11971
    #invoke-static/range {p3336 .. p3428}, method@11971
    nop

    if-ltz p84, :cond_1

    #disallowed odex opcode
    #iget-quick p5, v4, field@0x782b
    nop

    shl-int/2addr p2, p8

    #Field index out of bounds: 35025
    #sget-char p244, field@35025
    nop

    if-le v3, p6, :cond_2

    const-wide p107, 0x5197c0f3f525c037L    # 1.1536404442696348E85

    sub-double p120, p130, p81

    or-int/lit16 p4, p7, 0xb0c

    rem-long/2addr v4, v4

    #unknown opcode: 0x79
    nop

    cmpg-float p3, v1, p143

    cmp-long p3, p240, p223

    #Field index out of bounds: 36206
    #sput-wide p201, field@36206
    nop

    div-int p153, p213, p207

    aput-char p66, p39, p4
    :goto_0
    :cond_1
    :cond_2
.end method


# virtual methods
