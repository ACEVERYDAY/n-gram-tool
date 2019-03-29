.class public Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;
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
    name = "Mort2MediaPlayerServiceConnection"
.end annotation


# instance fields
.field public mMortMusicService:Lde/stohelit/folderplayer/playback/IPlaybackService;

.field final synthetic this$0:Lru/atrant/shake2playnext/AccelService;


# direct methods
.method public constructor <init>(Lru/atrant/shake2playnext/AccelService;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 490
    const-string v1, "Shake2PlayNext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mort music service connected! Name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {p2}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lde/stohelit/folderplayer/playback/IPlaybackService;

    move-result-object v1

    .line 493
    iput-object v1, p0, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;->mMortMusicService:Lde/stohelit/folderplayer/playback/IPlaybackService;

    .line 498
    :try_start_0
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;->mMortMusicService:Lde/stohelit/folderplayer/playback/IPlaybackService;

    invoke-interface {v1}, Lde/stohelit/folderplayer/playback/IPlaybackService;->getCurrentState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 499
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;->mMortMusicService:Lde/stohelit/folderplayer/playback/IPlaybackService;

    invoke-interface {v1}, Lde/stohelit/folderplayer/playback/IPlaybackService;->gotoNextTrack()V

    .line 500
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    const-string v2, "Mort - NEXT!"

    invoke-static {v1, v2}, Lru/atrant/shake2playnext/AccelService;->access$0(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;)V

    .line 504
    :goto_0
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-virtual {v1}, Lru/atrant/shake2playnext/AccelService;->ShowAdvert()V

    .line 508
    :goto_1
    return-void

    .line 502
    :cond_0
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    const-string v2, "Mort"

    const v3, 0x7f04002b

    invoke-static {v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->access$1(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;->this$0:Lru/atrant/shake2playnext/AccelService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mort error - "

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
    .line 511
    const-string v0, "Shake2PlayNext"

    const-string v1, "Mort2 music service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method
