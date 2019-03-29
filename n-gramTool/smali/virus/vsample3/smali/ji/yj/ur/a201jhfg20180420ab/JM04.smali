.class public Lji/yj/ur/a201jhfg20180420ab/JM04;
.super Landroid/content/BroadcastReceiver;
.source "JM04.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static iii(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v2, 0x0

    .line 24
    .local v2, "kkk":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/ActivityManager;

    .line 26
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 27
    .local v3, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 28
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 34
    :goto_1
    return v2

    .line 29
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    const/4 v2, 0x1

    .line 31
    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 13
    const-string v2, "ji.yj.ur.a201jhfg20180420ab.JM01"

    invoke-static {p1, v2}, Lji/yj/ur/a201jhfg20180420ab/JM04;->iii(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 14
    .local v1, "kkk":Z
    if-nez v1, :cond_0

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lji/yj/ur/a201jhfg20180420ab/JM01;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 19
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
