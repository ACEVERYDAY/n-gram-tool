.class Lcom/upay/billing/engine/upay/Main$1$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/upay/Main$1;

.field final synthetic val$event:Lcom/upay/billing/utils/Json;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main$1;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iput-object p3, p0, Lcom/upay/billing/engine/upay/Main$1$1;->val$event:Lcom/upay/billing/utils/Json;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$400(Lcom/upay/billing/engine/upay/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    const-string v2, "cmd_key"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "dt_sms_verify_cmd"

    invoke-static {v1, v2, v4}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x9d

    const-string v1, "step-one-send-sms-to-monitor-fail: code=157"

    move-object v12, v1

    move v1, v2

    move-object v2, v12

    :goto_1
    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v6, "exec_pay"

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1$1;->val$event:Lcom/upay/billing/utils/Json;

    const-string v8, "request"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    const-string v8, "target"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    const-string v8, "result"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    const-string v8, "price"

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    const-string v9, "sn"

    invoke-virtual {v0, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/bean/Cmd;

    iget v1, v1, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v7, "sn"

    const-string v8, "sn"

    invoke-virtual {v0, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    const-string v8, "bt_key"

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    const-string v9, "sn"

    invoke-virtual {v0, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v7, "cmd_key"

    const-string v8, "cmd_key"

    invoke-virtual {v0, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v7, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v8

    iget-object v10, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v10, v10, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v10, v10, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v10}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Time-Diff"

    invoke-static {v10, v11}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v7, "response"

    invoke-virtual {v1, v7, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v6, v1}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    const-string v2, "sn"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x7b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dtsms-request-command-fail:code="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",errorMsg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move v1, v2

    move-object v2, v12

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method protected onSuccess([B)V
    .locals 14

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    const/16 v0, 0xc8

    const-string v1, "result"

    invoke-virtual {v2, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    const-string v0, "actions"

    invoke-virtual {v2, v0}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "num"

    invoke-virtual {v2, v5}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sn"

    invoke-virtual {v2, v6}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "{}"

    invoke-static {v6}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v6

    const-string v7, "num"

    invoke-virtual {v6, v7, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v5, "msg"

    invoke-virtual {v6, v5, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1;->val$dtMsgMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1;->val$dtCmdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->val$dtCmdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->val$dtCmdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v3, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v6, "dt_sms_verify_cmd"

    invoke-static {v2, v3, v6}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x9d

    const-string v2, "step-one-send-sms-to-monitor-fail: code=157"

    :goto_3
    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v7, v7, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v8, "exec_pay"

    iget-object v9, p0, Lcom/upay/billing/engine/upay/Main$1$1;->val$event:Lcom/upay/billing/utils/Json;

    const-string v10, "request"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v9

    const-string v10, "target"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v9

    const-string v10, "result"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v10, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v9, "price"

    iget v10, v0, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v9, "sn"

    invoke-virtual {v3, v9, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v9, "bt_key"

    iget-object v10, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v9, "cmd_key"

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v3, v9, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v3, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v9

    iget-object v11, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v11, v11, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v11, v11, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v11}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "Time-Diff"

    invoke-static {v11, v12}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v3, "response"

    invoke-virtual {v0, v3, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v0}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    const/16 v3, 0x83

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dtsms-analyze-actions-fail:error=131,dtsendNum="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$400(Lcom/upay/billing/engine/upay/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    const-string v2, "cmd_key"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "dt_sms_verify_cmd"

    invoke-static {v1, v2, v5}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x9d

    const-string v1, "step-one-send-sms-to-monitor-fail: code=157"

    move-object v13, v1

    move v1, v2

    move-object v2, v13

    :goto_5
    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v7, "exec_pay"

    iget-object v8, p0, Lcom/upay/billing/engine/upay/Main$1$1;->val$event:Lcom/upay/billing/utils/Json;

    const-string v9, "request"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v9, "target"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v9, "result"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v9, "price"

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    const-string v10, "sn"

    invoke-virtual {v0, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/bean/Cmd;

    iget v1, v1, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v8, "sn"

    const-string v9, "sn"

    invoke-virtual {v0, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v9, "bt_key"

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    const-string v10, "sn"

    invoke-virtual {v0, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v8, "cmd_key"

    const-string v9, "cmd_key"

    invoke-virtual {v0, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v8, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v9

    iget-object v11, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v11, v11, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v11, v11, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v11}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "Time-Diff"

    invoke-static {v11, v12}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v8, "response"

    invoke-virtual {v1, v8, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v7, v1}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    const-string v2, "sn"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_3
    const/16 v2, 0x83

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dtsms-analyze-actions-fail:error=131,dtsendNum="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    move v1, v2

    move-object v2, v13

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$400(Lcom/upay/billing/engine/upay/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    const-string v3, "cmd_key"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "dt_sms_verify_cmd"

    invoke-static {v1, v3, v5}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v3, 0x9d

    const-string v1, "step-one-send-sms-to-monitor-fail: code=157"

    move-object v13, v1

    move v1, v3

    move-object v3, v13

    :goto_7
    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v7, "exec_pay"

    iget-object v8, p0, Lcom/upay/billing/engine/upay/Main$1$1;->val$event:Lcom/upay/billing/utils/Json;

    const-string v9, "request"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v9, "target"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v9, "result"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v9, "price"

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    const-string v10, "sn"

    invoke-virtual {v0, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/bean/Cmd;

    iget v1, v1, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v8, "sn"

    const-string v9, "sn"

    invoke-virtual {v0, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v9, "bt_key"

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    const-string v10, "sn"

    invoke-virtual {v0, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v8, "cmd_key"

    const-string v9, "cmd_key"

    invoke-virtual {v0, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v8, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v9

    iget-object v11, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v11, v11, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v11, v11, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v11}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "Time-Diff"

    invoke-static {v11, v12}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v8, "response"

    invoke-virtual {v1, v8, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v7, v1}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$1;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    const-string v3, "sn"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_5
    const/16 v3, 0x7b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dtsms-request-command-fail:error="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "error"

    invoke-virtual {v2, v5}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",result="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "result"

    invoke-virtual {v2, v5}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    move v1, v3

    move-object v3, v13

    goto/16 :goto_7

    :cond_6
    return-void
.end method
