.class Lcom/apkol/root/feature/r;
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
    iput-object p1, p0, Lcom/apkol/root/feature/r;->a:Lcom/apkol/root/feature/l;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/apkol/root/feature/r;->a:Lcom/apkol/root/feature/l;

    invoke-static {v0}, Lcom/apkol/root/feature/l;->d(Lcom/apkol/root/feature/l;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050088

    invoke-static {v0, v1}, Lcom/apkol/utils/v;->a(Landroid/content/Context;I)V

    .line 775
    return-void
.end method
