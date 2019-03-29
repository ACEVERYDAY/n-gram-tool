.class Lru/atrant/shake2playnext/AccelService$3;
.super Ljava/lang/Object;
.source "AccelService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/atrant/shake2playnext/AccelService;->runKeepScreenThread(Z)V
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
    iput-object p1, p0, Lru/atrant/shake2playnext/AccelService$3;->this$0:Lru/atrant/shake2playnext/AccelService;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "Shake2PlayNext"

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "mWakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v1, 0x0

    .line 360
    .local v1, "mWakeLock2":Landroid/os/PowerManager$WakeLock;
    iget-object v3, p0, Lru/atrant/shake2playnext/AccelService$3;->this$0:Lru/atrant/shake2playnext/AccelService;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lru/atrant/shake2playnext/AccelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 361
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    .line 362
    const-string v4, "S2PN WakeLock Tag"

    .line 361
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 363
    const v3, 0x10000006

    .line 365
    const-string v4, "S2PN WakeLock2 Tag"

    .line 363
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 366
    const-string v3, "Shake2PlayNext"

    const-string v3, "Starting KeepScreen thread"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    iget-object v3, p0, Lru/atrant/shake2playnext/AccelService$3;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-static {v3}, Lru/atrant/shake2playnext/AccelService;->access$6(Lru/atrant/shake2playnext/AccelService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 385
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 387
    :cond_0
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 389
    :cond_1
    const-string v3, "Shake2PlayNext"

    const-string v3, "Stopped KeepScreen thread"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 368
    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 369
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 370
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 374
    :goto_1
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 375
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 376
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 381
    :goto_2
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v3

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_1

    .line 378
    :cond_4
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_2
.end method
