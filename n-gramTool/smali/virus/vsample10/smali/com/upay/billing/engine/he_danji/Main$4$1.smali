.class Lcom/upay/billing/engine/he_danji/Main$4$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/he_danji/Main$4;

.field final synthetic val$activity:Lcom/upay/billing/UpayActivity;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main$4;Lcom/upay/billing/UpayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$4$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iput-object p2, p0, Lcom/upay/billing/engine/he_danji/Main$4$1;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$1;->val$activity:Lcom/upay/billing/UpayActivity;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$4$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_pid_cpa:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$4$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_amount:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main$4$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v4, v4, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_chargeId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/upay/billing/engine/he_danji/Main;->access$1200(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/n0stop/n0base/N0Base;->runCharge(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->initTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->initTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method
