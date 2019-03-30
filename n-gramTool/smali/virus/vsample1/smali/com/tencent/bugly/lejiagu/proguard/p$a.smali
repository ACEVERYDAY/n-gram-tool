.class Lcom/tencent/bugly/lejiagu/proguard/p$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/lejiagu/proguard/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/bugly/lejiagu/proguard/p;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/lejiagu/proguard/p;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/proguard/p$a;->a:Lcom/tencent/bugly/lejiagu/proguard/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 132
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p$a;->a:Lcom/tencent/bugly/lejiagu/proguard/p;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(Lcom/tencent/bugly/lejiagu/proguard/p;J)J

    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p$a;->a:Lcom/tencent/bugly/lejiagu/proguard/p;

    const-string v1, "background"

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/proguard/p;->b:Ljava/lang/String;

    .line 126
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a(Z)V

    .line 127
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p$a;->a:Lcom/tencent/bugly/lejiagu/proguard/p;

    const-string v1, "unknown"

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/proguard/p;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p$a;->a:Lcom/tencent/bugly/lejiagu/proguard/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/proguard/p;->b:Ljava/lang/String;

    .line 100
    :goto_0
    invoke-static {v5}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a(Z)V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/bugly/lejiagu/proguard/p$a;->a:Lcom/tencent/bugly/lejiagu/proguard/p;

    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(Lcom/tencent/bugly/lejiagu/proguard/p;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 103
    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/p$a;->a:Lcom/tencent/bugly/lejiagu/proguard/p;

    iget v2, v1, Lcom/tencent/bugly/lejiagu/proguard/p;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tencent/bugly/lejiagu/proguard/p;->a:I

    .line 107
    const-string v1, "[session] launch app 1 times (app in background over 30 seconds)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/p$a;->a:Lcom/tencent/bugly/lejiagu/proguard/p;

    iget v1, v1, Lcom/tencent/bugly/lejiagu/proguard/p;->a:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_2

    .line 110
    invoke-virtual {v0, v5}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a(Z)V

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p$a;->a:Lcom/tencent/bugly/lejiagu/proguard/p;

    const-string v1, "unknown"

    iput-object v1, v0, Lcom/tencent/bugly/lejiagu/proguard/p;->b:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0, v4}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a(Z)V

    goto :goto_1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    return-void
.end method
