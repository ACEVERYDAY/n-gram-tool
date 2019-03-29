.class Lcom/apkol/root/a/h;
.super Ljava/lang/Object;
.source "FramaRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/f;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/h;->a:Lcom/apkol/root/a/f;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/apkol/root/a/h;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->g(Lcom/apkol/root/a/f;)V

    .line 137
    iget-object v0, p0, Lcom/apkol/root/a/h;->a:Lcom/apkol/root/a/f;

    invoke-static {v0}, Lcom/apkol/root/a/f;->h(Lcom/apkol/root/a/f;)V

    .line 138
    return-void
.end method
