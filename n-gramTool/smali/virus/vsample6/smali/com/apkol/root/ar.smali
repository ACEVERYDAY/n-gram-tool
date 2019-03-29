.class Lcom/apkol/root/ar;
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
    iput-object p1, p0, Lcom/apkol/root/ar;->a:Lcom/apkol/root/ao;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/apkol/root/ar;->a:Lcom/apkol/root/ao;

    invoke-virtual {v0}, Lcom/apkol/root/ao;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/apkol/root/ar;->a:Lcom/apkol/root/ao;

    invoke-virtual {v0}, Lcom/apkol/root/ao;->dismiss()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/ar;->a:Lcom/apkol/root/ao;

    invoke-static {v0}, Lcom/apkol/root/ao;->b(Lcom/apkol/root/ao;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050070

    invoke-static {v0, v1}, Lcom/apkol/utils/v;->a(Landroid/content/Context;I)V

    .line 443
    return-void
.end method
