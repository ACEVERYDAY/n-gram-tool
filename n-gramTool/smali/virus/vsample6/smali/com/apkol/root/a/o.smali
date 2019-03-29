.class Lcom/apkol/root/a/o;
.super Ljava/lang/Object;
.source "Middle.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/m;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/o;->a:Lcom/apkol/root/a/m;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/apkol/root/a/o;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->f(Lcom/apkol/root/a/m;)V

    .line 149
    iget-object v0, p0, Lcom/apkol/root/a/o;->a:Lcom/apkol/root/a/m;

    invoke-static {v0}, Lcom/apkol/root/a/m;->g(Lcom/apkol/root/a/m;)V

    .line 150
    return-void
.end method
