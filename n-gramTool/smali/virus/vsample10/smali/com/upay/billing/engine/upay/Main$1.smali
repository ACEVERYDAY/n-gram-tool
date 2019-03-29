.class Lcom/upay/billing/engine/upay/Main$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/upay/Main;

.field final synthetic val$cmdHashMap:Ljava/util/HashMap;

.field final synthetic val$dtCmdMap:Ljava/util/HashMap;

.field final synthetic val$dtMsgMap:Ljava/util/HashMap;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main;Lcom/upay/billing/bean/Trade;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iput-object p2, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p3, p0, Lcom/upay/billing/engine/upay/Main$1;->val$dtMsgMap:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/upay/billing/engine/upay/Main$1;->val$dtCmdMap:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$400(Lcom/upay/billing/engine/upay/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "trade_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "goods_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "response"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v5}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Time-Diff"

    invoke-static {v5, v6}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_key"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "goods_key"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_secret"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v3

    iget-object v3, v3, Lcom/upay/billing/bean/Plan;->appSecret:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/upay/billing/utils/NativeUtil;->genHash(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_secret"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hash"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v2, "params"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-static {v3, v4}, Lcom/upay/billing/engine/upay/Main;->access$500(Lcom/upay/billing/engine/upay/Main;Lcom/upay/billing/bean/Trade;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v2, "trades"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v3}, Lcom/upay/billing/engine/upay/Main;->access$400(Lcom/upay/billing/engine/upay/Main;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->asJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/upay/billing/engine/upay/Main$1$1;

    invoke-static {}, Lcom/upay/billing/engine/upay/Main;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/upay/billing/engine/upay/Main$1$1;-><init>(Lcom/upay/billing/engine/upay/Main$1;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V

    invoke-virtual {v2}, Lcom/upay/billing/engine/upay/Main$1$1;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/HttpRunner;->run()V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upay/billing/bean/Cmd;

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->val$dtMsgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->val$dtMsgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v1, "num"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "$midSn"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    const/16 v4, 0xa

    invoke-static {v3, v7, v4}, Lcom/upay/billing/engine/upay/Main;->access$800(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "trade_id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "goods_key"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "cmd_key"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, v6, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "bt_key"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    iget-object v3, v6, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "target"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    const-string v3, "sn"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    aput-object v7, v0, v2

    const/16 v2, 0xc

    const-string v3, "request"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    aput-object v4, v0, v2

    const/16 v2, 0xe

    const-string v3, "response"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, ""

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "trade_id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "goods_key"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "cmd_key"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, v6, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "bt_key"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    iget-object v3, v6, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "description"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "upay"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "mt_msg"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, ""

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "mt_num"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, ""

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "sn"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    aput-object v7, v0, v2

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v9

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v2, "upay"

    const-string v3, "make_up_num"

    const-string v5, "1888888"

    invoke-virtual {v0, v2, v3, v5}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "upay_p_ui_n"

    :goto_2
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    const-string v3, "result"

    const/16 v4, 0x78

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget v5, v6, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "response"

    const-string v5, "code=120,errorCode = make up cmd"

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, v6, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    const-string v1, "$serialNo"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$minTradeId"

    const/16 v2, 0x8

    const/16 v3, 0x10

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$minSn"

    const/4 v2, 0x0

    invoke-static {v7, v2}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$midSn"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    const/16 v3, 0xa

    invoke-static {v2, v7, v3}, Lcom/upay/billing/engine/upay/Main;->access$800(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$shortSn"

    const/4 v2, 0x1

    invoke-static {v7, v2}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$time"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    const-string v3, "yyyyMMddHHmmss"

    invoke-static {v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$700(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$date"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    const-string v3, "dd"

    invoke-static {v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$700(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$orderid"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$cmd_key"

    iget-object v2, v6, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$app_key"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$goods_key"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$ch_key"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->channelKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$uid"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v6, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_6

    const/4 v1, 0x0

    array-length v3, v0

    invoke-static {v1, v3}, Lcom/upay/billing/engine/upay/Main;->getRandom(II)I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, v0

    :goto_3
    iget-object v0, v6, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    const-string v3, "1065800810181"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v6, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    const-string v3, "1065800885948"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    :try_start_0
    const-class v0, Lcom/upay/billing/utils/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.umpay.huafubao.util.AppUtil"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getNString"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_6
    iget-object v0, v6, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    move-object v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    move-object v0, v2

    goto/16 :goto_1

    :cond_8
    const-string v0, "upay_progress_ui"

    goto/16 :goto_2

    :cond_9
    const-string v5, ""

    const-string v0, "{"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {v4}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "num1"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "msg1"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num2"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msg2"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    new-instance v0, Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/upay/billing/engine/upay/Main$1$2;-><init>(Lcom/upay/billing/engine/upay/Main$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/MessageRunner;->run()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v6, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v2, v6}, Lcom/upay/billing/UpayCore;->activateHandlers(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V

    iget-object v0, v6, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, v6, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->getCooldown(Ljava/lang/String;)Lcom/upay/billing/bean/Cooldown;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/upay/billing/bean/Cooldown;->start()V

    :cond_b
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$1100(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "updatePaymentHistory"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/upay/billing/bean/Trade;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$1100(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v6, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v2, "verify_cmdkey"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v1, "common"

    const-string v2, "wait_verifycode_time"

    const-string v3, "120000"

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    invoke-static {v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$302(Lcom/upay/billing/engine/upay/Main;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/upay/Main;->access$300(Lcom/upay/billing/engine/upay/Main;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-direct {v3, v4}, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;-><init>(Lcom/upay/billing/engine/upay/Main;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    const-string v3, "result"

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v7

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v5}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v9, "Time-Diff"

    invoke-static {v5, v9}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget v5, v6, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v6, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/upay/billing/engine/upay/Main;->access$1000(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->startPolling(Lcom/upay/billing/bean/Trade;)V

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "upay_p_ui_n"

    :goto_8
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    goto/16 :goto_7

    :cond_f
    const-string v0, "upay_progress_ui"

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "upay_p_ui_n"

    :goto_9
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0x83

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_11
    return-void

    :cond_12
    const-string v0, "upay_progress_ui"

    goto :goto_9

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_13
    move-object v3, v1

    goto/16 :goto_4
.end method
