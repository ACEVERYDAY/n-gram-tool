.class Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

.field final synthetic val$succTag:I


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iput p3, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->val$succTag:I

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 9

    const/16 v5, 0xbc

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v5}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v5, v5, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "response"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "step2_request-verifycode-fail:code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",errorMsg="

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

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

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

    return-void

    :cond_1
    const-string v0, "upay_progress_ui"

    goto/16 :goto_0
.end method

.method protected onSuccess([B)V
    .locals 12

    const/16 v7, 0xc8

    const/4 v11, 0x6

    const/4 v10, 0x1

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v7, v1, :cond_9

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    invoke-virtual {v3}, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->activateHandlers(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->getCooldown(Ljava/lang/String;)Lcom/upay/billing/bean/Cooldown;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/upay/billing/bean/Cooldown;->start()V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/upay/billing/engine/upay/Main;->access$1000(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$1100(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "updatePaymentHistory"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/upay/billing/bean/Trade;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$1100(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v3, "verify_cmdkey"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v2, "common"

    const-string v3, "wait_verifycode_time"

    const-string v4, "120000"

    invoke-virtual {v0, v2, v3, v4}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v4}, Lcom/upay/billing/engine/upay/Main;->access$302(Lcom/upay/billing/engine/upay/Main;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$300(Lcom/upay/billing/engine/upay/Main;)Ljava/util/Timer;

    move-result-object v0

    new-instance v4, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-direct {v4, v5}, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;-><init>(Lcom/upay/billing/engine/upay/Main;)V

    invoke-virtual {v0, v4, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "exec_pay"

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v5, "result"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v6

    iget-object v8, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v8, v8, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v8, v8, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v8, v8, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v8, v8, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v8, v8, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v8, v8, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v8}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Time-Diff"

    invoke-static {v8, v9}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "price"

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v6, v6, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    invoke-virtual {v4}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    const/4 v0, 0x5

    if-eq v1, v0, :cond_7

    if-eq v1, v11, :cond_7

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "charge_handle"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2;->val$charge_event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    const/16 v5, 0xcb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

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

    const-string v4, "response"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "succ-tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->val$succTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v5, v5, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "upay_p_ui_n"

    :goto_5
    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    if-eq v1, v11, :cond_6

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v2, v7}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    goto/16 :goto_3

    :cond_5
    const-string v0, "upay_progress_ui"

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    invoke-virtual {v0, v2, v3, v4}, Lcom/upay/billing/engine/upay/Main;->showUssdWaitVerifyUI(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V

    goto/16 :goto_3

    :cond_7
    if-eqz v1, :cond_8

    if-ne v1, v11, :cond_2

    :cond_8
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->startPolling(Lcom/upay/billing/bean/Trade;)V

    goto/16 :goto_4

    :cond_9
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v1, v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "upay_p_ui_n"

    :goto_6
    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v3, 0xbc

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_a
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "exec_pay"

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v5, "result"

    const/16 v6, 0xbc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "price"

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v6, v6, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v6, v6, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "response"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "step2_request-verifycode-fail:code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "result"

    invoke-virtual {v0, v7}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1$1;->this$5:Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->this$4:Lcom/upay/billing/engine/upay/Main$1$2$2$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

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

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v1, "upay_progress_ui"

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method
