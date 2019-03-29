.class Lcom/apkol/root/a/ai;
.super Ljava/lang/Object;
.source "RunRootShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/ae;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/ae;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/ai;->a:Lcom/apkol/root/a/ae;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/apkol/root/a/ai;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->h(Lcom/apkol/root/a/ae;)V

    .line 312
    iget-object v0, p0, Lcom/apkol/root/a/ai;->a:Lcom/apkol/root/a/ae;

    invoke-static {v0}, Lcom/apkol/root/a/ae;->i(Lcom/apkol/root/a/ae;)V

    .line 313
    return-void
.end method
