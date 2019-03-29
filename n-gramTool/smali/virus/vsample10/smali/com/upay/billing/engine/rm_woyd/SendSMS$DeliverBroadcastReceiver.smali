.class Lcom/upay/billing/engine/rm_woyd/SendSMS$DeliverBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;


# direct methods
.method public constructor <init>(Lcom/upay/billing/engine/rm_woyd/SendSMS;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$DeliverBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELIVERED_SMS_ACTION_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$DeliverBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    move-result-object v0

    const-string v1, "\u6536\u4fe1\u4eba\u5df2\u7ecf\u6210\u529f\u63a5\u6536\u8ba2\u8d2d\u77ed\u4fe1"

    invoke-interface {v0, v1}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestSuccessed(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$DeliverBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    move-result-object v0

    const-string v1, "\u6536\u4fe1\u4eba\u5df2\u7ecf\u6210\u529f\u63a5\u6536\u9a8c\u8bc1\u77ed\u4fe1"

    invoke-interface {v0, v1}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestSuccessed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$DeliverBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$200(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$DeliverBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v1}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$100(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
