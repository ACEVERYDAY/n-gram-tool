.class Lcom/upay/billing/engine/he_danji/Main$7$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/he_danji/Main$7;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main$7;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 10

    const/16 v6, 0x7c

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$ssid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$sendNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$7;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$7;->val$payEvent:Lcom/upay/billing/utils/Json;

    invoke-virtual {p0}, Lcom/upay/billing/engine/he_danji/Main$7$1;->getUrl()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "he_danji-billing-fail: code="

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
    .locals 11

    :try_start_0
    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v0, "status"

    invoke-virtual {v8, v0}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const-string v1, "billing_dst"

    invoke-virtual {v8, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/he_danji/Main;->access$1502(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const-string v1, "billing_b64"

    invoke-virtual {v8, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/he_danji/Main;->access$1602(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1500(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1600(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/he_danji/Main;->access$1600(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/he_danji/Main;->access$1702(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$7$1$1;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/he_danji/Main;->access$1500(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/he_danji/Main;->access$1700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/he_danji/Main$7$1$1;-><init>(Lcom/upay/billing/engine/he_danji/Main$7$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "status"

    invoke-virtual {v8, v0}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1800(Lcom/upay/billing/engine/he_danji/Main;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1808(Lcom/upay/billing/engine/he_danji/Main;)I

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-boolean v0, v2, v0

    if-nez v0, :cond_2

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$url_billing:Ljava/lang/String;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$7;->val$ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$7;->val$imei:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v4, v4, Lcom/upay/billing/engine/he_danji/Main$7;->val$imsi:Ljava/lang/String;

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v6, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v6, v6, Lcom/upay/billing/engine/he_danji/Main$7;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v7, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v7, v7, Lcom/upay/billing/engine/he_danji/Main$7;->val$serialNo:Ljava/lang/String;

    iget-object v8, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget v8, v8, Lcom/upay/billing/engine/he_danji/Main$7;->val$sendNum:I

    iget-object v9, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v9, v9, Lcom/upay/billing/engine/he_danji/Main$7;->val$payEvent:Lcom/upay/billing/utils/Json;

    iget-object v10, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v10, v10, Lcom/upay/billing/engine/he_danji/Main$7;->val$chargeEvent:Lcom/upay/billing/utils/Json;

    invoke-static/range {v0 .. v10}, Lcom/upay/billing/engine/he_danji/Main;->access$300(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    invoke-virtual {v8, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$sendNum:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "upay_p_ui_n"

    :goto_2
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_4
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$7;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$7;->val$payEvent:Lcom/upay/billing/utils/Json;

    const/16 v6, 0x7c

    const-string v7, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "he_danji-billing-fail: status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "status"

    invoke-virtual {v8, v10}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "upay_progress_ui"

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    invoke-virtual {v8, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$sendNum:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "upay_p_ui_n"

    :goto_3
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_7
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v3, v3, Lcom/upay/billing/engine/he_danji/Main$7;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$7$1;->this$1:Lcom/upay/billing/engine/he_danji/Main$7;

    iget-object v5, v5, Lcom/upay/billing/engine/he_danji/Main$7;->val$payEvent:Lcom/upay/billing/utils/Json;

    const/16 v6, 0x7c

    const-string v7, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "he_danji-billing-fail: status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "status"

    invoke-virtual {v8, v10}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "upay_progress_ui"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
