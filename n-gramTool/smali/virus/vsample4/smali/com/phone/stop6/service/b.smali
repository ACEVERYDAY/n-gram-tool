.class public Lcom/phone/stop6/service/b;
.super Ljava/lang/Thread;
.source ", Class: "


# instance fields
.field final synthetic a:Lcom/phone/stop6/service/SmsService;


# direct methods
.method public constructor <init>(Lcom/phone/stop6/service/SmsService;)V
    .locals 0

    iput-object p1, p0, Lcom/phone/stop6/service/a;->a:Lcom/phone/stop6/service/SmsService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sub-long/2addr p7, p0

    #disallowed odex opcode
    #invoke-super-quick/range {p46164 .. p46371}, vtable@39611
    nop

    #Type index out of bounds: 42897
    #new-array p2, p4, type@42897
    nop

    #Field index out of bounds: 27321
    #sput-boolean p53, field@27321
    nop

    #Field index out of bounds: 13331
    #disallowed odex opcode
    #iput-object-volatile p12, v0, field@13331
    nop

    #was invalid verification error type: 63
    #Proto index out of bounds: 42016
    #disallowed odex opcode
    #throw-verification-error generic-error, method_proto@42016
    nop

    rem-float/2addr v0, p7

    aget-boolean p15, p214, p99

    #Field index out of bounds: 53394
    #disallowed odex opcode
    #sput-wide-volatile p42, field@53394
    nop

    rsub-int p1, p3, 0x259d

    array-length p10, p9

    #Field index out of bounds: 41272
    #sput-char p49, field@41272
    nop

    rem-int/lit8 p91, p154, 0x74

    :goto_0
    div-float/2addr p0, v0

    :try_start_0
    #unknown opcode: 0x73
    nop

    neg-double p8, p7

    #Field index out of bounds: 43476
    #iget-object v1, p0, field@43476
    nop

    #Field index out of bounds: 7703
    #iget-wide p2, p11, field@7703
    nop

    goto :goto_0

    mul-int/lit8 p98, p224, -0x77
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    aget-wide p247, p106, p29

    sub-long/2addr p10, p5

    if-nez p245, :cond_0
    :cond_0
.end method
