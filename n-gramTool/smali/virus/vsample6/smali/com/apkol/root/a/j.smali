.class Lcom/apkol/root/a/j;
.super Ljava/util/TimerTask;
.source "FramaRoot.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/f;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/j;->a:Lcom/apkol/root/a/f;

    .line 262
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/apkol/root/a/j;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->a(Lcom/apkol/root/a/f;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/apkol/root/a/j;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->i(Lcom/apkol/root/a/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mApkTimer cancle"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 271
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 272
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 273
    const-string v1, "Run Frama mApkTimer Fail Install"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/apkol/root/a/j;->a:Lcom/apkol/root/a/f;

    invoke-static {v1}, Lcom/apkol/root/a/f;->j(Lcom/apkol/root/a/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    :cond_0
    return-void
.end method
