.class Landroid/support/v4/app/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/support/v4/app/j;


# direct methods
.method constructor <init>(Landroid/support/v4/app/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Landroid/support/v4/app/j;->a()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/j;

    invoke-static {v0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/j;

    invoke-static {v0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/j;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/j;

    invoke-static {v1}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/j;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/j;

    invoke-static {v0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/j;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/j;

    invoke-static {v0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/j;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/j;

    invoke-static {v1}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/j;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
