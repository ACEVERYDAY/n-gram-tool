.class Lcom/apkol/root/feature/ac;
.super Ljava/lang/Object;
.source "UninsDataAss.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/x;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/x;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/ac;->a:Lcom/apkol/root/feature/x;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/feature/ac;)Lcom/apkol/root/feature/x;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/apkol/root/feature/ac;->a:Lcom/apkol/root/feature/x;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/apkol/root/feature/ac;->a:Lcom/apkol/root/feature/x;

    iget-object v1, p0, Lcom/apkol/root/feature/ac;->a:Lcom/apkol/root/feature/x;

    invoke-static {v1}, Lcom/apkol/root/feature/x;->f(Lcom/apkol/root/feature/x;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/feature/x;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 575
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/apkol/root/feature/ad;

    invoke-direct {v2, p0, v0}, Lcom/apkol/root/feature/ad;-><init>(Lcom/apkol/root/feature/ac;Ljava/util/ArrayList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 587
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 588
    return-void
.end method
