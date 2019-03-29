.class Lru/atrant/shake2playnext/AccelService$1;
.super Lru/atrant/shake2playnext/IShake2PlayNextService$Stub;
.source "AccelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/atrant/shake2playnext/AccelService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/atrant/shake2playnext/AccelService;


# direct methods
.method constructor <init>(Lru/atrant/shake2playnext/AccelService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lru/atrant/shake2playnext/AccelService$1;->this$0:Lru/atrant/shake2playnext/AccelService;

    .line 37
    invoke-direct {p0}, Lru/atrant/shake2playnext/IShake2PlayNextService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public runKeepScreenOnThread(Z)V
    .locals 1
    .param p1, "rt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lru/atrant/shake2playnext/AccelService$1;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-virtual {v0, p1}, Lru/atrant/shake2playnext/AccelService;->runKeepScreenThread(Z)V

    .line 48
    return-void
.end method

.method public setStatusBarNotifications(Z)V
    .locals 1
    .param p1, "sbn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lru/atrant/shake2playnext/AccelService$1;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-static {v0, p1}, Lru/atrant/shake2playnext/AccelService;->access$3(Lru/atrant/shake2playnext/AccelService;Z)V

    .line 54
    return-void
.end method

.method public setTreshold(I)V
    .locals 1
    .param p1, "newTreshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lru/atrant/shake2playnext/AccelService$1;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-static {v0}, Lru/atrant/shake2playnext/AccelService;->access$2(Lru/atrant/shake2playnext/AccelService;)Lru/atrant/shake2playnext/ShakeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/atrant/shake2playnext/ShakeListener;->setTreshold(I)V

    .line 42
    return-void
.end method
