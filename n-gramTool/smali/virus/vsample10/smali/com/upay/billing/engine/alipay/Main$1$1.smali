.class Lcom/upay/billing/engine/alipay/Main$1$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/alipay/Main$1;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/alipay/Main$1;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/alipay/Main$1$1;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "alipayto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Alipay-Main"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/upay/billing/engine/alipay/Main$1$1;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/alipay/Main$1;->this$0:Lcom/upay/billing/engine/alipay/Main;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/upay/billing/engine/alipay/Main;->access$202(Lcom/upay/billing/engine/alipay/Main;I)I

    :goto_0
    iget-object v2, p0, Lcom/upay/billing/engine/alipay/Main$1$1;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/alipay/Main$1;->this$0:Lcom/upay/billing/engine/alipay/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/alipay/Main;->access$100(Lcom/upay/billing/engine/alipay/Main;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/upay/billing/engine/alipay/Main$1$1;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/alipay/Main$1;->this$0:Lcom/upay/billing/engine/alipay/Main;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/upay/billing/engine/alipay/Main;->access$300(Lcom/upay/billing/engine/alipay/Main;I)V

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/upay/billing/engine/alipay/Main$1$1;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/alipay/Main$1;->this$0:Lcom/upay/billing/engine/alipay/Main;

    const/16 v3, 0x79

    invoke-static {v2, v3}, Lcom/upay/billing/engine/alipay/Main;->access$202(Lcom/upay/billing/engine/alipay/Main;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main$1$1;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/alipay/Main$1;->this$0:Lcom/upay/billing/engine/alipay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/alipay/Main;->access$000(Lcom/upay/billing/engine/alipay/Main;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
