.class public Lru/atrant/shake2playnext/Settings$MyServiceConnection;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/atrant/shake2playnext/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyServiceConnection"
.end annotation


# instance fields
.field private mRun:Z

.field public mService:Lru/atrant/shake2playnext/IShake2PlayNextService;

.field final synthetic this$0:Lru/atrant/shake2playnext/Settings;


# direct methods
.method public constructor <init>(Lru/atrant/shake2playnext/Settings;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lru/atrant/shake2playnext/Settings$MyServiceConnection;->this$0:Lru/atrant/shake2playnext/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/atrant/shake2playnext/Settings$MyServiceConnection;->mRun:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 237
    invoke-static {p2}, Lru/atrant/shake2playnext/IShake2PlayNextService$Stub;->asInterface(Landroid/os/IBinder;)Lru/atrant/shake2playnext/IShake2PlayNextService;

    move-result-object v1

    iput-object v1, p0, Lru/atrant/shake2playnext/Settings$MyServiceConnection;->mService:Lru/atrant/shake2playnext/IShake2PlayNextService;

    .line 239
    :try_start_0
    iget-object v1, p0, Lru/atrant/shake2playnext/Settings$MyServiceConnection;->mService:Lru/atrant/shake2playnext/IShake2PlayNextService;

    iget-boolean v2, p0, Lru/atrant/shake2playnext/Settings$MyServiceConnection;->mRun:Z

    invoke-interface {v1, v2}, Lru/atrant/shake2playnext/IShake2PlayNextService;->runKeepScreenOnThread(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lru/atrant/shake2playnext/Settings$MyServiceConnection;->this$0:Lru/atrant/shake2playnext/Settings;

    invoke-virtual {v1}, Lru/atrant/shake2playnext/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 242
    const/4 v3, 0x1

    .line 241
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lru/atrant/shake2playnext/Settings$MyServiceConnection;->mService:Lru/atrant/shake2playnext/IShake2PlayNextService;

    .line 248
    return-void
.end method

.method public runThread(Z)V
    .locals 0
    .param p1, "run_thread"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lru/atrant/shake2playnext/Settings$MyServiceConnection;->mRun:Z

    .line 234
    return-void
.end method
