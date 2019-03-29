.class Lcom/qwapi/adclient/android/view/QWAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/view/QWAdView;->showNextAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/view/QWAdView;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/QWAdView$1;->this$0:Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView$1;->this$0:Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->access$000(Lcom/qwapi/adclient/android/view/QWAdView;)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView$1;->this$0:Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView$1;->this$0:Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-static {v1}, Lcom/qwapi/adclient/android/view/QWAdView;->access$000(Lcom/qwapi/adclient/android/view/QWAdView;)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v1

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/QWAdView$1;->this$0:Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-static {v2}, Lcom/qwapi/adclient/android/view/QWAdView;->access$100(Lcom/qwapi/adclient/android/view/QWAdView;)Lcom/qwapi/adclient/android/view/EventDispatcher;

    move-result-object v2

    iget-object v3, p0, Lcom/qwapi/adclient/android/view/QWAdView$1;->this$0:Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-static {v0, v1, v2, v3}, Lcom/qwapi/adclient/android/view/AdViewFactory;->getAdView(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView$1;->this$0:Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setAdView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView$1;->this$0:Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->invalidate()V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView$1;->this$0:Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-static {v0, v4}, Lcom/qwapi/adclient/android/view/QWAdView;->access$002(Lcom/qwapi/adclient/android/view/QWAdView;Lcom/qwapi/adclient/android/data/Ad;)Lcom/qwapi/adclient/android/data/Ad;

    return-void

    :cond_0
    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v1, "No ad in showNextAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0
.end method
