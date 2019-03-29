.class Lcom/apkol/root/a/t;
.super Ljava/lang/Object;
.source "ReName.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/r;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/r;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/t;->a:Lcom/apkol/root/a/r;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/apkol/root/a/t;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->f(Lcom/apkol/root/a/r;)Z

    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/apkol/root/a/t;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->g(Lcom/apkol/root/a/r;)V

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 111
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 112
    const-string v1, "rename not find su"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/apkol/root/a/t;->a:Lcom/apkol/root/a/r;

    invoke-static {v1}, Lcom/apkol/root/a/r;->h(Lcom/apkol/root/a/r;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
