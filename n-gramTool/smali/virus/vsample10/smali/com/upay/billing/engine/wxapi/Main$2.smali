.class Lcom/upay/billing/engine/wxapi/Main$2;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/wxapi/Main;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/wxapi/Main;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iput-object p3, p0, Lcom/upay/billing/engine/wxapi/Main$2;->val$file:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 3

    const/16 v2, 0x79

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_progress_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const-string v1, "code\uff1a184,error\uff1aweixin-service-download-fail"

    invoke-static {v0, v2, v1}, Lcom/upay/billing/engine/wxapi/Main;->access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V

    return-void
.end method

.method protected onSuccess([B)V
    .locals 4

    const/16 v3, 0x79

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->val$file:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/upay/billing/utils/Util;->writeToFile([BLjava/io/File;)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_progress_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$2;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/wxapi/Main;->installApp(Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const/16 v1, 0x79

    const-string v2, "code\uff1a184,error\uff1aweixin-service-download-fail"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/wxapi/Main;->access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_progress_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi/Main;->access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main$2;->this$0:Lcom/upay/billing/engine/wxapi/Main;

    const-string v1, "code\uff1a184,error\uff1aweixin-service-download-fail"

    invoke-static {v0, v3, v1}, Lcom/upay/billing/engine/wxapi/Main;->access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V

    goto :goto_0
.end method
