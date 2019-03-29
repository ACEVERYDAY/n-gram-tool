.class Lcom/apkol/root/a/b;
.super Landroid/os/Handler;
.source "DownLoadTool.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/a/a;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/b;->a:Lcom/apkol/root/a/a;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/apkol/root/a/b;->a:Lcom/apkol/root/a/a;

    iget-object v1, p0, Lcom/apkol/root/a/b;->a:Lcom/apkol/root/a/a;

    invoke-static {v1}, Lcom/apkol/root/a/a;->a(Lcom/apkol/root/a/a;)Lcom/apkol/root/AssistConst;

    move-result-object v1

    iget v1, v1, Lcom/apkol/root/AssistConst;->ab:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apkol/root/a/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-static {}, Lcom/apkol/root/a/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET_ROOT_TOOL_FAIL failMessageh ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/a/b;->a:Lcom/apkol/root/a/a;

    invoke-static {v2}, Lcom/apkol/root/a/a;->b(Lcom/apkol/root/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/apkol/root/a/b;->a:Lcom/apkol/root/a/a;

    iget-object v1, p0, Lcom/apkol/root/a/b;->a:Lcom/apkol/root/a/a;

    invoke-static {v1}, Lcom/apkol/root/a/a;->a(Lcom/apkol/root/a/a;)Lcom/apkol/root/AssistConst;

    move-result-object v1

    iget v1, v1, Lcom/apkol/root/AssistConst;->ac:I

    iget-object v2, p0, Lcom/apkol/root/a/b;->a:Lcom/apkol/root/a/a;

    invoke-static {v2}, Lcom/apkol/root/a/a;->b(Lcom/apkol/root/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apkol/root/a/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
