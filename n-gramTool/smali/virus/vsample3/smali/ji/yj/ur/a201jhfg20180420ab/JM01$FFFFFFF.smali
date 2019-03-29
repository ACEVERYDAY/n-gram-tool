.class Lji/yj/ur/a201jhfg20180420ab/JM01$FFFFFFF;
.super Ljava/lang/Thread;
.source "JM01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lji/yj/ur/a201jhfg20180420ab/JM01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FFFFFFF"
.end annotation


# instance fields
.field final synthetic this$0:Lji/yj/ur/a201jhfg20180420ab/JM01;


# direct methods
.method constructor <init>(Lji/yj/ur/a201jhfg20180420ab/JM01;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lji/yj/ur/a201jhfg20180420ab/JM01$FFFFFFF;->this$0:Lji/yj/ur/a201jhfg20180420ab/JM01;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 82
    const-wide/16 v1, 0x4e20

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 83
    iget-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM01$FFFFFFF;->this$0:Lji/yj/ur/a201jhfg20180420ab/JM01;

    invoke-static {v1}, Lji/yj/ur/a201jhfg20180420ab/JM01;->access$1(Lji/yj/ur/a201jhfg20180420ab/JM01;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
