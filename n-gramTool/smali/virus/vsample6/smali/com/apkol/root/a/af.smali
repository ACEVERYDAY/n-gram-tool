.class Lcom/apkol/root/a/af;
.super Landroid/os/Handler;
.source "RunRootShell.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/ae;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/ae;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    iget-object v1, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v1}, Lcom/apkol/root/a/ae;->a(Lcom/apkol/root/a/ae;)Lcom/apkol/root/AssistConst;

    move-result-object v1

    iget v1, v1, Lcom/apkol/root/AssistConst;->ad:I

    .line 86
    const-string v2, "run_shell_null"

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/apkol/root/a/ae;->a(Lcom/apkol/root/a/ae;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->b(Lcom/apkol/root/a/ae;)Lcom/apkol/root/a/al;

    move-result-object v0

    iget-boolean v0, v0, Lcom/apkol/root/a/al;->a:Z

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->c(Lcom/apkol/root/a/ae;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    iget-object v1, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v1}, Lcom/apkol/root/a/ae;->a(Lcom/apkol/root/a/ae;)Lcom/apkol/root/AssistConst;

    move-result-object v1

    iget v1, v1, Lcom/apkol/root/AssistConst;->ad:I

    .line 94
    const-string v2, "run_shell_IsExist_not"

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->d(Lcom/apkol/root/a/ae;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->e(Lcom/apkol/root/a/ae;)V

    .line 103
    iget-object v0, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apkol/root/a/ae;->a(Lcom/apkol/root/a/ae;I)V

    .line 105
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    iget-object v2, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v2}, Lcom/apkol/root/a/ae;->a(Lcom/apkol/root/a/ae;)Lcom/apkol/root/AssistConst;

    move-result-object v2

    iget v2, v2, Lcom/apkol/root/AssistConst;->ac:I

    invoke-virtual {v1, v2, v0}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    .line 113
    :cond_3
    :goto_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 114
    new-instance v0, Lcom/apkol/root/feature/t;

    iget-object v1, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v1}, Lcom/apkol/root/a/ae;->f(Lcom/apkol/root/a/ae;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apkol/root/feature/t;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0}, Lcom/apkol/root/feature/t;->a()V

    .line 117
    iget-object v0, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    iget-object v1, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v1}, Lcom/apkol/root/a/ae;->a(Lcom/apkol/root/a/ae;)Lcom/apkol/root/AssistConst;

    move-result-object v1

    iget v1, v1, Lcom/apkol/root/AssistConst;->ab:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    iget-object v1, p0, Lcom/apkol/root/a/af;->a:Lcom/apkol/root/a/ae;

    invoke-static {v1}, Lcom/apkol/root/a/ae;->a(Lcom/apkol/root/a/ae;)Lcom/apkol/root/AssistConst;

    move-result-object v1

    iget v1, v1, Lcom/apkol/root/AssistConst;->ac:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    goto :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
