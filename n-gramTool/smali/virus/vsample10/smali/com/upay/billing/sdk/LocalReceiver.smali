.class public Lcom/upay/billing/sdk/LocalReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private kG:Lcom/upay/billing/sdk/Upay;


# direct methods
.method public constructor <init>(Lcom/upay/billing/sdk/Upay;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/upay/billing/sdk/LocalReceiver;->kG:Lcom/upay/billing/sdk/Upay;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    const-string v0, "appKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/upay/billing/sdk/LocalReceiver;->kG:Lcom/upay/billing/sdk/Upay;

    iget-object v0, v0, Lcom/upay/billing/sdk/Upay;->appKey:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v0, "action"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "goodsKey"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "tradeId"

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "extra"

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "result"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/upay/billing/sdk/LocalReceiver;->kG:Lcom/upay/billing/sdk/Upay;

    iget-object v0, v0, Lcom/upay/billing/sdk/Upay;->mapCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/sdk/UpayCallback;

    iget-object v3, p0, Lcom/upay/billing/sdk/LocalReceiver;->kG:Lcom/upay/billing/sdk/Upay;

    iget-object v3, v3, Lcom/upay/billing/sdk/Upay;->mapInitCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upay/billing/sdk/UpayInitCallback;

    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    const-string v11, "onPaymentResult"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v3, "resultCode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v6, "errorMsg"

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v0 .. v5}, Lcom/upay/billing/sdk/UpayCallback;->onPaymentResult(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-eq v3, v0, :cond_4

    move v0, v7

    :goto_1
    move v8, v0

    :cond_3
    :goto_2
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/upay/billing/sdk/LocalReceiver;->kG:Lcom/upay/billing/sdk/Upay;

    iget-object v0, v0, Lcom/upay/billing/sdk/Upay;->mapCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/upay/billing/sdk/LocalReceiver;->kG:Lcom/upay/billing/sdk/Upay;

    iget-object v0, v0, Lcom/upay/billing/sdk/Upay;->mapInitCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    move v0, v8

    goto :goto_1

    :cond_5
    const-string v11, "onTradeProgress"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v3, "price"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v3, v10}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v10, "paid"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface/range {v0 .. v6}, Lcom/upay/billing/sdk/UpayCallback;->onTradeProgress(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    if-eqz v3, :cond_6

    if-ne v3, v4, :cond_6

    :goto_3
    move v8, v7

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_3

    :cond_7
    const-string v0, "onInitResult"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "resultCode"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "errorMsg"

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/upay/billing/sdk/UpayInitCallback;->onInitResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
