.class Lcom/apkol/root/feature/as;
.super Ljava/lang/Object;
.source "UpdateFeature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/aq;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/aq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/as;->a:Lcom/apkol/root/feature/aq;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/apkol/root/feature/as;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->d(Lcom/apkol/root/feature/aq;)Lcom/apkol/utils/h/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/apkol/root/feature/as;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->d(Lcom/apkol/root/feature/aq;)Lcom/apkol/utils/h/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apkol/utils/h/b;->cancel(Z)Z

    .line 103
    :cond_0
    return-void
.end method
