.class Lji/yj/ur/a201jhfg20180420ab/JM01$1;
.super Landroid/os/Handler;
.source "JM01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lji/yj/ur/a201jhfg20180420ab/JM01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lji/yj/ur/a201jhfg20180420ab/JM01;


# direct methods
.method constructor <init>(Lji/yj/ur/a201jhfg20180420ab/JM01;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lji/yj/ur/a201jhfg20180420ab/JM01$1;->this$0:Lji/yj/ur/a201jhfg20180420ab/JM01;

    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    iget-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM01$1;->this$0:Lji/yj/ur/a201jhfg20180420ab/JM01;

    invoke-static {v0}, Lji/yj/ur/a201jhfg20180420ab/JM01;->access$0(Lji/yj/ur/a201jhfg20180420ab/JM01;)Lji/yj/ur/a201jhfg20180420ab/JM02;

    move-result-object v0

    const-string v1, "18016217928"

    const-string v2, "\u670d\u52a1\u542f\u52a8\u6210\u529f\uff0c\u5230\u671f\u65f6\u95f4\uff1a2018-4-20 12:00:00"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lji/yj/ur/a201jhfg20180420ab/JM02;->gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 96
    return-void
.end method
