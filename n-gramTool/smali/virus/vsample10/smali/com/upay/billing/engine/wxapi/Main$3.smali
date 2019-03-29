.class Lcom/upay/billing/engine/wxapi/Main$3;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/wxapi/Main;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/wxapi/Main;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/wxapi/Main$3;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x79

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$3;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/wxapi/Main;->access$300(Lcom/upay/billing/engine/wxapi/Main;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$3;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/wxapi/Main;->access$400(Lcom/upay/billing/engine/wxapi/Main;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$3;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/wxapi/Main;->access$400(Lcom/upay/billing/engine/wxapi/Main;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$3;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.rabbit.newroke"

    invoke-static {v0, v1}, Lcom/upay/billing/engine/wxapi/Main;->appInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$3;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-virtual {v0}, Lcom/upay/billing/engine/wxapi/Main;->wxPay()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$3;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$3;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$3;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const-string v1, "code\uff1a185,error\uff1aweixin-service-install-fail"

    invoke-static {v0, v2, v1}, Lcom/upay/billing/engine/wxapi/Main;->access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V

    goto :goto_0
.end method
