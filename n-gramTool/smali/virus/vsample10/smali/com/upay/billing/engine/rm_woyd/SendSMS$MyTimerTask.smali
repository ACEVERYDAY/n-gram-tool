.class Lcom/upay/billing/engine/rm_woyd/SendSMS$MyTimerTask;
.super Ljava/util/TimerTask;


# instance fields
.field tag:I

.field final synthetic this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;


# direct methods
.method public constructor <init>(Lcom/upay/billing/engine/rm_woyd/SendSMS;I)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$MyTimerTask;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput p2, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$MyTimerTask;->tag:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$MyTimerTask;->tag:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "SENT_SMS_ACTION_ORDER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$MyTimerTask;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$200(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS$MyTimerTask;->this$0:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-static {v3}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->access$300(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    const/16 v5, 0x8bd

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v0, "SENT_SMS_ACTION_VERIFY"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
