.class Lcom/apkol/root/feature/b;
.super Landroid/os/Handler;
.source "CleanRootFeature.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/a;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/b;->a:Lcom/apkol/root/feature/a;

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/apkol/root/feature/b;->a:Lcom/apkol/root/feature/a;

    invoke-static {v0}, Lcom/apkol/root/feature/a;->a(Lcom/apkol/root/feature/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/apkol/root/feature/b;->a:Lcom/apkol/root/feature/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apkol/root/feature/a;->a(Lcom/apkol/root/feature/a;I)V

    .line 58
    iget-object v0, p0, Lcom/apkol/root/feature/b;->a:Lcom/apkol/root/feature/a;

    invoke-static {v0}, Lcom/apkol/root/feature/a;->b(Lcom/apkol/root/feature/a;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/apkol/root/feature/b;->a:Lcom/apkol/root/feature/a;

    invoke-static {v0}, Lcom/apkol/root/feature/a;->c(Lcom/apkol/root/feature/a;)V

    .line 60
    iget-object v0, p0, Lcom/apkol/root/feature/b;->a:Lcom/apkol/root/feature/a;

    invoke-static {v0}, Lcom/apkol/root/feature/a;->d(Lcom/apkol/root/feature/a;)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
