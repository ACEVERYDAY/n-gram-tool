.class public Lcom/sun/mail/smtp/e;
.super Lcom/sun/mail/util/CRLFOutputStream;
.source "BODYSTRUCTURE parse error: bad ``lines\'\' element"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public ensureAtBOL()V
    .locals 1

    shr-long/2addr p2, p5

    mul-int p143, p193, p151

    #Field index out of bounds: 62894
    #sget-wide p116, field@62894
    nop

    #Type index out of bounds: 19270
    #check-cast p34, type@19270
    nop

    shr-long/2addr p10, p0
.end method

.method public flush()V
    .locals 0

    #unknown opcode: 0x73
    nop
.end method

