.class Lcom/apkol/root/as;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/ao;


# direct methods
.method constructor <init>(Lcom/apkol/root/ao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/as;->a:Lcom/apkol/root/ao;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/apkol/root/as;->a:Lcom/apkol/root/ao;

    invoke-static {v0}, Lcom/apkol/root/ao;->f(Lcom/apkol/root/ao;)V

    .line 478
    return-void
.end method
