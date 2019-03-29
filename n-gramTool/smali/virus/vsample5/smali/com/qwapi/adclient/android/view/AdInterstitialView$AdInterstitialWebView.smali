.class public Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;
.super Lcom/qwapi/adclient/android/view/AdWebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qwapi/adclient/android/view/AdInterstitialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdInterstitialWebView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/qwapi/adclient/android/view/AdWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qwapi/adclient/android/view/AdWebView;-><init>(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V

    return-void
.end method


# virtual methods
.method protected load(Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "<div align=\"center\"><div>"

    move-object v2, v0

    :goto_0
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->wAdView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->getTextColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qwapi/adclient/android/data/Ad;->getXhtmlAdContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<div><br/> <br/><br/><br/><br/><br/></div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "QuattroWirelessSDK/2.1 interstitial:"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qwapi/adclient/android/data/Ad;->getXhtmlAdContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
