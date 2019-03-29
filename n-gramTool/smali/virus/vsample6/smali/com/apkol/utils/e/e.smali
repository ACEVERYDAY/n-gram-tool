.class public Lcom/apkol/utils/e/e;
.super Ljava/lang/Object;
.source "HttpRequestUtilObser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/utils/e/e$a;,
        Lcom/apkol/utils/e/e$b;
    }
.end annotation


# static fields
.field private static b:Lcom/apkol/utils/e/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Lcom/apkol/utils/e/a;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private f:Lorg/apache/http/client/HttpRequestRetryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/apkol/utils/e/e;->b:Lcom/apkol/utils/e/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-class v0, Lcom/apkol/utils/e/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    .line 82
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/apkol/utils/e/e;->d:Ljava/lang/String;

    .line 84
    const/16 v0, 0x400

    iput v0, p0, Lcom/apkol/utils/e/e;->e:I

    .line 524
    new-instance v0, Lcom/apkol/utils/e/f;

    invoke-direct {v0, p0}, Lcom/apkol/utils/e/f;-><init>(Lcom/apkol/utils/e/e;)V

    iput-object v0, p0, Lcom/apkol/utils/e/e;->f:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 94
    invoke-static {}, Lcom/apkol/utils/e/a;->a()Lcom/apkol/utils/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/utils/e/e;->c:Lcom/apkol/utils/e/a;

    .line 95
    return-void
.end method

.method public static a()Lcom/apkol/utils/e/e;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/apkol/utils/e/e;->b:Lcom/apkol/utils/e/e;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/apkol/utils/e/e;

    invoke-direct {v0}, Lcom/apkol/utils/e/e;-><init>()V

    sput-object v0, Lcom/apkol/utils/e/e;->b:Lcom/apkol/utils/e/e;

    .line 90
    :cond_0
    sget-object v0, Lcom/apkol/utils/e/e;->b:Lcom/apkol/utils/e/e;

    return-object v0
.end method

.method private a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Landroid/content/Context;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 563
    const/4 v2, 0x0

    .line 564
    const/4 v0, 0x0

    .line 565
    :cond_0
    :goto_0
    if-lt v0, v1, :cond_1

    .line 579
    return-object v2

    .line 567
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 569
    goto :goto_0

    :catch_0
    move-exception v3

    .line 570
    add-int/lit8 v0, v0, 0x1

    .line 571
    if-ge v0, v1, :cond_2

    .line 572
    iget-object v3, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

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

    .line 573
    :cond_2
    if-ne v0, v1, :cond_0

    .line 574
    invoke-direct {p0, p3}, Lcom/apkol/utils/e/e;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_0
.end method

.method private a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Landroid/content/Context;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 595
    const/4 v2, 0x0

    .line 596
    const/4 v0, 0x0

    .line 597
    :cond_0
    :goto_0
    if-lt v0, v1, :cond_1

    .line 611
    return-object v2

    .line 599
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 601
    goto :goto_0

    :catch_0
    move-exception v3

    .line 602
    add-int/lit8 v0, v0, 0x1

    .line 603
    if-ge v0, v1, :cond_2

    .line 604
    iget-object v3, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

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

    .line 605
    :cond_2
    if-ne v0, v1, :cond_0

    .line 606
    invoke-direct {p0, p3}, Lcom/apkol/utils/e/e;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 675
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 674
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 677
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_0

    .line 680
    new-instance v2, Lorg/apache/http/HttpHost;

    .line 681
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 680
    invoke-direct {v2, v0, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 682
    const-string v0, "http.route.default-proxy"

    invoke-interface {v1, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 687
    :cond_0
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 688
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 689
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 693
    const-string v0, "Mozilla/5.0(Linux;U;Android 2.2.1;en-us;Nexus One Build.FRG83) AppleWebKit/553.1(KHTML,like Gecko) Version/4.0 Mobile Safari/533.1"

    .line 691
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 695
    const-wide/16 v2, 0x7530

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 696
    const/16 v0, 0x7530

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 697
    const/16 v0, 0x7530

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 699
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x1e

    invoke-direct {v0, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 698
    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 700
    const/16 v0, 0xc8

    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 702
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 704
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 705
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    .line 706
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 705
    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :try_start_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 711
    new-instance v3, Lcom/apkol/utils/e/e$b;

    invoke-direct {v3, p0, v0}, Lcom/apkol/utils/e/e$b;-><init>(Lcom/apkol/utils/e/e;Ljava/security/KeyStore;)V

    .line 712
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v0, v4, v3, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :goto_0
    :try_start_2
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 720
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 721
    iget-object v0, p0, Lcom/apkol/utils/e/e;->f:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    monitor-exit p0

    return-object v2

    .line 713
    :catch_0
    move-exception v0

    .line 715
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    .locals 2

    .prologue
    .line 727
    new-instance v0, Lcom/apkol/utils/e/e$a;

    invoke-direct {v0}, Lcom/apkol/utils/e/e$a;-><init>()V

    .line 728
    iput-object p3, v0, Lcom/apkol/utils/e/e$a;->a:Lcom/apkol/utils/e/b$b;

    .line 729
    iput p1, v0, Lcom/apkol/utils/e/e$a;->b:I

    .line 730
    iput-object p2, v0, Lcom/apkol/utils/e/e$a;->c:Ljava/lang/Object;

    .line 732
    iget-object v1, p0, Lcom/apkol/utils/e/e;->c:Lcom/apkol/utils/e/a;

    invoke-virtual {v1, v0}, Lcom/apkol/utils/e/a;->a(Ljava/lang/Object;)V

    .line 733
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/apkol/utils/e/b$d;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$d;-><init>()V

    .line 312
    iput-object p1, v0, Lcom/apkol/utils/e/b$d;->c:Landroid/content/Context;

    .line 313
    iput-object p2, v0, Lcom/apkol/utils/e/b$d;->b:Ljava/lang/String;

    .line 314
    iput-wide p3, v0, Lcom/apkol/utils/e/b$d;->g:J

    .line 315
    iput-wide p5, v0, Lcom/apkol/utils/e/b$d;->h:J

    .line 316
    iput-object p7, v0, Lcom/apkol/utils/e/b$d;->i:Ljava/lang/String;

    .line 317
    invoke-virtual {p0, v0}, Lcom/apkol/utils/e/e;->a(Lcom/apkol/utils/e/b$d;)V

    .line 318
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/utils/e/b$a;",
            ">;JJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/apkol/utils/e/b$d;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$d;-><init>()V

    .line 323
    iput-object p1, v0, Lcom/apkol/utils/e/b$d;->c:Landroid/content/Context;

    .line 324
    iput-object p2, v0, Lcom/apkol/utils/e/b$d;->b:Ljava/lang/String;

    .line 325
    iput-wide p4, v0, Lcom/apkol/utils/e/b$d;->g:J

    .line 326
    iput-wide p6, v0, Lcom/apkol/utils/e/b$d;->h:J

    .line 327
    iput-object p3, v0, Lcom/apkol/utils/e/b$d;->d:Ljava/util/List;

    .line 328
    iput-object p8, v0, Lcom/apkol/utils/e/b$d;->i:Ljava/lang/String;

    .line 329
    invoke-virtual {p0, v0}, Lcom/apkol/utils/e/e;->a(Lcom/apkol/utils/e/b$d;)V

    .line 330
    return-void
.end method

.method public a(Lcom/apkol/utils/e/b$d;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 211
    iget-object v4, p1, Lcom/apkol/utils/e/b$d;->c:Landroid/content/Context;

    .line 212
    iget-object v1, p1, Lcom/apkol/utils/e/b$d;->b:Ljava/lang/String;

    .line 213
    iget-object v3, p1, Lcom/apkol/utils/e/b$d;->d:Ljava/util/List;

    .line 214
    iget-wide v5, p1, Lcom/apkol/utils/e/b$d;->g:J

    .line 215
    iget-wide v7, p1, Lcom/apkol/utils/e/b$d;->h:J

    .line 216
    iget-object v9, p1, Lcom/apkol/utils/e/b$d;->i:Ljava/lang/String;

    .line 219
    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    .line 218
    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 219
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 220
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 222
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 224
    :cond_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v9, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "httpGetFTP url ="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 228
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v0

    .line 229
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    .line 234
    :cond_1
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "httpGetFTP Range start="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  end = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/16 v0, 0x1001

    invoke-virtual {p0, v0, v2, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V

    .line 243
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v3, v10, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 244
    :try_start_1
    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 246
    invoke-direct {p0, v4}, Lcom/apkol/utils/e/e;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 247
    invoke-direct {p0, v0, v9, v4}, Lcom/apkol/utils/e/e;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 249
    iget-object v4, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "httpGetFTP httpCode ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/16 v4, 0xc8

    if-eq v1, v4, :cond_2

    const/16 v4, 0xce

    if-ne v1, v4, :cond_10

    .line 251
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 252
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 254
    const/16 v0, 0x1002

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V

    .line 256
    if-eqz v1, :cond_4

    .line 257
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 259
    :goto_1
    iget-boolean v2, p1, Lcom/apkol/utils/e/b$d;->f:Z

    if-nez v2, :cond_9

    .line 269
    :cond_3
    iget-boolean v0, p1, Lcom/apkol/utils/e/b$d;->f:Z

    if-eqz v0, :cond_c

    .line 272
    const/16 v0, 0x1004

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 294
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_5
    if-eqz v3, :cond_6

    .line 297
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 303
    :cond_6
    :goto_3
    if-eqz v9, :cond_7

    .line 304
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 307
    :cond_7
    :goto_4
    return-void

    .line 230
    :cond_8
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    .line 231
    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v9, v11, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 260
    :cond_9
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 261
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 263
    const/16 v4, 0x1003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v4, v2, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 283
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 285
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    iget-object v3, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "httpGetFTP Exception ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "httpGetFTP Exception ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/16 v3, 0x1005

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 293
    if-eqz v1, :cond_a

    .line 294
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_a
    if-eqz v2, :cond_b

    .line 297
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 303
    :cond_b
    :goto_6
    if-eqz v9, :cond_7

    .line 304
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_4

    .line 276
    :cond_c
    const/16 v0, 0x1006

    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {p0, v0, v2, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 291
    :catchall_0
    move-exception v0

    .line 293
    :goto_7
    if-eqz v1, :cond_d

    .line 294
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 296
    :cond_d
    if-eqz v3, :cond_e

    .line 297
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 303
    :cond_e
    :goto_8
    if-eqz v9, :cond_f

    .line 304
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 306
    :cond_f
    throw v0

    .line 281
    :cond_10
    const/16 v0, 0x1005

    :try_start_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v1, v2

    .line 283
    goto/16 :goto_2

    .line 299
    :catch_1
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 299
    :catch_2
    move-exception v1

    .line 301
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 299
    :catch_3
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 291
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

    .line 283
    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_5
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 190
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 191
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 192
    invoke-virtual {p0, v0}, Lcom/apkol/utils/e/e;->a(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)[B
    .locals 1

    .prologue
    .line 497
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 498
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 499
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 500
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 501
    invoke-virtual {p0, v0}, Lcom/apkol/utils/e/e;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/utils/e/b$a;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 488
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 489
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 490
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 491
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 492
    iput-object p4, v0, Lcom/apkol/utils/e/b$c;->d:Ljava/util/List;

    .line 493
    invoke-virtual {p0, v0}, Lcom/apkol/utils/e/e;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 514
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 515
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 516
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 517
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 518
    invoke-virtual {p0, v0}, Lcom/apkol/utils/e/e;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/utils/e/b$a;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 198
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 199
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 200
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->d:Ljava/util/List;

    .line 201
    invoke-virtual {p0, v0}, Lcom/apkol/utils/e/e;->a(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)[B
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
    .line 506
    new-instance v0, Lcom/apkol/utils/e/b$c;

    invoke-direct {v0}, Lcom/apkol/utils/e/b$c;-><init>()V

    .line 507
    iput-object p1, v0, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 508
    iput-object p2, v0, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 509
    iput-object p3, v0, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 510
    invoke-virtual {p0, v0}, Lcom/apkol/utils/e/e;->b(Lcom/apkol/utils/e/b$c;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/apkol/utils/e/b$c;)[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 105
    iget-object v3, p1, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 106
    iget-object v1, p1, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 107
    iget-object v4, p1, Lcom/apkol/utils/e/b$c;->d:Ljava/util/List;

    .line 109
    iget-object v5, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpGet url ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 111
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    .line 112
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 120
    const/16 v1, 0x1001

    invoke-virtual {p0, v1, v2, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V

    .line 123
    :try_start_0
    invoke-direct {p0, v3}, Lcom/apkol/utils/e/e;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1, v5, v3}, Lcom/apkol/utils/e/e;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 125
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 126
    iget-object v4, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpGet httpCode ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_b

    .line 128
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 129
    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 131
    const/16 v6, 0x1002

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v6, v3, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V

    .line 133
    if-eqz v1, :cond_c

    .line 134
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 137
    :goto_1
    iget-boolean v4, p1, Lcom/apkol/utils/e/b$c;->f:Z

    if-nez v4, :cond_6

    .line 148
    :cond_1
    iget-boolean v0, p1, Lcom/apkol/utils/e/b$c;->f:Z

    if-eqz v0, :cond_a

    .line 150
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 151
    const/16 v4, 0x1004

    invoke-virtual {p0, v4, v0, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    :goto_2
    if-eqz v1, :cond_2

    .line 172
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 174
    :cond_2
    if-eqz v3, :cond_3

    .line 175
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 181
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 182
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 185
    :cond_4
    :goto_4
    return-object v0

    .line 113
    :cond_5
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    .line 114
    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v5, v6, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 138
    :cond_6
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 139
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 140
    const/16 v6, 0x1003

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v6, v4, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 164
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    iget-object v4, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpGet Exception ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpGet Exception ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v4, 0x1005

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 171
    if-eqz v1, :cond_7

    .line 172
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 174
    :cond_7
    if-eqz v3, :cond_8

    .line 175
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 181
    :cond_8
    :goto_6
    if-eqz v5, :cond_9

    .line 182
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_9
    :goto_7
    move-object v0, v2

    .line 185
    goto :goto_4

    .line 155
    :cond_a
    const/16 v0, 0x1006

    const/4 v4, 0x0

    :try_start_7
    invoke-virtual {p0, v0, v4, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v0, v2

    goto/16 :goto_2

    .line 177
    :catch_1
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 160
    :cond_b
    const/16 v3, 0x1005

    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v1, v2

    .line 171
    :cond_c
    if-eqz v1, :cond_d

    .line 172
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 174
    :cond_d
    if-eqz v2, :cond_e

    .line 175
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 181
    :cond_e
    :goto_8
    if-eqz v5, :cond_9

    .line 182
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_7

    .line 177
    :catch_2
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 169
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 171
    :goto_9
    if-eqz v1, :cond_f

    .line 172
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 174
    :cond_f
    if-eqz v3, :cond_10

    .line 175
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 181
    :cond_10
    :goto_a
    if-eqz v5, :cond_11

    .line 182
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 184
    :cond_11
    throw v0

    .line 177
    :catch_3
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 177
    :catch_4
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 169
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    .line 162
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_5

    :catch_6
    move-exception v0

    move-object v3, v2

    goto/16 :goto_5
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)J
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
    .line 341
    iget-object v0, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUrlContentLength url ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 343
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 350
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/apkol/utils/e/e;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 351
    invoke-direct {p0, v0, v2, p1}, Lcom/apkol/utils/e/e;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_5

    .line 353
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 358
    if-eqz v2, :cond_1

    .line 359
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 362
    :cond_1
    :goto_1
    return-wide v0

    .line 345
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/e/b$a;

    .line 346
    invoke-virtual {v0}, Lcom/apkol/utils/e/b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v2, v3, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    if-eqz v2, :cond_3

    .line 359
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 362
    :cond_3
    :goto_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 357
    :catchall_0
    move-exception v0

    .line 358
    if-eqz v2, :cond_4

    .line 359
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 361
    :cond_4
    throw v0

    .line 358
    :cond_5
    if-eqz v2, :cond_3

    .line 359
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_2
.end method

.method public b(Lcom/apkol/utils/e/b$c;)[B
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 373
    iget-object v6, p1, Lcom/apkol/utils/e/b$c;->c:Landroid/content/Context;

    .line 374
    iget-object v3, p1, Lcom/apkol/utils/e/b$c;->b:Ljava/lang/String;

    .line 375
    iget-object v2, p1, Lcom/apkol/utils/e/b$c;->g:Ljava/lang/Object;

    .line 376
    iget-object v7, p1, Lcom/apkol/utils/e/b$c;->d:Ljava/util/List;

    .line 378
    iget-object v5, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "httpPost Map<String, String> url ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v8, 0x0

    .line 384
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    .line 386
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_6

    .line 393
    :cond_0
    if-eqz v2, :cond_1

    .line 395
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 396
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 398
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 401
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 408
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 409
    const-string v2, "UTF-8"

    .line 408
    invoke-direct {v1, v7, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 419
    :cond_1
    :goto_2
    const/16 v1, 0x1001

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V

    .line 421
    invoke-direct {p0, v6}, Lcom/apkol/utils/e/e;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 422
    invoke-direct {p0, v1, v5, v6}, Lcom/apkol/utils/e/e;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Landroid/content/Context;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 424
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 425
    iget-object v3, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "httpPost httpCode ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_11

    .line 427
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 428
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 430
    const/16 v1, 0x1002

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v1, v3, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V

    .line 432
    if-eqz v2, :cond_12

    .line 433
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 434
    const/16 v1, 0x400

    :try_start_3
    new-array v1, v1, [B

    .line 436
    :goto_3
    iget-boolean v6, p1, Lcom/apkol/utils/e/b$c;->f:Z

    if-nez v6, :cond_f

    .line 446
    :cond_2
    iget-boolean v1, p1, Lcom/apkol/utils/e/b$c;->f:Z

    if-eqz v1, :cond_10

    .line 448
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 449
    const/16 v6, 0x1004

    invoke-virtual {p0, v6, v1, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 469
    :goto_4
    if-eqz v2, :cond_3

    .line 470
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 472
    :cond_3
    if-eqz v3, :cond_4

    .line 473
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 479
    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 480
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 483
    :cond_5
    :goto_6
    return-object v1

    .line 387
    :cond_6
    :try_start_5
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v1}, Lcom/apkol/utils/e/b$a;->a()Ljava/lang/String;

    move-result-object v9

    .line 388
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkol/utils/e/b$a;

    invoke-virtual {v1}, Lcom/apkol/utils/e/b$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {v5, v9, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 401
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    iget-object v10, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "----->"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ": "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-static {v10, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    .line 405
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v10, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 461
    :catch_0
    move-exception v1

    move-object v2, v5

    move-object v3, v4

    move-object v5, v4

    .line 463
    :goto_7
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 464
    iget-object v6, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httpPost Exception ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v6, p0, Lcom/apkol/utils/e/e;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httpPost Exception ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/16 v6, 0x1005

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6, v1, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 469
    if-eqz v3, :cond_8

    .line 470
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 472
    :cond_8
    if-eqz v5, :cond_9

    .line 473
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 479
    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    .line 480
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_a
    :goto_9
    move-object v1, v4

    .line 483
    goto/16 :goto_6

    .line 411
    :cond_b
    :try_start_8
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 412
    check-cast v2, Ljava/lang/String;

    .line 413
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    .line 414
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 413
    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 415
    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 467
    :catchall_0
    move-exception v1

    move-object v3, v4

    .line 469
    :goto_a
    if-eqz v4, :cond_c

    .line 470
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 472
    :cond_c
    if-eqz v3, :cond_d

    .line 473
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 479
    :cond_d
    :goto_b
    if-eqz v5, :cond_e

    .line 480
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 482
    :cond_e
    throw v1

    .line 437
    :cond_f
    :try_start_a
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 438
    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 439
    const/16 v7, 0x1003

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V

    goto/16 :goto_3

    .line 461
    :catch_1
    move-exception v1

    move-object v12, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_7

    .line 453
    :cond_10
    const/16 v1, 0x1006

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v1, v4

    goto/16 :goto_4

    .line 475
    :catch_2
    move-exception v2

    .line 477
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 458
    :cond_11
    const/16 v1, 0x1005

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p0, v1, v2, p1}, Lcom/apkol/utils/e/e;->a(ILjava/lang/Object;Lcom/apkol/utils/e/b$b;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v2, v4

    .line 469
    :cond_12
    if-eqz v2, :cond_13

    .line 470
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 472
    :cond_13
    if-eqz v4, :cond_14

    .line 473
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 479
    :cond_14
    :goto_c
    if-eqz v5, :cond_a

    .line 480
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_9

    .line 475
    :catch_3
    move-exception v1

    .line 477
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 475
    :catch_4
    move-exception v2

    .line 477
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 475
    :catch_5
    move-exception v1

    .line 477
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 467
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

    .line 461
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
.end method
