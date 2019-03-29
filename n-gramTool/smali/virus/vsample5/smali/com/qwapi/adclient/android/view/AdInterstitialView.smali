.class public Lcom/qwapi/adclient/android/view/AdInterstitialView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;
    }
.end annotation


# instance fields
.field private imgSkip:Landroid/widget/ImageView;

.field private skipListener:Lcom/qwapi/adclient/android/view/SkipListener;

.field private textView:Landroid/widget/TextView;

.field private webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct/range {p0 .. p5}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->init(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 6

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->setOrientation(I)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->init(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/qwapi/adclient/android/view/AdInterstitialView;)Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qwapi/adclient/android/view/AdInterstitialView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->imgSkip:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qwapi/adclient/android/view/AdInterstitialView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 6

    new-instance v0, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/view/QWAdView;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->imgSkip:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->imgSkip:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->imgSkip:Landroid/widget/ImageView;

    new-instance v1, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;

    invoke-direct {v1, p0}, Lcom/qwapi/adclient/android/view/AdInterstitialView$1;-><init>(Lcom/qwapi/adclient/android/view/AdInterstitialView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x5

    const/16 v2, 0x32

    const/4 v3, 0x5

    const/16 v4, 0x46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->imgSkip:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->textView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x5

    const/16 v1, 0xa

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->setPadding(IIII)V

    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->invalidate()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->removeAllViews()V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;->destroy()V

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->webView:Lcom/qwapi/adclient/android/view/AdInterstitialView$AdInterstitialWebView;

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->imgSkip:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->imgSkip:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->imgSkip:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->textView:Landroid/widget/TextView;

    :cond_2
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->skipListener:Lcom/qwapi/adclient/android/view/SkipListener;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->skipListener:Lcom/qwapi/adclient/android/view/SkipListener;

    :cond_3
    return-void
.end method

.method public getSkipListener()Lcom/qwapi/adclient/android/view/SkipListener;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->skipListener:Lcom/qwapi/adclient/android/view/SkipListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->cleanup()V

    return-void
.end method

.method public setSkipListener(Lcom/qwapi/adclient/android/view/SkipListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/AdInterstitialView;->skipListener:Lcom/qwapi/adclient/android/view/SkipListener;

    return-void
.end method
