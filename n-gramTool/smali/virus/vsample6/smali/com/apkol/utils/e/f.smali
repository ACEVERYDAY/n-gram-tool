.class Lcom/apkol/utils/e/f;
.super Ljava/lang/Object;
.source "HttpRequestUtilObser.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field final synthetic a:Lcom/apkol/utils/e/e;


# direct methods
.method constructor <init>(Lcom/apkol/utils/e/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/utils/e/f;->a:Lcom/apkol/utils/e/e;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 529
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    move v0, v1

    .line 548
    :goto_0
    return v0

    .line 533
    :cond_0
    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_1

    move v0, v2

    .line 535
    goto :goto_0

    .line 537
    :cond_1
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_2

    move v0, v1

    .line 539
    goto :goto_0

    .line 542
    :cond_2
    const-string v0, "http.request"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 541
    check-cast v0, Lorg/apache/http/HttpRequest;

    .line 543
    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 544
    if-nez v0, :cond_3

    move v0, v2

    .line 546
    goto :goto_0

    :cond_3
    move v0, v1

    .line 548
    goto :goto_0
.end method
