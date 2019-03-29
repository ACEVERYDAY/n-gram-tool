.class Lru/atrant/shake2playnext/AdListener$2;
.super Landroid/os/Handler;
.source "AdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/atrant/shake2playnext/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/atrant/shake2playnext/AdListener;


# direct methods
.method constructor <init>(Lru/atrant/shake2playnext/AdListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lru/atrant/shake2playnext/AdListener$2;->this$0:Lru/atrant/shake2playnext/AdListener;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lru/atrant/shake2playnext/AdListener$2;->this$0:Lru/atrant/shake2playnext/AdListener;

    invoke-static {v0}, Lru/atrant/shake2playnext/AdListener;->access$0(Lru/atrant/shake2playnext/AdListener;)Lcom/qwapi/adclient/android/view/QWAdView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lru/atrant/shake2playnext/AdListener$2;->this$0:Lru/atrant/shake2playnext/AdListener;

    invoke-static {v0}, Lru/atrant/shake2playnext/AdListener;->access$1(Lru/atrant/shake2playnext/AdListener;)Lcom/admob/android/ads/AdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lru/atrant/shake2playnext/AdListener$2;->this$0:Lru/atrant/shake2playnext/AdListener;

    invoke-static {v0}, Lru/atrant/shake2playnext/AdListener;->access$1(Lru/atrant/shake2playnext/AdListener;)Lcom/admob/android/ads/AdView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 75
    return-void
.end method
