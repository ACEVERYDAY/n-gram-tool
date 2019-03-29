.class public Lcom/qwapi/adclient/android/view/AdWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qwapi/adclient/android/view/AdWebView$AdWebViewClient;
    }
.end annotation


# instance fields
.field protected wAdView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/qwapi/adclient/android/view/QWAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdWebView;->wAdView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdWebView;->setBackgroundColor(I)V

    invoke-direct {p0, p3, p4, p5}, Lcom/qwapi/adclient/android/view/AdWebView;->init(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdWebView;->wAdView:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2, p3, p4}, Lcom/qwapi/adclient/android/view/AdWebView;->init(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V

    return-void
.end method

.method private init(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdWebView;->wAdView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/qwapi/adclient/android/view/AdWebView$AdWebViewClient;

    invoke-direct {v0, p0, p2, p1}, Lcom/qwapi/adclient/android/view/AdWebView$AdWebViewClient;-><init>(Lcom/qwapi/adclient/android/view/AdWebView;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/data/Ad;)V

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-virtual {p0, p1}, Lcom/qwapi/adclient/android/view/AdWebView;->load(Lcom/qwapi/adclient/android/data/Ad;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdWebView;->setBackgroundColor(I)V

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

    invoke-virtual/range {v0 .. v5}, Lcom/qwapi/adclient/android/view/AdWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdWebView;->wAdView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->getTextColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qwapi/adclient/android/data/Ad;->getXhtmlAdContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuattroWirelessSDK/2.1 webview:"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdWebView;->removeAllViews()V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdWebView;->destroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdWebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
