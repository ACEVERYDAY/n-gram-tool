.class Lcom/upay/billing/engine/upay/Main$1$2;
.super Lcom/upay/billing/engine/MessageRunner;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/upay/Main$1;

.field final synthetic val$charge_event:Lcom/upay/billing/utils/Json;

.field final synthetic val$cmd:Lcom/upay/billing/bean/Cmd;

.field final synthetic val$event:Lcom/upay/billing/utils/Json;

.field final synthetic val$serialNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iput-object p6, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iput-object p7, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    iput-object p8, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$event:Lcom/upay/billing/utils/Json;

    iput-object p9, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$charge_event:Lcom/upay/billing/utils/Json;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/upay/billing/engine/MessageRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$1$2;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upr:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/upay/billing/utils/HttpRunner;

    const-string v1, "http://api.upay360.cn/function/modem_pool/log.jsp"

    invoke-direct {v0, v1}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    const-string v1, "mobile"

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$1$2;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "fail"

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v2, "dt_sms_verify_cmd"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x9d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step-one-send-sms-to-monitor-fail: code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",errorCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/upay/Main;->access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1;->val$cmdHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v4, "wait_verify_app"

    invoke-static {v2, v3, v4}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "upay_p_ui_n"

    :goto_1
    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v3}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v2, v3, v1}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_1
    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v4, "exec_pay"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v6, "result"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v5, "price"

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v6, v6, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v5, "response"

    invoke-virtual {v1, v5, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

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

    invoke-virtual {v0, v1, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9b

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x78

    goto :goto_2

    :cond_4
    const-string v2, "upay_progress_ui"

    goto/16 :goto_1
.end method

.method protected onSuccess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$1$2;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upr:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/upay/billing/utils/HttpRunner;

    const-string v1, "http://api.upay360.cn/function/modem_pool/log.jsp"

    invoke-direct {v0, v1}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    const-string v1, "mobile"

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$1$2;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "succ"

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {p2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v2, "dt_sms_verify_cmd"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v2, "dt_kkdm_cmd"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/upay/billing/engine/upay/Main;->access$1000(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    invoke-virtual {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->timeLimit(Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;)V

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v3, "cmd_day_timelimit_verify"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    invoke-virtual {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->userTimeLimit(Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;)V

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/upay/billing/engine/upay/Main$1$2;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/upay/billing/UpayCore;->activateHandlers(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/upay/billing/UpayCore;->getCooldown(Ljava/lang/String;)Lcom/upay/billing/bean/Cooldown;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/upay/billing/bean/Cooldown;->start()V

    :cond_4
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$1100(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

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

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$1100(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v3, "verify_cmdkey"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

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

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v4}, Lcom/upay/billing/engine/upay/Main;->access$302(Lcom/upay/billing/engine/upay/Main;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$300(Lcom/upay/billing/engine/upay/Main;)Ljava/util/Timer;

    move-result-object v0

    new-instance v4, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-direct {v4, v5}, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;-><init>(Lcom/upay/billing/engine/upay/Main;)V

    invoke-virtual {v0, v4, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "exec_pay"

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v5, "result"

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v6

    iget-object v8, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

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

    iget-object v6, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

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

    if-eqz v1, :cond_b

    const/4 v0, 0x3

    if-eq v1, v0, :cond_b

    const/4 v0, 0x5

    if-eq v1, v0, :cond_b

    const/4 v0, 0x6

    if-eq v1, v0, :cond_b

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0xcb

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "charge_handle"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$charge_event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    const/16 v5, 0xcb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

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

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget-object v5, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

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

    :cond_6
    :goto_3
    return-void

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "upay_p_ui_n"

    :goto_4
    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-eq v1, v0, :cond_a

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "upay_progress_ui"

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$serialNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    invoke-virtual {v0, v2, v3, v4}, Lcom/upay/billing/engine/upay/Main;->showUssdWaitVerifyUI(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V

    goto/16 :goto_2

    :cond_b
    if-eqz v1, :cond_c

    const/4 v0, 0x5

    if-ne v1, v0, :cond_6

    :cond_c
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->startPolling(Lcom/upay/billing/bean/Trade;)V

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v4}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Time-Diff"

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_key"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "goods_key"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_secret"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/bean/Plan;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/upay/billing/utils/NativeUtil;->genHash(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_secret"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "step"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "params"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-static {v2, v3}, Lcom/upay/billing/engine/upay/Main;->access$500(Lcom/upay/billing/engine/upay/Main;Lcom/upay/billing/bean/Trade;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "trades"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/upay/Main;->access$400(Lcom/upay/billing/engine/upay/Main;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->asJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/upay/billing/engine/upay/Main$1$2$1;

    invoke-static {}, Lcom/upay/billing/engine/upay/Main;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/upay/billing/engine/upay/Main$1$2$1;-><init>(Lcom/upay/billing/engine/upay/Main$1$2;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/upay/billing/engine/upay/Main$1$2$1;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/upay/billing/engine/upay/Main$1$2$2;

    invoke-direct {v1, p0}, Lcom/upay/billing/engine/upay/Main$1$2$2;-><init>(Lcom/upay/billing/engine/upay/Main$1$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    :cond_f
    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const/4 v1, 0x1

    aget-object v4, v0, v1

    new-instance v0, Lcom/upay/billing/engine/upay/Main$1$2$3;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/upay/Main$1$2$3;-><init>(Lcom/upay/billing/engine/upay/Main$1$2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/MessageRunner;->run()V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
