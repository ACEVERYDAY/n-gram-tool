.class Lcom/apkol/root/a/u;
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
    iput-object p1, p0, Lcom/apkol/root/a/u;->a:Lcom/apkol/root/a/r;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/apkol/root/a/u;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->i(Lcom/apkol/root/a/r;)Z

    move-result v0

    .line 145
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 146
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/apkol/root/a/u;->a:Lcom/apkol/root/a/r;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "model="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apkol/utils/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    const-string v3, ", displayid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    iput-object v2, v0, Lcom/apkol/root/a/r;->a:Ljava/lang/String;

    .line 151
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/apkol/root/a/u;->a:Lcom/apkol/root/a/r;

    invoke-static {v0}, Lcom/apkol/root/a/r;->h(Lcom/apkol/root/a/r;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void

    .line 153
    :cond_0
    const/4 v0, -0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 154
    const-string v0, "Run ReName Fail"

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
