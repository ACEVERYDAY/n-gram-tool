.class Lcom/upay/billing/engine/check/Main$2;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/check/Main;

.field final synthetic val$flag:Z

.field final synthetic val$progressText:Ljava/lang/String;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/check/Main;ZLcom/upay/billing/bean/Trade;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/check/Main$2;->this$0:Lcom/upay/billing/engine/check/Main;

    iput-boolean p2, p0, Lcom/upay/billing/engine/check/Main$2;->val$flag:Z

    iput-object p3, p0, Lcom/upay/billing/engine/check/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p4, p0, Lcom/upay/billing/engine/check/Main$2;->val$progressText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Lcom/upay/billing/UpayActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$2;->this$0:Lcom/upay/billing/engine/check/Main;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/upay/billing/engine/check/Main;->getPathDrawable(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed(Lcom/upay/billing/UpayActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/upay/billing/engine/check/Main$2;->val$flag:Z

    return v0
.end method

.method public setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$2;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v1, "upay"

    const-string v2, "alert_text"

    const-string v3, "\u4e3a\u4fdd\u969c\u652f\u4ed8\u7684\u51c6\u786e\u6027\uff0c\u8bf7\u52ff\u8fdb\u884c\u5176\u4ed6\u64cd\u4f5c\uff0c\u6b64\u8fc7\u7a0b\u53ef\u80fd\u4f1a\u53d1\u77ed\u4fe1\u6216\u8005\u8bbf\u95ee\u60a8\u7684\u77ed\u4fe1\u6536\u4ef6\u7bb1\u4ee5\u8bfb\u53d6\u9a8c\u8bc1\u7801\u3002"

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$2;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v2, "upay"

    const-string v3, "default_help_test"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$2;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v3, "upay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_help_text"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$progress_text"

    iget-object v3, p0, Lcom/upay/billing/engine/check/Main$2;->val$progressText:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$alert_text"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$help_text"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
