.class Lcom/apkol/root/feature/u;
.super Ljava/lang/Object;
.source "SuFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/t;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/t;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/u;->a:Lcom/apkol/root/feature/t;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/apkol/root/feature/u;->a:Lcom/apkol/root/feature/t;

    iget-object v1, p0, Lcom/apkol/root/feature/u;->a:Lcom/apkol/root/feature/t;

    invoke-static {v1}, Lcom/apkol/root/feature/t;->a(Lcom/apkol/root/feature/t;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/root/feature/t;->a(Lcom/apkol/root/feature/t;Landroid/content/Context;)V

    .line 39
    return-void
.end method
