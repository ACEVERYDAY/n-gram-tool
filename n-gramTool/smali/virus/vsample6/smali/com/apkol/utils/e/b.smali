.class public Lcom/apkol/utils/e/b;
.super Ljava/lang/Object;
.source "HttpRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/utils/e/b$a;,
        Lcom/apkol/utils/e/b$b;,
        Lcom/apkol/utils/e/b$c;,
        Lcom/apkol/utils/e/b$d;,
        Lcom/apkol/utils/e/b$e;,
        Lcom/apkol/utils/e/b$f;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "UTF-8"

.field private static final c:I = 0x400

.field private static d:Lorg/apache/http/client/HttpRequestRetryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/apkol/utils/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    .line 587
    new-instance v0, Lcom/apkol/utils/e/c;

    invoke-direct {v0}, Lcom/apkol/utils/e/c;-><init>()V

    sput-object v0, Lcom/apkol/utils/e/b;->d:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 613
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/utils/e/b$a;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 366
    sget-object v0, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUrlContentLength url ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 368
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 375
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 376
    invoke-static {v0, v2, p0}, Lcom/apkol/utils/e/b;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_5

    .line 378
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 383
    if-eqz v2, :cond_1

    .line 384
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 387
    :cond_1
    :goto_1
    return-wide v0

    .line 370
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    .line 371
    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {v2, v3, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    if-eqz v2, :cond_3

    .line 384
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 387
    :cond_3
    :goto_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    if-eqz v2, :cond_4

    .line 384
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 386
    :cond_4
    throw v0

    .line 383
    :cond_5
    if-eqz v2, :cond_3

    .line 384
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_2
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Landroid/content/Context;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 627
    const/4 v2, 0x0

    .line 628
    const/4 v0, 0x0

    .line 629
    :cond_0
    :goto_0
    if-lt v0, v1, :cond_1

    .line 643
    return-object v2

    .line 631
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 633
    goto :goto_0

    :catch_0
    move-exception v3

    .line 634
    add-int/lit8 v0, v0, 0x1

    .line 635
    if-ge v0, v1, :cond_2

    .line 636
    sget-object v3, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u91cd\u590d\u7b2c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u6b21\u8bf7\u6c42\uff01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_2
    if-ne v0, v1, :cond_0

    .line 638
    invoke-static {p2}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Landroid/content/Context;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 659
    const/4 v2, 0x0

    .line 660
    const/4 v0, 0x0

    .line 661
    :cond_0
    :goto_0
    if-lt v0, v1, :cond_1

    .line 675
    return-object v2

    .line 663
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 665
    goto :goto_0

    :catch_0
    move-exception v3

    .line 666
    add-int/lit8 v0, v0, 0x1

    .line 667
    if-ge v0, v1, :cond_2

    .line 668
    sget-object v3, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u91cd\u590d\u7b2c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u6b21\u8bf7\u6c42\uff01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_2
    if-ne v0, v1, :cond_0

    .line 670
    invoke-static {p2}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 7

    .prologue
    .line 736
    const-class v1, Lcom/apkol/utils/e/b;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 739
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 738
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 741
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_0

    .line 744
    new-instance v3, Lorg/apache/http/HttpHost;

    .line 745
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    .line 744
    invoke-direct {v3, v0, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 746
    const-string v0, "http.route.default-proxy"

    invoke-interface {v2, v0, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 751
    :cond_0
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 752
    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 757
    const-string v0, "Mozilla/5.0(Linux;U;Android 2.2.1;en-us;Nexus One Build.FRG83) AppleWebKit/553.1(KHTML,like Gecko) Version/4.0 Mobile Safari/533.1"

    .line 755
    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 759
    const-wide/16 v3, 0x7530

    invoke-static {v2, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 760
    const/16 v0, 0x7530

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 761
    const/16 v0, 0x7530

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 763
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v3, 0x1e

    invoke-direct {v0, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 762
    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 764
    const/16 v0, 0xc8

    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 766
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 768
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 769
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    .line 770
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v0, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 769
    invoke-virtual {v3, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    :try_start_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 775
    new-instance v4, Lcom/apkol/utils/e/b$f;

    invoke-direct {v4, v0}, Lcom/apkol/utils/e/b$f;-><init>(Ljava/security/KeyStore;)V

    .line 776
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v0, v5, v4, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    :goto_0
    :try_start_2
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 784
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 786
    sget-object v0, Lcom/apkol/utils/e/b;->d:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 787
    monitor-exit v1

    return-object v3

    .line 777
    :catch_0
    move-exception v0

    .line 779
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lcom/apkol/utils/e/b$d;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$d;-><init>()V

    .line 322
    iput-object p0, v0, Lcom/apkol/utils/e/b$d;->c:Landroid/content/Context;

    .line 323
    iput-object p1, v0, Lcom/apkol/utils/e/b$d;->b:Ljava/lang/String;

    .line 324
    iput-wide p2, v0, Lcom/apkol/utils/e/b$d;->g:J

    .line 325
    iput-wide p4, v0, Lcom/apkol/utils/e/b$d;->h:J

    .line 326
    iput-object p6, v0, Lcom/apkol/utils/e/b$d;->i:Ljava/lang/String;

    .line 327
    invoke-static {v0}, Lcom/apkol/utils/e/b;->a(Lcom/apkol/utils/e/b$d;)V

    .line 328
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/apkol/utils/e/h$a;JJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/apkol/utils/e/b$d;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$d;-><init>()V

    .line 334
    iput-object p0, v0, Lcom/apkol/utils/e/b$d;->c:Landroid/content/Context;

    .line 335
    iput-object p1, v0, Lcom/apkol/utils/e/b$d;->b:Ljava/lang/String;

    .line 336
    iput-wide p3, v0, Lcom/apkol/utils/e/b$d;->g:J

    .line 337
    iput-wide p5, v0, Lcom/apkol/utils/e/b$d;->h:J

    .line 338
    iput-object p2, v0, Lcom/apkol/utils/e/b$d;->e:Lcom/apkol/utils/e/h$a;

    .line 339
    iput-object p7, v0, Lcom/apkol/utils/e/b$d;->i:Ljava/lang/String;

    .line 340
    invoke-static {v0}, Lcom/apkol/utils/e/b;->a(Lcom/apkol/utils/e/b$d;)V

    .line 341
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/apkol/utils/e/h$a;Ljava/util/List;JJLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/apkol/utils/e/h$a;",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/utils/e/b$a;",
            ">;JJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/apkol/utils/e/b$d;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$d;-><init>()V

    .line 347
    iput-object p0, v0, Lcom/apkol/utils/e/b$d;->c:Landroid/content/Context;

    .line 348
    iput-object p1, v0, Lcom/apkol/utils/e/b$d;->b:Ljava/lang/String;

    .line 349
    iput-wide p4, v0, Lcom/apkol/utils/e/b$d;->g:J

    .line 350
    iput-wide p6, v0, Lcom/apkol/utils/e/b$d;->h:J

    .line 351
    iput-object p2, v0, Lcom/apkol/utils/e/b$d;->e:Lcom/apkol/utils/e/h$a;

    .line 352
    iput-object p3, v0, Lcom/apkol/utils/e/b$d;->d:Ljava/util/List;

    .line 353
    iput-object p8, v0, Lcom/apkol/utils/e/b$d;->i:Ljava/lang/String;

    .line 354
    invoke-static {v0}, Lcom/apkol/utils/e/b;->a(Lcom/apkol/utils/e/b$d;)V

    .line 355
    return-void
.end method

.method public static a(Lcom/apkol/utils/e/b$d;)V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 214
    iget-object v4, p0, Lcom/apkol/utils/e/b$d;->c:Landroid/content/Context;

    .line 215
    iget-object v1, p0, Lcom/apkol/utils/e/b$d;->b:Ljava/lang/String;

    .line 216
    iget-object v3, p0, Lcom/apkol/utils/e/b$d;->d:Ljava/util/List;

    .line 217
    iget-object v5, p0, Lcom/apkol/utils/e/b$d;->e:Lcom/apkol/utils/e/h$a;

    .line 218
    iget-wide v6, p0, Lcom/apkol/utils/e/b$d;->g:J

    .line 219
    iget-wide v8, p0, Lcom/apkol/utils/e/b$d;->h:J

    .line 220
    iget-object v10, p0, Lcom/apkol/utils/e/b$d;->i:Ljava/lang/String;

    .line 223
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    .line 222
    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 223
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 224
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 226
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 228
    :cond_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    sget-object v10, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "httpGetFTP url ="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v10, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 232
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v0

    .line 233
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    .line 238
    :cond_1
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "httpGetFTP Range start="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  end = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz v5, :cond_2

    .line 244
    const/16 v0, 0x1001

    invoke-interface {v5, v0, v2}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V

    .line 247
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v3, v11, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 250
    invoke-static {v4}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 251
    invoke-static {v0, v10, v4}, Lcom/apkol/utils/e/b;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 253
    sget-object v4, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpGetFTP httpCode ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/16 v4, 0xc8

    if-eq v1, v4, :cond_3

    const/16 v4, 0xce

    if-ne v1, v4, :cond_14

    .line 255
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 256
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 258
    if-eqz v5, :cond_4

    .line 259
    const/16 v0, 0x1002

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V

    .line 261
    :cond_4
    if-eqz v1, :cond_7

    .line 262
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 264
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcom/apkol/utils/e/b$d;->f:Z

    if-nez v2, :cond_c

    .line 275
    :cond_6
    iget-boolean v0, p0, Lcom/apkol/utils/e/b$d;->f:Z

    if-eqz v0, :cond_10

    .line 278
    if-eqz v5, :cond_7

    .line 279
    const/16 v0, 0x1004

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 304
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 306
    :cond_8
    if-eqz v3, :cond_9

    .line 307
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 313
    :cond_9
    :goto_3
    if-eqz v10, :cond_a

    .line 314
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 317
    :cond_a
    :goto_4
    return-void

    .line 234
    :cond_b
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    .line 235
    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v10, v12, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 265
    :cond_c
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 266
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 267
    if-eqz v5, :cond_5

    .line 268
    const/16 v4, 0x1003

    .line 269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 268
    invoke-interface {v5, v4, v2}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 295
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    sget-object v3, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "httpGetFTP Exception ="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v3, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "httpGetFTP Exception ="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-eqz v5, :cond_d

    .line 299
    const/16 v3, 0x1005

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 303
    :cond_d
    if-eqz v1, :cond_e

    .line 304
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 306
    :cond_e
    if-eqz v2, :cond_f

    .line 307
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 313
    :cond_f
    :goto_6
    if-eqz v10, :cond_a

    .line 314
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_4

    .line 283
    :cond_10
    if-eqz v5, :cond_7

    .line 284
    const/16 v0, 0x1006

    const/4 v2, 0x0

    :try_start_7
    invoke-interface {v5, v0, v2}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 301
    :catchall_0
    move-exception v0

    .line 303
    :goto_7
    if-eqz v1, :cond_11

    .line 304
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 306
    :cond_11
    if-eqz v3, :cond_12

    .line 307
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 313
    :cond_12
    :goto_8
    if-eqz v10, :cond_13

    .line 314
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 316
    :cond_13
    throw v0

    .line 289
    :cond_14
    if-eqz v5, :cond_15

    .line 290
    const/16 v0, 0x1005

    :try_start_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v1, v2

    .line 293
    goto/16 :goto_2

    .line 309
    :catch_1
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 309
    :catch_2
    move-exception v1

    .line 311
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 309
    :catch_3
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 301
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 293
    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_5

    :cond_15
    move-object v1, v2

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 183
    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 184
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 185
    invoke-static {v0}, Lcom/apkol/utils/e/b;->a(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/apkol/utils/e/h$a;)[B
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 191
    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 192
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 193
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 194
    invoke-static {v0}, Lcom/apkol/utils/e/b;->a(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/apkol/utils/e/h$a;Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/apkol/utils/e/h$a;",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/utils/e/b$a;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 200
    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 201
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 202
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 203
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->d:Ljava/util/List;

    .line 204
    invoke-static {v0}, Lcom/apkol/utils/e/b;->a(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lcom/apkol/utils/e/h$a;)[B
    .locals 1

    .prologue
    .line 538
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 539
    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 540
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 541
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 542
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 543
    invoke-static {v0}, Lcom/apkol/utils/e/b;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lcom/apkol/utils/e/h$a;Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/apkol/utils/e/h$a;",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/utils/e/b$a;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 528
    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 529
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 530
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 531
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 532
    iput-object p4, v0, Lcom/apkol/utils/e/b$c;->d:Ljava/util/List;

    .line 533
    invoke-static {v0}, Lcom/apkol/utils/e/b;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 567
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 568
    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 569
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 570
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 571
    invoke-static {v0}, Lcom/apkol/utils/e/b;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/apkol/utils/e/h$a;)[B
    .locals 1

    .prologue
    .line 576
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 577
    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 578
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 579
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 580
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 581
    invoke-static {v0}, Lcom/apkol/utils/e/b;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 549
    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 550
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 551
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 552
    invoke-static {v0}, Lcom/apkol/utils/e/b;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/apkol/utils/e/h$a;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apkol/utils/e/h$a;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 557
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 558
    iput-object p0, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 559
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 560
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 561
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 562
    invoke-static {v0}, Lcom/apkol/utils/e/b;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/apkol/utils/e/b$c;)[B
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 88
    iget-object v3, p0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 89
    iget-object v1, p0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 90
    iget-object v4, p0, Lcom/apkol/utils/e/b$c;->d:Ljava/util/List;

    .line 91
    iget-object v5, p0, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 93
    sget-object v6, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httpGet url ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 95
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    .line 96
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_9

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 103
    if-eqz v5, :cond_1

    .line 104
    const/16 v1, 0x1001

    invoke-interface {v5, v1, v2}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V

    .line 107
    :cond_1
    :try_start_0
    invoke-static {v3}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 108
    invoke-static {v1, v6, v3}, Lcom/apkol/utils/e/b;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 109
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 110
    sget-object v4, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httpGet httpCode ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_11

    .line 112
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 113
    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 115
    if-eqz v5, :cond_2

    .line 116
    const/16 v7, 0x1002

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v7, v3}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V

    .line 118
    :cond_2
    if-eqz v1, :cond_12

    .line 119
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 122
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/apkol/utils/e/b$c;->f:Z

    if-nez v4, :cond_a

    .line 134
    :cond_4
    iget-boolean v0, p0, Lcom/apkol/utils/e/b$c;->f:Z

    if-eqz v0, :cond_f

    .line 136
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 137
    if-eqz v5, :cond_5

    .line 138
    const/16 v4, 0x1004

    invoke-interface {v5, v4, v0}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 164
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 165
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 167
    :cond_6
    if-eqz v3, :cond_7

    .line 168
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 174
    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 175
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 178
    :cond_8
    :goto_4
    return-object v0

    .line 97
    :cond_9
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    .line 98
    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v6, v7, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 123
    :cond_a
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 124
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 125
    if-eqz v5, :cond_3

    .line 126
    const/16 v7, 0x1003

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 126
    invoke-interface {v5, v7, v4}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 156
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    sget-object v4, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httpGet Exception ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v4, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httpGet Exception ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz v5, :cond_b

    .line 160
    const/16 v4, 0x1005

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 164
    :cond_b
    if-eqz v1, :cond_c

    .line 165
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 167
    :cond_c
    if-eqz v3, :cond_d

    .line 168
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 174
    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    .line 175
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_e
    :goto_7
    move-object v0, v2

    .line 178
    goto :goto_4

    .line 143
    :cond_f
    if-eqz v5, :cond_10

    .line 144
    const/16 v0, 0x1006

    const/4 v4, 0x0

    :try_start_7
    invoke-interface {v5, v0, v4}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_10
    move-object v0, v2

    goto/16 :goto_2

    .line 170
    :catch_1
    move-exception v1

    .line 172
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 150
    :cond_11
    if-eqz v5, :cond_18

    .line 151
    const/16 v3, 0x1005

    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v1, v2

    .line 164
    :cond_12
    :goto_8
    if-eqz v1, :cond_13

    .line 165
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 167
    :cond_13
    if-eqz v2, :cond_14

    .line 168
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 174
    :cond_14
    :goto_9
    if-eqz v6, :cond_e

    .line 175
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_7

    .line 170
    :catch_2
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 162
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 164
    :goto_a
    if-eqz v1, :cond_15

    .line 165
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 167
    :cond_15
    if-eqz v3, :cond_16

    .line 168
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 174
    :cond_16
    :goto_b
    if-eqz v6, :cond_17

    .line 175
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 177
    :cond_17
    throw v0

    .line 170
    :catch_3
    move-exception v1

    .line 172
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 170
    :catch_4
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 162
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    .line 154
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_5

    :catch_6
    move-exception v0

    move-object v3, v2

    goto/16 :goto_5

    :cond_18
    move-object v1, v2

    goto :goto_8
.end method

.method public static b(Lcom/apkol/utils/e/b$c;)[B
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 398
    iget-object v6, p0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 399
    iget-object v3, p0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 400
    iget-object v2, p0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 401
    iget-object v7, p0, Lcom/apkol/utils/e/b$c;->e:Lcom/apkol/utils/e/h$a;

    .line 402
    iget-object v8, p0, Lcom/apkol/utils/e/b$c;->d:Ljava/util/List;

    .line 404
    sget-object v5, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "httpPost Map<String, String> url ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v9, 0x0

    .line 410
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    .line 412
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_a

    .line 419
    :cond_0
    if-eqz v2, :cond_1

    .line 421
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_10

    .line 422
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 424
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 427
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 434
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 435
    const-string v2, "UTF-8"

    .line 434
    invoke-direct {v1, v8, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 444
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 445
    const/16 v1, 0x1001

    const/4 v2, 0x0

    invoke-interface {v7, v1, v2}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V

    .line 448
    :cond_2
    invoke-static {v6}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 449
    invoke-static {v1, v5, v6}, Lcom/apkol/utils/e/b;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 451
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 452
    sget-object v3, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "httpPost httpCode ="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_17

    .line 454
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 455
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    .line 457
    if-eqz v7, :cond_3

    .line 458
    const/16 v1, 0x1002

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V

    .line 460
    :cond_3
    if-eqz v2, :cond_18

    .line 461
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 462
    const/16 v1, 0x400

    :try_start_3
    new-array v1, v1, [B

    .line 464
    :cond_4
    :goto_3
    iget-boolean v6, p0, Lcom/apkol/utils/e/b$c;->f:Z

    if-nez v6, :cond_14

    .line 476
    :cond_5
    iget-boolean v1, p0, Lcom/apkol/utils/e/b$c;->f:Z

    if-eqz v1, :cond_15

    .line 478
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 479
    if-eqz v7, :cond_6

    .line 480
    const/16 v6, 0x1004

    invoke-interface {v7, v6, v1}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 507
    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 508
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 510
    :cond_7
    if-eqz v3, :cond_8

    .line 511
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 517
    :cond_8
    :goto_5
    if-eqz v5, :cond_9

    .line 518
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 521
    :cond_9
    :goto_6
    return-object v1

    .line 413
    :cond_a
    :try_start_5
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v1}, Lcom/apkol/utils/e/b$a;->a()Ljava/lang/String;

    move-result-object v10

    .line 414
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v1}, Lcom/apkol/utils/e/b$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {v5, v10, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 427
    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 428
    sget-object v11, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "----->"

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ": "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v11, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    .line 431
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v11, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 497
    :catch_0
    move-exception v1

    move-object v2, v5

    move-object v3, v4

    move-object v5, v4

    .line 499
    :goto_7
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    sget-object v6, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "httpPost Exception ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v6, Lcom/apkol/utils/e/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "httpPost Exception ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    if-eqz v7, :cond_c

    .line 503
    const/16 v6, 0x1005

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-interface {v7, v6, v1}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 507
    :cond_c
    if-eqz v3, :cond_d

    .line 508
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 510
    :cond_d
    if-eqz v5, :cond_e

    .line 511
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 517
    :cond_e
    :goto_8
    if-eqz v2, :cond_f

    .line 518
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_f
    :goto_9
    move-object v1, v4

    .line 521
    goto/16 :goto_6

    .line 437
    :cond_10
    :try_start_8
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 438
    check-cast v2, Ljava/lang/String;

    .line 439
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    .line 440
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 439
    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 441
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 505
    :catchall_0
    move-exception v1

    move-object v3, v4

    .line 507
    :goto_a
    if-eqz v4, :cond_11

    .line 508
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 510
    :cond_11
    if-eqz v3, :cond_12

    .line 511
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 517
    :cond_12
    :goto_b
    if-eqz v5, :cond_13

    .line 518
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 520
    :cond_13
    throw v1

    .line 465
    :cond_14
    :try_start_a
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_5

    .line 466
    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 467
    if-eqz v7, :cond_4

    .line 468
    const/16 v8, 0x1003

    .line 469
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 468
    invoke-interface {v7, v8, v6}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 497
    :catch_1
    move-exception v1

    move-object v13, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_7

    .line 485
    :cond_15
    if-eqz v7, :cond_16

    .line 486
    const/16 v1, 0x1006

    const/4 v6, 0x0

    invoke-interface {v7, v1, v6}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_16
    move-object v1, v4

    goto/16 :goto_4

    .line 513
    :catch_2
    move-exception v2

    .line 515
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 492
    :cond_17
    if-eqz v7, :cond_1b

    .line 493
    const/16 v1, 0x1005

    :try_start_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Lcom/apkol/utils/e/h$a;->a(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v2, v4

    .line 507
    :cond_18
    :goto_c
    if-eqz v2, :cond_19

    .line 508
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 510
    :cond_19
    if-eqz v4, :cond_1a

    .line 511
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 517
    :cond_1a
    :goto_d
    if-eqz v5, :cond_f

    .line 518
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_9

    .line 513
    :catch_3
    move-exception v1

    .line 515
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 513
    :catch_4
    move-exception v2

    .line 515
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 513
    :catch_5
    move-exception v1

    .line 515
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 505
    :catchall_1
    move-exception v1

    move-object v5, v4

    move-object v3, v4

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v3, v4

    move-object v4, v2

    goto :goto_a

    :catchall_3
    move-exception v1

    move-object v4, v2

    goto :goto_a

    :catchall_4
    move-exception v1

    move-object v4, v3

    move-object v3, v5

    move-object v5, v2

    goto :goto_a

    .line 497
    :catch_6
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    move-object v5, v4

    goto/16 :goto_7

    :catch_7
    move-exception v1

    move-object v3, v2

    move-object v2, v5

    move-object v5, v4

    goto/16 :goto_7

    :cond_1b
    move-object v2, v4

    goto :goto_c
.end method
