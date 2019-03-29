.class Lcom/upay/billing/engine/UpayCoreImpl$23;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$plan:Lcom/upay/billing/bean/Plan;

.field final synthetic val$progressText:Ljava/lang/String;

.field final synthetic val$taskTrade:Lcom/upay/billing/bean/Trade;

.field final synthetic val$uiKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->val$plan:Lcom/upay/billing/bean/Plan;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->val$uiKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->val$progressText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed(Lcom/upay/billing/UpayActivity;)Z
    .locals 5

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->val$uiKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->val$progressText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/upay/billing/UpayActivityExt;->onBackPressed(Lcom/upay/billing/UpayActivity;)Z

    move-result v0

    return v0
.end method

.method public onPostCreate(Lcom/upay/billing/UpayActivity;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v11, -0x1

    const/4 v10, -0x2

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/upay/billing/UpayActivityExt;->onPostCreate(Lcom/upay/billing/UpayActivity;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Lcom/upay/billing/UpayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Lcom/upay/billing/UpayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    int-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v4, v2

    mul-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6702(Lcom/upay/billing/engine/UpayCoreImpl;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setId(I)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1}, Lcom/upay/billing/UpayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    :goto_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x1010077

    invoke-direct {v0, p1, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6802(Lcom/upay/billing/engine/UpayCoreImpl;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    int-to-double v5, v1

    mul-double/2addr v5, v8

    double-to-int v1, v5

    int-to-double v5, v2

    mul-double/2addr v5, v8

    double-to-int v2, v5

    invoke-direct {v4, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/upay/billing/engine/UpayCoreImpl$23$1;

    invoke-direct {v2, p0}, Lcom/upay/billing/engine/UpayCoreImpl$23$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$23;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/upay/billing/engine/UpayCoreImpl$23$2;

    invoke-direct {v2, p0, v0}, Lcom/upay/billing/engine/UpayCoreImpl$23$2;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$23;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v1, "common"

    const-string v2, "h5_game_url"

    const-string v3, "http://cdn.upay360.cn/h5_game/duxinshu/index.html"

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v7, :cond_5

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x0

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    aget-object v0, v0, v1

    :goto_1
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v3, 0xa0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x78

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x140

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xd5

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1
.end method
