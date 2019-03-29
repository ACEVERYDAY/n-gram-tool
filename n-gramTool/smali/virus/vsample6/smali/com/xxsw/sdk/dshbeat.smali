.class public Lcom/xxsw/sdk/dshbeat;
.super Landroid/content/BroadcastReceiver;
.source "dshbeat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/xxsw/sdk/dswc;->start(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 18
    sget-object v4, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 19
    sget-object v4, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    const-string v5, "heartbeat"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 20
    .local v2, "method":Ljava/lang/reflect/Method;
    sget-object v4, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/xxsw/sdk/dshbeat;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "alarIntent":Landroid/content/Intent;
    const/4 v4, 0x1

    const/high16 v5, 0x8000000

    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 33
    .local v3, "pintent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 34
    .local v1, "am":Landroid/app/AlarmManager;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/xxsw/sdk/dswc;->heartbeat_sec:J

    add-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 45
    :goto_1
    return-void

    .line 40
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/xxsw/sdk/dswc;->heartbeat_sec:J

    add-long/2addr v4, v6

    invoke-virtual {v1, v8, v4, v5, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 25
    .end local v0    # "alarIntent":Landroid/content/Intent;
    .end local v1    # "am":Landroid/app/AlarmManager;
    .end local v3    # "pintent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
