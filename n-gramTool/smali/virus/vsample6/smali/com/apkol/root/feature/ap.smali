.class Lcom/apkol/root/feature/ap;
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
    iput-object p1, p0, Lcom/apkol/root/feature/ap;->a:Lcom/apkol/root/feature/ag;

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/apkol/root/feature/ap;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->k(Lcom/apkol/root/feature/ag;)V

    .line 901
    return-void
.end method
