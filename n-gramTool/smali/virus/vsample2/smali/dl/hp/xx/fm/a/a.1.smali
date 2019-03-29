.class public Ldl/hp/xx/fm/a/a;
.super Ljava/lang/Object;
.source "r"


# static fields
.field private static final synthetic pDvqLhYe:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static J(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "arg0"    # Ljava/io/InputStream;
    .param p1, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2000

    const/4 v4, 0x0

    .line 80
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "z:\\=V-U<\u001b!HhU=W$\u0015"

    invoke-static {v1}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    new-array v2, v5, [B

    move-object v0, v1

    .line 77
    :goto_0
    invoke-virtual {v0, v2, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 250
    invoke-virtual {p1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    move-object v0, v1

    goto :goto_0

    .line 43
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_1
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static l(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "arg0"    # Ljava/io/InputStream;
    .param p1, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2000

    const/4 v4, 0x0

    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "z:\\=V-U<\u001b!HhU=W$\u0015"

    invoke-static {v2}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1
    new-array v1, v5, [B

    move-object v0, p0

    .line 153
    .end local p0    # "arg0":Ljava/io/InputStream;
    .local v0, "arg0":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 265
    invoke-virtual {p1, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    move-object v0, p0

    goto :goto_0

    .line 226
    :cond_2
    return-void
.end method

.method public static pDvqLhYe(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "arg0"    # Ljava/io/InputStream;

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 200
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 132
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static pDvqLhYe(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "arg0"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 190
    if-nez p0, :cond_0

    .line 128
    :goto_0
    return-object v0

    .line 184
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    :try_start_0
    invoke-static {p0, v2}, Ldl/hp/xx/fm/a/a;->l(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 181
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 18
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 105
    :catch_1
    move-exception v1

    .line 131
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 157
    :catch_2
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 18
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 128
    :goto_1
    throw v0

    .line 157
    :catch_3
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static pDvqLhYe(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "arg0"    # Ljava/io/Closeable;

    .prologue
    .line 4
    if-eqz p0, :cond_0

    .line 24
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static pDvqLhYe(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "arg0"    # Ljava/io/InputStream;
    .param p1, "arg1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2000

    const/4 v5, 0x0

    .line 194
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 70
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    new-array v2, v6, [B

    move-object v0, p0

    .line 155
    .end local p0    # "arg0":Ljava/io/InputStream;
    .local v0, "arg0":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 222
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 237
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 235
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 40
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    return-void

    .line 78
    :cond_0
    invoke-virtual {v1, v2, v5, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    move-object v0, p0

    .line 39
    goto :goto_0

    .line 7
    :catch_0
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 228
    .end local v0    # "arg0":Ljava/io/InputStream;
    .restart local p0    # "arg0":Ljava/io/InputStream;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "z:\\=V-U<\u001b!HhU=W$\u0015"

    invoke-static {v2}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
