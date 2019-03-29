.class final Lcom/upay/billing/engine/MessageRunner$1;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/upay/billing/engine/MessageRunner;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "upay.message.id"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/upay/billing/engine/MessageRunner;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/MessageRunner;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/upay/billing/engine/MessageRunner$1;->getResultCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$310(Lcom/upay/billing/engine/MessageRunner;)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string v4, "errorCode"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$400(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sms:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v1, :cond_3

    const/16 v3, 0x78

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$400(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/upay/billing/engine/MessageRunner;->onFailed(ILjava/lang/String;)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/upay/billing/engine/MessageRunner;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v3

    monitor-enter v3

    if-nez v1, :cond_4

    :try_start_0
    invoke-static {}, Lcom/upay/billing/engine/MessageRunner;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$100(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$200(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/upay/billing/engine/MessageRunner;->onSuccess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
