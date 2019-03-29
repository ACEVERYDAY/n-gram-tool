.class public Lcom/sun/mail/handlers/a;
.super Ljava/lang/Object;
.source ".disabletop"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field ourDataFlavor:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljavax/mail/Message;

    const-string v2, "message/rfc822"

    const-string v3, "Message"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/mail/handlers/message_rfc822;->ourDataFlavor:Ljavax/activation/ActivationDataFlavor;

    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 5

    :cond_0
    :cond_1
    :try_start_0
    #invalid payload reference
    #sparse-switch p49, :sswitch_data_0
    nop

    #Field index out of bounds: 34488
    #iput-object p3, v0, field@34488
    nop

    mul-int/lit16 p4, p6, 0x7e55

    #Field index out of bounds: 53378
    #iget-boolean p7, p8, field@53378
    nop

    aput-object p0, p146, p244

    #Field index out of bounds: 3108
    #sput-short p37, field@3108
    nop

    int-to-char p10, v3

    double-to-float p6, v3

    aget-boolean p208, p162, p250

    add-int/lit8 p30, p27, -0x78

    #Field index out of bounds: 4187
    #sget p134, field@4187
    nop

    shr-int/lit8 p102, p8, -0x72

    add-float/2addr v1, p7

    div-int/lit8 p223, p209, -0x4e

    if-gt v1, p8, :cond_1

    #disallowed odex opcode
    #invoke-virtual-quick/range {p62249 .. p62476}, vtable@47538
    nop

    #Type index out of bounds: 36058
    #const-class p194, type@36058
    nop

    or-long/2addr p1, v3

    #Field index out of bounds: 59853
    #sput-byte p55, field@59853
    nop
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    #Type index out of bounds: 39584
    #new-instance p108, type@39584
    nop

    :catch_0
    invoke-virtual {}, Ljava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #Field index out of bounds: 22288
    #iget-wide p2, p2, field@22288
    nop

    move-result-object p196

    or-long p26, p224, p181

    rsub-int p5, p8, -0xba

    if-ge p4, p3, :cond_0

    #Field index out of bounds: 27860
    #sget-boolean p83, field@27860
    nop

    return-wide p116

    div-float/2addr p8, v4

    #Field index out of bounds: 63402
    #disallowed odex opcode
    #sget-volatile p49, field@63402
    nop

    aput-boolean p40, p166, p246

    return-wide p243

    sget-char p109, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    #Type index out of bounds: 39674
    #new-array v3, p3, type@39674
    nop
    :sswitch_data_0
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1

    :sswitch_data_0
    ushr-int/lit8 p154, p63, -0x2

    if-nez p235, :cond_0

    #Type index out of bounds: 58867
    #new-array p1, p14, type@58867
    nop

    #invalid payload reference
    #sparse-switch p110, :sswitch_data_0
    nop

    div-long/2addr p1, p9

    #Method index out of bounds: 20385
    #invoke-super {}, method@20385
    nop

    rsub-int/lit8 p13, p29, -0xf
    :cond_0
.end method

