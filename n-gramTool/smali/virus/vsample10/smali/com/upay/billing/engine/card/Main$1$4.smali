.class Lcom/upay/billing/engine/card/Main$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/card/Main$1;

.field final synthetic val$activity:Lcom/upay/billing/UpayActivity;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/card/Main$1;Lcom/upay/billing/UpayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main$1$4;->this$1:Lcom/upay/billing/engine/card/Main$1;

    iput-object p2, p0, Lcom/upay/billing/engine/card/Main$1$4;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1$4;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1$4;->this$1:Lcom/upay/billing/engine/card/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1$4;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/card/Main;->cardPay(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$1$4;->val$activity:Lcom/upay/billing/UpayActivity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\u8bf7\u76d1\u6d4b\u7f51\u7edc\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
