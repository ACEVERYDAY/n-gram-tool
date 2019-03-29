.class Lcom/upay/billing/engine/UpayCoreImpl$4;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$polling_trade_time:J


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Landroid/content/Context;J)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->val$polling_trade_time:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-wide/16 v12, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$500(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v1, Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$500(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Trade;

    iget-wide v5, v0, Lcom/upay/billing/bean/Trade;->pollingStartTime:J

    sub-long v5, v2, v5

    const-wide/32 v7, 0x493e0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    iget-object v5, v0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v5, v0, Lcom/upay/billing/bean/Trade;->pollingStartTime:J

    cmp-long v5, v5, v12

    if-eqz v5, :cond_0

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "trade_id"

    iget-object v7, v0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "app_key"

    iget-object v7, v0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "app_secret"

    iget-object v7, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v8, v0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v7

    iget-object v7, v7, Lcom/upay/billing/bean/Plan;->appSecret:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/upay/billing/utils/NativeUtil;->genHash(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_secret"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "hash"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v6, Lcom/upay/billing/engine/UpayCoreImpl$4$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "trade/show"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?gzip=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v0}, Lcom/upay/billing/engine/UpayCoreImpl$4$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$4;Ljava/lang/String;Lcom/upay/billing/bean/Trade;)V

    invoke-virtual {v6}, Lcom/upay/billing/utils/HttpRunner;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v5, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {v0, v5, v7}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    invoke-virtual {v6}, Lcom/upay/billing/utils/HttpRunner;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_1
    iget-wide v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->val$polling_trade_time:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$500(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$500(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/MtContext;

    iget-wide v6, v1, Lcom/upay/billing/MtContext;->createTime:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0x927c0

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/TreeMap;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/MtContext;

    iget-object v4, v1, Lcom/upay/billing/MtContext;->trade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v1, Lcom/upay/billing/MtContext;->cmd:Lcom/upay/billing/bean/Cmd;

    iget-wide v6, v1, Lcom/upay/billing/MtContext;->createTime:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v7, v1, Lcom/upay/billing/MtContext;->trade:Lcom/upay/billing/bean/Trade;

    iget-object v7, v7, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v8, "charge_handle"

    const/16 v9, 0x14

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "trade_id"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "goods_key"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v4, v9, v10

    const/4 v4, 0x4

    const-string v10, "cmd_key"

    aput-object v10, v9, v4

    const/4 v4, 0x5

    iget-object v10, v5, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v10, v9, v4

    const/4 v4, 0x6

    const-string v10, "bt_key"

    aput-object v10, v9, v4

    const/4 v4, 0x7

    iget-object v10, v5, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v10, v9, v4

    const/16 v4, 0x8

    const-string v10, "description"

    aput-object v10, v9, v4

    const/16 v4, 0x9

    const-string v10, ""

    aput-object v10, v9, v4

    const/16 v4, 0xa

    const-string v10, "mt_msg"

    aput-object v10, v9, v4

    const/16 v4, 0xb

    const-string v10, ""

    aput-object v10, v9, v4

    const/16 v4, 0xc

    const-string v10, "mt_num"

    aput-object v10, v9, v4

    const/16 v4, 0xd

    const-string v10, ""

    aput-object v10, v9, v4

    const/16 v4, 0xe

    const-string v10, "price"

    aput-object v10, v9, v4

    const/16 v4, 0xf

    iget v5, v5, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    const/16 v4, 0x10

    const-string v5, "result"

    aput-object v5, v9, v4

    const/16 v4, 0x11

    const/16 v5, 0x68

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    const/16 v4, 0x12

    const-string v5, "sn"

    aput-object v5, v9, v4

    const/16 v4, 0x13

    iget-object v1, v1, Lcom/upay/billing/MtContext;->serialNo:Ljava/lang/String;

    aput-object v1, v9, v4

    invoke-static {v9}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v8, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$4;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :cond_8
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2
.end method
