.class Lcom/upay/billing/engine/upay/Main$1$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/upay/billing/engine/upay/Main$1$2;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v10, 0x9e

    const/4 v9, 0x0

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "sn"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "cmd_key"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x18

    const/4 v1, 0x1

    new-array v3, v1, [Z

    aput-boolean v9, v3, v9

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    aget-boolean v0, v3, v9

    if-nez v0, :cond_0

    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "app_key"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "goods_key"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "app_secret"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v5

    iget-object v5, v5, Lcom/upay/billing/bean/Plan;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/upay/billing/utils/NativeUtil;->genHash(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_secret"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "hash"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "params"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-static {v5, v6}, Lcom/upay/billing/engine/upay/Main;->access$500(Lcom/upay/billing/engine/upay/Main;Lcom/upay/billing/bean/Trade;)Lcom/upay/billing/utils/Json;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v4, "trades"

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->asJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v4, Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    invoke-static {}, Lcom/upay/billing/engine/upay/Main;->access$600()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Lcom/upay/billing/engine/upay/Main$1$2$2$1;-><init>(Lcom/upay/billing/engine/upay/Main$1$2$2;Ljava/lang/String;[Z)V

    invoke-virtual {v4}, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/HttpRunner;->run()V

    move v0, v1

    goto/16 :goto_0

    :cond_0
    if-gtz v1, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "upay_p_ui_n"

    :goto_2
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v10}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v5, v5, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "response"

    const-string v5, "request-get-verifycode-sms-fail:code=158,cnt=0"

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

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

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "upay_progress_ui"

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
