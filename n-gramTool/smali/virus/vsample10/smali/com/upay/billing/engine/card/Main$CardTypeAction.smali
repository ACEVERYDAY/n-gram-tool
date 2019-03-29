.class Lcom/upay/billing/engine/card/Main$CardTypeAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/upay/billing/engine/card/Main$Action;


# instance fields
.field items:[Ljava/lang/String;

.field final synthetic this$0:Lcom/upay/billing/engine/card/Main;


# direct methods
.method private constructor <init>(Lcom/upay/billing/engine/card/Main;)V
    .locals 3

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u4e2d\u56fd\u79fb\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4e2d\u56fd\u8054\u901a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e2d\u56fd\u7535\u4fe1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->items:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/upay/billing/engine/card/Main;Lcom/upay/billing/engine/card/Main$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/upay/billing/engine/card/Main$CardTypeAction;-><init>(Lcom/upay/billing/engine/card/Main;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u7c7b\u578b"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->items:[Ljava/lang/String;

    new-instance v2, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;

    invoke-direct {v2, p0}, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;-><init>(Lcom/upay/billing/engine/card/Main$CardTypeAction;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
