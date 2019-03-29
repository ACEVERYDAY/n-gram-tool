.class public Landroid/support/v4/app/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lorg/apache/http/client/HttpClient;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/app/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/p;->c:I

    iput-object v1, p0, Landroid/support/v4/app/p;->h:Lorg/apache/http/client/HttpClient;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/p;->i:I

    const/16 v0, 0x5dc

    iput v0, p0, Landroid/support/v4/app/p;->j:I

    iput-object v1, p0, Landroid/support/v4/app/p;->k:Ljava/lang/String;

    iput-object v1, p0, Landroid/support/v4/app/p;->l:Ljava/lang/String;

    iput p1, p0, Landroid/support/v4/app/p;->b:I

    if-lez p2, :cond_0

    iput p2, p0, Landroid/support/v4/app/p;->c:I

    :cond_0
    iput-object p3, p0, Landroid/support/v4/app/p;->d:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/app/p;->e:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/app/p;->f:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    const-class v2, Landroid/support/v4/content/CoreService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.support.v4.content.cmd.WapCfgUpload"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmd"

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "smsNum"

    iget v2, p0, Landroid/support/v4/app/p;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "smsBody"

    iget v2, p0, Landroid/support/v4/app/p;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private b(Ljava/lang/String;I[B)[B
    .locals 11

    const/4 v3, 0x0

    const/16 v10, 0x190

    const/4 v4, 0x0

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/f;->b(Landroid/content/Context;)Landroid/support/v4/app/f;

    :try_start_0
    sget-object v1, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v2, "conProcess"

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/p;->h:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/p;->h:Lorg/apache/http/client/HttpClient;

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/p;->h:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v1, p0, Landroid/support/v4/app/p;->h:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const v2, 0xafc8

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-boolean v1, Landroid/support/v4/app/f;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/p;->h:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.protocol.handle-redirects"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :goto_0
    sget-object v1, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ConMgr.apn_is_wap="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Landroid/support/v4/app/e;->a:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";url="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_4

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    :goto_1
    invoke-static {}, Landroid/support/v4/app/Support;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/e;->b(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "curConnType="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "C_C_TP"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v2, "execute"

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/p;->h:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v7, :cond_1

    move v1, v4

    :goto_3
    array-length v8, v7

    if-lt v1, v8, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/p;->k:Ljava/lang/String;

    :cond_1
    sget-object v1, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "status_code="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12c

    if-lt v6, v1, :cond_a

    if-ge v6, v10, :cond_a

    const-string v1, "set-cookie"

    invoke-interface {v5, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v7

    const-string v1, ""

    if-eqz v7, :cond_2

    array-length v8, v7

    move v2, v4

    :goto_4
    if-lt v2, v8, :cond_9

    :cond_2
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

    sget-object v4, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "status_code="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ";session="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ";location="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "status_code="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    :goto_5
    return-object v1

    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/p;->h:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.protocol.handle-redirects"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    move-object v1, v3

    goto :goto_5

    :cond_4
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    array-length v1, p3

    if-eqz v1, :cond_5

    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, p3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_5
    move-object v5, v2

    goto/16 :goto_1

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_6

    :cond_7
    :try_start_2
    aget-object v8, v7, v1

    if-eqz v1, :cond_8

    const-string v9, "&"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
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

    goto/16 :goto_3

    :cond_9
    aget-object v4, v7, v2

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

    goto/16 :goto_4

    :cond_a
    if-lt v6, v10, :cond_b

    const/16 v1, 0x1f4

    if-ge v6, v1, :cond_b

    sget-object v1, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "status_code="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "status_code="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_5

    :cond_b
    const/16 v1, 0xc8

    if-eq v6, v1, :cond_c

    const/16 v1, 0xce

    if-eq v6, v1, :cond_c

    move-object v1, v3

    goto/16 :goto_5

    :cond_c
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    sget-object v2, Landroid/support/v4/app/p;->a:Ljava/lang/String;

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

    invoke-static {v5}, Landroid/support/v4/app/h;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/h;->a([B)[B

    move-result-object v1

    goto/16 :goto_5

    :cond_d
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

    :goto_7
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-gtz v6, :cond_f

    :cond_e
    :goto_8
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto/16 :goto_5

    :cond_f
    if-eqz v2, :cond_10

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    const v8, 0xdc00

    if-gt v7, v8, :cond_e

    :cond_10
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_8
.end method


# virtual methods
.method public a(Ljava/lang/String;I[B)I
    .locals 17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/app/p;->i:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/app/p;->i:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/app/p;->i:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    sget-object v2, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/app/e;->b(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_0

    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/app/p;->g:I

    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/app/p;->g:I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/app/p;->j:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/support/v4/app/Support;->a(J)V

    invoke-direct/range {p0 .. p3}, Landroid/support/v4/app/p;->b(Ljava/lang/String;I[B)[B

    move-result-object v4

    const-string v3, "error"

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/p;->k:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "error"

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/app/p;->k:Ljava/lang/String;

    :cond_2
    if-eqz v4, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/support/v4/app/Support;->e(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/app/Support;->e(Ljava/lang/String;)V

    const-string v3, "onenterforward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v4, "catch: redirect"

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x1388

    :try_start_1
    invoke-static {v5, v6}, Landroid/support/v4/app/Support;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v5, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->d:Ljava/lang/String;

    const-string v5, "gdread"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "\u6b63\u5e38\u7b54\u6848\u786e\u8ba4\u8ba2\u8d2d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v4, "catch: answer mode"

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "img"

    const-string v4, "src"

    const-string v5, "/vs/avi"

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    const-string v3, "img"

    const-string v4, "data-src"

    const-string v5, "/vs/avi"

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?&rnd="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    sget-object v4, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lorg/jsoup/Jsoup;->parse(Landroid/content/Context;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    const-string v4, "a"

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/app/p;->l:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->d:Ljava/lang/String;

    const-string v5, "gdread"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "JFIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "JFIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x14

    if-ge v3, v5, :cond_9

    invoke-static {v4}, Landroid/support/v4/app/l;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    invoke-static {v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->l:Ljava/lang/String;

    const-string v4, "a"

    const-string v5, "href"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "verifyCode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v4/app/p;->g:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->d:Ljava/lang/String;

    const-string v4, "gdanime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "\u8bf7\u586b\u5165\u56fe\u7247\u5bf9\u5e94\u7684\u6570\u5b57\u6216\u5b57\u6bcd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v4/app/p;->g:I

    const-string v3, "form"

    const-string v4, "method"

    const-string v5, "post"

    const-string v6, "action"

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "form"

    const-string v5, "method"

    const-string v6, "post"

    invoke-static {v2, v4, v5, v6}, Landroid/support/v4/app/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v2}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_a
    const-string v3, "status_code=302"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v4, "catch: 302"

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "location="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "70000000009"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "10010001007"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "211.136.165.53/wl/hetiyanbao"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/p;->e:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_d
    const-string v3, "status_code=404"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "\u9875\u9762\u4e0d\u5b58\u5728"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    sget-object v2, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v3, "catch: 404"

    invoke-static {v2, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/app/p;->g:I

    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_f
    const-string v3, "\u6210\u529f\u8d2d\u4e70"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "\u5df2\u7ecf\u8d2d\u4e70"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "\u5df2\u8d2d\u4e70"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "\u6210\u529f\u70b9\u64ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "\u5df2\u7ecf\u8ba2\u8d2d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "\u5df2\u8ba2\u8d2d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "\u6210\u529f\u8ba2\u8d2d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    sget-object v2, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v3, "catch: \u5df2\u8ba2\u8d2d or \u5df2\u8d2d\u4e70"

    invoke-static {v2, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->k:Ljava/lang/String;

    const-string v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->k:Ljava/lang/String;

    const-string v4, "video/3gp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    sget-object v2, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v3, "catch: 3gp or mp4"

    invoke-static {v2, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_13
    const-string v3, "http-equiv=\"refresh\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v4, "catch: http-equiv=refresh"

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "meta"

    const-string v4, "http-equiv"

    const-string v5, "refresh"

    const-string v6, "content"

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->f:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->d:Ljava/lang/String;

    const-string v4, "gdread"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v4, "gdread"

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Landroid/support/v4/app/f;->a:Z

    if-eqz v3, :cond_15

    invoke-static {v2}, Landroid/support/v4/app/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_15
    array-length v0, v15

    move/from16 v16, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_3
    move/from16 v0, v16

    if-lt v14, v0, :cond_17

    :cond_16
    sget-object v2, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v3, "no catch"

    invoke-static {v2, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p3}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_17
    aget-object v7, v15, v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "catch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v7}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/app/p;->g:I

    const-string v4, "rtsp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_18
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_3

    :cond_19
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_1a
    const-string v3, "input"

    const-string v4, "type"

    const-string v5, "submit"

    const-string v6, "value"

    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const-string v3, "input"

    const-string v4, "type"

    const-string v5, "button"

    const-string v6, "value"

    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v8, :cond_1b

    if-eqz v3, :cond_18

    :cond_1b
    sget-object v3, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lorg/jsoup/Jsoup;->parse(Landroid/content/Context;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    const-string v4, "form"

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Element;

    const-string v9, "input"

    const-string v10, "type"

    const-string v11, "submit"

    const-string v12, "value"

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v9, "input"

    const-string v10, "type"

    const-string v11, "button"

    const-string v12, "value"

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v4, :cond_1d

    if-eqz v5, :cond_1c

    :cond_1d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/app/p;->g:I

    const-string v2, "form"

    const-string v3, "method"

    const-string v4, "post"

    const-string v5, "action"

    invoke-static {v8, v2, v3, v4, v5}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->d:Ljava/lang/String;

    const-string v4, "gdanime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v4, "gdanime"

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v15

    move/from16 v16, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_4
    move/from16 v0, v16

    if-ge v14, v0, :cond_16

    aget-object v7, v15, v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_20

    const-string v3, "*"

    const-string v4, ""

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "catch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v7}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v3, "*"

    const-string v4, ""

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1f
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    const-string v4, "rtsp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_20
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_4

    :cond_21
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_22
    const-string v3, "input"

    const-string v4, "type"

    const-string v5, "submit"

    const-string v6, "value"

    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const-string v3, "input"

    const-string v4, "type"

    const-string v5, "button"

    const-string v6, "value"

    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v8, :cond_23

    if-eqz v3, :cond_20

    :cond_23
    sget-object v3, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lorg/jsoup/Jsoup;->parse(Landroid/content/Context;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    const-string v4, "form"

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Element;

    const-string v9, "input"

    const-string v10, "type"

    const-string v11, "submit"

    const-string v12, "value"

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v9, "input"

    const-string v10, "type"

    const-string v11, "button"

    const-string v12, "value"

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v4, :cond_25

    if-eqz v5, :cond_24

    :cond_25
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/app/p;->g:I

    const-string v2, "form"

    const-string v3, "method"

    const-string v4, "post"

    const-string v5, "action"

    invoke-static {v8, v2, v3, v4, v5}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    const-string v4, "%7B%7D"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/p;->d:Ljava/lang/String;

    const-string v4, "gdvideo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v4, "gdvideo"

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v15

    move/from16 v16, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_16

    aget-object v7, v15, v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_27

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "catch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v7}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_29

    const-string v4, "rtsp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_27
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_5

    :cond_28
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_29
    const-string v3, "input"

    const-string v4, "type"

    const-string v5, "submit"

    const-string v6, "value"

    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const-string v3, "input"

    const-string v4, "type"

    const-string v5, "button"

    const-string v6, "value"

    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v8, :cond_2a

    if-eqz v3, :cond_2d

    :cond_2a
    sget-object v3, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lorg/jsoup/Jsoup;->parse(Landroid/content/Context;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    const-string v4, "form"

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Element;

    const-string v9, "input"

    const-string v10, "type"

    const-string v11, "submit"

    const-string v12, "value"

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v9, "input"

    const-string v10, "type"

    const-string v11, "button"

    const-string v12, "value"

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v4, :cond_2c

    if-eqz v5, :cond_2b

    :cond_2c
    const-string v2, "form"

    const-string v3, "method"

    const-string v4, "post"

    const-string v5, "action"

    invoke-static {v8, v2, v3, v4, v5}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Landroid/support/v4/app/l;->a(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1

    :cond_2d
    const-string v3, "order.msp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v4/app/p;->g:I

    const-string v3, ""

    const-string v4, "order"

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/app/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v2

    goto/16 :goto_1
.end method

.method public run()V
    .locals 4

    :try_start_0
    sget-object v0, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v1, "run"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/p;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->a(J)V

    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->e:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/p;->a(Ljava/lang/String;I[B)I

    move-result v0

    sget-object v1, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/support/v4/app/p;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Landroid/support/v4/app/p;->a:Ljava/lang/String;

    const-string v1, "run End"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/q;->a()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/q;->b(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0xd

    iput v0, p0, Landroid/support/v4/app/p;->g:I

    invoke-direct {p0}, Landroid/support/v4/app/p;->a()V

    goto :goto_0
.end method
