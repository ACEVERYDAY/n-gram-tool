.class Lcom/apkol/root/a/p;
.super Ljava/util/TimerTask;
.source "Middle.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/m;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/p;->a:Lcom/apkol/root/a/m;

    .line 159
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/apkol/root/a/p;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->h(Lcom/apkol/root/a/m;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timer OverTime ROOT_SHELL_STATE ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/apkol/root/a/p;->a:Lcom/apkol/root/a/m;

    invoke-static {v2}, Lcom/apkol/root/a/m;->a(Lcom/apkol/root/a/m;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/apkol/root/a/p;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->a(Lcom/apkol/root/a/m;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/apkol/root/a/p;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->h(Lcom/apkol/root/a/m;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer OverTime"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 171
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 172
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 173
    const-string v1, "Middle Timer OverTime"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Lcom/apkol/root/a/p;->a:Lcom/apkol/root/a/m;

    invoke-static {v1}, Lcom/apkol/root/a/m;->i(Lcom/apkol/root/a/m;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    iget-object v0, p0, Lcom/apkol/root/a/p;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->h(Lcom/apkol/root/a/m;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No Root"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method
