.class Lcom/apkol/root/feature/at;
.super Ljava/lang/Object;
.source "UpdateFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/aq;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/aq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/at;->a:Lcom/apkol/root/feature/aq;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/apkol/root/feature/at;->a:Lcom/apkol/root/feature/aq;

    invoke-static {}, Lcom/apkol/root/b/j;->a()Lcom/apkol/root/b/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/root/feature/aq;->a(Lcom/apkol/root/feature/aq;Lcom/apkol/root/b/j;)V

    .line 112
    iget-object v0, p0, Lcom/apkol/root/feature/at;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v0}, Lcom/apkol/root/feature/aq;->b(Lcom/apkol/root/feature/aq;)Lcom/apkol/root/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/feature/at;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v1}, Lcom/apkol/root/feature/aq;->e(Lcom/apkol/root/feature/aq;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/feature/at;->a:Lcom/apkol/root/feature/aq;

    invoke-static {v2}, Lcom/apkol/root/feature/aq;->c(Lcom/apkol/root/feature/aq;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/apkol/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/apkol/root/feature/at;->a:Lcom/apkol/root/feature/aq;

    const-string v4, "parter"

    invoke-virtual {v3, v4}, Lcom/apkol/root/feature/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v0, v1, v2, v3}, Lcom/apkol/root/b/j;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    return-void
.end method
