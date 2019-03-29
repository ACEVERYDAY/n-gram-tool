.class Ljavax/mail/internet/b;
.super Ljava/io/OutputStream;
.source "IOException getting ReturnedMessage"


# instance fields
.field private ascii:I

.field private badEOL:Z

.field private breakOnNonAscii:Z

.field private checkEOL:Z

.field private lastb:I

.field private linelen:I

.field private longLine:Z

.field private non_ascii:I

.field private ret:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ascii:I

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->longLine:Z

    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->badEOL:Z

    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->checkEOL:Z

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->lastb:I

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ret:I

    iput-boolean p1, p0, Ljavax/mail/internet/AsciiOutputStream;->breakOnNonAscii:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->checkEOL:Z

    return-void
.end method

.method private final check(I)V
    .locals 5

    :goto_0
    :cond_0
    :cond_1
    :cond_2
    xor-int/2addr p8, p6

    #Field index out of bounds: 64339
    #disallowed odex opcode
    #sget-object-volatile p139, field@64339
    nop

    float-to-long v2, p5

    add-long/2addr p2, v1

    move-result-object p237

    #Field index out of bounds: 42461
    #sput-boolean p181, field@42461
    nop

    cmp-long p69, p245, p241

    rem-int/lit16 p7, p3, 0x34f4

    #Field index out of bounds: 45835
    #sget p186, field@45835
    nop

    if-gez p112, :cond_1

    div-long p191, p19, p87

    move-exception p146

    aget-wide p249, p197, p153

    neg-long p2, p8

    #Field index out of bounds: 19445
    #sput-char p118, field@19445
    nop

    double-to-long v3, v0

    long-to-double p6, p1

    move-result p46

    shl-int p139, p147, p194

    or-long/2addr p5, v4

    aput-object p5, p189, p113

    sub-int/2addr p4, p4

    if-le p1, v3, :cond_3

    xor-int p106, p0, p96

    #Field index out of bounds: 8000
    #iput-byte v0, p7, field@8000
    nop

    #disallowed odex opcode
    #iput-quick p1, v2, field@0x8d53
    nop

    #Method index out of bounds: 14611
    #invoke-virtual/range {p9375 .. p9416}, method@14611
    nop

    mul-float/2addr v1, p0

    if-le p7, p9, :cond_0

    div-int/lit8 p178, v3, 0x5

    or-int p91, p124, p196

    #disallowed odex opcode
    #execute-inline {}, inline@31338
    nop

    move-result p29

    move-exception p211

    #unknown opcode: 0x43
    nop

    #Field index out of bounds: 61190
    #disallowed odex opcode
    #iput-volatile p7, p5, field@61190
    nop

    cmp-long p11, p177, p185

    rem-long/2addr v0, p8

    if-eqz v4, :cond_4

    sub-double/2addr p8, p10

    shr-long p153, p171, p105

    #unknown opcode: 0xec
    nop

    move-object p7, v2

    and-int/lit8 p66, p94, -0x5c

    goto/32 :goto_0

    add-long/2addr v2, p4

    #was invalid verification error type: 57
    #Type index out of bounds: 27225
    #disallowed odex opcode
    #throw-verification-error generic-error, type@27225
    nop

    rsub-int p4, v4, 0x46bf

    if-gez p225, :cond_2
    :cond_3
    :cond_4
.end method


# virtual methods
