.class public Lcom/example/tb/HttpUtil;
.super Ljava/lang/Object;


# static fields
.field private static n:Lcom/example/tb/HttpUtil;

.field private static o:I

.field private static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xbb8

    sput v0, Lcom/example/tb/HttpUtil;->o:I

    const/4 v0, 0x3

    sput v0, Lcom/example/tb/HttpUtil;->p:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/example/tb/HttpUtil;
    .locals 1

    sget-object v0, Lcom/example/tb/HttpUtil;->n:Lcom/example/tb/HttpUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/tb/HttpUtil;

    invoke-direct {v0}, Lcom/example/tb/HttpUtil;-><init>()V

    sput-object v0, Lcom/example/tb/HttpUtil;->n:Lcom/example/tb/HttpUtil;

    :cond_0
    sget-object v0, Lcom/example/tb/HttpUtil;->n:Lcom/example/tb/HttpUtil;

    return-object v0
.end method


# virtual methods
.method public doDLFile(Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)Z
    .locals 20

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget v9, Lcom/example/tb/HttpUtil;->o:I

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v9, Lcom/example/tb/HttpUtil;->o:I

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v9, "GET"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_f

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v9

    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v5, 0x1000

    :try_start_3
    new-array v6, v5, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v16, v3

    move-wide/from16 v4, v16

    move v3, v2

    :cond_0
    :goto_1
    :try_start_4
    invoke-virtual {v9, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_4

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v6, 0x2

    iput v6, v2, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    iput v6, v2, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    if-eqz v9, :cond_2

    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    sget v1, Lcom/example/tb/HttpUtil;->p:I

    if-ge v7, v1, :cond_13

    const/4 v1, 0x1

    :goto_4
    return v1

    :cond_4
    const/4 v12, 0x0

    :try_start_7
    invoke-virtual {v10, v6, v12, v2}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v12, v2

    add-long/2addr v4, v12

    if-eqz v3, :cond_5

    const-wide/16 v12, 0x64

    mul-long/2addr v12, v4

    int-to-long v14, v11

    div-long/2addr v12, v14

    long-to-int v2, v12

    add-int/lit8 v2, v2, -0xa

    if-lt v2, v3, :cond_0

    :cond_5
    add-int/lit8 v3, v3, 0xa

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(I)V

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v12, 0x1

    iput v12, v2, Landroid/os/Message;->what:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v6, v1

    move v1, v3

    move-wide/from16 v16, v4

    move-object v4, v9

    move-object v5, v10

    move-object v9, v2

    move-wide/from16 v2, v16

    :goto_5
    add-int/lit8 v7, v7, 0x1

    :try_start_8
    sget v10, Lcom/example/tb/HttpUtil;->p:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ge v7, v10, :cond_c

    const-wide/16 v9, 0x3e8

    :try_start_9
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    if-eqz v5, :cond_6

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_6
    :goto_7
    if-eqz v4, :cond_7

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_7
    :goto_8
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    :goto_9
    sget v9, Lcom/example/tb/HttpUtil;->p:I

    if-ge v7, v9, :cond_3

    move-object v9, v6

    move-object v6, v5

    move-object v5, v4

    move-wide/from16 v16, v2

    move-wide/from16 v3, v16

    move v2, v1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v9

    :try_start_c
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v9, v4

    move-object v2, v6

    move-object v6, v5

    :goto_a
    if-eqz v6, :cond_9

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_9
    :goto_b
    if-eqz v9, :cond_a

    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :cond_a
    :goto_c
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v1

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :cond_c
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v5, :cond_d

    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    :cond_d
    :goto_d
    if-eqz v4, :cond_e

    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_e
    :goto_e
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9

    :catch_6
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catch_7
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_9
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :cond_f
    if-eqz v6, :cond_10

    :try_start_12
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    :cond_10
    :goto_f
    if-eqz v5, :cond_11

    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    :cond_11
    :goto_10
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    move/from16 v16, v2

    move-wide/from16 v17, v3

    move-wide/from16 v2, v17

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    move/from16 v1, v16

    goto :goto_9

    :catch_a
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catch_b
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catchall_1
    move-exception v2

    move-object v6, v10

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v2, v9

    move-object v9, v5

    goto :goto_a

    :catchall_3
    move-exception v2

    move-object v9, v5

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_a

    :catchall_4
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_a

    :catch_c
    move-exception v1

    move-object/from16 v16, v1

    move v1, v2

    move-wide/from16 v17, v3

    move-wide/from16 v2, v17

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    move-object/from16 v9, v16

    goto/16 :goto_5

    :catch_d
    move-exception v9

    move/from16 v16, v2

    move-wide/from16 v17, v3

    move-wide/from16 v2, v17

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    move/from16 v1, v16

    goto/16 :goto_5

    :catch_e
    move-exception v5

    move-object/from16 v16, v5

    move-object v5, v6

    move-object v6, v1

    move v1, v2

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-wide/from16 v18, v3

    move-wide/from16 v2, v18

    move-object/from16 v4, v17

    goto/16 :goto_5

    :catch_f
    move-exception v5

    move-object v6, v1

    move v1, v2

    move-wide/from16 v16, v3

    move-wide/from16 v2, v16

    move-object v4, v9

    move-object v9, v5

    move-object v5, v10

    goto/16 :goto_5

    :cond_13
    move v1, v8

    goto/16 :goto_4
.end method

.method public doGetStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, v1

    move-object v4, v1

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget v4, Lcom/example/tb/HttpUtil;->o:I

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v4, Lcom/example/tb/HttpUtil;->o:I

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string v1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v1

    :cond_1
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v4

    move-object v4, v7

    :goto_3
    add-int/lit8 v3, v3, 0x1

    :try_start_6
    sget v5, Lcom/example/tb/HttpUtil;->p:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ge v3, v5, :cond_4

    const-wide/16 v4, 0x3e8

    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_6
    sget v4, Lcom/example/tb/HttpUtil;->p:I

    if-ge v3, v4, :cond_0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_4
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_5

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_5
    :goto_7
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v7

    :goto_8
    if-eqz v1, :cond_6

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_8
    if-eqz v1, :cond_9

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_9
    :goto_a
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_6

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_6
    move-exception v4

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v4, v2

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v7

    goto :goto_3

    :catch_8
    move-exception v4

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    :catch_9
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v4

    move-object v4, v7

    goto :goto_3
.end method
