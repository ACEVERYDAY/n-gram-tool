.class Lcom/apkol/root/a/aa;
.super Landroid/os/Handler;
.source "RootFactory.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/z;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/z;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/aa;->a:Lcom/apkol/root/a/z;

    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    iget-object v0, p0, Lcom/apkol/root/a/aa;->a:Lcom/apkol/root/a/z;

    invoke-static {v0}, Lcom/apkol/root/a/z;->a(Lcom/apkol/root/a/z;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/apkol/root/a/aa;->a:Lcom/apkol/root/a/z;

    invoke-static {v0}, Lcom/apkol/root/a/z;->a(Lcom/apkol/root/a/z;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 66
    :cond_0
    invoke-static {}, Lcom/apkol/root/RootActivity$a;->a()Lcom/apkol/root/RootActivity$a;

    move-result-object v0

    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/apkol/root/a/aa;->a:Lcom/apkol/root/a/z;

    invoke-static {v1, v0}, Lcom/apkol/root/a/z;->a(Lcom/apkol/root/a/z;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/apkol/root/a/aa;->a:Lcom/apkol/root/a/z;

    invoke-static {v0}, Lcom/apkol/root/a/z;->b(Lcom/apkol/root/a/z;)V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v1, p0, Lcom/apkol/root/a/aa;->a:Lcom/apkol/root/a/z;

    invoke-static {v1}, Lcom/apkol/root/a/z;->c(Lcom/apkol/root/a/z;)Lcom/apkol/root/AssistConst;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x3000

    iput v1, v0, Lcom/apkol/root/RootActivity$a;->a:I

    .line 78
    .line 80
    iget-object v1, p0, Lcom/apkol/root/a/aa;->a:Lcom/apkol/root/a/z;

    invoke-static {v1}, Lcom/apkol/root/a/z;->e(Lcom/apkol/root/a/z;)Lcom/apkol/root/feature/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/apkol/root/feature/e;->a(Lcom/apkol/root/RootActivity$a;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
