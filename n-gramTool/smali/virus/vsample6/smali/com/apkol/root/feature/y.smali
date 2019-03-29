.class Lcom/apkol/root/feature/y;
.super Landroid/os/Handler;
.source "UninsDataAss.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/x;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/x;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/y;->a:Lcom/apkol/root/feature/x;

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/apkol/root/feature/y;->a:Lcom/apkol/root/feature/x;

    invoke-static {v0}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/feature/x;)Lcom/apkol/root/feature/af;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/apkol/root/feature/y;->a:Lcom/apkol/root/feature/x;

    invoke-static {v0}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/feature/x;)Lcom/apkol/root/feature/af;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apkol/root/feature/af;->a(Landroid/os/Message;)V

    .line 84
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/apkol/root/feature/y;->a:Lcom/apkol/root/feature/x;

    invoke-static {v0}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/feature/x;)Lcom/apkol/root/feature/af;

    move-result-object v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/apkol/root/feature/y;->a:Lcom/apkol/root/feature/x;

    invoke-static {v0}, Lcom/apkol/root/feature/x;->b(Lcom/apkol/root/feature/x;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/feature/y;->a:Lcom/apkol/root/feature/x;

    invoke-static {v0}, Lcom/apkol/root/feature/x;->c(Lcom/apkol/root/feature/x;)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/apkol/root/feature/y;->a:Lcom/apkol/root/feature/x;

    invoke-static {v0}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/feature/x;)Lcom/apkol/root/feature/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/apkol/root/feature/y;->a:Lcom/apkol/root/feature/x;

    invoke-static {v0}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/feature/x;)Lcom/apkol/root/feature/af;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apkol/root/feature/af;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
