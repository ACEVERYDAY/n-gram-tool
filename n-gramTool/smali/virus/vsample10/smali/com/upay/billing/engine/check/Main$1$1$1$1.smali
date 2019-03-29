.class Lcom/upay/billing/engine/check/Main$1$1$1$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

.field final synthetic val$charge_event:Lcom/upay/billing/utils/Json;

.field final synthetic val$event:Lcom/upay/billing/utils/Json;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/check/Main$1$1$1;Ljava/lang/String;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iput-object p3, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->val$event:Lcom/upay/billing/utils/Json;

    iput-object p4, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->val$charge_event:Lcom/upay/billing/utils/Json;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 9

    const/16 v7, 0x9a

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const-string v3, "upay_hint_ui"

    const-string v4, "\u652f\u4ed8\u5931\u8d25\uff01"

    const/4 v5, 0x1

    const/16 v6, 0x1f40

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/engine/check/Main;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/check/Main;->access$000(Lcom/upay/billing/engine/check/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v7}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    iget-object v3, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->val$event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

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

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

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

    :cond_0
    const-string v0, "upay_progress_ui"

    goto/16 :goto_0
.end method

.method protected onSuccess([B)V
    .locals 11

    const/16 v7, 0x9a

    const/16 v10, 0xc8

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const-string v3, "upay_hint_ui"

    const-string v4, "\u652f\u4ed8\u6210\u529f\uff0c\u8bf7\u7b49\u5f85\u4e0b\u53d1\u9053\u5177\uff01"

    const/16 v6, 0x1f40

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/engine/check/Main;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->getCooldown(Ljava/lang/String;)Lcom/upay/billing/bean/Cooldown;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/upay/billing/bean/Cooldown;->start()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

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

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v4, v4, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v4, v4, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v4, v4, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sn:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v6, v6, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v6, v6, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v6, v6, Lcom/upay/billing/engine/check/Main$1;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/check/Main;->access$000(Lcom/upay/billing/engine/check/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "upay_p_ui_n"

    :goto_2
    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v10}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    iget-object v3, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->val$event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v6

    iget-object v8, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v8, v8, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v8, v8, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v8, v8, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v8, v8, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v8}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Time-Diff"

    invoke-static {v8, v9}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget-object v6, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v6, v6, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v6, v6, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v6, v6, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v6, v6, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v3, v3, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v3, v3, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v3, v3, Lcom/upay/billing/engine/check/Main$1;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5, v10}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "charge_handle"

    iget-object v3, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->val$charge_event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

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

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

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

    :goto_3
    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    const-string v0, "upay_progress_ui"

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const-string v3, "upay_hint_ui"

    const-string v4, "\u652f\u4ed8\u5931\u8d25\uff01"

    const/16 v6, 0x1f40

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/engine/check/Main;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/check/Main;->access$000(Lcom/upay/billing/engine/check/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "upay_p_ui_n"

    :goto_4
    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v7}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    iget-object v3, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->val$event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

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

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$1$1$1$1;->this$3:Lcom/upay/billing/engine/check/Main$1$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1$1$1;->this$2:Lcom/upay/billing/engine/check/Main$1$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

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

    goto/16 :goto_3

    :cond_4
    const-string v0, "upay_progress_ui"

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
