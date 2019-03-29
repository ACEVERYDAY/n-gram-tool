.class Lcom/sxys/sdk/svcs$1;
.super Landroid/os/Handler;
.source "svcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sxys/sdk/svcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 131
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Lorg/json/JSONTokener;

    const-string v4, "data"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "jsonT":Lorg/json/JSONTokener;
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 133
    .local v0, "_data":Lorg/json/JSONObject;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 147
    .end local v0    # "_data":Lorg/json/JSONObject;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "jsonT":Lorg/json/JSONTokener;
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local v0    # "_data":Lorg/json/JSONObject;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "jsonT":Lorg/json/JSONTokener;
    :pswitch_0
    sget-object v4, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 136
    sget-object v4, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    const-string v5, "sscreen"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lorg/json/JSONObject;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 137
    .local v3, "method":Ljava/lang/reflect/Method;
    sget-object v4, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v0    # "_data":Lorg/json/JSONObject;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "jsonT":Lorg/json/JSONTokener;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
