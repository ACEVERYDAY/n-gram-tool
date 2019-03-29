.class Lcom/apkol/root/feature/aj;
.super Ljava/lang/Object;
.source "UninstallFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/ag;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/ag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/aj;->a:Lcom/apkol/root/feature/ag;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/apkol/root/feature/aj;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->b(Lcom/apkol/root/feature/ag;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/root/b/k;->h(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/apkol/root/feature/aj;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v1}, Lcom/apkol/root/feature/ag;->b(Lcom/apkol/root/feature/ag;)Landroid/content/Context;

    move-result-object v1

    .line 142
    const/4 v2, 0x0

    .line 141
    invoke-static {v1, v0, v2}, Lcom/apkol/root/v;->a(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 143
    return-void
.end method
