.class public Lcom/apkol/root/ControlTT;
.super Ljava/lang/Object;
.source "ControlTT.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static vv(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    new-instance v0, Lcom/apkol/root/RootActivity;

    invoke-direct {v0}, Lcom/apkol/root/RootActivity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/apkol/root/RootActivity;->onCreate(Landroid/content/Context;)V

    .line 9
    return-void
.end method
