.class Lcom/apkol/utils/e/c;
.super Ljava/lang/Object;
.source "HttpRequestUtil.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 592
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    move v0, v1

    .line 611
    :goto_0
    return v0

    .line 596
    :cond_0
    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_1

    move v0, v2

    .line 598
    goto :goto_0

    .line 600
    :cond_1
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_2

    move v0, v1

    .line 602
    goto :goto_0

    .line 605
    :cond_2
    const-string v0, "http.request"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 604
    check-cast v0, Lorg/apache/http/HttpRequest;

    .line 606
    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 607
    if-nez v0, :cond_3

    move v0, v2

    .line 609
    goto :goto_0

    :cond_3
    move v0, v1

    .line 611
    goto :goto_0
.end method
