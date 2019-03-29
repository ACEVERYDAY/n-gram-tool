.class Lcom/upay/billing/engine/rm_woyd/Main$2;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/rm_woyd/Main;

.field final synthetic val$cmd:Lcom/upay/billing/bean/Cmd;

.field final synthetic val$event:Lcom/upay/billing/utils/Json;

.field final synthetic val$sendNum:I

.field final synthetic val$serialNo:Ljava/lang/String;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/rm_woyd/Main;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/utils/Json;I)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iput-object p3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$serialNo:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p5, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iput-object p6, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$event:Lcom/upay/billing/utils/Json;

    iput p7, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$sendNum:I

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 9

    const/16 v5, 0x7b

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/Main;->access$300(Lcom/upay/billing/engine/rm_woyd/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v5}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "target"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget-object v5, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v5, v5, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "response"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "woyd-request-dtsmsUrl-fail:code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

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

    const-string v4, "request"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "upay_progress_ui"

    goto/16 :goto_0
.end method

.method protected onSuccess([B)V
    .locals 15

    const/4 v0, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/16 v1, 0xc8

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    const-string v1, "actions"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v10

    invoke-virtual {v10}, Lcom/upay/billing/utils/Json;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    invoke-virtual {v10}, Lcom/upay/billing/utils/Json;->length()I

    move-result v0

    if-ge v9, v0, :cond_1

    invoke-virtual {v10, v9}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "cpId"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "serviceId"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "myId"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "price"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "upay_woyd_ui"

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/Main;->access$000(Lcom/upay/billing/engine/rm_woyd/Main;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/upay/billing/engine/rm_woyd/Main$2$1;-><init>(Lcom/upay/billing/engine/rm_woyd/Main$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v12, v13, v14, v0}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v1, v2, v3}, Lcom/upay/billing/engine/rm_woyd/Main;->access$300(Lcom/upay/billing/engine/rm_woyd/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "upay_p_ui_n"

    :goto_2
    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v3, 0x7b

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "exec_pay"

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v5, "result"

    const/16 v6, 0x7b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "target"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "price"

    iget-object v6, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v6, v6, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "response"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "woyd-request-dtsmsUrl-fail:code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "result"

    invoke-virtual {v0, v7}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v0, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "request"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string v1, "upay_progress_ui"

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v1, v2, v3}, Lcom/upay/billing/engine/rm_woyd/Main;->access$300(Lcom/upay/billing/engine/rm_woyd/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "upay_p_ui_n"

    :goto_4
    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v3, 0x7b

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "exec_pay"

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v5, "result"

    const/16 v6, 0x7b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "target"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "price"

    iget-object v6, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v6, v6, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "response"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "woyd-request-dtsmsUrl-fail:code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "result"

    invoke-virtual {v0, v7}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v0, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "request"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v1, "upay_progress_ui"

    goto/16 :goto_4
.end method
