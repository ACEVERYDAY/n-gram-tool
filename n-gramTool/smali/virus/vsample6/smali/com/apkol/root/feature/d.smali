.class Lcom/apkol/root/feature/d;
.super Ljava/util/TimerTask;
.source "CleanRootFeature.java"


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/a;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/d;->a:Lcom/apkol/root/feature/a;

    .line 129
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/apkol/root/feature/d;->a:Lcom/apkol/root/feature/a;

    invoke-static {v0}, Lcom/apkol/root/feature/a;->f(Lcom/apkol/root/feature/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OVER_TIME  END"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/apkol/root/feature/d;->a:Lcom/apkol/root/feature/a;

    invoke-static {v0}, Lcom/apkol/root/feature/a;->g(Lcom/apkol/root/feature/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    return-void
.end method
