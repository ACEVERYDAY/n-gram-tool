.class Lcom/apkol/root/at;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/ao;


# direct methods
.method constructor <init>(Lcom/apkol/root/ao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/at;->a:Lcom/apkol/root/ao;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/apkol/root/at;->a:Lcom/apkol/root/ao;

    invoke-virtual {v0}, Lcom/apkol/root/ao;->dismiss()V

    .line 494
    new-instance v0, Lcom/apkol/root/ao;

    iget-object v1, p0, Lcom/apkol/root/at;->a:Lcom/apkol/root/ao;

    invoke-static {v1}, Lcom/apkol/root/ao;->b(Lcom/apkol/root/ao;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/apkol/root/ao;-><init>(Landroid/content/Context;I)V

    .line 495
    invoke-virtual {v0}, Lcom/apkol/root/ao;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/apkol/root/ao;->show()V

    .line 498
    :cond_0
    return-void
.end method
