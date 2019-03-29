.class Lcom/apkol/root/s;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/q;


# direct methods
.method constructor <init>(Lcom/apkol/root/q;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/s;->a:Lcom/apkol/root/q;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/apkol/root/s;->a:Lcom/apkol/root/q;

    invoke-static {v0}, Lcom/apkol/root/q;->a(Lcom/apkol/root/q;)Lcom/apkol/root/RootActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/root/RootActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/s;->a:Lcom/apkol/root/q;

    invoke-static {v0}, Lcom/apkol/root/q;->a(Lcom/apkol/root/q;)Lcom/apkol/root/RootActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/root/RootActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    goto :goto_0
.end method
