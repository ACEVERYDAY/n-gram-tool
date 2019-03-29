.class public Landroid/support/v4/app/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static p:Lorg/apache/http/client/HttpClient;

.field private static q:Lorg/apache/http/client/HttpClient;


# instance fields
.field private c:[B

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:[I

.field private h:Ljava/util/List;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Landroid/support/v4/app/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Landroid/support/v4/app/c;->b:I

    sput-object v1, Landroid/support/v4/app/c;->p:Lorg/apache/http/client/HttpClient;

    sput-object v1, Landroid/support/v4/app/c;->q:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/c;->o:[B

    :try_start_0
    const-string v0, "con_postbuf_begin\r\n\r\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, p1

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, p1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/Support;->a([BI[BIII)I

    move-result v0

    if-ltz v0, :cond_1

    array-length v1, p1

    array-length v3, v2

    add-int/2addr v3, v0

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/support/v4/app/c;->c:[B

    array-length v1, v2

    add-int/2addr v1, v0

    iget-object v3, p0, Landroid/support/v4/app/c;->c:[B

    const/4 v4, 0x0

    array-length v5, p1

    array-length v2, v2

    add-int/2addr v2, v0

    sub-int v2, v5, v2

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "UTF-8"

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v0, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "con_url"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/c;->e:Ljava/lang/String;

    const-string v0, "con_mthd"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->f:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/app/c;->g:[I

    const-string v0, "con_range"

    iget-object v2, p0, Landroid/support/v4/app/c;->g:[I

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;[I)Z

    const-string v0, "con_sector_cnt"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/c;->h:Ljava/util/List;

    move v0, v6

    :goto_1
    if-lt v0, v2, :cond_2

    :cond_0
    const-string v0, "con_timeout"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->i:I

    const-string v0, "con_postbuf_len"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->d:I

    const-string v0, "rlst_srvctrl"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->j:I

    const-string v0, "rlst_posttype"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->k:I

    const-string v0, "rlst_postmax"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->l:I

    const-string v0, "rlst_automax"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->m:I

    const-string v0, "rlst_posturl"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/c;->n:Ljava/lang/String;

    :goto_2
    return-void

    :cond_1
    array-length v0, p1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "con_sector_info"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/c;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v3, v4}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static a()I
    .locals 1

    sget v0, Landroid/support/v4/app/c;->b:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "=\\[(.*?)\\]\\[(.*?)\\]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/support/v4/app/c$a;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/support/v4/app/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v2, p3

    if-ge v2, v4, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "=\\[(.*?)\\]\\[(.*?)\\]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v3

    aput v3, p3, v1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v1

    aput v1, p3, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a([B[B)[B
    .locals 13

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x4

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/f;->b(Landroid/content/Context;)Landroid/support/v4/app/f;

    :try_start_0
    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    const-string v3, "resultProcess"

    invoke-static {v1, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/c;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/c;->n:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Landroid/support/v4/app/c;->q:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_2

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v1, Landroid/support/v4/app/c;->q:Lorg/apache/http/client/HttpClient;

    :cond_2
    sget-object v1, Landroid/support/v4/app/c;->q:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/16 v3, 0x7530

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v1, Landroid/support/v4/app/c;->q:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const v3, 0xafc8

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v1, Landroid/support/v4/app/c;->q:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v3, "http.protocol.handle-redirects"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x4

    new-array v4, v1, [B

    const/4 v1, 0x4

    new-array v5, v1, [B

    const/4 v1, 0x4

    new-array v6, v1, [B

    const/4 v1, 0x4

    new-array v7, v1, [B

    iget v1, p0, Landroid/support/v4/app/c;->l:I

    if-nez v1, :cond_4

    array-length v1, p2

    :goto_1
    iget-object v8, p0, Landroid/support/v4/app/c;->e:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v8, v8

    array-length v9, p1

    :goto_2
    if-lt v0, v12, :cond_5

    const-string v0, "PBCR"

    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Landroid/support/v4/app/c;->e:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p2, :cond_3

    array-length v0, p2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v3, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3
    sget-object v0, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ConMgr.apn_is_wap="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Landroid/support/v4/app/e;->a:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";url="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v4/app/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/c;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Landroid/support/v4/app/c;->n:Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {}, Landroid/support/v4/app/Support;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/e;->b(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "curConnType="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "C_C_TP"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    const-string v1, "execute"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v4/app/c;->q:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    sget-object v3, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "status_code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_7

    const/16 v3, 0xce

    if-eq v0, v3, :cond_7

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    array-length v1, p2

    iget v8, p0, Landroid/support/v4/app/c;->l:I

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_1

    :cond_5
    rsub-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x3

    shr-int v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v5, v0

    rsub-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x3

    shr-int v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v0

    rsub-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x3

    shr-int v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v0

    iget v10, p0, Landroid/support/v4/app/c;->k:I

    rsub-int/lit8 v11, v0, 0x3

    shl-int/lit8 v11, v11, 0x3

    shr-int/2addr v10, v11

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    invoke-static {v1}, Landroid/support/v4/app/h;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Landroid/support/v4/app/h;->a([B)[B

    move-result-object v0

    :cond_8
    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\\[(.*?)\\]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()[B
    .locals 11

    const/4 v3, 0x0

    const/16 v10, 0x190

    const/4 v4, 0x0

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/f;->b(Landroid/content/Context;)Landroid/support/v4/app/f;

    :try_start_0
    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    const-string v2, "conProcess"

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/support/v4/app/c;->p:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v1, Landroid/support/v4/app/c;->p:Lorg/apache/http/client/HttpClient;

    :cond_0
    new-instance v6, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v6}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    sget-object v1, Landroid/support/v4/app/c;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v1, Landroid/support/v4/app/c;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const v2, 0xafc8

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v1, Landroid/support/v4/app/c;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.protocol.handle-redirects"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ConMgr.apn_is_wap="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Landroid/support/v4/app/e;->a:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";url="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/support/v4/app/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/c;->f:I

    if-nez v1, :cond_6

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Landroid/support/v4/app/c;->e:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    :goto_0
    invoke-static {}, Landroid/support/v4/app/Support;->a()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/e;->b(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "curConnType="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "C_C_TP"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Landroid/support/v4/app/c;->g:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/c;->g:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/c;->g:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/c;->g:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eqz v1, :cond_b

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/support/v4/app/c;->g:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Landroid/support/v4/app/c;->g:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Landroid/support/v4/app/c;->g:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    const-string v2, "execute"

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/support/v4/app/c;->p:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const-string v1, "http.target_host"

    invoke-interface {v6, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    const-string v2, "http.request"

    invoke-interface {v6, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->isAbsolute()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Landroid/support/v4/app/c;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    if-eqz v6, :cond_4

    move v1, v4

    :goto_5
    array-length v8, v6

    if-lt v1, v8, :cond_d

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/c;->o:[B

    :cond_4
    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "status_code="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12c

    if-lt v7, v1, :cond_10

    if-ge v7, v10, :cond_10

    const-string v1, "set-cookie"

    invoke-interface {v5, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    const-string v1, ""

    if-eqz v6, :cond_5

    array-length v8, v6

    move v2, v4

    :goto_6
    if-lt v2, v8, :cond_f

    :cond_5
    const-string v2, "Location"

    invoke-interface {v5, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "&amp;"

    const-string v5, "&"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "status_code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";location="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "status_code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&location="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_7
    return-object v1

    :cond_6
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Landroid/support/v4/app/c;->e:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/c;->c:[B

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v4/app/c;->c:[B

    array-length v1, v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/support/v4/app/c;->d:I

    iget-object v5, p0, Landroid/support/v4/app/c;->c:[B

    array-length v5, v5

    if-ne v1, v5, :cond_7

    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v1, p0, Landroid/support/v4/app/c;->c:[B

    invoke-direct {v5, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_7
    move-object v5, v2

    goto/16 :goto_0

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    move-object v1, v3

    goto :goto_7

    :cond_9
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c$a;

    iget-object v8, v1, Landroid/support/v4/app/c$a;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v1, Landroid/support/v4/app/c$a;->a:Ljava/lang/String;

    iget-object v9, v1, Landroid/support/v4/app/c$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    iget-object v1, v1, Landroid/support/v4/app/c$a;->a:Ljava/lang/String;

    const-string v8, "Host"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_a
    iget-object v8, v1, Landroid/support/v4/app/c$a;->a:Ljava/lang/String;

    iget-object v9, v1, Landroid/support/v4/app/c$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_8

    :cond_b
    :try_start_2
    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/support/v4/app/c;->g:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_d
    aget-object v8, v6, v1

    if-eqz v1, :cond_e

    const-string v9, "&"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_f
    aget-object v4, v6, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v4

    goto/16 :goto_6

    :cond_10
    if-lt v7, v10, :cond_11

    const/16 v1, 0x1f4

    if-ge v7, v1, :cond_11

    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "status_code="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "status_code="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_7

    :cond_11
    const/16 v1, 0xc8

    if-eq v7, v1, :cond_12

    const/16 v1, 0xce

    if-eq v7, v1, :cond_12

    move-object v1, v3

    goto/16 :goto_7

    :cond_12
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    sget-object v2, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "ContentLength="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/support/v4/app/h;->b(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v5, 0x2000

    :try_start_3
    new-array v5, v5, [B

    :goto_a
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-gtz v6, :cond_14

    :cond_13
    :goto_b
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto/16 :goto_7

    :cond_14
    if-eqz v2, :cond_15

    :try_start_5
    iget v7, p0, Landroid/support/v4/app/c;->l:I

    if-lez v7, :cond_15

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    iget v8, p0, Landroid/support/v4/app/c;->l:I

    if-gt v7, v8, :cond_13

    :cond_15
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_a

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_b
.end method

.method public run()V
    .locals 9

    const-wide/16 v7, 0xbb8

    const/4 v3, 0x3

    const/4 v0, 0x0

    sget v1, Landroid/support/v4/app/c;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/v4/app/c;->b:I

    iget v1, p0, Landroid/support/v4/app/c;->i:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/app/c;->i:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->a(J)V

    :cond_0
    iget v1, p0, Landroid/support/v4/app/c;->m:I

    if-lez v1, :cond_1

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/e;->a(Landroid/content/Context;)V

    :cond_1
    :goto_0
    add-int/lit8 v2, v0, 0x1

    if-lt v0, v3, :cond_2

    invoke-static {v7, v8}, Landroid/support/v4/app/Support;->a(J)V

    sget-object v0, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread End mCnt="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/support/v4/app/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/support/v4/app/c;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/app/c;->b:I

    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/e;->c(Landroid/content/Context;)V

    return-void

    :cond_2
    sget-object v0, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "run retry="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";mCnt="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Landroid/support/v4/app/c;->b:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v0, p0, Landroid/support/v4/app/c;->j:I

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/c;->e:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/app/c;->b()[B

    move-result-object v0

    if-nez v0, :cond_3

    if-ge v2, v3, :cond_3

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/c;->o:[B

    if-nez v1, :cond_4

    if-ne v2, v3, :cond_4

    new-instance v1, Ljava/lang/String;

    const-string v4, "error"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/c;->o:[B

    :cond_4
    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "head_data:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Landroid/support/v4/app/c;->o:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_7

    if-ne v2, v3, :cond_7

    new-instance v0, Ljava/lang/String;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    const-string v4, "con_data:\n"

    invoke-static {v0, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;[B)V

    iget-object v0, p0, Landroid/support/v4/app/c;->o:[B

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/c;->a([B[B)[B

    move-result-object v0

    if-nez v0, :cond_5

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Landroid/support/v4/app/c;->o:[B

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/c;->a([B[B)[B

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v2

    goto/16 :goto_0

    :cond_5
    sget-object v1, Landroid/support/v4/app/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result_data:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/a;->a()Landroid/support/v4/app/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/a;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method
