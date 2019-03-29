.class Lcom/apkol/root/aq;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/apkol/root/ao;


# direct methods
.method constructor <init>(Lcom/apkol/root/ao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/aq;->a:Lcom/apkol/root/ao;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/apkol/root/aq;->a:Lcom/apkol/root/ao;

    invoke-static {v0}, Lcom/apkol/root/ao;->c(Lcom/apkol/root/ao;)Lcom/apkol/utils/h/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/apkol/root/aq;->a:Lcom/apkol/root/ao;

    invoke-static {v0}, Lcom/apkol/root/ao;->c(Lcom/apkol/root/ao;)Lcom/apkol/utils/h/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apkol/utils/h/b;->cancel(Z)Z

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/aq;->a:Lcom/apkol/root/ao;

    invoke-static {v0}, Lcom/apkol/root/ao;->d(Lcom/apkol/root/ao;)Lcom/apkol/utils/e/b$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/apkol/root/aq;->a:Lcom/apkol/root/ao;

    invoke-static {v0}, Lcom/apkol/root/ao;->d(Lcom/apkol/root/ao;)Lcom/apkol/utils/e/b$c;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apkol/utils/e/b$c;->f:Z

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/aq;->a:Lcom/apkol/root/ao;

    invoke-static {v0}, Lcom/apkol/root/ao;->e(Lcom/apkol/root/ao;)V

    .line 211
    return-void
.end method
