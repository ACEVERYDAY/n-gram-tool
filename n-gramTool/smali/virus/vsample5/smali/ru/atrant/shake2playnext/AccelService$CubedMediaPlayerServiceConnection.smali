.class public Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;
.super Ljava/lang/Object;
.source "AccelService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/atrant/shake2playnext/AccelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubedMediaPlayerServiceConnection"
.end annotation


# instance fields
.field public mCubedMusicService:Lorg/abrantix/rockon/rockonnggl/IRockOnNextGenService;

.field final synthetic this$0:Lru/atrant/shake2playnext/AccelService;


# direct methods
.method public constructor <init>(Lru/atrant/shake2playnext/AccelService;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 519
    const-string v1, "Shake2PlayNext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cubed music service connected! Name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {p2}, Lorg/abrantix/rockon/rockonnggl/IRockOnNextGenService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/abrantix/rockon/rockonnggl/IRockOnNextGenService;

    move-result-object v1

    .line 521
    iput-object v1, p0, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;->mCubedMusicService:Lorg/abrantix/rockon/rockonnggl/IRockOnNextGenService;

    .line 525
    :try_start_0
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;->mCubedMusicService:Lorg/abrantix/rockon/rockonnggl/IRockOnNextGenService;

    invoke-interface {v1}, Lorg/abrantix/rockon/rockonnggl/IRockOnNextGenService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;->mCubedMusicService:Lorg/abrantix/rockon/rockonnggl/IRockOnNextGenService;

    invoke-interface {v1}, Lorg/abrantix/rockon/rockonnggl/IRockOnNextGenService;->next()V

    .line 527
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    const-string v2, "Cubed - NEXT!"

    invoke-static {v1, v2}, Lru/atrant/shake2playnext/AccelService;->access$0(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;)V

    .line 532
    :goto_0
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-virtual {v1}, Lru/atrant/shake2playnext/AccelService;->ShowAdvert()V

    .line 536
    :goto_1
    return-void

    .line 529
    :cond_0
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    const-string v2, "Cubed"

    const v3, 0x7f04002b

    invoke-static {v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->access$1(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cubed error - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lru/atrant/shake2playnext/AccelService;->access$0(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 539
    const-string v0, "Shake2PlayNext"

    const-string v1, "Cubed music service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method
