.class Lcom/upay/billing/engine/tenpay/Main$1$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/tenpay/Main$1;

.field final synthetic val$activity:Lcom/upay/billing/UpayActivity;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/tenpay/Main$1;Lcom/upay/billing/UpayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/tenpay/Main$1$1;->this$1:Lcom/upay/billing/engine/tenpay/Main$1;

    iput-object p2, p0, Lcom/upay/billing/engine/tenpay/Main$1$1;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "tenpay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TenpayActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1$1;->this$1:Lcom/upay/billing/engine/tenpay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/upay/billing/engine/tenpay/Main;->access$202(Lcom/upay/billing/engine/tenpay/Main;I)I

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1$1;->this$1:Lcom/upay/billing/engine/tenpay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/tenpay/Main;->access$100(Lcom/upay/billing/engine/tenpay/Main;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1$1;->this$1:Lcom/upay/billing/engine/tenpay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/tenpay/Main$1$1;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-static {v1, v2}, Lcom/upay/billing/engine/tenpay/Main;->access$300(Lcom/upay/billing/engine/tenpay/Main;Landroid/app/Activity;)V

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1$1;->this$1:Lcom/upay/billing/engine/tenpay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    const/16 v2, 0x79

    invoke-static {v1, v2}, Lcom/upay/billing/engine/tenpay/Main;->access$202(Lcom/upay/billing/engine/tenpay/Main;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/upay/billing/engine/tenpay/Main$1$1;->this$1:Lcom/upay/billing/engine/tenpay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
