.class Lcom/apkol/root/feature/s;
.super Ljava/lang/Object;
.source "SoftRecommend.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/l;

.field private final synthetic b:Lcom/apkol/root/feature/l$b;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/l;Lcom/apkol/root/feature/l$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/s;->a:Lcom/apkol/root/feature/l;

    iput-object p2, p0, Lcom/apkol/root/feature/s;->b:Lcom/apkol/root/feature/l$b;

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 827
    iget-object v0, p0, Lcom/apkol/root/feature/s;->b:Lcom/apkol/root/feature/l$b;

    iget-object v0, v0, Lcom/apkol/root/feature/l$b;->f:Lcom/apkol/root/feature/l$a;

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apkol/root/feature/s;->a:Lcom/apkol/root/feature/l;

    invoke-static {v2}, Lcom/apkol/root/feature/l;->g(Lcom/apkol/root/feature/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/apkol/root/feature/l$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pm  install "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 833
    :try_start_0
    const-string v3, "su2"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 834
    const/16 v4, 0x4e20

    .line 833
    invoke-static {v3, v2, v4}, Lcom/apkol/utils/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 835
    iget-object v2, p0, Lcom/apkol/root/feature/s;->a:Lcom/apkol/root/feature/l;

    iget-object v3, p0, Lcom/apkol/root/feature/s;->a:Lcom/apkol/root/feature/l;

    invoke-static {v3}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Lcom/apkol/root/feature/l$a;->g:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/apkol/root/feature/l;->a(Lcom/apkol/root/feature/l;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    const/4 v0, 0x3

    iput v0, v1, Landroid/os/Message;->what:I

    .line 837
    iget-object v0, p0, Lcom/apkol/root/feature/s;->b:Lcom/apkol/root/feature/l$b;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 838
    iget-object v0, p0, Lcom/apkol/root/feature/s;->a:Lcom/apkol/root/feature/l;

    invoke-static {v0}, Lcom/apkol/root/feature/l;->e(Lcom/apkol/root/feature/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 843
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 845
    :cond_0
    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    .line 846
    iget-object v0, p0, Lcom/apkol/root/feature/s;->b:Lcom/apkol/root/feature/l$b;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 847
    iget-object v0, p0, Lcom/apkol/root/feature/s;->a:Lcom/apkol/root/feature/l;

    invoke-static {v0}, Lcom/apkol/root/feature/l;->e(Lcom/apkol/root/feature/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
