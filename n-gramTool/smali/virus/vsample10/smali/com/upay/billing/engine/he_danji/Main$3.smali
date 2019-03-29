.class Lcom/upay/billing/engine/he_danji/Main$3;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/he_danji/Main;

.field final synthetic val$chargeEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$cmd:Lcom/upay/billing/bean/Cmd;

.field final synthetic val$payEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$pay_nike:Ljava/lang/String;

.field final synthetic val$sendNum:I

.field final synthetic val$serialNo:Ljava/lang/String;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;

.field final synthetic val$ucon:Lcom/upay/billing/UpayContext;

.field final synthetic val$xq_ip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/UpayContext;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iput-object p3, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$xq_ip:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$cid:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$pay_nike:Ljava/lang/String;

    iput-object p6, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$ucon:Lcom/upay/billing/UpayContext;

    iput-object p7, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p8, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iput-object p9, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$serialNo:Ljava/lang/String;

    iput p10, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$sendNum:I

    iput-object p11, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$payEvent:Lcom/upay/billing/utils/Json;

    iput-object p12, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$chargeEvent:Lcom/upay/billing/utils/Json;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 10

    const/16 v6, 0x7f

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$sendNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$payEvent:Lcom/upay/billing/utils/Json;

    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "he_xqdj-login-request-fail: code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",errorMsg="

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

.method protected onSuccess([B)V
    .locals 10

    const/16 v6, 0x7f

    const-string v0, "002:had login no msm"

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/upay/billing/engine/he_danji/Main$3$1;

    invoke-direct {v1, p0}, Lcom/upay/billing/engine/he_danji/Main$3$1;-><init>(Lcom/upay/billing/engine/he_danji/Main$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "001:need more infor"

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "002:had login no msm"

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "001"

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$3$2;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "10658422"

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/he_danji/Main$3$2;-><init>(Lcom/upay/billing/engine/he_danji/Main$3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    const-string v1, "tag"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$sendNum:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "upay_p_ui_n"

    :goto_1
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$3;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$3;->val$payEvent:Lcom/upay/billing/utils/Json;

    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "he_xqdj-login-request-fail:error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "upay_progress_ui"

    goto :goto_1
.end method
