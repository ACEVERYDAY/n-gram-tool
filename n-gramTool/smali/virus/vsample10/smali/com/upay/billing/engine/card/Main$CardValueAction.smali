.class Lcom/upay/billing/engine/card/Main$CardValueAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/upay/billing/engine/card/Main$Action;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/card/Main;


# direct methods
.method private constructor <init>(Lcom/upay/billing/engine/card/Main;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main$CardValueAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upay/billing/engine/card/Main;Lcom/upay/billing/engine/card/Main$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/upay/billing/engine/card/Main$CardValueAction;-><init>(Lcom/upay/billing/engine/card/Main;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u9762\u503c"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$CardValueAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1700(Lcom/upay/billing/engine/card/Main;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u7c7b\u578b"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$CardValueAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/card/Main;->access$1900(Lcom/upay/billing/engine/card/Main;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/upay/billing/engine/card/Main$CardValueAction$1;

    invoke-direct {v2, p0}, Lcom/upay/billing/engine/card/Main$CardValueAction$1;-><init>(Lcom/upay/billing/engine/card/Main$CardValueAction;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
