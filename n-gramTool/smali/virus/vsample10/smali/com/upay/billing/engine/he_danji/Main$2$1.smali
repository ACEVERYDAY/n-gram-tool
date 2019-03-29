.class Lcom/upay/billing/engine/he_danji/Main$2$1;
.super Lcom/upay/billing/engine/MessageRunner;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/he_danji/Main$2;

.field final synthetic val$body2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main$2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iput-object p6, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->val$body2:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/upay/billing/engine/MessageRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 10

    const/16 v6, 0x7e

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$400(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/upay/billing/engine/he_danji/Main$2$1;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$400(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget v1, v1, Lcom/upay/billing/engine/he_danji/Main$2;->val$sendNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$2;->val$payEvent:Lcom/upay/billing/utils/Json;

    invoke-virtual {p0}, Lcom/upay/billing/engine/he_danji/Main$2$1;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "he_nc-regist-sms-fail: code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",errorCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "upay_progress_ui"

    goto :goto_0
.end method

.method protected onSuccess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v3, v1, Lcom/upay/billing/engine/he_danji/Main$2;->sms_2_num:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main$2$1;->val$body2:Ljava/lang/String;

    const-string v5, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/he_danji/Main$2$1$1;-><init>(Lcom/upay/billing/engine/he_danji/Main$2$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method
