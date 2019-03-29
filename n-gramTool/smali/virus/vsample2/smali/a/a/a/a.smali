.class public La/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/security/Key;

.field private static b:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/a/a/a;->a:Ljava/security/Key;

    sput-object v0, La/a/a/a;->b:Ljavax/crypto/Cipher;

    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v0, 0x8

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    array-length v3, v1

    if-lt v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "DES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v0, La/a/a/a;->a:Ljava/security/Key;

    :try_start_0
    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, La/a/a/a;->b:Ljavax/crypto/Cipher;

    sget-object v0, La/a/a/a;->b:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    sget-object v2, La/a/a/a;->a:Ljava/security/Key;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    sget-object v0, La/a/a/a;->b:Ljavax/crypto/Cipher;

    return-object v0

    :cond_1
    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    sput-object v4, La/a/a/a;->b:Ljavax/crypto/Cipher;

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    sput-object v4, La/a/a/a;->b:Ljavax/crypto/Cipher;

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    sput-object v4, La/a/a/a;->b:Ljavax/crypto/Cipher;

    goto :goto_1
.end method
