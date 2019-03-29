.class Lcom/apkol/root/a/ah;
.super Ljava/lang/Object;
.source "RunRootShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/ae;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/ae;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/ah;->a:Lcom/apkol/root/a/ae;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/apkol/root/a/ah;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->f(Lcom/apkol/root/a/ae;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/root/v;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 200
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 201
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/apkol/root/a/ah;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->g(Lcom/apkol/root/a/ae;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    return-void
.end method
