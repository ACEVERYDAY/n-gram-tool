.class Lcom/apkol/root/feature/c;
.super Ljava/lang/Object;
.source "CleanRootFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/a;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/c;->a:Lcom/apkol/root/feature/a;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/feature/c;->a:Lcom/apkol/root/feature/a;

    invoke-static {v0}, Lcom/apkol/root/feature/a;->e(Lcom/apkol/root/feature/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/apkol/root/feature/c;->a:Lcom/apkol/root/feature/a;

    invoke-static {v0}, Lcom/apkol/root/feature/a;->f(Lcom/apkol/root/feature/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleanRootSystemUtil  END"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/apkol/root/feature/c;->a:Lcom/apkol/root/feature/a;

    invoke-static {v0}, Lcom/apkol/root/feature/a;->g(Lcom/apkol/root/feature/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
