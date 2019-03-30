.class public Lcom/tencent/bugly/lejiagu/proguard/w;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/lejiagu/proguard/w;


# instance fields
.field private final b:Lcom/tencent/bugly/lejiagu/proguard/y;

.field private final c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/lejiagu/proguard/q;

.field private final e:Lcom/tencent/bugly/lejiagu/proguard/t;

.field private final f:Landroid/content/Context;

.field private g:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/w;->a:Lcom/tencent/bugly/lejiagu/proguard/w;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/y;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/proguard/q;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->g:[J

    .line 52
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->b:Lcom/tencent/bugly/lejiagu/proguard/y;

    .line 54
    iput-object p3, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    .line 55
    iput-object p5, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->d:Lcom/tencent/bugly/lejiagu/proguard/q;

    .line 56
    iput-object p4, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->e:Lcom/tencent/bugly/lejiagu/proguard/t;

    .line 57
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/v;->a(Landroid/content/Context;)V

    .line 58
    return-void

    .line 48
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/proguard/w;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/lejiagu/proguard/w;
    .locals 2

    .prologue
    .line 74
    const-class v0, Lcom/tencent/bugly/lejiagu/proguard/w;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/w;->a:Lcom/tencent/bugly/lejiagu/proguard/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/y;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/proguard/q;)Lcom/tencent/bugly/lejiagu/proguard/w;
    .locals 7

    .prologue
    .line 65
    const-class v6, Lcom/tencent/bugly/lejiagu/proguard/w;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/w;->a:Lcom/tencent/bugly/lejiagu/proguard/w;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/w;

    new-instance v4, Lcom/tencent/bugly/lejiagu/proguard/t;

    invoke-direct {v4, p0}, Lcom/tencent/bugly/lejiagu/proguard/t;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/proguard/w;-><init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/y;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/proguard/q;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/w;->a:Lcom/tencent/bugly/lejiagu/proguard/w;

    .line 70
    :cond_0
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/w;->a:Lcom/tencent/bugly/lejiagu/proguard/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(I)J
    .locals 4

    .prologue
    .line 449
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->g:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->g:[J

    aget-wide v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 452
    :cond_0
    :try_start_1
    const-string v0, "unknown up %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 437
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->g:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->g:[J

    aput-wide p2, v0, p1

    .line 439
    const-string v0, "up %d %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :goto_0
    monitor-exit p0

    return-void

    .line 441
    :cond_0
    :try_start_1
    const-string v0, "unknown up %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(J)V
    .locals 4

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;-><init>()V

    .line 113
    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->b:I

    .line 114
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->e:J

    .line 115
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->c:Ljava/lang/String;

    .line 116
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->d:Ljava/lang/String;

    .line 117
    invoke-static {p1, p2}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(J)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->f:[B

    .line 118
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->d:Lcom/tencent/bugly/lejiagu/proguard/q;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/q;->b(I)V

    .line 119
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->d:Lcom/tencent/bugly/lejiagu/proguard/q;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/lejiagu/proguard/q;->b(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;)Z

    .line 120
    const-string v0, "consume update %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 413
    invoke-virtual {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 414
    iget-boolean v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->f:Z

    if-nez v1, :cond_1

    .line 415
    const-string v0, "remote query is disable!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    const/16 v2, 0x1fe

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Landroid/content/Context;I[BLcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/lejiagu/proguard/aw;

    move-result-object v0

    .line 423
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tencent/bugly/lejiagu/proguard/w;->a(Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    const-string v1, "req error %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 426
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;I)V
    .locals 10

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const-string v0, "Request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v9, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->b:Lcom/tencent/bugly/lejiagu/proguard/y;

    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/w$1;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v6, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->e:Lcom/tencent/bugly/lejiagu/proguard/t;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/tencent/bugly/lejiagu/proguard/w$1;-><init>(Lcom/tencent/bugly/lejiagu/proguard/w;Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/proguard/w;I)V

    invoke-virtual {v9, v0}, Lcom/tencent/bugly/lejiagu/proguard/y;->b(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;",
            ">;",
            "Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 217
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 218
    iget-boolean v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v1, :cond_1

    .line 219
    const-string v0, "remote report is disable!"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 220
    const-string v0, "[crash] server closed bugly in this app. please check your appid if is correct, and re-install it"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-static {v1, p1, v2}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Landroid/content/Context;Ljava/util/List;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)Lcom/tencent/bugly/lejiagu/proguard/av;

    move-result-object v1

    .line 231
    if-nez v1, :cond_2

    .line 232
    const-string v0, "create eupPkg fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const-string v1, "req cr error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 299
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 235
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/m;)[B

    move-result-object v1

    .line 236
    if-nez v1, :cond_3

    .line 237
    const-string v0, "send encode fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_3
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    const/16 v3, 0x276

    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Landroid/content/Context;I[BLcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/lejiagu/proguard/aw;

    move-result-object v3

    .line 244
    if-nez v3, :cond_4

    .line 245
    const-string v0, "Request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_4
    iget-object v9, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->b:Lcom/tencent/bugly/lejiagu/proguard/y;

    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/w$3;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v6, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->e:Lcom/tencent/bugly/lejiagu/proguard/t;

    move-object v1, p0

    move-object v5, p2

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/tencent/bugly/lejiagu/proguard/w$3;-><init>(Lcom/tencent/bugly/lejiagu/proguard/w;Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/proguard/w;Ljava/util/List;)V

    invoke-virtual {v9, v0}, Lcom/tencent/bugly/lejiagu/proguard/y;->b(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/UserInfoBean;",
            ">;",
            "Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 150
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 151
    iget-boolean v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->e:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->f:Z

    if-nez v1, :cond_1

    .line 152
    const-string v0, "remote uin&query is diable!"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-static {p1, v1, p3}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Ljava/util/List;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;I)Lcom/tencent/bugly/lejiagu/proguard/bb;

    move-result-object v1

    .line 162
    if-nez v1, :cond_2

    .line 163
    const-string v0, "create uPkg fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "req ur error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 205
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 167
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/m;)[B

    move-result-object v1

    .line 168
    if-nez v1, :cond_3

    .line 169
    const-string v0, "send encode fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    const/16 v3, 0x280

    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Landroid/content/Context;I[BLcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/lejiagu/proguard/aw;

    move-result-object v3

    .line 176
    if-nez v3, :cond_4

    .line 177
    const-string v0, "Request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_4
    iget-object v9, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->b:Lcom/tencent/bugly/lejiagu/proguard/y;

    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/w$2;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v6, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->e:Lcom/tencent/bugly/lejiagu/proguard/t;

    move-object v1, p0

    move-object v5, p2

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/tencent/bugly/lejiagu/proguard/w$2;-><init>(Lcom/tencent/bugly/lejiagu/proguard/w;Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/proguard/w;Ljava/util/List;)V

    invoke-virtual {v9, v0}, Lcom/tencent/bugly/lejiagu/proguard/y;->b(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;",
            ">;",
            "Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;",
            "J)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 310
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 311
    invoke-virtual {p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v1, :cond_1

    .line 312
    const-string v0, "crash report was closed by remote , will not upload to Bugly!"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 313
    const-string v0, "[crash] server closed bugly in this app. please check your appid if is correct, and re-install it"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 314
    const-string v0, "remoteClose"

    invoke-virtual {p2, v0, v10}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-static {v1, p1, v2}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Landroid/content/Context;Ljava/util/List;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)Lcom/tencent/bugly/lejiagu/proguard/av;

    move-result-object v1

    .line 325
    if-nez v1, :cond_2

    .line 326
    const-string v0, "create eupPkg fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 327
    const-string v0, "packageFail"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    const-string v1, "req cr error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 403
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 331
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Lcom/tencent/bugly/lejiagu/proguard/m;)[B

    move-result-object v1

    .line 332
    if-nez v1, :cond_3

    .line 333
    const-string v0, "send encode fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wait for crash report! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 338
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    const/16 v3, 0x276

    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/tencent/bugly/lejiagu/proguard/s;->a(Landroid/content/Context;I[BLcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/lejiagu/proguard/aw;

    move-result-object v3

    .line 341
    if-nez v3, :cond_4

    .line 342
    const-string v0, "Request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    :cond_4
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/w$4;

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    iget-object v6, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->e:Lcom/tencent/bugly/lejiagu/proguard/t;

    move-object v1, p0

    move-object v5, p2

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/tencent/bugly/lejiagu/proguard/w$4;-><init>(Lcom/tencent/bugly/lejiagu/proguard/w;Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/aw;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;Lcom/tencent/bugly/lejiagu/proguard/t;Lcom/tencent/bugly/lejiagu/proguard/w;Ljava/util/List;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 397
    const-string v0, "CrashUploadThread"

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 399
    invoke-virtual {v9, p3, p4}, Ljava/lang/Thread;->join(J)V

    .line 400
    const-string v0, "wake up! "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected b()J
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 85
    const-wide/16 v1, 0x0

    .line 86
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b()J

    move-result-wide v3

    .line 87
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->d:Lcom/tencent/bugly/lejiagu/proguard/q;

    invoke-virtual {v0, v10}, Lcom/tencent/bugly/lejiagu/proguard/q;->a(I)Ljava/util/List;

    move-result-object v5

    .line 89
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 91
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;

    .line 92
    iget-wide v6, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->e:J

    cmp-long v3, v6, v3

    if-ltz v3, :cond_0

    .line 93
    iget-object v3, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/a;->f:[B

    invoke-static {v3}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b([B)J

    move-result-wide v1

    .line 94
    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-wide v0, v1

    .line 99
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/w;->d:Lcom/tencent/bugly/lejiagu/proguard/q;

    invoke-virtual {v2, v5}, Lcom/tencent/bugly/lejiagu/proguard/q;->g(Ljava/util/List;)V

    .line 103
    :cond_1
    :goto_1
    const-string v2, "consume getted %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 105
    return-wide v0

    .line 96
    :catch_0
    move-exception v0

    move-wide v0, v1

    .line 97
    const-string v2, "error local type %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_1
.end method
