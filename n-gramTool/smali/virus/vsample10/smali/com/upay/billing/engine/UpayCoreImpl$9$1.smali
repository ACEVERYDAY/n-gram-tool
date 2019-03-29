.class Lcom/upay/billing/engine/UpayCoreImpl$9$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

.field final synthetic val$progressText:Ljava/lang/String;

.field final synthetic val$ui_key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$9;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->val$ui_key:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->val$progressText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v2, v2, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2400(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->val$ui_key:Ljava/lang/String;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v2, v2, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v3, v3, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->val$progressText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->showGameUi(Ljava/lang/String;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "upay_progress_ui"

    goto :goto_0
.end method
