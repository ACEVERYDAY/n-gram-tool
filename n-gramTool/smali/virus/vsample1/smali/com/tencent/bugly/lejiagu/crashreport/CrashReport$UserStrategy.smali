.class public Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStrategy"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->h:Z

    .line 933
    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->i:Z

    .line 934
    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->j:Z

    .line 937
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 938
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->a:Ljava/lang/String;

    .line 940
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->b:Ljava/lang/String;

    .line 941
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->c:Ljava/lang/String;

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->e:Ljava/lang/String;

    .line 943
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->d:J

    .line 944
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Z
    .locals 1

    .prologue
    .line 924
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)J
    .locals 2

    .prologue
    .line 924
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->d:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 986
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppReportDelay()J
    .locals 2

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCrashHandleCallback()Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;
    .locals 1

    .prologue
    .line 1078
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->g:Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1060
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLibBuglySOFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1042
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBuglyLogUpload()Z
    .locals 1

    .prologue
    .line 957
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableANRCrashMonitor()Z
    .locals 1

    .prologue
    .line 1110
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableNativeCrashMonitor()Z
    .locals 1

    .prologue
    .line 1094
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;
    .locals 1
    .param p1, "appChannel"    # Ljava/lang/String;

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    monitor-exit p0

    return-object p0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppPackageName(Ljava/lang/String;)Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 1016
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    monitor-exit p0

    return-object p0

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppReportDelay(J)Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;
    .locals 1
    .param p1, "appReportDelay"    # J

    .prologue
    .line 1032
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    monitor-exit p0

    return-object p0

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;
    .locals 1
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 976
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-object p0

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBuglyLogUpload(Z)V
    .locals 1
    .param p1, "isBuglyLogUpload"    # Z

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    monitor-exit p0

    return-void

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCrashHandleCallback(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;)V
    .locals 1
    .param p1, "crashHandleCallback"    # Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;

    .prologue
    .line 1087
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->g:Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    monitor-exit p0

    return-void

    .line 1087
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceID(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    monitor-exit p0

    return-void

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableANRCrashMonitor(Z)V
    .locals 1
    .param p1, "enableANRCrashMonitor"    # Z

    .prologue
    .line 1117
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    monitor-exit p0

    return-void

    .line 1117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableNativeCrashMonitor(Z)V
    .locals 1
    .param p1, "enableNativeCrashMonitor"    # Z

    .prologue
    .line 1103
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    monitor-exit p0

    return-void

    .line 1103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLibBuglySOFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "customerBuglySOFilePath"    # Ljava/lang/String;

    .prologue
    .line 1051
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
