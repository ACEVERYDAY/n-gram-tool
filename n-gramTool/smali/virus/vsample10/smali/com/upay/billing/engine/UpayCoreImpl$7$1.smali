.class Lcom/upay/billing/engine/UpayCoreImpl$7$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$7;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v8, 0x67

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1110(Lcom/upay/billing/engine/UpayCoreImpl;)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_progress_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$session:I

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v2, v2, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$goodsKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v3, v3, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$extra:Ljava/lang/String;

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v5, v5, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v6, v6, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$event:Lcom/upay/billing/utils/Json;

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/engine/UpayCoreImpl;->realPay(ILjava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-nez v4, :cond_3

    if-nez v7, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$1900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_progress_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v0, "UpayCoreImpl"

    const-string v1, "no plan"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$7;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$appKey:Ljava/lang/String;

    const-string v2, "click_goods"

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$7$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$7;

    iget-object v3, v3, Lcom/upay/billing/engine/UpayCoreImpl$7;->val$event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
