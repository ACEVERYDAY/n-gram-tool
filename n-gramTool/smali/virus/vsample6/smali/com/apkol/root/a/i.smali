.class Lcom/apkol/root/a/i;
.super Ljava/util/TimerTask;
.source "FramaRoot.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/f;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/i;->a:Lcom/apkol/root/a/f;

    .line 146
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/apkol/root/a/i;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->i(Lcom/apkol/root/a/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timer OverTime ROOT_FRAMA_STATE ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/apkol/root/a/i;->a:Lcom/apkol/root/a/f;

    invoke-static {v2}, Lcom/apkol/root/a/f;->a(Lcom/apkol/root/a/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/apkol/root/a/i;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->a(Lcom/apkol/root/a/f;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/apkol/root/a/i;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->i(Lcom/apkol/root/a/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer OverTime"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 158
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 159
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 160
    const-string v1, "Middle Timer OverTime"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/apkol/root/a/i;->a:Lcom/apkol/root/a/f;

    invoke-static {v1}, Lcom/apkol/root/a/f;->j(Lcom/apkol/root/a/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    iget-object v0, p0, Lcom/apkol/root/a/i;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->i(Lcom/apkol/root/a/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No Root"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method
