.class public Lcom/upay/billing/utils/HttpRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpRunner"


# instance fields
.field private connectTimeout:I

.field private headers:Ljava/util/HashMap;

.field private method:Ljava/lang/String;

.field private params:Ljava/util/HashMap;

.field private postData:[B

.field private readTimeout:I

.field private retry:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->method:Ljava/lang/String;

    iput v1, p0, Lcom/upay/billing/utils/HttpRunner;->connectTimeout:I

    iput v1, p0, Lcom/upay/billing/utils/HttpRunner;->readTimeout:I

    iput v1, p0, Lcom/upay/billing/utils/HttpRunner;->retry:I

    iput-object v2, p0, Lcom/upay/billing/utils/HttpRunner;->postData:[B

    iput-object p1, p0, Lcom/upay/billing/utils/HttpRunner;->url:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->params:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/upay/billing/utils/HttpRunner;->headers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->headers:Ljava/util/HashMap;

    invoke-static {v0, p1, p2}, Lcom/upay/billing/utils/Util;->safePut(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->headers:Ljava/util/HashMap;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;Z)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    return-object v0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;Z)Lcom/upay/billing/utils/HttpRunner;
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->postData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "post data is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->params:Ljava/util/HashMap;

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object p0

    :cond_2
    if-eqz p3, :cond_1

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public addParams(Ljava/util/Map;Z)Lcom/upay/billing/utils/HttpRunner;
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;Z)Lcom/upay/billing/utils/HttpRunner;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected onFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSuccess([B)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/16 v10, 0x3f

    const/16 v9, 0x26

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "GET"

    iget-object v1, p0, Lcom/upay/billing/utils/HttpRunner;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->params:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v5, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->url:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    move v5, v2

    :cond_1
    move-object v8, v4

    move-object v6, v4

    move-object v1, v4

    :goto_2
    :try_start_0
    new-instance v7, Ljava/net/URL;

    if-eqz v11, :cond_3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/upay/billing/utils/HttpRunner;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v5, :cond_2

    move v0, v9

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/upay/billing/utils/HttpRunner;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v1, p0, Lcom/upay/billing/utils/HttpRunner;->connectTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/upay/billing/utils/HttpRunner;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/upay/billing/utils/HttpRunner;->headers:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/upay/billing/utils/HttpRunner;->headers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v6

    move-object v6, v7

    move-object v7, v0

    :goto_6
    const-string v0, "HttpRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ",ex="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",msg="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    iget v7, p0, Lcom/upay/billing/utils/HttpRunner;->retry:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/upay/billing/utils/HttpRunner;->retry:I

    if-gtz v7, :cond_b

    :goto_8
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_a

    invoke-virtual {p0, v2}, Lcom/upay/billing/utils/HttpRunner;->onSuccess([B)V

    :goto_9
    return-void

    :cond_2
    move v0, v10

    goto/16 :goto_3

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->url:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :cond_4
    if-nez v11, :cond_6

    :try_start_3
    iget-object v1, p0, Lcom/upay/billing/utils/HttpRunner;->postData:[B

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/upay/billing/utils/HttpRunner;->postData:[B

    :goto_a
    if-eqz v1, :cond_5

    const-string v2, "Content-Length"

    array-length v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->readStream(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    move-object v0, v8

    move-object v2, v6

    goto :goto_8

    :cond_7
    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_a

    :cond_8
    move-object v1, v4

    goto :goto_a

    :cond_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    move-object v2, v6

    move-object v6, v7

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v1, v0}, Lcom/upay/billing/utils/HttpRunner;->onFailed(ILjava/lang/String;)V

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v2, v6

    move-object v6, v1

    goto/16 :goto_6

    :cond_b
    move-object v8, v0

    move-object v1, v6

    move-object v6, v2

    goto/16 :goto_2

    :cond_c
    move-object v3, v4

    goto/16 :goto_1
.end method

.method public setConnectTimeout(I)Lcom/upay/billing/utils/HttpRunner;
    .locals 0

    iput p1, p0, Lcom/upay/billing/utils/HttpRunner;->connectTimeout:I

    return-object p0
.end method

.method public setDoGet()Lcom/upay/billing/utils/HttpRunner;
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->postData:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "post data is not null, only POST is available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "GET"

    iput-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setDoPost()Lcom/upay/billing/utils/HttpRunner;
    .locals 1

    const-string v0, "POST"

    iput-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setPostData([B)Lcom/upay/billing/utils/HttpRunner;
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/utils/HttpRunner;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "param map is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/upay/billing/utils/HttpRunner;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    iput-object p1, p0, Lcom/upay/billing/utils/HttpRunner;->postData:[B

    return-object p0
.end method

.method public setReadTimeout(I)Lcom/upay/billing/utils/HttpRunner;
    .locals 0

    iput p1, p0, Lcom/upay/billing/utils/HttpRunner;->readTimeout:I

    return-object p0
.end method

.method public setRetry(I)Lcom/upay/billing/utils/HttpRunner;
    .locals 0

    iput p1, p0, Lcom/upay/billing/utils/HttpRunner;->retry:I

    return-object p0
.end method
