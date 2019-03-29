.class Lcom/apkol/root/a/g;
.super Landroid/os/Handler;
.source "FramaRoot.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/f;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->a(Lcom/apkol/root/a/f;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 73
    iget-object v0, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    iget-object v1, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v1}, Lcom/apkol/root/a/f;->b(Lcom/apkol/root/a/f;)Ljava/util/Timer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/root/a/f;->a(Lcom/apkol/root/a/f;Ljava/util/Timer;)V

    .line 74
    iget-object v0, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    iget-object v1, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v1}, Lcom/apkol/root/a/f;->c(Lcom/apkol/root/a/f;)Ljava/util/Timer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/root/a/f;->a(Lcom/apkol/root/a/f;Ljava/util/Timer;)V

    .line 75
    iget-object v0, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apkol/root/a/f;->a(Lcom/apkol/root/a/f;I)V

    .line 77
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v1}, Lcom/apkol/root/a/f;->d(Lcom/apkol/root/a/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v2}, Lcom/apkol/root/a/f;->e(Lcom/apkol/root/a/f;)Lcom/apkol/root/a/ad;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v3}, Lcom/apkol/root/a/f;->f(Lcom/apkol/root/a/f;)Lcom/apkol/root/AssistConst;

    move-result-object v3

    iget v3, v3, Lcom/apkol/root/AssistConst;->ac:I

    .line 81
    invoke-static {v1, v2, v3, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    .line 88
    :cond_1
    :goto_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_0

    .line 89
    iget-object v0, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->d(Lcom/apkol/root/a/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->e(Lcom/apkol/root/a/f;)Lcom/apkol/root/a/ad;

    move-result-object v2

    .line 90
    iget-object v0, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->f(Lcom/apkol/root/a/f;)Lcom/apkol/root/AssistConst;

    move-result-object v0

    iget v3, v0, Lcom/apkol/root/AssistConst;->ae:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-static {v1, v2, v3, v0}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->d(Lcom/apkol/root/a/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v1}, Lcom/apkol/root/a/f;->e(Lcom/apkol/root/a/f;)Lcom/apkol/root/a/ad;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/apkol/root/a/g;->a:Lcom/apkol/root/a/f;

    invoke-static {v2}, Lcom/apkol/root/a/f;->f(Lcom/apkol/root/a/f;)Lcom/apkol/root/AssistConst;

    move-result-object v2

    iget v2, v2, Lcom/apkol/root/AssistConst;->ac:I

    const-string v3, ""

    .line 84
    invoke-static {v0, v1, v2, v3}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Lcom/apkol/root/a/ad;ILjava/lang/String;)V

    goto :goto_1

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
