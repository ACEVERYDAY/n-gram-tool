.class public Lcom/qwapi/adclient/android/view/AdViewFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdView(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)Landroid/view/View;
    .locals 6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qwapi/adclient/android/view/AdInterstitialView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qwapi/adclient/android/view/AdInterstitialView;-><init>(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expandablebanner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/qwapi/adclient/android/view/AdExpandableView;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/qwapi/adclient/android/view/AdExpandableView;-><init>(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/qwapi/adclient/android/view/AdWebView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qwapi/adclient/android/view/AdWebView;-><init>(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
