.class Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qwapi/adclient/android/view/AdExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdExpandableViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

.field wAd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/qwapi/adclient/android/data/Ad;",
            ">;"
        }
    .end annotation
.end field

.field wDispatacher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/qwapi/adclient/android/view/EventDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qwapi/adclient/android/view/AdExpandableView;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 1

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->wDispatacher:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->wAd:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const-string v0, "/ajaxextended/index.php"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/static/adproxy/index.php"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->access$000(Lcom/qwapi/adclient/android/view/AdExpandableView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->suspendRefresherThreads()V

    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "javascript:(function() \'{\' var anchors = document.getElementsByTagName(\"a\"); var count = anchors.length;for(var i = 0; i<count;i++) \'{\' anchors[i].style.color = \"rgb({0})\";\'}\' \'}\' )()"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-static {v3}, Lcom/qwapi/adclient/android/view/AdExpandableView;->access$000(Lcom/qwapi/adclient/android/view/AdExpandableView;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getTextColor()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "QuattroWirelessSDK/2.1"

    const-string v0, "QuattroWirelessSDK/2.1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "http://close.this.ad/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v0, "Closing the Interstitial WebView"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-static {v0, v6}, Lcom/qwapi/adclient/android/view/AdExpandableView;->access$102(Lcom/qwapi/adclient/android/view/AdExpandableView;Z)Z

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->access$000(Lcom/qwapi/adclient/android/view/AdExpandableView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setVisibility(I)V

    new-instance v0, Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->wAd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qwapi/adclient/android/data/Ad;

    iget-object v3, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->wDispatacher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qwapi/adclient/android/view/EventDispatcher;

    iget-object v4, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-static {v4}, Lcom/qwapi/adclient/android/view/AdExpandableView;->access$000(Lcom/qwapi/adclient/android/view/AdExpandableView;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-direct/range {v0 .. v5}, Lcom/qwapi/adclient/android/view/AdExpandableView;-><init>(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;Z)V

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-static {v1}, Lcom/qwapi/adclient/android/view/AdExpandableView;->access$000(Lcom/qwapi/adclient/android/view/AdExpandableView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setAdView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->access$000(Lcom/qwapi/adclient/android/view/AdExpandableView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0, v5}, Lcom/qwapi/adclient/android/view/QWAdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdExpandableView$AdExpandableViewClient;->this$0:Lcom/qwapi/adclient/android/view/AdExpandableView;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/AdExpandableView;->access$000(Lcom/qwapi/adclient/android/view/AdExpandableView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->resumeRefresherThreads()V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method
