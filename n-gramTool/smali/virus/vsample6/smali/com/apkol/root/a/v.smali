.class Lcom/apkol/root/a/v;
.super Ljava/util/TimerTask;
.source "ReName.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/r;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/r;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/v;->a:Lcom/apkol/root/a/r;

    .line 219
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/apkol/root/a/v;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->j(Lcom/apkol/root/a/r;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timer OverTime ROOT_RENAME_STATE ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/apkol/root/a/v;->a:Lcom/apkol/root/a/r;

    invoke-static {v2}, Lcom/apkol/root/a/r;->a(Lcom/apkol/root/a/r;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/apkol/root/a/v;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->a(Lcom/apkol/root/a/r;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/apkol/root/a/v;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->j(Lcom/apkol/root/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer OverTime"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 231
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 232
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 233
    const-string v1, "ReName Timer OverTime"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/apkol/root/a/v;->a:Lcom/apkol/root/a/r;

    invoke-static {v1}, Lcom/apkol/root/a/r;->h(Lcom/apkol/root/a/r;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    iget-object v0, p0, Lcom/apkol/root/a/v;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->j(Lcom/apkol/root/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No Root"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method
