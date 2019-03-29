.class Lcom/phone2/stop/activity/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/phone2/stop/activity/DeleteActivity;


# direct methods
.method constructor <init>(Lcom/phone2/stop/activity/DeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/phone2/stop/activity/a;->a:Lcom/phone2/stop/activity/DeleteActivity;

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
    iget-object v0, p0, Lcom/phone2/stop/activity/a;->a:Lcom/phone2/stop/activity/DeleteActivity;

    const-string v1, "\u6fc0\u6d3b\u4e4b\u540e\u81ea\u52a8\u5378\u8f7d"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/phone2/stop/activity/a;->a:Lcom/phone2/stop/activity/DeleteActivity;

    invoke-static {v0}, Lcom/phone2/stop/activity/DeleteActivity;->a(Lcom/phone2/stop/activity/DeleteActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/phone2/stop/activity/a;->a:Lcom/phone2/stop/activity/DeleteActivity;

    const-string v1, "\u5e94\u7528\u5378\u8f7d\u6210\u529f!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/phone2/stop/activity/a;->a:Lcom/phone2/stop/activity/DeleteActivity;

    invoke-static {v0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/phone/stop/db/a;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/phone2/stop/activity/a;->a:Lcom/phone2/stop/activity/DeleteActivity;

    invoke-virtual {v1, v0}, Lcom/phone2/stop/activity/DeleteActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u7528\u6237\u6b63\u5c1d\u8bd5\u5378\u8f7dapp\n \u5f53\u524dapp\u72b6\u6001:\n app\u6b63\u5f0f\u6fc0\u6d3b\uff0c\u81ea\u52a8\u63d0\u793a \u201c\u5e94\u7528\u5378\u8f7d\u6210\u529f!\u201d"

    iget-object v1, p0, Lcom/phone2/stop/activity/a;->a:Lcom/phone2/stop/activity/DeleteActivity;

    invoke-static {v0, v1}, Lcom/phone/stop/e/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/phone2/stop/activity/a;->a:Lcom/phone2/stop/activity/DeleteActivity;

    invoke-static {v0}, Lcom/phone2/stop/activity/DeleteActivity;->a(Lcom/phone2/stop/activity/DeleteActivity;)V

    iget-object v0, p0, Lcom/phone2/stop/activity/a;->a:Lcom/phone2/stop/activity/DeleteActivity;

    invoke-virtual {v0}, Lcom/phone2/stop/activity/DeleteActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
