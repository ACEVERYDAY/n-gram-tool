.class final Lc/aguoqkle/n/y;
.super Ljava/lang/Object;


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lc/aguoqkle/n/y;->a:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-lez v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, v2

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v7

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int v1, v2, v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdef?ghijklmnopqrstuvwxyz0123456789|*@/.:_"

    const-string v2, "MxNBaV?fmCrXZAwS*DFGHjJbKL:lg~QqveWnER.yTYsU;IcOkhP0@192zt|o83!iu7d4p6"

    const-string v3, ""

    move-object v4, v3

    move v3, v6

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public static a([B)[C
    .locals 11

    const/16 v10, 0x40

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    move v2, v8

    move v3, v8

    :goto_0
    array-length v4, p0

    if-lt v3, v4, :cond_0

    move v0, v8

    :goto_1
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_3

    return-object v1

    :cond_0
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    array-length v6, p0

    if-ge v5, v6, :cond_5

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    move v5, v9

    :goto_2
    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v3, 0x2

    array-length v7, p0

    if-ge v6, v7, :cond_4

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    move v6, v9

    :goto_3
    add-int/lit8 v7, v2, 0x3

    if-eqz v6, :cond_1

    and-int/lit8 v6, v4, 0x3f

    :goto_4
    aget-char v6, v0, v6

    aput-char v6, v1, v7

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v6, v2, 0x2

    if-eqz v5, :cond_2

    and-int/lit8 v5, v4, 0x3f

    :goto_5
    aget-char v5, v0, v5

    aput-char v5, v1, v6

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v6, v4, 0x3f

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v2, 0x0

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v0, v4

    aput-char v4, v1, v5

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    move v6, v10

    goto :goto_4

    :cond_2
    move v5, v10

    goto :goto_5

    :cond_3
    aget-char v2, v1, v0

    array-length v3, v1

    sub-int/2addr v3, v9

    sub-int/2addr v3, v0

    aget-char v3, v1, v3

    aput-char v3, v1, v0

    array-length v3, v1

    sub-int/2addr v3, v9

    sub-int/2addr v3, v0

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    move v5, v8

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
