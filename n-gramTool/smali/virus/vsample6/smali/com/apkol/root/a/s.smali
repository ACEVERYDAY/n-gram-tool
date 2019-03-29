.class Lcom/apkol/root/a/s;
.super Landroid/os/Handler;
.source "ReName.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/r;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/r;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->a(Lcom/apkol/root/a/r;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 54
    iget-object v0, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->b(Lcom/apkol/root/a/r;)V

    .line 55
    iget-object v0, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apkol/root/a/r;->a(Lcom/apkol/root/a/r;I)V

    .line 57
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v1}, Lcom/apkol/root/a/r;->c(Lcom/apkol/root/a/r;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v2}, Lcom/apkol/root/a/r;->d(Lcom/apkol/root/a/r;)Lcom/apkol/root/a/ad;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v3}, Lcom/apkol/root/a/r;->e(Lcom/apkol/root/a/r;)Lcom/apkol/root/AssistConst;

    move-result-object v3

    iget v3, v3, Lcom/apkol/root/AssistConst;->ac:I

    .line 61
    invoke-static {v1, v2, v3, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 68
    :cond_1
    :goto_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_0

    .line 69
    iget-object v0, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->c(Lcom/apkol/root/a/r;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v1}, Lcom/apkol/root/a/r;->d(Lcom/apkol/root/a/r;)Lcom/apkol/root/a/ad;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v2}, Lcom/apkol/root/a/r;->e(Lcom/apkol/root/a/r;)Lcom/apkol/root/AssistConst;

    move-result-object v2

    iget v2, v2, Lcom/apkol/root/AssistConst;->ab:I

    const-string v3, ""

    .line 69
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->c(Lcom/apkol/root/a/r;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v1}, Lcom/apkol/root/a/r;->d(Lcom/apkol/root/a/r;)Lcom/apkol/root/a/ad;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/apkol/root/a/s;->a:Lcom/apkol/root/a/r;

    invoke-static {v2}, Lcom/apkol/root/a/r;->e(Lcom/apkol/root/a/r;)Lcom/apkol/root/AssistConst;

    move-result-object v2

    iget v2, v2, Lcom/apkol/root/AssistConst;->ac:I

    const-string v3, ""

    .line 64
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
