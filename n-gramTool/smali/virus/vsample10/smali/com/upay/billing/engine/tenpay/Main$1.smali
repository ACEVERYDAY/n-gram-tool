.class Lcom/upay/billing/engine/tenpay/Main$1;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/tenpay/Main;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/tenpay/Main;Lcom/upay/billing/bean/Trade;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    iput-object p2, p0, Lcom/upay/billing/engine/tenpay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed(Lcom/upay/billing/UpayActivity;)Z
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-virtual {v0}, Lcom/upay/billing/engine/tenpay/Main;->cancelPay()V

    invoke-super {p0, p1}, Lcom/upay/billing/UpayActivityExt;->onBackPressed(Lcom/upay/billing/UpayActivity;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Lcom/upay/billing/UpayActivity;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/upay/billing/UpayActivityExt;->onPostCreate(Lcom/upay/billing/UpayActivity;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goodsName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/tenpay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/tenpay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/tenpay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/UpayCore;->getGoods(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/bean/Goods;

    move-result-object v1

    iget-object v1, v1, Lcom/upay/billing/bean/Goods;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&tradeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget v1, v1, Lcom/upay/billing/bean/Trade;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-wide v1, v1, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/upay/billing/engine/tenpay/Main;->access$002(Lcom/upay/billing/engine/tenpay/Main;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setId(I)V

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/upay/billing/engine/tenpay/Main;->access$102(Lcom/upay/billing/engine/tenpay/Main;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/tenpay/Main;->access$100(Lcom/upay/billing/engine/tenpay/Main;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/tenpay/Main;->access$100(Lcom/upay/billing/engine/tenpay/Main;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v3}, Lcom/upay/billing/engine/tenpay/Main;->access$100(Lcom/upay/billing/engine/tenpay/Main;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v4}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v3}, Lcom/upay/billing/engine/tenpay/Main;->access$100(Lcom/upay/billing/engine/tenpay/Main;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/upay/billing/engine/tenpay/Main$1$1;

    invoke-direct {v3, p0, p1}, Lcom/upay/billing/engine/tenpay/Main$1$1;-><init>(Lcom/upay/billing/engine/tenpay/Main$1;Lcom/upay/billing/UpayActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/upay/billing/engine/tenpay/Main$1$2;

    invoke-direct {v3, p0, v1}, Lcom/upay/billing/engine/tenpay/Main$1$2;-><init>(Lcom/upay/billing/engine/tenpay/Main$1;Landroid/widget/ProgressBar;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/tenpay/Main;->access$100(Lcom/upay/billing/engine/tenpay/Main;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/upay/billing/UpayActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://tenpay.upay360.com/request_v2.php?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
