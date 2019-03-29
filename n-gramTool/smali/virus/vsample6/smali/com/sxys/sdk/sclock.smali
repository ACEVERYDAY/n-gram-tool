.class public Lcom/sxys/sdk/sclock;
.super Landroid/content/BroadcastReceiver;
.source "sclock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 24
    :try_start_0
    invoke-static {p1}, Lcom/sxys/sdk/svcs;->start(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 25
    sget-object v5, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 26
    sget-object v5, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    const-string v6, "alarm"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 27
    .local v3, "method":Ljava/lang/reflect/Method;
    sget-object v5, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/sxys/sdk/sclock;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "alarIntent":Landroid/content/Intent;
    const/high16 v5, 0x8000000

    invoke-static {p1, v9, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 40
    .local v4, "pintent":Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 41
    .local v1, "am":Landroid/app/AlarmManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/sxys/sdk/svcs;->setp_sec:J

    add-long/2addr v5, v7

    invoke-virtual {v1, v9, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 52
    :goto_1
    return-void

    .line 32
    .end local v0    # "alarIntent":Landroid/content/Intent;
    .end local v1    # "am":Landroid/app/AlarmManager;
    .end local v4    # "pintent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    .line 33
    .local v2, "ee":Ljava/lang/Exception;
    const-string v5, "Print"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "----sclock Error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    .end local v2    # "ee":Ljava/lang/Exception;
    .restart local v0    # "alarIntent":Landroid/content/Intent;
    .restart local v1    # "am":Landroid/app/AlarmManager;
    .restart local v4    # "pintent":Landroid/app/PendingIntent;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/sxys/sdk/svcs;->setp_sec:J

    add-long/2addr v5, v7

    invoke-virtual {v1, v9, v5, v6, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method
