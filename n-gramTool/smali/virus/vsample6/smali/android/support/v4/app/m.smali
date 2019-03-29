.class public Landroid/support/v4/app/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/m$a;,
        Landroid/support/v4/app/m$b;,
        Landroid/support/v4/app/m$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/support/v4/app/m;

.field private static c:Z

.field private static f:J

.field private static g:J


# instance fields
.field private d:Ljava/util/List;

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/app/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/m;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    return-void
.end method

.method public static a()Landroid/support/v4/app/m;
    .locals 3

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInstance instance="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/m;->c:Z

    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    sput-object v0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/m;

    :cond_0
    sget-object v0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/m;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Z)Z
    .locals 10

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    const-string v3, "saveFilterData"

    invoke-static {v0, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "file_ver"

    const-string v3, "1.0.0"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Landroid/support/v4/app/m;->f:J

    add-long/2addr v6, v8

    sput-wide v6, Landroid/support/v4/app/m;->g:J

    const-string v0, "sms_rem_deadline"

    sget-wide v6, Landroid/support/v4/app/m;->g:J

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_0
    const-string v0, "sms_rem_interval"

    sget-wide v6, Landroid/support/v4/app/m;->f:J

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v3, v1

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_3

    const-string v0, "sms_rem_items"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v3, v1

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    const-string v0, "sms_cnf_items"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "filter.data"

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smsRemInterval="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Landroid/support/v4/app/m;->f:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";smsRemDeadline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Landroid/support/v4/app/m;->g:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    sget-wide v3, Landroid/support/v4/app/m;->g:J

    invoke-static {v0, v3, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_3
    const/4 v0, 0x1

    :goto_4
    monitor-exit p0

    return v0

    :cond_1
    :try_start_3
    const-string v0, "sms_rem_deadline"

    sget-wide v6, Landroid/support/v4/app/m;->g:J

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_5
    move v0, v1

    goto :goto_4

    :cond_3
    :try_start_6
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m$c;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "reminfo_num"

    iget-object v9, v0, Landroid/support/v4/app/m$c;->a:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "reminfo_keyword1"

    iget-object v9, v0, Landroid/support/v4/app/m$c;->b:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "reminfo_keyword2"

    iget-object v0, v0, Landroid/support/v4/app/m$c;->c:Ljava/lang/String;

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m$a;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "sms_cnf_interval"

    iget v9, v0, Landroid/support/v4/app/m$a;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cnfinfo_num"

    iget-object v9, v0, Landroid/support/v4/app/m$a;->b:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cnfinfo_keyword1"

    iget-object v9, v0, Landroid/support/v4/app/m$a;->c:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cnfinfo_keyword2"

    iget-object v9, v0, Landroid/support/v4/app/m$a;->d:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cnfinfo_rule"

    iget-object v9, v0, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cnfinfo_pos"

    iget v9, v0, Landroid/support/v4/app/m$a;->f:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cnfinfo_cmd_keyword"

    iget-object v9, v0, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cnfinfo_num_keyword"

    iget-object v0, v0, Landroid/support/v4/app/m$a;->h:Ljava/lang/String;

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    :goto_6
    :try_start_a
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6
.end method

.method private a(Landroid/support/v4/app/m$a;Landroid/support/v4/app/m$a;)Z
    .locals 2

    iget v0, p1, Landroid/support/v4/app/m$a;->a:I

    iget v1, p2, Landroid/support/v4/app/m$a;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/m$a;->b:Ljava/lang/String;

    iget-object v1, p2, Landroid/support/v4/app/m$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/m$a;->c:Ljava/lang/String;

    iget-object v1, p2, Landroid/support/v4/app/m$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/m$a;->d:Ljava/lang/String;

    iget-object v1, p2, Landroid/support/v4/app/m$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    iget-object v1, p2, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v4/app/m$a;->f:I

    iget v1, p2, Landroid/support/v4/app/m$a;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    iget-object v1, p2, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/m$a;->h:Ljava/lang/String;

    iget-object v1, p2, Landroid/support/v4/app/m$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v4/app/m$c;Landroid/support/v4/app/m$c;)Z
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/m$c;->a:Ljava/lang/String;

    iget-object v1, p2, Landroid/support/v4/app/m$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/m$c;->b:Ljava/lang/String;

    iget-object v1, p2, Landroid/support/v4/app/m$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/m$c;->c:Ljava/lang/String;

    iget-object v1, p2, Landroid/support/v4/app/m$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v2, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v3, Landroid/support/v4/app/m;->g:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "cnfSmsFilter not match num="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m$a;

    iget-object v3, v0, Landroid/support/v4/app/m$a;->b:Ljava/lang/String;

    iget-object v4, v0, Landroid/support/v4/app/m$a;->c:Ljava/lang/String;

    iget-object v5, v0, Landroid/support/v4/app/m$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x1

    if-gt v3, v6, :cond_4

    const-string v3, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    :cond_3
    sget-object v2, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cnfSmsFilter match num="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/app/m$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/m$b;
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/m;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v8, Landroid/support/v4/app/m$b;

    invoke-direct {v8}, Landroid/support/v4/app/m$b;-><init>()V

    iget-object v2, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/v4/app/m$a;

    move-object v7, v0

    iget-object v1, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const-string v2, "**("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v1, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const-string v2, "**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, v7, Landroid/support/v4/app/m$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, v7, Landroid/support/v4/app/m$a;->h:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v2, v1

    array-length v4, v3

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/Support;->a([BI[BIII)I

    move-result v5

    if-ltz v5, :cond_3

    const/4 v2, 0x0

    array-length v4, v3

    add-int/2addr v4, v5

    :goto_2
    array-length v6, v1

    if-lt v4, v6, :cond_12

    :cond_2
    if-lez v2, :cond_3

    new-instance v4, Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v3, v5

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v8, Landroid/support/v4/app/m$b;->c:Ljava/lang/String;

    :cond_3
    :goto_3
    iget-object v1, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ""

    iget-object v2, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Landroid/support/v4/app/Support;->c()B

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    :cond_5
    iget-object v1, v8, Landroid/support/v4/app/m$b;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ""

    iget-object v2, v8, Landroid/support/v4/app/m$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v8, Landroid/support/v4/app/m$b;->c:Ljava/lang/String;

    :cond_7
    iget v1, v7, Landroid/support/v4/app/m$a;->a:I

    iput v1, v8, Landroid/support/v4/app/m$b;->a:I

    sget-object v1, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cnfSms match num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Landroid/support/v4/app/m$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cnf_interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/support/v4/app/m$b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    goto/16 :goto_0

    :cond_8
    iget-object v1, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const-string v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/support/v4/content/CoreService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.support.v4.content.cmd.WapCfgUpload"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cmd"

    const/16 v3, 0x31

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "smsNum"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "smsBody"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_9
    const-string v1, ""

    iget-object v2, v7, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v7, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const-string v2, "*#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const-string v2, "#"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, v7, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v2, v1

    array-length v4, v3

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/Support;->a([BI[BIII)I

    move-result v2

    if-ltz v2, :cond_1

    new-instance v4, Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    const-string v3, "UTF-8"

    invoke-direct {v4, v1, v2, v9, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cnfSms not match num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_3
    iget-object v1, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const-string v2, "**#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const-string v2, "#"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, v7, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v2, v1

    array-length v4, v3

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/Support;->a([BI[BIII)I

    move-result v2

    if-ltz v2, :cond_1

    new-instance v4, Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    const-string v3, "UTF-8"

    invoke-direct {v4, v1, v2, v9, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_b
    :try_start_4
    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, v7, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v2, v1

    array-length v4, v3

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/Support;->a([BI[BIII)I

    move-result v6

    if-ltz v6, :cond_1

    const/4 v4, 0x0

    const/4 v2, 0x0

    array-length v5, v3

    add-int/2addr v5, v6

    :goto_4
    array-length v9, v1

    if-lt v5, v9, :cond_d

    :cond_c
    if-lez v4, :cond_1

    new-instance v5, Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    const-string v3, "UTF-8"

    invoke-direct {v5, v1, v2, v4, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    aget-byte v9, v1, v5

    const/16 v10, 0x30

    if-lt v9, v10, :cond_e

    aget-byte v9, v1, v5

    const/16 v10, 0x39

    if-le v9, v10, :cond_11

    :cond_e
    aget-byte v9, v1, v5

    const/16 v10, 0x61

    if-lt v9, v10, :cond_f

    aget-byte v9, v1, v5

    const/16 v10, 0x7a

    if-le v9, v10, :cond_11

    :cond_f
    aget-byte v9, v1, v5

    const/16 v10, 0x41

    if-lt v9, v10, :cond_10

    aget-byte v9, v1, v5

    const/16 v10, 0x5a

    if-le v9, v10, :cond_11

    :cond_10
    if-gtz v4, :cond_c

    const/4 v9, 0x2

    if-gt v2, v9, :cond_c

    add-int/lit8 v2, v2, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_12
    aget-byte v6, v1, v4

    const/16 v9, 0x30

    if-lt v6, v9, :cond_2

    aget-byte v6, v1, v4

    const/16 v9, 0x39

    if-gt v6, v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x46

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v7, Landroid/support/v4/app/m$a;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    :goto_6
    new-instance v1, Ljava/lang/String;

    iget-object v2, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v8, Landroid/support/v4/app/m$b;->c:Ljava/lang/String;

    goto/16 :goto_3

    :cond_14
    iget v2, v7, Landroid/support/v4/app/m$a;->f:I

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v3, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    goto :goto_6

    :cond_15
    iget v2, v7, Landroid/support/v4/app/m$a;->f:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v7, Landroid/support/v4/app/m$a;->f:I

    sub-int/2addr v3, v4

    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    goto :goto_6

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6
.end method

.method public a(J)V
    .locals 0

    sput-wide p1, Landroid/support/v4/app/m;->f:J

    return-void
.end method

.method public declared-synchronized a(Landroid/support/v4/app/m$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addSmsCnf "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/m$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m$a;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$a;Landroid/support/v4/app/m$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exist pos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/support/v4/app/m$c;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addSmsRem "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/m$c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m$c;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$c;Landroid/support/v4/app/m$c;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 9

    const-wide/16 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroid/support/v4/app/m;->f:J

    const-wide/32 v5, 0x1b7740

    sub-long/2addr v3, v5

    sput-wide v3, Landroid/support/v4/app/m;->f:J

    sget-wide v3, Landroid/support/v4/app/m;->g:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    sget-wide v3, Landroid/support/v4/app/m;->f:J

    cmp-long v3, v3, v7

    if-gtz v3, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sput-wide v7, Landroid/support/v4/app/m;->g:J

    sput-wide v7, Landroid/support/v4/app/m;->f:J

    const-string v1, "filter.data"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-wide v3, Landroid/support/v4/app/m;->g:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    sget-wide v3, Landroid/support/v4/app/m;->f:J

    add-long/2addr v3, v1

    sget-wide v5, Landroid/support/v4/app/m;->g:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    sget-wide v3, Landroid/support/v4/app/m;->g:J

    sub-long v0, v3, v1

    sput-wide v0, Landroid/support/v4/app/m;->f:J

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/m;->a(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Landroid/support/v4/app/m;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v3, v1

    :goto_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remSms not match num="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m$c;

    iget-object v4, v0, Landroid/support/v4/app/m$c;->a:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m$c;

    iget-object v5, v0, Landroid/support/v4/app/m$c;->b:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m$c;

    iget-object v0, v0, Landroid/support/v4/app/m$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v2, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    :cond_3
    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "remSms match num="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " pos="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/content/Context;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Landroid/support/v4/app/m;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->d(Landroid/content/Context;)Z

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->c(Landroid/content/Context;)Z
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

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/16 v12, 0xf5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "QQ100"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x5

    const/4 v5, 0x3

    const-string v6, "UTF-8"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v2

    array-length v4, v3

    if-ne v2, v4, :cond_0

    new-instance v2, Ljava/lang/String;

    const/16 v4, 0x8

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v4

    new-instance v2, Ljava/lang/String;

    const/16 v5, 0xa

    const/4 v6, 0x3

    const-string v7, "UTF-8"

    invoke-direct {v2, v3, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v2

    new-instance v5, Ljava/lang/String;

    const/16 v6, 0xd

    const-string v7, "UTF-8"

    invoke-direct {v5, v3, v6, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, 0xd

    const/4 v8, 0x2

    const-string v9, "UTF-8"

    invoke-direct {v6, v3, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v7, v2, 0xf

    move v2, v0

    :goto_1
    if-lt v2, v6, :cond_4

    :cond_2
    new-instance v2, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v2, v3, v7, v6, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    add-int v9, v7, v6

    const/4 v10, 0x1

    const-string v11, "UTF-8"

    invoke-direct {v8, v3, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v8}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/String;

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    const/4 v7, 0x3

    const-string v10, "UTF-8"

    invoke-direct {v9, v3, v6, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v9}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/o;

    move-result-object v6

    if-ne v3, v12, :cond_5

    if-ne v4, v1, :cond_5

    new-instance v3, Landroid/support/v4/app/n;

    invoke-direct {v3}, Landroid/support/v4/app/n;-><init>()V

    const/16 v4, 0x3c

    invoke-static {}, Landroid/support/v4/app/Support;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v8, v5, v2}, Landroid/support/v4/app/n;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/support/v4/app/o;->a(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    move v0, v1

    goto/16 :goto_0

    :cond_4
    add-int v8, v7, v2

    aget-byte v8, v3, v8

    add-int v9, v7, v2

    add-int v10, v7, v2

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, v3, v10

    aput-byte v10, v3, v9

    add-int v9, v7, v2

    add-int/lit8 v9, v9, 0x1

    aput-byte v8, v3, v9

    add-int/lit8 v8, v2, 0x3

    if-eq v8, v6, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_5
    if-ne v3, v12, :cond_6

    new-instance v3, Landroid/support/v4/app/n;

    invoke-direct {v3}, Landroid/support/v4/app/n;-><init>()V

    const/16 v4, 0x3c

    invoke-virtual {v3, v4, v8, v5, v2}, Landroid/support/v4/app/n;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/support/v4/app/o;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v1, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error handle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x10

    if-lt v3, v2, :cond_3

    const/16 v2, 0x20

    if-ge v3, v2, :cond_3

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    const-class v5, Landroid/support/v4/content/CoreService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.support.v4.content.cmd.WapCfgCust"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "cmd"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v3, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/m;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized d(Landroid/content/Context;)Z
    .locals 14

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadFilterData mNeedRestore="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Landroid/support/v4/app/m;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Landroid/support/v4/app/m;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v2, 0x0

    sput-boolean v2, Landroid/support/v4/app/m;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "filter.data"

    invoke-virtual {v4, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v1, 0x800

    :try_start_4
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    :try_start_6
    const-string v0, "file_ver"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    :goto_2
    :try_start_7
    const-string v3, "1.0.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    const-string v3, "file version mismatch"

    invoke-static {v0, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filter.data"

    invoke-virtual {v4, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_4
    :try_start_a
    sget-object v2, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    const-string v3, "file not found"

    invoke-static {v2, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v0, :cond_4

    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_5
    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_c
    const-string v0, ""
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_e
    const-string v0, "sms_rem_deadline"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Landroid/support/v4/app/m;->g:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_6
    :try_start_f
    const-string v0, "sms_rem_interval"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Landroid/support/v4/app/m;->f:J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_7
    :try_start_10
    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "smsRemDeadline="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v7, Landroid/support/v4/app/m;->g:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " smsRemInterval="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v7, Landroid/support/v4/app/m;->f:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Landroid/support/v4/app/m;->g:J

    cmp-long v0, v7, v9

    if-ltz v0, :cond_a

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    const-string v3, "rem over deadline"

    invoke-static {v0, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/m;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v5, 0x0

    sput-wide v5, Landroid/support/v4/app/m;->g:J

    const-wide/16 v5, 0x0

    sput-wide v5, Landroid/support/v4/app/m;->f:J

    const-string v0, "filter.data"

    invoke-virtual {v4, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v1, :cond_7

    :try_start_11
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_8
    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-wide/16 v7, 0x0

    :try_start_12
    sput-wide v7, Landroid/support/v4/app/m;->g:J

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const-wide/16 v7, 0x0

    sput-wide v7, Landroid/support/v4/app/m;->f:J
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_9
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "filter.data"

    invoke-virtual {v4, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v1, :cond_9

    :try_start_14
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_9
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_8

    :cond_a
    :try_start_16
    sget-wide v9, Landroid/support/v4/app/m;->g:J

    cmp-long v0, v9, v7

    if-lez v0, :cond_b

    sget-wide v9, Landroid/support/v4/app/m;->f:J

    add-long/2addr v9, v7

    sget-wide v11, Landroid/support/v4/app/m;->g:J

    cmp-long v0, v9, v11

    if-lez v0, :cond_b

    sget-wide v9, Landroid/support/v4/app/m;->g:J

    sub-long v7, v9, v7

    sput-wide v7, Landroid/support/v4/app/m;->f:J
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :cond_b
    :try_start_17
    const-string v0, "sms_rem_items"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v0, 0x0

    move v3, v0

    :goto_a
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-result v0

    if-lt v3, v0, :cond_e

    :goto_b
    :try_start_18
    const-string v0, "sms_cnf_items"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v0, 0x0

    move v3, v0

    :goto_c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    move-result v0

    if-lt v3, v0, :cond_11

    :goto_d
    if-eqz v1, :cond_c

    :try_start_19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_d
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_e
    :try_start_1a
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v8, Landroid/support/v4/app/m$c;

    invoke-direct {v8}, Landroid/support/v4/app/m$c;-><init>()V

    new-instance v9, Ljava/lang/String;

    const-string v10, "reminfo_num"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v8, Landroid/support/v4/app/m$c;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/String;

    const-string v10, "reminfo_keyword1"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v8, Landroid/support/v4/app/m$c;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/String;

    const-string v10, "reminfo_keyword2"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v8, Landroid/support/v4/app/m$c;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$c;)V

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/support/v4/app/m$c;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    :catch_9
    move-exception v0

    :try_start_1b
    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    const-string v3, "sms_rem_items not found"

    invoke-static {v0, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    :goto_f
    if-eqz v1, :cond_f

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :cond_10
    :goto_10
    :try_start_1d
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :cond_11
    :try_start_1e
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v7, Landroid/support/v4/app/m$a;

    invoke-direct {v7}, Landroid/support/v4/app/m$a;-><init>()V

    const-string v8, "sms_cnf_interval"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/support/v4/app/m$a;->a:I

    new-instance v8, Ljava/lang/String;

    const-string v9, "cnfinfo_num"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Landroid/support/v4/app/m$a;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    const-string v9, "cnfinfo_keyword1"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Landroid/support/v4/app/m$a;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    const-string v9, "cnfinfo_keyword2"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Landroid/support/v4/app/m$a;->d:Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    const-string v9, "cnfinfo_rule"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    const-string v8, "cnfinfo_pos"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/support/v4/app/m$a;->f:I

    new-instance v8, Ljava/lang/String;

    const-string v9, "cnfinfo_cmd_keyword"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    const-string v9, "cnfinfo_num_keyword"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Landroid/support/v4/app/m$a;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$a;)V

    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/support/v4/app/m$a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_c

    :catch_a
    move-exception v0

    :try_start_1f
    sget-object v0, Landroid/support/v4/app/m;->a:Ljava/lang/String;

    const-string v3, "sms_cnf_items not found"

    invoke-static {v0, v3}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto/16 :goto_d

    :catch_b
    move-exception v0

    :try_start_20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_10

    :catchall_2
    move-exception v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    goto/16 :goto_f

    :catchall_3
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_f

    :catchall_4
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_f

    :catch_e
    move-exception v2

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    goto/16 :goto_9

    :catch_f
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_9

    :catch_10
    move-exception v2

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_4

    :catch_11
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_4
.end method
