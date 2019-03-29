.class Lcom/phone2/stop/activity/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/phone2/stop/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/phone2/stop/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/phone2/stop/activity/b;->a:Lcom/phone2/stop/activity/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/phone2/stop/activity/b;->a:Lcom/phone2/stop/activity/MainActivity;

    invoke-static {v0}, Lcom/phone/stop/c/f;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/phone2/stop/activity/b;->a:Lcom/phone2/stop/activity/MainActivity;

    const-string v1, "\u8bbe\u5907\u68c0\u6d4b\u6210\u529f\uff0c\u53ef\u4ee5\u5b89\u5168\u4f7f\u7528!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/phone2/stop/activity/b;->a:Lcom/phone2/stop/activity/MainActivity;

    invoke-virtual {v0}, Lcom/phone2/stop/activity/MainActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/phone2/stop/activity/b;->a:Lcom/phone2/stop/activity/MainActivity;

    invoke-static {v0}, Lcom/phone/stop/c/f;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/phone2/stop/activity/b;->a:Lcom/phone2/stop/activity/MainActivity;

    const-string v1, "\u5b89\u5168\u63a7\u4ef6,\u8bf7\u5141\u8bb8\u6fc0\u6d3b\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
