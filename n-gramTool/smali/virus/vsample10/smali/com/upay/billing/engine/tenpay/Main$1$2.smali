.class Lcom/upay/billing/engine/tenpay/Main$1$2;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/tenpay/Main$1;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/tenpay/Main$1;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/tenpay/Main$1$2;->this$1:Lcom/upay/billing/engine/tenpay/Main$1;

    iput-object p2, p0, Lcom/upay/billing/engine/tenpay/Main$1$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/tenpay/Main$1$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/upay/billing/engine/tenpay/Main$1$2;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/upay/billing/engine/tenpay/Main$1$2;->this$1:Lcom/upay/billing/engine/tenpay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/tenpay/Main$1;->this$0:Lcom/upay/billing/engine/tenpay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/tenpay/Main;->access$000(Lcom/upay/billing/engine/tenpay/Main;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/tenpay/Main$1$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
