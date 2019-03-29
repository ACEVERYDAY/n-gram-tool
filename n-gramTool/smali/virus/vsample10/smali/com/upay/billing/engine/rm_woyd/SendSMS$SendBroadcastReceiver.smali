.class Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field innercode:I

.field final synthetic this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/rm_woyd/SendSMS;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENT_SMS_ACTION_VERIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$200(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v1}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$300(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENT_SMS_ACTION_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    move-result-object v0

    const-string v1, "\u8ba2\u8d2d\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestSuccessed(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$400(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$400(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestSuccessed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestOrderSuccessed()V

    goto :goto_2

    :sswitch_1
    const/16 v0, 0x2709

    iput v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->innercode:I

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$400(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$400(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENT_SMS_ACTION_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    move-result-object v0

    iget v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->innercode:I

    const-string v2, "\u8ba2\u8d2d\u77ed\u4fe1\u53d1\u9001\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    move-result-object v0

    iget v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->innercode:I

    const-string v2, "\u9a8c\u8bc1\u77ed\u4fe1\u53d1\u9001\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x8bd

    iput v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->innercode:I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENT_SMS_ACTION_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    move-result-object v0

    iget v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->innercode:I

    const-string v2, "\u8ba2\u8d2d\u77ed\u4fe1\u53d1\u9001\u8d85\u65f6"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    move-result-object v0

    iget v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;->innercode:I

    const-string v2, "\u9a8c\u8bc1\u77ed\u4fe1\u53d1\u9001\u8d85\u65f6"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x8bd -> :sswitch_2
    .end sparse-switch
.end method
