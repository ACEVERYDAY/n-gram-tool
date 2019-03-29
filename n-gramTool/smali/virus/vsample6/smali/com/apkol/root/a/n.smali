.class Lcom/apkol/root/a/n;
.super Landroid/os/Handler;
.source "Middle.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/m;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->a(Lcom/apkol/root/a/m;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 55
    iget-object v0, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->b(Lcom/apkol/root/a/m;)V

    .line 56
    iget-object v0, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apkol/root/a/m;->a(Lcom/apkol/root/a/m;I)V

    .line 58
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v1}, Lcom/apkol/root/a/m;->c(Lcom/apkol/root/a/m;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v2}, Lcom/apkol/root/a/m;->d(Lcom/apkol/root/a/m;)Lcom/apkol/root/a/ad;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v3}, Lcom/apkol/root/a/m;->e(Lcom/apkol/root/a/m;)Lcom/apkol/root/AssistConst;

    move-result-object v3

    iget v3, v3, Lcom/apkol/root/AssistConst;->ac:I

    .line 62
    invoke-static {v1, v2, v3, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 69
    :cond_1
    :goto_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_0

    .line 70
    new-instance v0, Lcom/apkol/root/feature/t;

    iget-object v1, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v1}, Lcom/apkol/root/a/m;->c(Lcom/apkol/root/a/m;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apkol/root/feature/t;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0}, Lcom/apkol/root/feature/t;->a()V

    .line 73
    iget-object v0, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->c(Lcom/apkol/root/a/m;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->d(Lcom/apkol/root/a/m;)Lcom/apkol/root/a/ad;

    move-result-object v2

    .line 74
    iget-object v0, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->e(Lcom/apkol/root/a/m;)Lcom/apkol/root/AssistConst;

    move-result-object v0

    iget v3, v0, Lcom/apkol/root/AssistConst;->ab:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-static {v1, v2, v3, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->c(Lcom/apkol/root/a/m;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v1}, Lcom/apkol/root/a/m;->d(Lcom/apkol/root/a/m;)Lcom/apkol/root/a/ad;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/apkol/root/a/n;->a:Lcom/apkol/root/a/m;

    invoke-static {v2}, Lcom/apkol/root/a/m;->e(Lcom/apkol/root/a/m;)Lcom/apkol/root/AssistConst;

    move-result-object v2

    iget v2, v2, Lcom/apkol/root/AssistConst;->ac:I

    const-string v3, ""

    .line 65
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
