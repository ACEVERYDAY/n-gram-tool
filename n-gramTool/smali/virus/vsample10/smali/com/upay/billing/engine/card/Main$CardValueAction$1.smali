.class Lcom/upay/billing/engine/card/Main$CardValueAction$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/card/Main$CardValueAction;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/card/Main$CardValueAction;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main$CardValueAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardValueAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardValueAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardValueAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardValueAction;->this$0:Lcom/upay/billing/engine/card/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$CardValueAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardValueAction;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main$CardValueAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1900(Lcom/upay/billing/engine/card/Main;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$2002(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardValueAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardValueAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardValueAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$500(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$CardValueAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardValueAction;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main$CardValueAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1900(Lcom/upay/billing/engine/card/Main;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
