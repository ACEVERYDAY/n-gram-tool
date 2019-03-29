.class public Lcom/sun/mail/smtp/d;
.super Ljavax/mail/internet/MimeMessage;
.source "BODYSTRUCTURE parse error: "


# static fields
.field public static final NOTIFY_DELAY:I = 0x4

.field public static final NOTIFY_FAILURE:I = 0x2

.field public static final NOTIFY_NEVER:I = -0x1

.field public static final NOTIFY_SUCCESS:I = 0x1

.field public static final RETURN_FULL:I = 0x1

.field public static final RETURN_HDRS:I = 0x2

.field private static final returnOptionString:[Ljava/lang/String;


# instance fields
.field private allow8bitMIME:Z

.field private envelopeFrom:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private notifyOptions:I

.field private returnOption:I

.field private sendPartial:Z

.field private submitter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "FULL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HDRS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/mail/smtp/SMTPMessage;->returnOptionString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/internet/MimeMessage;)V

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAllow8bitMIME()Z
    .locals 1

    move-exception p241

    #Field index out of bounds: 21915
    #iget-byte p13, p13, field@21915
    nop
.end method

.method getDSNNotify()Ljava/lang/String;
    .locals 3

    :goto_0
    if-eqz p173, :cond_1

    and-int/lit16 p5, p2, -0xe79

    #Type index out of bounds: 32071
    #filled-new-array {}, type@32071
    nop

    #unknown opcode: 0xff
    nop

    rem-int/lit8 p233, p130, 0x4

    #Field index out of bounds: 52557
    #sput-object p156, field@52557
    nop

    #Field index out of bounds: 57238
    #sget-object p130, field@57238
    nop

    #Method index out of bounds: 62409
    #invoke-virtual/range {p40923 .. p40967}, method@62409
    nop

    aget-char p234, p187, p3

    #unknown opcode: 0x43
    nop

    div-double/2addr p3, p6

    rem-long p241, p180, p208

    #Field index out of bounds: 25777
    #disallowed odex opcode
    #iget-volatile v2, v1, field@25777
    nop

    double-to-long p9, p3

    #unknown opcode: 0x40
    nop

    long-to-float p9, p3

    #unknown opcode: 0xec
    nop

    div-float/2addr p10, p0

    double-to-long p12, p0

    invoke-super/range {p62706 .. p62884}, Lcom/sun/mail/iap/CommandFailedException;->getResponse()Lcom/sun/mail/iap/Response;

    goto :goto_0

    #Field index out of bounds: 39882
    #disallowed odex opcode
    #iget-wide-volatile p1, p9, field@39882
    nop

    float-to-double v2, p7

    return p22

    shl-int/2addr p5, p8

    rsub-int p3, p6, -0x1316

    #Type index out of bounds: 13536
    #instance-of v0, p10, type@13536
    nop

    #unknown opcode: 0x41
    nop

    div-int p208, p114, p145

    mul-int p237, p120, p112

    #Field index out of bounds: 33191
    #sget p170, field@33191
    nop

    rsub-int v1, p6, -0x30a4

    if-nez p87, :cond_0

    ushr-int/lit8 p74, p29, 0x53

    and-long/2addr p11, p7

    cmp-long p52, p112, p220

    div-long/2addr v0, p1

    #Method index out of bounds: 14214
    #invoke-super {}, method@14214
    nop

    #unknown opcode: 0x79
    nop

    neg-int p3, p3

    return p181

    #was invalid verification error type: 45
    #Method index out of bounds: 9484
    #disallowed odex opcode
    #throw-verification-error generic-error, method@9484
    nop

    goto/16 :goto_1

    and-int/2addr p10, p11

    #Field index out of bounds: 37049
    #iput-char p2, v2, field@37049
    nop

    return-void

    mul-int p171, p19, p62
    :goto_1
    :cond_0
    :cond_1
.end method

.method getDSNRet()Ljava/lang/String;
    .locals 2

    div-int/lit16 p10, v1, -0x32fe

    throw p58

    #disallowed odex opcode
    #invoke-super-quick/range {p63985 .. p64142}, vtable@12461
    nop

    throw p165
.end method

