.class public Lcom/upay/billing/sdk/LocalService;
.super Landroid/app/Service;


# instance fields
.field kF:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/sdk/LocalService;->kF:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/sdk/LocalService;->kF:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-static {p0}, Lcom/upay/billing/UpayCore;->getInstance(Landroid/content/Context;)Lcom/upay/billing/UpayCore;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/sdk/LocalService;->kF:Landroid/os/IBinder;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/sdk/LocalService;->kF:Landroid/os/IBinder;

    check-cast v0, Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->onDestory()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
