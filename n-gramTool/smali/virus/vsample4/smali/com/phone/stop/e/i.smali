.class public Lcom/phone/stop/e/i;
.super Ljava/lang/Object;
.source ");humanPresentableName="


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljavax/crypto/Cipher;

.field private c:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "123456"

    sput-object v0, Lcom/phone/stop/e/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/phone/stop/e/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/phone/stop/e/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phone/stop/e/b;->b:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lcom/phone/stop/e/b;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phone/stop/e/b;->b([B)Ljava/security/Key;

    move-result-object v0

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/phone/stop/e/b;->b:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/phone/stop/e/b;->b:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/phone/stop/e/b;->c:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/phone/stop/e/b;->c:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phone/stop/e/b;->b:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lcom/phone/stop/e/b;->c:Ljavax/crypto/Cipher;

    invoke-direct {p0, p1}, Lcom/phone/stop/e/b;->b([B)Ljava/security/Key;

    move-result-object v0

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/phone/stop/e/b;->b:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/phone/stop/e/b;->b:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/phone/stop/e/b;->c:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/phone/stop/e/b;->c:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 7

    rem-int/lit8 v2, p89, 0x26

    or-int v3, p172, p206

    neg-double p8, p3

    sub-long/2addr p6, p5

    #unknown opcode: 0x3e
    nop

    ushr-int/2addr v5, v1

    if-nez p160, :cond_0

    xor-long p142, p171, p164

    or-int p27, p144, p150

    sub-double/2addr p7, p5

    #Field index out of bounds: 3492
    #sget-byte p142, field@3492
    nop

    add-double p119, p243, p162

    cmpg-float p239, p10, p143

    shl-long p192, p29, p199

    #disallowed odex opcode
    #iget-wide-quick v2, p2, field@0xae27
    nop

    aput-char p22, p203, p208

    monitor-enter p204

    mul-double p9, p198, p110

    iput v0, v4, Lcom/sun/mail/imap/protocol/d;->cParams:Ljavax/mail/internet/ParameterList;

    array-length p0, v6
    :cond_0
.end method

