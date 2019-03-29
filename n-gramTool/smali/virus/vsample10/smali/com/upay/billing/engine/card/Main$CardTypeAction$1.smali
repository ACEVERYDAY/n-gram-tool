.class Lcom/upay/billing/engine/card/Main$CardTypeAction$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/card/Main$CardTypeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0, v3}, Lcom/upay/billing/engine/card/Main;->access$1702(Lcom/upay/billing/engine/card/Main;I)I

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$400(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main$CardTypeAction;->items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$500(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u9762\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, "CM"

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$1802(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "10"

    aput-object v2, v1, v6

    const-string v2, "20"

    aput-object v2, v1, v3

    const-string v2, "30"

    aput-object v2, v1, v4

    const-string v2, "50"

    aput-object v2, v1, v5

    const-string v2, "100"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "300"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "500"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$1902(Lcom/upay/billing/engine/card/Main;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$2002(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0, v4}, Lcom/upay/billing/engine/card/Main;->access$1702(Lcom/upay/billing/engine/card/Main;I)I

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$400(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main$CardTypeAction;->items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$500(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u9762\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, "LT"

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$1802(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "20"

    aput-object v2, v1, v6

    const-string v2, "30"

    aput-object v2, v1, v3

    const-string v2, "50"

    aput-object v2, v1, v4

    const-string v2, "100"

    aput-object v2, v1, v5

    const-string v2, "300"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "500"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$1902(Lcom/upay/billing/engine/card/Main;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$2002(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0, v5}, Lcom/upay/billing/engine/card/Main;->access$1702(Lcom/upay/billing/engine/card/Main;I)I

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$400(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v1, v1, Lcom/upay/billing/engine/card/Main$CardTypeAction;->items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/card/Main;->access$500(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u5145\u503c\u5361\u9762\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, "DX"

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$1802(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "10"

    aput-object v2, v1, v6

    const-string v2, "20"

    aput-object v2, v1, v3

    const-string v2, "30"

    aput-object v2, v1, v4

    const-string v2, "50"

    aput-object v2, v1, v5

    const-string v2, "100"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "200"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "300"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "500"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$1902(Lcom/upay/billing/engine/card/Main;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main$CardTypeAction$1;->this$1:Lcom/upay/billing/engine/card/Main$CardTypeAction;

    iget-object v0, v0, Lcom/upay/billing/engine/card/Main$CardTypeAction;->this$0:Lcom/upay/billing/engine/card/Main;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/upay/billing/engine/card/Main;->access$2002(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
