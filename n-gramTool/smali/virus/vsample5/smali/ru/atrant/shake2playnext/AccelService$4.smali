.class Lru/atrant/shake2playnext/AccelService$4;
.super Ljava/lang/Object;
.source "AccelService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/atrant/shake2playnext/AccelService;->startKillMusicAppThread()V
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
    iput-object p1, p0, Lru/atrant/shake2playnext/AccelService$4;->this$0:Lru/atrant/shake2playnext/AccelService;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "Shake2PlayNext"

    .line 739
    const-string v0, "Shake2PlayNext"

    const-string v0, "kill music thread started"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_0
    iget-object v0, p0, Lru/atrant/shake2playnext/AccelService$4;->this$0:Lru/atrant/shake2playnext/AccelService;

    invoke-static {v0}, Lru/atrant/shake2playnext/AccelService;->access$7(Lru/atrant/shake2playnext/AccelService;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lru/atrant/shake2playnext/AccelService;->access$8(Lru/atrant/shake2playnext/AccelService;I)V

    if-gtz v1, :cond_0

    .line 752
    const-string v0, "Shake2PlayNext"

    const-string v0, "kill music thread finished"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void

    .line 747
    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v0

    goto :goto_0
.end method
