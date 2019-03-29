.class Lcom/upay/billing/engine/UpayCoreImpl$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$found_th:Ljava/util/ArrayList;

.field final synthetic val$taskCmds:Ljava/util/ArrayList;

.field final synthetic val$taskTrade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/ArrayList;Lcom/upay/billing/bean/Trade;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$found_th:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskCmds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$3600(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "btkey"

    invoke-static {v1, v3}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$found_th:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$found_th:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/Engine;

    iget-object v4, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "cmd_key"

    aput-object v4, v3, v2

    iget-object v4, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string v4, "bt_key"

    aput-object v4, v3, v8

    iget-object v4, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    aput-object v4, v3, v9

    const-string v4, "cd_key"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "sn"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "price"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget v5, v5, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "state"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/upay/billing/utils/Json;->add(Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v4, "goods_confirm"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "trade_id"

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v2, v5, v7

    const-string v2, "op"

    aput-object v2, v5, v8

    sget-object v2, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    invoke-virtual {v2}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    const-string v2, "goods_key"

    aput-object v2, v5, v10

    const/4 v2, 0x5

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x6

    const-string v6, "result"

    aput-object v6, v5, v2

    const/4 v2, 0x7

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/Engine;->pay(Lcom/upay/billing/bean/Trade;Ljava/util/List;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "goods_confirm"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "trade_id"

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v2, v4, v7

    const-string v2, "op"

    aput-object v2, v4, v8

    sget-object v2, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    invoke-virtual {v2}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    const-string v2, "goods_key"

    aput-object v2, v4, v10

    const/4 v2, 0x5

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$11;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "result"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const/16 v5, 0x6e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
