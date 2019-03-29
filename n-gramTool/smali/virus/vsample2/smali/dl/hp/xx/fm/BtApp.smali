.class public Ldl/hp/xx/fm/BtApp;
.super Landroid/app/Application;
.source "z"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 84
    invoke-static {p0}, Ldl/hp/xx/fm/G;->J(Landroid/content/Context;)V

    .line 21
    return-void
.end method
