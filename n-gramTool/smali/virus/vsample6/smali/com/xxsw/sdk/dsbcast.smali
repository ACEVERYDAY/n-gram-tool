.class public Lcom/xxsw/sdk/dsbcast;
.super Landroid/content/BroadcastReceiver;
.source "dsbcast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xxsw/sdk/dswc;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {p1}, Lcom/xxsw/sdk/dswc;->start(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 19
    .local v1, "ret":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    sget-object v2, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 22
    sget-object v2, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    const-string v3, "unlock"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 23
    .local v0, "method":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "ret":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 28
    .restart local v1    # "ret":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
