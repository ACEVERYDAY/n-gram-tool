.class Lcom/apkol/root/feature/ak;
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
    iput-object p1, p0, Lcom/apkol/root/feature/ak;->a:Lcom/apkol/root/feature/ag;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/apkol/root/feature/ak;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->e(Lcom/apkol/root/feature/ag;)V

    .line 168
    return-void
.end method
