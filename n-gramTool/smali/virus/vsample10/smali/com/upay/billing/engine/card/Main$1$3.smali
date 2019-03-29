.class Lcom/upay/billing/engine/card/Main$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/card/Main$1;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/card/Main$1;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main$1$3;->this$1:Lcom/upay/billing/engine/card/Main$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x6e

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1$3;->this$1:Lcom/upay/billing/engine/card/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1$3;->this$1:Lcom/upay/billing/engine/card/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1$3;->this$1:Lcom/upay/billing/engine/card/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, "card-pay-cancel"

    invoke-static {v0, v2, v1}, Lcom/upay/billing/engine/card/Main;->access$1400(Lcom/upay/billing/engine/card/Main;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1$3;->this$1:Lcom/upay/billing/engine/card/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_card_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
