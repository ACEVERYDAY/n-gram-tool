.class Lcom/upay/billing/engine/he_danji/Main$4$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/popgame/popcentersdk/business/PopSdkListener;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/he_danji/Main$4;

.field final synthetic val$activity:Lcom/upay/billing/UpayActivity;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main$4;Lcom/upay/billing/UpayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iput-object p2, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->val$activity:Lcom/upay/billing/UpayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CenterResult(Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x1

    :try_start_0
    const-string v0, "####"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    aget-object v0, v8, v0

    const-string v1, "INIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    aget-object v0, v8, v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->initTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->initTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->val$activity:Lcom/upay/billing/UpayActivity;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_pid_cpa:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_amount:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v4, v4, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_chargeId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/upay/billing/engine/he_danji/Main;->access$1200(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/n0stop/n0base/N0Base;->runCharge(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_blsdk_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->initTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->initTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_cid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$sendNum:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "upay_p_ui_n"

    :goto_1
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_4
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$4;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$4;->val$payEvent:Lcom/upay/billing/utils/Json;

    const/16 v6, 0xb4

    const-string v7, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "he_blsdk-init-fail: code="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v0, "upay_progress_ui"

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    aget-object v0, v8, v0

    const-string v1, "SPCPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    aget-object v0, v8, v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->val$activity:Lcom/upay/billing/UpayActivity;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_pid_pay:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_amount:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v4, v4, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_chargeId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/upay/billing/engine/he_danji/Main;->access$1200(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/n0stop/n0base/N0Base;->runCharge(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_blsdk_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_cid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$sendNum:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "upay_p_ui_n"

    :goto_2
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0xb5

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_8
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$4;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$4;->val$payEvent:Lcom/upay/billing/utils/Json;

    const/16 v6, 0xb5

    const-string v7, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "he_blsdk-spcpa-fail: code="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "upay_progress_ui"

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    aget-object v0, v8, v0

    const-string v1, "SPPAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_blsdk_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    aget-object v0, v8, v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$800(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_cid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$4;->val$serialNo:Ljava/lang/String;

    const-string v3, ""

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v4, v4, Lcom/upay/billing/engine/he_danji/Main$4;->val$cmd:Lcom/upay/billing/bean/Cmd;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->activateHandlers(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->getCooldown(Ljava/lang/String;)Lcom/upay/billing/bean/Cooldown;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/upay/billing/bean/Cooldown;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "updatePaymentHistory"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/upay/billing/bean/Trade;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v4, v4, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$4;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    :try_start_3
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$800(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_c

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "upay_p_ui_n"

    :goto_5
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_c
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$4;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0xcb

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$4;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$4;->val$payEvent:Lcom/upay/billing/utils/Json;

    const/16 v6, 0xc8

    const-string v7, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "he_blsdk-sppay-success: code="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$4;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v4, v4, Lcom/upay/billing/engine/he_danji/Main$4;->val$chargeEvent:Lcom/upay/billing/utils/Json;

    const/16 v5, 0xcb

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$900(Lcom/upay/billing/engine/he_danji/Main;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_e
    const-string v0, "upay_progress_ui"

    goto/16 :goto_5

    :cond_f
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_cid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$sendNum:I

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "upay_p_ui_n"

    :goto_6
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0xb6

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_10
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$4;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$4$2;->this$1:Lcom/upay/billing/engine/he_danji/Main$4;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$4;->val$payEvent:Lcom/upay/billing/utils/Json;

    const/16 v6, 0xb6

    const-string v7, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "he_blsdk-sppay-fail: code="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "upay_progress_ui"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_4
.end method
