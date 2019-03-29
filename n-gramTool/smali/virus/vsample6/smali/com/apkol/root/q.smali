.class Lcom/apkol/root/q;
.super Ljava/util/TimerTask;
.source "RootActivity.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/RootActivity;


# direct methods
.method constructor <init>(Lcom/apkol/root/RootActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/q;->a:Lcom/apkol/root/RootActivity;

    .line 439
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/q;)Lcom/apkol/root/RootActivity;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/apkol/root/q;->a:Lcom/apkol/root/RootActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/apkol/root/q;->a:Lcom/apkol/root/RootActivity;

    invoke-static {v0}, Lcom/apkol/root/RootActivity;->a(Lcom/apkol/root/RootActivity;)V

    .line 445
    iget-object v0, p0, Lcom/apkol/root/q;->a:Lcom/apkol/root/RootActivity;

    invoke-static {v0}, Lcom/apkol/root/RootActivity;->b(Lcom/apkol/root/RootActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 446
    new-instance v1, Lcom/apkol/root/s;

    invoke-direct {v1, p0}, Lcom/apkol/root/s;-><init>(Lcom/apkol/root/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 459
    return-void
.end method
