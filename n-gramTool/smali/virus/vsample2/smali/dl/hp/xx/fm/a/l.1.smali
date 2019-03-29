.class public Ldl/hp/xx/fm/a/l;
.super Ljava/lang/Object;
.source "p"

# interfaces
.implements Ldl/hp/xx/fm/a/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;)Ldl/hp/xx/fm/a/c;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    const/16 v0, 0x7530

    invoke-virtual {p0, p1, v0}, Ldl/hp/xx/fm/a/l;->J(Ljava/lang/String;I)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public J(Ljava/lang/String;I)Ldl/hp/xx/fm/a/c;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Ldl/hp/xx/fm/a/l;->pDvqLhYe(Ljava/lang/String;ILjava/lang/String;I)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;)Ldl/hp/xx/fm/a/c;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    const/16 v0, 0x7530

    invoke-virtual {p0, p1, v0}, Ldl/hp/xx/fm/a/l;->pDvqLhYe(Ljava/lang/String;I)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;I)Ldl/hp/xx/fm/a/c;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    const/16 v1, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Ldl/hp/xx/fm/a/l;->pDvqLhYe(Ljava/lang/String;Ljava/util/Map;I)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;ILjava/lang/String;I)Ldl/hp/xx/fm/a/c;
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t\\m\u000eh]!@tBm\u0000"

    invoke-static {v1}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    if-gtz p2, :cond_1

    .line 138
    const/16 p2, 0x7530

    .line 68
    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 228
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 74
    invoke-static {v2, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 255
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-lez p4, :cond_2

    .line 240
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, " O<KfI\'N<^f_-])N$OeK:T0B"

    invoke-static {v3}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, p3, p4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 254
    :cond_2
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3

    .line 111
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    .line 265
    :cond_3
    new-instance v0, Ldl/hp/xx/fm/a/c;

    invoke-direct {v0}, Ldl/hp/xx/fm/a/c;-><init>()V

    .line 233
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldl/hp/xx/fm/a/c;->pDvqLhYe(Ljava/io/InputStream;)V

    .line 144
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldl/hp/xx/fm/a/c;->pDvqLhYe(J)V

    goto :goto_0
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/io/File;ILdl/hp/xx/fm/a/G;)Ldl/hp/xx/fm/a/c;
    .locals 7
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/io/File;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ldl/hp/xx/fm/a/G;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    const-string v3, "file"

    const/4 v4, 0x0

    const/16 v5, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ldl/hp/xx/fm/a/l;->pDvqLhYe(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;ILdl/hp/xx/fm/a/G;)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/io/File;Ldl/hp/xx/fm/a/G;)Ldl/hp/xx/fm/a/c;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/io/File;
    .param p3, "arg2"    # Ldl/hp/xx/fm/a/G;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    const/16 v0, 0x7530

    invoke-virtual {p0, p1, p2, v0, p3}, Ldl/hp/xx/fm/a/l;->pDvqLhYe(Ljava/lang/String;Ljava/io/File;ILdl/hp/xx/fm/a/G;)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;ILdl/hp/xx/fm/a/G;)Ldl/hp/xx/fm/a/c;
    .locals 9
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/io/File;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/util/Map;
    .param p5, "arg4"    # I
    .param p6, "arg5"    # Ldl/hp/xx/fm/a/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ldl/hp/xx/fm/a/G;",
            ")",
            "Ldl/hp/xx/fm/a/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Ldl/hp/xx/fm/a/l;->pDvqLhYe(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;ILdl/hp/xx/fm/a/G;Ljava/lang/String;I)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;ILdl/hp/xx/fm/a/G;Ljava/lang/String;I)Ldl/hp/xx/fm/a/c;
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/io/File;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/util/Map;
    .param p5, "arg4"    # I
    .param p6, "arg5"    # Ldl/hp/xx/fm/a/G;
    .param p7, "arg6"    # Ljava/lang/String;
    .param p8, "arg7"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ldl/hp/xx/fm/a/G;",
            "Ljava/lang/String;",
            "I)",
            "Ldl/hp/xx/fm/a/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t\\m\u000eh]!@tBm\u0000"

    invoke-static {v1}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "]!W-\u001b!HhU=W$\u0015"

    invoke-static {v1}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2
    if-gtz p5, :cond_3

    .line 108
    const/16 p5, 0x7530

    .line 162
    :cond_3
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 143
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 76
    invoke-static {v1, p5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 137
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-lez p8, :cond_4

    .line 215
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "iZu^/\\n[uK/JdH`[mZ,^sAyW"

    invoke-static {v2}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, p7, p8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 148
    :cond_4
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 192
    const/4 v0, 0x0

    .line 146
    const/16 v2, 0xc8

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 199
    new-instance v0, Ldl/hp/xx/fm/a/c;

    invoke-direct {v0}, Ldl/hp/xx/fm/a/c;-><init>()V

    .line 140
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldl/hp/xx/fm/a/c;->pDvqLhYe(Ljava/io/InputStream;)V

    .line 175
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldl/hp/xx/fm/a/c;->pDvqLhYe(J)V

    .line 213
    :cond_5
    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Ldl/hp/xx/fm/a/G;)Ldl/hp/xx/fm/a/c;
    .locals 7
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/io/File;
    .param p3, "arg2"    # Ljava/util/Map;
    .param p4, "arg3"    # Ldl/hp/xx/fm/a/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ldl/hp/xx/fm/a/G;",
            ")",
            "Ldl/hp/xx/fm/a/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    const-string v3, "file"

    const/16 v5, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ldl/hp/xx/fm/a/l;->pDvqLhYe(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;ILdl/hp/xx/fm/a/G;)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/util/Map;)Ldl/hp/xx/fm/a/c;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ldl/hp/xx/fm/a/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    const/16 v0, 0x7530

    invoke-virtual {p0, p1, p2, v0}, Ldl/hp/xx/fm/a/l;->pDvqLhYe(Ljava/lang/String;Ljava/util/Map;I)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/util/Map;I)Ldl/hp/xx/fm/a/c;
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/util/Map;
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ldl/hp/xx/fm/a/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ldl/hp/xx/fm/a/l;->pDvqLhYe(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;I)Ldl/hp/xx/fm/a/c;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;I)Ldl/hp/xx/fm/a/c;
    .locals 7
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/util/Map;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)",
            "Ldl/hp/xx/fm/a/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t\\m\u000eh]!@tBm\u0000"

    invoke-static {v1}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    if-gtz p3, :cond_1

    .line 41
    const/16 p3, 0x7530

    .line 190
    :cond_1
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 35
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 30
    invoke-static {v0, p3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 121
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lez p5, :cond_2

    .line 184
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, " O<KfI\'N<^f_-])N$OeK:T0B"

    invoke-static {v1}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, p4, p5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 105
    :cond_2
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 131
    if-eqz p2, :cond_4

    .line 207
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    .line 145
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 88
    goto :goto_0

    .line 69
    :cond_3
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v5, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 174
    :cond_4
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 208
    const/4 v0, 0x0

    .line 259
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 113
    new-instance v0, Ldl/hp/xx/fm/a/c;

    invoke-direct {v0}, Ldl/hp/xx/fm/a/c;-><init>()V

    .line 4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldl/hp/xx/fm/a/c;->pDvqLhYe(Ljava/io/InputStream;)V

    .line 180
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldl/hp/xx/fm/a/c;->pDvqLhYe(J)V

    .line 171
    :cond_5
    return-object v0
.end method
