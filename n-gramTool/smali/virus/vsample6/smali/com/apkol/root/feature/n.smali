.class Lcom/apkol/root/feature/n;
.super Ljava/lang/Object;
.source "SoftRecommend.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/l;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/n;->a:Lcom/apkol/root/feature/l;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/apkol/root/feature/n;->a:Lcom/apkol/root/feature/l;

    invoke-static {v0}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/root/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/apkol/root/feature/n;->a:Lcom/apkol/root/feature/l;

    invoke-static {v1, v0}, Lcom/apkol/root/feature/l;->a(Lcom/apkol/root/feature/l;Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/feature/n;->a:Lcom/apkol/root/feature/l;

    invoke-static {v0}, Lcom/apkol/root/feature/l;->e(Lcom/apkol/root/feature/l;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
