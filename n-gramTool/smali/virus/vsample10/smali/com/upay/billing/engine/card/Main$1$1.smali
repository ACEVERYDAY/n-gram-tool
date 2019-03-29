.class Lcom/upay/billing/engine/card/Main$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/card/Main$1;

.field final synthetic val$activity:Lcom/upay/billing/UpayActivity;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/card/Main$1;Lcom/upay/billing/UpayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main$1$1;->this$1:Lcom/upay/billing/engine/card/Main$1;

    iput-object p2, p0, Lcom/upay/billing/engine/card/Main$1$1;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1$1;->this$1:Lcom/upay/billing/engine/card/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main$1;->this$0:Lcom/upay/billing/engine/card/Main;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/upay/billing/engine/card/Main$CardTypeAction;-><init>(Lcom/upay/billing/engine/card/Main;Lcom/upay/billing/engine/card/Main$1;)V

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$1$1;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/card/Main$CardTypeAction;->execute(Landroid/app/Activity;)V

    return-void
.end method
