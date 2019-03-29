.class Lcom/upay/billing/engine/upay/Main$7$1$2;
.super Lcom/upay/billing/engine/MessageRunner;


# instance fields
.field final synthetic this$2:Lcom/upay/billing/engine/upay/Main$7$1;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main$7$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/upay/billing/engine/MessageRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 9

    const/16 v7, 0x78

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$7$1$2;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upr:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/upay/billing/utils/HttpRunner;

    const-string v1, "http://api.upay360.cn/function/modem_pool/log.jsp"

    invoke-direct {v0, v1}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    const-string v1, "mobile"

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$7$1$2;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "fail"

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v7}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "verify_handle"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$7;->val$verifyEvent:Lcom/upay/billing/utils/Json;

    const-string v4, "up_msg"

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$7$1$2;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "up_num"

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$7$1$2;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "description"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms-confirm-verifycode-fail: code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",errorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "result"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

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

.method protected onSuccess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const/16 v9, 0xcb

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$7$1$2;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/upay/billing/utils/HttpRunner;

    const-string v1, "http://api.upay360.cn/function/modem_pool/log.jsp"

    invoke-direct {v0, v1}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    const-string v1, "mobile"

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$7$1$2;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "succ"

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "verify_handle"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$7;->val$verifyEvent:Lcom/upay/billing/utils/Json;

    const-string v4, "up_msg"

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$7$1$2;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "description"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "succ-tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

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

    const-string v4, "up_num"

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$7$1$2;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$7;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "charge_handle"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$7;->val$charge_event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

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

    const-string v4, "price"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$7$1$2;->this$2:Lcom/upay/billing/engine/upay/Main$7$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$7;->val$cmd:Lcom/upay/billing/bean/Cmd;

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

    return-void

    :cond_1
    const-string v0, "upay_progress_ui"

    goto/16 :goto_0
.end method
