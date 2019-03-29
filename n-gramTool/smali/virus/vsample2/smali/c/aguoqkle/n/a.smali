.class public final Lc/aguoqkle/n/a;
.super Ljava/lang/Object;


# static fields
.field private static h:Ljava/util/HashMap;


# instance fields
.field public a:I

.field private b:Ljava/lang/String;

.field private c:Lorg/apache/http/params/HttpParams;

.field private d:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final e:I

.field private final f:I

.field private g:Lc/aguoqkle/n/CocoMi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/aguoqkle/n/a;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc/aguoqkle/n/CocoMi;)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0xea60

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lc/aguoqkle/n/a;->e:I

    iput v1, p0, Lc/aguoqkle/n/a;->f:I

    iput v2, p0, Lc/aguoqkle/n/a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iput-object p2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iput-object p1, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/a;->c:Lorg/apache/http/params/HttpParams;

    iput v2, p0, Lc/aguoqkle/n/a;->a:I

    iget-object v0, p0, Lc/aguoqkle/n/a;->c:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v0, p0, Lc/aguoqkle/n/a;->c:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v0, p0, Lc/aguoqkle/n/a;->c:Lorg/apache/http/params/HttpParams;

    const-string v1, "charset"

    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lc/aguoqkle/n/a;->c:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lc/aguoqkle/n/b;

    invoke-direct {v1, p0}, Lc/aguoqkle/n/b;-><init>(Lc/aguoqkle/n/a;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    return-void
.end method

.method private static a(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, "cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Ljava/lang/String;
    .locals 9

    const/16 v8, 0xc8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/a;->a:I

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v2, "application/vnd.wap.wmlscriptc, text/vnd.wap.wml, application/vnd.wap.xhtml+xml, application/xhtml+xml, text/html, multipart/mixed, */*, text/x-vcard, text/x-vcalendar, image/gif, image/vnd.wap.wbmp"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Charset"

    const-string v2, "ISO-8859-1, US-ASCII, UTF-8; Q=0.8, ISO-10646-UCS-2; Q=0.6"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v2, "zh-CN,zh;q=0.9,en;q=0.8"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "User-Agent"

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "Cookie"

    const-string v2, "cookie"

    invoke-static {v2}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cookie"

    invoke-static {v0}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, "Referer"

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->r:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const-string v0, "X-Requested-With"

    const-string v2, "XMLHttpRequest"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    if-eq v2, v8, :cond_3

    const/16 v0, 0xce

    if-eq v2, v0, :cond_3

    const/16 v0, 0x12e

    if-eq v2, v0, :cond_3

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0}, Lc/aguoqkle/n/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eq v0, v7, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iput-object v3, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    :cond_5
    if-eq v2, v8, :cond_6

    const/16 v0, 0xce

    if-ne v2, v0, :cond_9

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lc/aguoqkle/n/a;->a:I
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_7
    :try_start_2
    const-string v0, "User-Agent"

    const-string v2, "Nokia5800"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    :cond_8
    :goto_2
    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v5

    goto :goto_1

    :cond_9
    const/16 v0, 0x12e

    if-eq v2, v0, :cond_a

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_c

    :cond_a
    :try_start_3
    const-string v0, "Location"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    move v1, v4

    :goto_3
    array-length v2, v0

    if-lt v1, v2, :cond_b

    invoke-virtual {p0, p1, p2}, Lc/aguoqkle/n/a;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_d

    move-object v0, v5

    goto :goto_1

    :cond_d
    invoke-virtual {p0, p1, p2}, Lc/aguoqkle/n/a;->a(II)Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0xc8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/a;->a:I

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v0, "Accept-Charset"

    const-string v2, "ISO-8859-1, US-ASCII, UTF-8; Q=0.8, ISO-10646-UCS-2; Q=0.6"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v2, "zh-CN,zh;q=0.9,en;q=0.8"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v2, "application/vnd.wap.wmlscriptc, text/vnd.wap.wml, application/vnd.wap.xhtml+xml, application/xhtml+xml, text/html, multipart/mixed, */*, text/x-vcard, text/x-vcalendar, image/gif, image/vnd.wap.wbmp"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {v1, v0, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_7

    const-string v0, "User-Agent"

    const-string v2, "Nokia5800"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "Cookie"

    const-string v2, "cookie"

    invoke-static {v2}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cookie"

    invoke-static {v0}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, "Referer"

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->r:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const-string v0, "X-Requested-With"

    const-string v2, "XMLHttpRequest"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    if-eq v2, v8, :cond_3

    const/16 v0, 0xce

    if-eq v2, v0, :cond_3

    const/16 v0, 0x12e

    if-eq v2, v0, :cond_3

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0}, Lc/aguoqkle/n/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eq v0, v7, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iput-object v3, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    :cond_5
    if-eq v2, v8, :cond_6

    const/16 v0, 0xce

    if-ne v2, v0, :cond_9

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lc/aguoqkle/n/a;->a:I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    return-object v0

    :cond_7
    :try_start_2
    const-string v0, "User-Agent"

    invoke-virtual {v1, v0, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    :cond_8
    :goto_2
    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v5

    goto :goto_1

    :cond_9
    const/16 v0, 0x12e

    if-eq v2, v0, :cond_a

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_c

    :cond_a
    :try_start_3
    const-string v0, "Location"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    move v1, v4

    :goto_3
    array-length v2, v0

    if-lt v1, v2, :cond_b

    invoke-virtual {p0, p1, p2, p3}, Lc/aguoqkle/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_d

    move-object v0, v5

    goto :goto_1

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lc/aguoqkle/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0xc8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/a;->a:I

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v0, "Accept-Charset"

    const-string v2, "ISO-8859-1, US-ASCII, UTF-8; Q=0.8, ISO-10646-UCS-2; Q=0.6"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v2, "zh-CN,zh;q=0.9,en;q=0.8"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v2, "application/vnd.wap.wmlscriptc, text/vnd.wap.wml, application/vnd.wap.xhtml+xml, application/xhtml+xml, text/html, multipart/mixed, */*, text/x-vcard, text/x-vcalendar, image/gif, image/vnd.wap.wbmp"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {v1, v0, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_7

    const-string v0, "User-Agent"

    const-string v2, "Nokia5800"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "Cookie"

    const-string v2, "cookie"

    invoke-static {v2}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cookie"

    invoke-static {v0}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, "Referer"

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->r:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const-string v0, "X-Requested-With"

    const-string v2, "XMLHttpRequest"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    if-eq v2, v8, :cond_3

    const/16 v0, 0xce

    if-eq v2, v0, :cond_3

    const/16 v0, 0x12e

    if-eq v2, v0, :cond_3

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0}, Lc/aguoqkle/n/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eq v0, v7, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iput-object v3, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    :cond_5
    if-eq v2, v8, :cond_6

    const/16 v0, 0xce

    if-ne v2, v0, :cond_9

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lc/aguoqkle/n/a;->a:I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    return-object v0

    :cond_7
    :try_start_2
    const-string v0, "User-Agent"

    invoke-virtual {v1, v0, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    :cond_8
    :goto_2
    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v5

    goto :goto_1

    :cond_9
    const/16 v0, 0x12e

    if-eq v2, v0, :cond_a

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_c

    :cond_a
    :try_start_3
    const-string v0, "Location"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    move v1, v4

    :goto_3
    array-length v2, v0

    if-lt v1, v2, :cond_b

    invoke-virtual {p0, p1, p2, p3}, Lc/aguoqkle/n/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_d

    move-object v0, v5

    goto :goto_1

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lc/aguoqkle/n/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public final a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0xc8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/a;->a:I

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v0, "Accept-Charset"

    const-string v2, "ISO-8859-1, US-ASCII, UTF-8; Q=0.8, ISO-10646-UCS-2; Q=0.6"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v2, "zh-CN,zh;q=0.9,en;q=0.8"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v2, "application/vnd.wap.wmlscriptc, text/vnd.wap.wml, application/vnd.wap.xhtml+xml, application/xhtml+xml, text/html, multipart/mixed, */*, text/x-vcard, text/x-vcalendar, image/gif, image/vnd.wap.wbmp"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {v1, v0, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_7

    const-string v0, "User-Agent"

    const-string v2, "Nokia5800"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "Cookie"

    const-string v2, "cookie"

    invoke-static {v2}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cookie"

    invoke-static {v0}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, "Referer"

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->r:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const-string v0, "X-Requested-With"

    const-string v2, "XMLHttpRequest"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    if-eq v2, v8, :cond_3

    const/16 v0, 0xce

    if-eq v2, v0, :cond_3

    const/16 v0, 0x12e

    if-eq v2, v0, :cond_3

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0}, Lc/aguoqkle/n/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eq v0, v7, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iput-object v3, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    :cond_5
    if-eq v2, v8, :cond_6

    const/16 v0, 0xce

    if-ne v2, v0, :cond_9

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lc/aguoqkle/n/a;->a:I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    return-object v0

    :cond_7
    :try_start_2
    const-string v0, "User-Agent"

    invoke-virtual {v1, v0, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    :cond_8
    :goto_2
    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v5

    goto :goto_1

    :cond_9
    const/16 v0, 0x12e

    if-eq v2, v0, :cond_a

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_c

    :cond_a
    :try_start_3
    const-string v0, "Location"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    move v1, v4

    :goto_3
    array-length v2, v0

    if-lt v1, v2, :cond_b

    invoke-virtual {p0, p1, p2, p3}, Lc/aguoqkle/n/a;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_d

    move-object v0, v5

    goto :goto_1

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lc/aguoqkle/n/a;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public final a()V
    .locals 4

    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "10.0.0.172"

    const/16 v2, 0x50

    const-string v3, "http"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 4

    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "10.0.0.200"

    const/16 v2, 0x50

    const-string v3, "http"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public final c()[B
    .locals 9

    const/16 v8, 0xc8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    :cond_0
    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/a;->a:I

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v2, "application/vnd.wap.wmlscriptc, text/vnd.wap.wml, application/vnd.wap.xhtml+xml, application/xhtml+xml, text/html, multipart/mixed, */*, text/x-vcard, text/x-vcalendar, image/gif, image/vnd.wap.wbmp"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Charset"

    const-string v2, "ISO-8859-1, US-ASCII, UTF-8; Q=0.8, ISO-10646-UCS-2; Q=0.6"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v2, "zh-CN,zh;q=0.9,en;q=0.8"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "User-Agent"

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "Cookie"

    const-string v2, "cookie"

    invoke-static {v2}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cookie"

    invoke-static {v0}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-lt v0, v7, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, "Referer"

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->r:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const-string v0, "X-Requested-With"

    const-string v2, "XMLHttpRequest"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    if-eq v2, v8, :cond_4

    const/16 v0, 0xce

    if-eq v2, v0, :cond_4

    const/16 v0, 0x12e

    if-eq v2, v0, :cond_4

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_6

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0}, Lc/aguoqkle/n/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :cond_5
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eq v0, v7, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iput-object v3, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    :cond_6
    if-eq v2, v8, :cond_7

    const/16 v0, 0xce

    if-ne v2, v0, :cond_a

    :cond_7
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lc/aguoqkle/n/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lc/aguoqkle/n/a;->a:I

    :goto_1
    return-object v0

    :cond_8
    const-string v0, "User-Agent"

    const-string v2, "Nokia5800"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget v1, p0, Lc/aguoqkle/n/a;->a:I

    if-le v1, v5, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    :cond_9
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_a
    const/16 v0, 0x12e

    if-eq v2, v0, :cond_b

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_d

    :cond_b
    :try_start_1
    const-string v0, "Location"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v2, v0

    if-lez v2, :cond_9

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    move v1, v4

    :goto_3
    array-length v2, v0

    if-lt v1, v2, :cond_c

    invoke-virtual {p0}, Lc/aguoqkle/n/a;->c()[B

    move-result-object v0

    goto :goto_1

    :cond_c
    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    if-le v0, v5, :cond_e

    const/4 v0, 0x0

    goto :goto_1

    :cond_e
    invoke-virtual {p0}, Lc/aguoqkle/n/a;->c()[B
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    iget v1, p0, Lc/aguoqkle/n/a;->a:I

    if-le v1, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public final d()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    :cond_0
    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/a;->a:I

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v2, "application/vnd.wap.wmlscriptc, text/vnd.wap.wml, application/vnd.wap.xhtml+xml, application/xhtml+xml, text/html, multipart/mixed, */*, text/x-vcard, text/x-vcalendar, image/gif, image/vnd.wap.wbmp"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Charset"

    const-string v2, "ISO-8859-1, US-ASCII, UTF-8; Q=0.8, ISO-10646-UCS-2; Q=0.6"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v2, "zh-CN,zh;q=0.9,en;q=0.8"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "User-Agent"

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "Cookie"

    const-string v2, "cookie"

    invoke-static {v2}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cookie"

    invoke-static {v0}, Lc/aguoqkle/n/x;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-lt v0, v8, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, "Referer"

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v2, v2, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v2, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v2, v2, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->r:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const-string v0, "X-Requested-With"

    const-string v2, "XMLHttpRequest"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    const/16 v0, 0xc8

    if-eq v2, v0, :cond_4

    const/16 v0, 0xce

    if-eq v2, v0, :cond_4

    const/16 v0, 0x12e

    if-eq v2, v0, :cond_4

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_6

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, v3, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->p:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0}, Lc/aguoqkle/n/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :cond_5
    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget v0, v0, Lc/aguoqkle/n/t;->q:I

    if-eq v0, v8, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v3, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iput-object v3, v0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    :cond_6
    const/16 v0, 0xc8

    if-eq v2, v0, :cond_7

    const/16 v0, 0xce

    if-ne v2, v0, :cond_a

    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lc/aguoqkle/n/a;->a:I
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    const-string v1, "\u6bcf\u6708\u4ec5\u5728\u60a8\u7b2c\u4e00\u6b21\u767b\u9646\u65f6\u63d0\u9192"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_8

    invoke-virtual {p0}, Lc/aguoqkle/n/a;->d()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_1
    return-object v0

    :cond_9
    const-string v0, "User-Agent"

    const-string v2, "Nokia5800"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget v1, p0, Lc/aguoqkle/n/a;->a:I

    if-le v1, v7, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lc/aguoqkle/n/a;->g:Lc/aguoqkle/n/CocoMi;

    iget-object v1, v1, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "This is not a normal request"

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_1

    :cond_a
    const/16 v0, 0x12e

    if-eq v2, v0, :cond_b

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_e

    :cond_b
    :try_start_3
    const-string v0, "Location"

    invoke-interface {v1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_d

    array-length v2, v0

    if-lez v2, :cond_d

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/a;->b:Ljava/lang/String;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    move v1, v6

    :goto_3
    array-length v2, v0

    if-lt v1, v2, :cond_c

    invoke-virtual {p0}, Lc/aguoqkle/n/a;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_c
    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    move-object v0, v4

    goto :goto_1

    :cond_e
    iget v0, p0, Lc/aguoqkle/n/a;->a:I

    if-le v0, v7, :cond_f

    move-object v0, v4

    goto :goto_1

    :cond_f
    invoke-virtual {p0}, Lc/aguoqkle/n/a;->d()Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    iget v1, p0, Lc/aguoqkle/n/a;->a:I

    if-le v1, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_10
    move-object v0, v4

    goto/16 :goto_1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lc/aguoqkle/n/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void
.end method
