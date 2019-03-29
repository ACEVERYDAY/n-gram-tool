.class Lcom/upay/billing/engine/he_danji/Main$2$1$1;
.super Lcom/upay/billing/engine/MessageRunner;


# instance fields
.field final synthetic this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main$2$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/upay/billing/engine/MessageRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 10

    const/16 v6, 0x81

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1000(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1000(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget v1, v1, Lcom/upay/billing/engine/he_danji/Main$2;->val$sendNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$2;->val$payEvent:Lcom/upay/billing/utils/Json;

    invoke-virtual {p0}, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "he_nc-confirm-sms-fail: code="

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
    .locals 11

    const/16 v10, 0xcb

    const/16 v6, 0xc8

    const/4 v1, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "updatePaymentHistory"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Lcom/upay/billing/bean/Trade;

    aput-object v7, v3, v5

    const/4 v5, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v7, v7, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v7, v7, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    aput-object v7, v3, v5

    const/4 v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v8, v8, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v8, v8, Lcom/upay/billing/engine/he_danji/Main$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$800(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$800(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_1
    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v2, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4, v10}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$2;->val$payEvent:Lcom/upay/billing/utils/Json;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "succ-tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v1, v0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v2, v0, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v3, v0, Lcom/upay/billing/engine/he_danji/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2$1$1;->this$2:Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$2$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$2;

    iget-object v5, v0, Lcom/upay/billing/engine/he_danji/Main$2;->val$chargeEvent:Lcom/upay/billing/utils/Json;

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move v6, v10

    invoke-static/range {v1 .. v9}, Lcom/upay/billing/engine/he_danji/Main;->access$900(Lcom/upay/billing/engine/he_danji/Main;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "upay_progress_ui"

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
