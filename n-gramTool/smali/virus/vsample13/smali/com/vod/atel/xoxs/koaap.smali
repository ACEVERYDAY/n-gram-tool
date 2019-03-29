.class public Lcom/vod/atel/xoxs/koaap;
.super Landroid/app/Application;
.source "koaap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Lcom/vod/atel/xoxs/fxhce;->ctsbm(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    invoke-virtual {p0}, Lcom/vod/atel/xoxs/koaap;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vod/atel/xoxs/fxhce;->uknvo(Landroid/content/Context;)V

    .line 18
    return-void
.end method
