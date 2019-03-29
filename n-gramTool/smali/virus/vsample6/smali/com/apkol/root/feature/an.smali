.class Lcom/apkol/root/feature/an;
.super Ljava/lang/Object;
.source "UninstallFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/ag;

.field private final synthetic b:Lcom/apkol/root/b/b;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/ag;Lcom/apkol/root/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/an;->a:Lcom/apkol/root/feature/ag;

    iput-object p2, p0, Lcom/apkol/root/feature/an;->b:Lcom/apkol/root/b/b;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/apkol/root/feature/an;->a:Lcom/apkol/root/feature/ag;

    iget-object v1, p0, Lcom/apkol/root/feature/an;->b:Lcom/apkol/root/b/b;

    invoke-static {v0, v1}, Lcom/apkol/root/feature/ag;->a(Lcom/apkol/root/feature/ag;Lcom/apkol/root/b/b;)V

    .line 502
    return-void
.end method
