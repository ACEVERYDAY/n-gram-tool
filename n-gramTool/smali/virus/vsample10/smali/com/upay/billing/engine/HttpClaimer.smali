.class public Lcom/upay/billing/engine/HttpClaimer;
.super Ljava/lang/Object;


# static fields
.field private static final BUFFER_SIZE:I = 0x2710

.field private static final CLAIM_CMD:Ljava/lang/String; = "CLAIM HTTP-02"

.field public static final HOST:Ljava/lang/String; = "lb1.upay360.cn"

.field public static final PIPE_COUNT_MASK:I = 0x7fffffff

.field private static final READ_CMD_TIMEOUT:J = 0xbb8L

.field private static final SO_LINGER:I = 0x2

.field private static final SO_TIMEOUT:I = 0x64

.field private static final TIMEOUT:J = 0x4e20L

.field private static final ptnConnHeader:Ljava/util/regex/Pattern;

.field private static final ptnUrl:Ljava/util/regex/Pattern;

.field private static final ptnUrl1:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^http:\\/\\/([0-9a-zA-Z_\\-\\.]+)(:[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/HttpClaimer;->ptnUrl:Ljava/util/regex/Pattern;

    const-string v0, "http:\\/\\/([0-9a-zA-Z_\\-\\.]+)(:[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/HttpClaimer;->ptnUrl1:Ljava/util/regex/Pattern;

    const-string v0, "^(?:proxy-)?connection:.+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/HttpClaimer;->ptnConnHeader:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([B)[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/upay/billing/engine/HttpClaimer;->readCommandLine([B)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([B)[B
    .locals 1

    invoke-static {p0}, Lcom/upay/billing/engine/HttpClaimer;->filterRequest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static agencyRequest(JI)V
    .locals 1

    new-instance v0, Lcom/upay/billing/engine/HttpClaimer$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/upay/billing/engine/HttpClaimer$1;-><init>(IJ)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/HttpClaimer$1;->start()V

    return-void
.end method

.method private static final filterRequest([B)[B
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v7, p0

    move v3, v2

    move v5, v2

    :goto_0
    if-ge v5, v7, :cond_5

    aget-byte v0, p0, v5

    const/16 v4, 0xa

    if-ne v0, v4, :cond_6

    new-instance v4, Ljava/lang/String;

    if-lez v5, :cond_0

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p0, v0

    const/16 v8, 0xd

    if-ne v0, v8, :cond_0

    add-int/lit8 v0, v5, -0x1

    sub-int/2addr v0, v3

    :goto_1
    invoke-direct {v4, p0, v3, v0}, Ljava/lang/String;-><init>([BII)V

    if-nez v3, :cond_1

    move v0, v1

    :goto_2
    add-int/lit8 v3, v5, 0x1

    sget-object v8, Lcom/upay/billing/engine/HttpClaimer;->ptnConnHeader:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v3

    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v0

    goto :goto_0

    :cond_0
    sub-int v0, v5, v3

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_7

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    const/4 v8, 0x2

    if-lt v0, v8, :cond_4

    sget-object v0, Lcom/upay/billing/engine/HttpClaimer;->ptnUrl1:Ljava/util/regex/Pattern;

    aget-object v8, v4, v1

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    const-string v0, "/"

    :cond_3
    aput-object v0, v4, v1

    :cond_4
    const-string v0, " "

    invoke-static {v4, v0}, Lcom/upay/billing/engine/HttpClaimer;->join(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\r\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    sub-int v0, v7, v3

    :try_start_1
    invoke-virtual {v6, p0, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v4

    goto :goto_5

    :cond_6
    move v0, v3

    goto/16 :goto_3

    :cond_7
    move-object v0, v4

    goto :goto_4
.end method

.method public static final join(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    if-lez v1, :cond_2

    move-object v0, p1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final parseInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final pipeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 6

    const/16 v5, 0x2710

    const/4 v1, 0x0

    new-array v3, v5, [B

    move v0, v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    :goto_0
    if-lez v2, :cond_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    add-int/2addr v0, v2

    :cond_1
    if-eq v2, v5, :cond_0

    if-gez v2, :cond_2

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_2
    return v0

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v2, -0x1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final readCommandLine([B)[Ljava/lang/Object;
    .locals 8

    const/16 v1, 0x50

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    array-length v3, p0

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p0, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v0}, Ljava/lang/String;-><init>([BII)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    sget-object v3, Lcom/upay/billing/engine/HttpClaimer;->ptnUrl:Ljava/util/regex/Pattern;

    invoke-static {v0, v3}, Lcom/upay/billing/utils/Util;->extract(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v7

    if-eqz v0, :cond_4

    aget-object v0, v3, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/HttpClaimer;->parseInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    new-array v1, v7, [Ljava/lang/Object;

    aget-object v3, v3, v6

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    move-object v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static final readStream(Ljava/io/InputStream;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/upay/billing/engine/HttpClaimer;->pipeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v1

    if-gez v1, :cond_0

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    if-lez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
