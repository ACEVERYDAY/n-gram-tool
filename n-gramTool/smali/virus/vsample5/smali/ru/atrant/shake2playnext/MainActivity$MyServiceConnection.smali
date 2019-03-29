.class public Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/atrant/shake2playnext/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyServiceConnection"
.end annotation


# instance fields
.field public mService:Lru/atrant/shake2playnext/IShake2PlayNextService;

.field private mTr:I

.field final synthetic this$0:Lru/atrant/shake2playnext/MainActivity;


# direct methods
.method public constructor <init>(Lru/atrant/shake2playnext/MainActivity;)V
    .locals 1

    .prologue
    .line 421
    iput-object p1, p0, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;->this$0:Lru/atrant/shake2playnext/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    const/4 v0, 0x0

    iput v0, p0, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;->mTr:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 430
    invoke-static {p2}, Lru/atrant/shake2playnext/IShake2PlayNextService$Stub;->asInterface(Landroid/os/IBinder;)Lru/atrant/shake2playnext/IShake2PlayNextService;

    move-result-object v1

    iput-object v1, p0, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;->mService:Lru/atrant/shake2playnext/IShake2PlayNextService;

    .line 432
    :try_start_0
    iget-object v1, p0, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;->mService:Lru/atrant/shake2playnext/IShake2PlayNextService;

    iget v2, p0, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;->mTr:I

    invoke-interface {v1, v2}, Lru/atrant/shake2playnext/IShake2PlayNextService;->setTreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;->this$0:Lru/atrant/shake2playnext/MainActivity;

    invoke-virtual {v1}, Lru/atrant/shake2playnext/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 435
    const/4 v3, 0x1

    .line 434
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 435
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;->mService:Lru/atrant/shake2playnext/IShake2PlayNextService;

    .line 441
    return-void
.end method

.method public setTr(I)V
    .locals 0
    .param p1, "n_t"    # I

    .prologue
    .line 426
    iput p1, p0, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;->mTr:I

    .line 427
    return-void
.end method
