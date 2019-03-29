.class Lcom/apkol/root/b/f;
.super Ljava/lang/Object;
.source "GetMachineInfoForC.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/b/e;

.field private final synthetic b:Landroid/os/Handler;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/apkol/root/b/e;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/b/f;->a:Lcom/apkol/root/b/e;

    iput-object p2, p0, Lcom/apkol/root/b/f;->b:Landroid/os/Handler;

    iput p3, p0, Lcom/apkol/root/b/f;->c:I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apkol/root/b/f;->a:Lcom/apkol/root/b/e;

    iget-object v1, p0, Lcom/apkol/root/b/f;->a:Lcom/apkol/root/b/e;

    invoke-static {v1}, Lcom/apkol/root/b/e;->a(Lcom/apkol/root/b/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apkol/root/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/root/b/e;->a(Lcom/apkol/root/b/e;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/apkol/root/b/f;->a:Lcom/apkol/root/b/e;

    invoke-static {v0}, Lcom/apkol/root/b/e;->b(Lcom/apkol/root/b/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/apkol/root/b/f;->a:Lcom/apkol/root/b/e;

    iget-object v1, p0, Lcom/apkol/root/b/f;->a:Lcom/apkol/root/b/e;

    invoke-static {v1}, Lcom/apkol/root/b/e;->b(Lcom/apkol/root/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/root/b/e;->b(Lcom/apkol/root/b/e;Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/b/f;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/apkol/root/b/f;->c:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 53
    iget-object v1, p0, Lcom/apkol/root/b/f;->a:Lcom/apkol/root/b/e;

    invoke-static {v1}, Lcom/apkol/root/b/e;->b(Lcom/apkol/root/b/e;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/apkol/root/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    :cond_1
    return-void
.end method
