.class public Lcom/tencent/bugly/lejiagu/crashreport/crash/e;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/b;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field protected static f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static j:Z

.field private static k:I


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

.field protected final c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

.field protected final d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

.field protected e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field protected g:Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;

.field protected h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/crash/b;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->h:Z

    .line 46
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    .line 48
    iput-object p3, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    .line 49
    iput-object p4, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    .line 50
    iput-object p5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->g:Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;

    .line 51
    return-void
.end method

.method private b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 461
    if-nez p1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 465
    const-string v4, "uncaughtException"

    .line 466
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 467
    array-length v6, v5

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v7, v5, v2

    .line 468
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 469
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    .line 470
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v1

    .line 471
    goto :goto_0

    .line 467
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    .prologue
    const/16 v1, 0xa

    .line 57
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->k:I

    if-lt v0, v1, :cond_1

    .line 58
    const-string v0, "java crash handler over %d, no need set."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const-string v1, "com.android.internal.os.RuntimeInit$UncaughtHandler"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string v1, "backup system java handler: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 74
    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 75
    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 87
    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 88
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->h:Z

    .line 90
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->k:I

    .line 91
    const-string v0, "registered java monitor: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_2
    :try_start_2
    const-string v1, "backup java handler: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 78
    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;)V
    .locals 4

    .prologue
    .line 484
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 485
    const-string v0, "java changed to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 486
    iget-boolean v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 489
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 174
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v1

    .line 175
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    if-nez v0, :cond_1

    .line 176
    const-string v0, "#++++++++++Detail Record By Bugly++++++++++#"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 177
    const-string v0, "# You can go to Bugly(http:\\\\bugly.qq.com) to see more detail of this Report!"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 178
    const-string v0, "# REPORT ID: %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    const-string v0, "# PKG NAME: %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 180
    const-string v0, "# APP VER: %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 182
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :pswitch_0
    const-string v0, "UNKNOWN"

    .line 192
    :goto_0
    const-string v2, "# LAUNCH TIME:%s"

    new-array v3, v8, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->M:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 193
    const-string v2, "# CRASH TYPE: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 194
    const-string v0, "# CRASH TIME: %s"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 195
    const-string v0, "# CRASH PROCESS: %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 196
    const-string v0, "# CRASH THREAD: %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 197
    const-string v2, "# CRASH DEVICE: %s %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->C()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ROOTED"

    :goto_1
    aput-object v0, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 199
    const-string v0, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    new-array v1, v10, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 201
    const-string v0, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    new-array v1, v10, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->G:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 203
    const-string v0, "# EXCEPTION TYPE: %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 204
    const-string v0, "# EXCEPTION MSG: %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 205
    const-string v0, "# EXCEPTION STACK:\n %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 206
    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 240
    :goto_2
    return-void

    .line 184
    :pswitch_1
    const-string v0, "JAVA_CRASH"

    goto/16 :goto_0

    .line 187
    :pswitch_2
    const-string v0, "JAVA_CATCHED"

    goto/16 :goto_0

    .line 197
    :cond_0
    const-string v0, "UNROOT"

    goto :goto_1

    .line 208
    :cond_1
    const-string v0, "#++++++++++Detail Record By Bugly++++++++++#"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 209
    const-string v0, "# You can go to Bugly(http:\\\\bugly.qq.com) to see more detail of this Report!"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    const-string v0, "# REPORT ID: %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 211
    const-string v0, "# PKG NAME: %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 212
    const-string v0, "# APP VER: %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 214
    iget v0, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v0, :pswitch_data_1

    .line 222
    :pswitch_3
    const-string v0, "UNKNOWN"

    .line 224
    :goto_3
    const-string v2, "# LAUNCH TIME:%s"

    new-array v3, v8, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->M:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 225
    const-string v2, "# CRASH TYPE: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 226
    const-string v0, "# CRASH TIME: %s"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 227
    const-string v0, "# CRASH PROCESS: %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 228
    const-string v0, "# CRASH THREAD: %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    const-string v2, "# CRASH DEVICE: %s %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->C()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ROOTED"

    :goto_4
    aput-object v0, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    const-string v0, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    new-array v1, v10, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 233
    const-string v0, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    new-array v1, v10, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    iget-wide v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->G:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 235
    const-string v0, "# EXCEPTION TYPE: %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 236
    const-string v0, "# EXCEPTION MSG: %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 237
    const-string v0, "# EXCEPTION STACK:\n %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 238
    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 216
    :pswitch_4
    const-string v0, "JAVA_CRASH"

    goto/16 :goto_3

    .line 219
    :pswitch_5
    const-string v0, "JAVA_CATCHED"

    goto/16 :goto_3

    .line 229
    :cond_2
    const-string v0, "UNROOT"

    goto :goto_4

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 214
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected declared-synchronized a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 133
    const-string v0, "current process die"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 134
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/ag;->c()V

    .line 135
    return-void
.end method

.method protected a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    .line 143
    if-eqz p3, :cond_1

    .line 144
    const-string v1, "#++++++++++Simple Record By Bugly++++++++++#"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 145
    const-string v1, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 146
    const-string v1, "# PKG NAME: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 147
    const-string v1, "# APP VER: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 148
    const-string v1, "# CRASH TYPE: JAVA_CRASH"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 149
    const-string v1, "# CRASH TIME: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    const-string v1, "# CRASH PROCESS: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 151
    const-string v1, "# CRASH THREAD: %s"

    new-array v2, v5, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v0, "UNKNOWN"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 152
    const-string v0, "# CRASH STACK: "

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 153
    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/Throwable;)Z

    .line 154
    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 168
    :goto_1
    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    const-string v1, "#++++++++++Simple Record By Bugly++++++++++#"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 157
    const-string v1, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 158
    const-string v1, "# PKG NAME: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 159
    const-string v1, "# APP VER: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 160
    const-string v1, "# CRASH TYPE: JAVA_CATCH"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 161
    const-string v1, "# CRASH TIME: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 162
    const-string v1, "# CRASH PROCESS: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    const-string v1, "# CRASH THREAD: %s"

    new-array v2, v5, [Ljava/lang/Object;

    if-nez p1, :cond_2

    const-string v0, "UNKNOWN"

    :goto_2
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 164
    const-string v0, "# CRASH STACK: "

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 165
    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    .line 166
    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public b(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;
    .locals 12

    .prologue
    const/16 v11, 0x3e8

    const/4 v2, 0x2

    const/16 v10, 0x4e20

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 247
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->l()Z

    move-result v4

    .line 248
    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    const-string v0, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    move-object v5, v0

    .line 251
    :goto_0
    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 252
    const-string v0, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 255
    :cond_0
    new-instance v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    invoke-direct {v4}, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;-><init>()V

    .line 256
    const-string v0, "3"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 258
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->i()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->B:J

    .line 259
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->g()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->C:J

    .line 260
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->k()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->D:J

    .line 261
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->u()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->E:J

    .line 262
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->t()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->F:J

    .line 263
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->v()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->G:J

    .line 264
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 266
    const-string v6, "user log size:%d"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v6, v7}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 267
    if-eqz p3, :cond_3

    move v0, v1

    :goto_2
    iput v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->b:I

    .line 269
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 274
    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    .line 275
    if-nez v6, :cond_4

    .line 276
    const-string v0, "throw null,return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    const/4 v0, 0x0

    .line 350
    :goto_3
    return-object v0

    .line 248
    :cond_1
    const-string v0, ""

    move-object v5, v0

    goto/16 :goto_0

    .line 266
    :cond_2
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    array-length v0, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 267
    goto :goto_2

    .line 280
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-static {p2, v11}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-nez v0, :cond_5

    .line 284
    const-string v0, ""

    .line 286
    :cond_5
    const-string v8, "stack frame :%d, has cause %b"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v3

    invoke-static {v8, v9}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 288
    const-string v2, ""

    .line 289
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_6

    .line 290
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    :cond_6
    if-eq v6, p2, :cond_9

    .line 295
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 296
    invoke-static {v6, v11}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 298
    iget-object v5, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 299
    const-string v5, ""

    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 300
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v0, "\n......"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v0, "\ncause by:\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-static {v6, v10}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 323
    :goto_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->r:J

    .line 325
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 327
    const/16 v0, 0x4e20

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->a(IZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 330
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 334
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->M:J

    .line 335
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a()Z

    move-result v0

    iput-boolean v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->N:Z

    .line 338
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->N()I

    move-result v0

    iput v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->P:I

    .line 339
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->O()I

    move-result v0

    iput v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->Q:I

    .line 340
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->J()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 341
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->d:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->M()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_6
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->g:Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;

    invoke-virtual {v0, v4, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;)V

    .line 348
    invoke-static {p3}, Lcom/tencent/bugly/lejiagu/proguard/ab;->a(Z)[B

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->x:[B

    move-object v0, v4

    .line 350
    goto/16 :goto_3

    :cond_8
    move v2, v1

    .line 286
    goto/16 :goto_4

    .line 314
    :cond_9
    iput-object v7, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 316
    iget-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 317
    const-string v0, ""

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 318
    :cond_a
    iput-object v2, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 319
    invoke-static {p2, v10}, Lcom/tencent/bugly/lejiagu/crashreport/crash/d;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    goto/16 :goto_5

    .line 342
    :catch_0
    move-exception v0

    .line 343
    const-string v2, "handle crash error %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->h:Z

    .line 99
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 100
    if-ne v0, p0, :cond_0

    .line 101
    const-string v0, "unregistered java monitor: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 103
    const-string v0, "close java monitor!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 104
    sget v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->k:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 362
    if-eqz p3, :cond_3

    .line 363
    const-string v0, "Java Crash Happen cause by %s(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 364
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->j:Z

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "is handled this exception"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 366
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->i:Z

    if-eqz v0, :cond_2

    .line 368
    const-string v0, "twice in uncaughtException"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 370
    const-string v0, "call system handler"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 379
    :goto_0
    sput-boolean v5, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->j:Z

    .line 380
    iput-boolean v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->i:Z

    .line 387
    :cond_0
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->h:Z

    if-nez v0, :cond_7

    .line 388
    const-string v0, "Java crash handler is disable. Just return."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    if-nez p3, :cond_4

    .line 440
    const-string v0, "not to shut down return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 458
    :goto_2
    return-void

    .line 373
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 376
    :cond_2
    const-string v0, "twice handled this exception, call next default"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    :cond_3
    const-string v0, "Java Catch Happen"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 444
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 445
    const-string v0, "sys default last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 447
    const-string v0, "sys default last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 448
    :cond_5
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_6

    .line 449
    const-string v0, "system handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 451
    const-string v0, "system handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 453
    :cond_6
    const-string v0, "crashreport last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 455
    const-string v0, "crashreport last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 392
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 394
    const-string v0, "waiting for remote sync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    .line 396
    :cond_8
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->b()Z

    move-result v2

    if-nez v2, :cond_9

    .line 397
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a(J)V

    .line 398
    add-int/lit16 v0, v0, 0x1f4

    .line 399
    const/16 v2, 0x1388

    if-lt v0, v2, :cond_8

    .line 405
    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->b()Z

    move-result v0

    if-nez v0, :cond_a

    .line 412
    const-string v0, "no remote but still store!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 415
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->d()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 416
    iget-boolean v0, v0, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 417
    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    .line 419
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    const-string v2, "remoteClose"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    if-nez p3, :cond_b

    .line 440
    const-string v0, "not to shut down return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 444
    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 445
    const-string v0, "sys default last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 447
    const-string v0, "sys default last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 448
    :cond_c
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_d

    .line 449
    const-string v0, "system handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 451
    const-string v0, "system handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 453
    :cond_d
    const-string v0, "crashreport last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 455
    const-string v0, "crashreport last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 423
    :cond_e
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 424
    if-nez v0, :cond_12

    .line 425
    const-string v0, "pkg crash datas fail!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 426
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c:Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    const-string v2, "packageFail"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    if-nez p3, :cond_f

    .line 440
    const-string v0, "not to shut down return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 444
    :cond_f
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 445
    const-string v0, "sys default last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 447
    const-string v0, "sys default last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 448
    :cond_10
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_11

    .line 449
    const-string v0, "system handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 451
    const-string v0, "system handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 453
    :cond_11
    const-string v0, "crashreport last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 455
    const-string v0, "crashreport last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 430
    :cond_12
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)V

    .line 431
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 432
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b:Lcom/tencent/bugly/lejiagu/crashreport/crash/b;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v0, v3, v4}, Lcom/tencent/bugly/lejiagu/crashreport/crash/b;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/CrashDetailBean;J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    :cond_13
    if-nez p3, :cond_14

    .line 440
    const-string v0, "not to shut down return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 444
    :cond_14
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 445
    const-string v0, "sys default last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 447
    const-string v0, "sys default last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 448
    :cond_15
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_16

    .line 449
    const-string v0, "system handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 451
    const-string v0, "system handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 453
    :cond_16
    const-string v0, "crashreport last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 455
    const-string v0, "crashreport last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 434
    :catch_0
    move-exception v0

    .line 435
    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 436
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 439
    :cond_17
    if-nez p3, :cond_18

    .line 440
    const-string v0, "not to shut down return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 444
    :cond_18
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 445
    const-string v0, "sys default last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 447
    const-string v0, "sys default last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 448
    :cond_19
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1a

    .line 449
    const-string v0, "system handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 451
    const-string v0, "system handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 453
    :cond_1a
    const-string v0, "crashreport last handle start!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 455
    const-string v0, "crashreport last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 439
    :catchall_0
    move-exception v0

    if-nez p3, :cond_1b

    .line 440
    const-string v0, "not to shut down return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 444
    :cond_1b
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 445
    const-string v2, "sys default last handle start!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 447
    const-string v2, "sys default last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 455
    :goto_3
    throw v0

    .line 448
    :cond_1c
    sget-object v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_1d

    .line 449
    const-string v2, "system handle start!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 450
    sget-object v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 451
    const-string v2, "system handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    .line 453
    :cond_1d
    const-string v2, "crashreport last handle start!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 455
    const-string v2, "crashreport last handle end!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/e;->c(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    .line 480
    return-void
.end method
