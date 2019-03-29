.class Lcom/upay/billing/engine/wxapi/Main$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/wxapi/Main;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/wxapi/Main;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x6e

    const/16 v4, 0xc8

    const/16 v3, 0x79

    const-string v0, "result_code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "upay_progress_ui"

    invoke-static {v1, v2}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    const-string v2, "wxapi"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const-string v1, "wxpay-pay-success"

    invoke-static {v0, v4, v1}, Lcom/upay/billing/engine/wxapi/Main;->access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const-string v1, "wxpay-charge-success"

    invoke-static {v0, v4, v1}, Lcom/upay/billing/engine/wxapi/Main;->access$200(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const-string v1, "code\uff1a110,error\uff1awxpay-pay-cancel"

    invoke-static {v0, v5, v1}, Lcom/upay/billing/engine/wxapi/Main;->access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const-string v1, "code\uff1a121,error\uff1awxpay-pay-fail"

    invoke-static {v0, v3, v1}, Lcom/upay/billing/engine/wxapi/Main;->access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$1;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const-string v1, "code\uff1a183,error\uff1awxpay-get-tradeid-fail"

    invoke-static {v0, v3, v1}, Lcom/upay/billing/engine/wxapi/Main;->access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
