.class Lcom/apkol/root/a/ag;
.super Ljava/util/TimerTask;
.source "RunRootShell.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/ae;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/ae;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/ag;->a:Lcom/apkol/root/a/ae;

    .line 128
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 134
    invoke-static {}, Lcom/apkol/root/a/ae;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timer OverTime ROOT_SHELL_STATE ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/a/ag;->a:Lcom/apkol/root/a/ae;

    invoke-static {v2}, Lcom/apkol/root/a/ae;->d(Lcom/apkol/root/a/ae;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/apkol/root/a/ag;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->d(Lcom/apkol/root/a/ae;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 136
    invoke-static {}, Lcom/apkol/root/a/ae;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer OverTime"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 139
    iput v3, v0, Landroid/os/Message;->what:I

    .line 140
    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 141
    const-string v1, "RunRootShell Timer OverTime"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/apkol/root/a/ag;->a:Lcom/apkol/root/a/ae;

    invoke-static {v1}, Lcom/apkol/root/a/ae;->g(Lcom/apkol/root/a/ae;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    invoke-static {}, Lcom/apkol/root/a/ae;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No Root"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method
