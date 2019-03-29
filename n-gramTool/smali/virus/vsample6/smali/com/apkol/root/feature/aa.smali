.class Lcom/apkol/root/feature/aa;
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
    iput-object p1, p0, Lcom/apkol/root/feature/aa;->a:Lcom/apkol/root/feature/x;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/apkol/root/feature/aa;->a:Lcom/apkol/root/feature/x;

    invoke-static {v0}, Lcom/apkol/root/feature/x;->e(Lcom/apkol/root/feature/x;)V

    .line 234
    return-void
.end method
