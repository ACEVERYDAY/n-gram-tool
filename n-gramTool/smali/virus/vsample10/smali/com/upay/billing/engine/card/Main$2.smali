.class Lcom/upay/billing/engine/card/Main$2;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/card/Main;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 4

    const/16 v3, 0x79

    invoke-super {p0, p1, p2}, Lcom/upay/billing/utils/HttpRunner;->onFailed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/card/Main;->access$1500(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card-pay-fail:code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/upay/billing/engine/card/Main;->access$1400(Lcom/upay/billing/engine/card/Main;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_card_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "upay_progress_ui"

    goto :goto_0
.end method

.method protected onSuccess([B)V
    .locals 6

    const/16 v5, 0x79

    const/16 v4, 0xc8

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/card/Main;->access$1500(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    const-string v2, "card"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, "card-pay-success"

    invoke-static {v0, v4, v1}, Lcom/upay/billing/engine/card/Main;->access$1400(Lcom/upay/billing/engine/card/Main;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, "card-charge-success"

    invoke-static {v0, v4, v1}, Lcom/upay/billing/engine/card/Main;->access$1600(Lcom/upay/billing/engine/card/Main;ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_card_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "upay_progress_ui"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/card/Main;->access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$2;->this$0:Lcom/upay/billing/engine/card/Main;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card-pay-fail:code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v5, v0}, Lcom/upay/billing/engine/card/Main;->access$1400(Lcom/upay/billing/engine/card/Main;ILjava/lang/String;)V

    goto :goto_1
.end method
