.class public Lcom/qwapi/adclient/android/view/AdExpandableView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qwapi/adclient/android/view/AdExpandableView$MyWebChromeClient;,
        Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;
    }
.end annotation


# static fields
.field private static final ANCHOR_COLOR_CHANGE_FUNCTION:Ljava/lang/String; = "javascript:(function() \'{\' var anchors = document.getElementsByTagName(\"a\"); var count = anchors.length;for(var i = 0; i<count;i++) \'{\' anchors[i].style.color = \"rgb({0})\";\'}\' \'}\' )()"

.field private static final CLICK_URL_PARAM:Ljava/lang/String; = "curl="

.field private static final CLIENT_ID_COOKIE_PARAM:Ljava/lang/String; = "QuattroClientIdCookie="

.field private static final CLOSE_URL:Ljava/lang/String; = "http://close.this.ad/"

.field private static final INAPP_PARAM:Ljava/lang/String; = "inApp=true"

.field private static final ISANDROID_PARAM:Ljava/lang/String; = "ia=true"

.field private static final LIVE_ADPROXY_URL:Ljava/lang/String; = "/ajaxextended/index.php"

.field private static final QWAPI_DOMAIN:Ljava/lang/String; = "qwapi.com"

.field private static final STAGING_ADPROXY_URL:Ljava/lang/String; = "/static/adproxy/index.php"

.field private static final TRACKING_PIXEL_PARAM:Ljava/lang/String; = "tp"

.field private static final URL_PARAM:Ljava/lang/String; = "u="


# instance fields
.field private userClosed:Z

.field private wAdView:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->wAdView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->userClosed:Z

    invoke-direct {p0, p3, p4, p5, p6}, Lcom/qwapi/adclient/android/view/AdExpandableView;->init(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->wAdView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->userClosed:Z

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/qwapi/adclient/android/view/AdExpandableView;->init(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/qwapi/adclient/android/view/AdExpandableView;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->wAdView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qwapi/adclient/android/view/AdExpandableView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->userClosed:Z

    return p1
.end method

.method private init(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->wAdView:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;

    invoke-direct {v0, p0, p2, p1}, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;-><init>(Lcom/qwapi/adclient/android/view/AdExpandableView;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/data/Ad;)V

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    invoke-direct {p0, p1, p4}, Lcom/qwapi/adclient/android/view/AdExpandableView;->load(Lcom/qwapi/adclient/android/data/Ad;Z)V

    invoke-virtual {p0, v2}, Lcom/qwapi/adclient/android/view/AdExpandableView;->setBackgroundColor(I)V

    return-void
.end method

.method private load(Lcom/qwapi/adclient/android/data/Ad;Z)V
    .locals 6

    const-string v4, "?"

    const-string v5, "&"

    if-nez p1, :cond_0

    const-string v0, "<div align=\"center\"><div>"

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getData()Lcom/qwapi/adclient/android/data/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/Data;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v0, "inApp=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getTrackingPixels()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/qwapi/adclient/android/AdApiConfig;->getProxyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "ia=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "tp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->wAdView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->getTextColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qwapi/adclient/android/data/Ad;->getXhtmlAdContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuattroWirelessSDK/2.1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "curl="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/Ad;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v0, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "u="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qwapi/adclient/android/DeviceContext;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const-string v3, "qwapi.com"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuattroClientIdCookie="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->removeAllViews()V

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->userClosed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView;->userClosed:Z

    return-void
.end method
