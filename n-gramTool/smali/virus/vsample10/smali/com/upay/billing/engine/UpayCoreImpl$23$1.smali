.class Lcom/upay/billing/engine/UpayCoreImpl$23$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/UpayCoreImpl$23;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$23;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$23$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$23;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$23$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$23;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$23;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
