.class public Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;
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
    name = "BTunes16MediaPlayerServiceConnection"
.end annotation


# instance fields
.field public mbTunes16MusicService:Lcom/bmayers/bTunesRelease16/PlayerServiceInterface;

.field final synthetic this$0:Lru/atrant/shake2playnext/AccelService;


# direct methods
.method public constructor <init>(Lru/atrant/shake2playnext/AccelService;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 602
    const-string v1, "Shake2PlayNext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bTunes16 music service connected! Name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {p2}, Lcom/bmayers/bTunesRelease16/PlayerServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bmayers/bTunesRelease16/PlayerServiceInterface;

    move-result-object v1

    .line 604
    iput-object v1, p0, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;->mbTunes16MusicService:Lcom/bmayers/bTunesRelease16/PlayerServiceInterface;

    .line 607
    :try_start_0
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;->mbTunes16MusicService:Lcom/bmayers/bTunesRelease16/PlayerServiceInterface;

    invoke-interface {v1}, Lcom/bmayers/bTunesRelease16/PlayerServiceInterface;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;->mbTunes16MusicService:Lcom/bmayers/bTunesRelease16/PlayerServiceInterface;

    invoke-interface {v1}, Lcom/bmayers/bTunesRelease16/PlayerServiceInterface;->nextSong()V

    .line 609
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    const-string v2, "bTunes16 - NEXT!"

    invoke-static {v1, v2}, Lru/atrant/shake2playnext/AccelService;->access$0(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;)V

    .line 613
    :goto_0
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-virtual {v1}, Lru/atrant/shake2playnext/AccelService;->ShowAdvert()V

    .line 617
    :goto_1
    return-void

    .line 611
    :cond_0
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    const-string v2, "bTunes16"

    const v3, 0x7f04002b

    invoke-static {v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->access$1(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bTunes16 error - "

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
    .line 620
    const-string v0, "Shake2PlayNext"

    const-string v1, "bTunes16 music service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method
