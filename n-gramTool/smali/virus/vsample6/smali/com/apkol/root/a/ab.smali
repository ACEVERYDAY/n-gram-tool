.class Lcom/apkol/root/a/ab;
.super Ljava/lang/Object;
.source "RootFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/a/z;


# direct methods
.method constructor <init>(Lcom/apkol/root/a/z;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/a/ab;->a:Lcom/apkol/root/a/z;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/apkol/root/a/ab;->a:Lcom/apkol/root/a/z;

    invoke-static {v0}, Lcom/apkol/root/a/z;->f(Lcom/apkol/root/a/z;)V

    .line 127
    return-void
.end method
