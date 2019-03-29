.class Lcom/upay/billing/engine/check/Main$1;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/check/Main;

.field final synthetic val$cmd:Lcom/upay/billing/bean/Cmd;

.field final synthetic val$plan:Lcom/upay/billing/bean/Plan;

.field final synthetic val$serialNo:Ljava/lang/String;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/check/Main;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iput-object p2, p0, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    iput-object p3, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p4, p0, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iput-object p5, p0, Lcom/upay/billing/engine/check/Main$1;->val$serialNo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Lcom/upay/billing/UpayActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

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

.method public onFinish(Lcom/upay/billing/UpayActivity;I)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const-string v0, "mobile_edit"

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v1, "upay"

    const-string v2, "progress_text"

    const-string v3, "\u6b63\u5728\u83b7\u53d6\u9a8c\u8bc1\u7801,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5019..."

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    const-string v1, "upay_p_ui_n"

    invoke-virtual {v0, v1}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v1, v2, v3}, Lcom/upay/billing/engine/check/Main;->access$000(Lcom/upay/billing/engine/check/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "upay_p_ui_n"

    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/engine/check/Main;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    const-string v1, "$minSn"

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$serialNo:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$uid"

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-wide v2, v2, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$minSn"

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$serialNo:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$cmd_key"

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$app_key"

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$goods_key"

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$ch_key"

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->channelKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/upay/billing/engine/check/Main$1$1;

    const-string v2, "http://api.upay360.cn/function/smsMonitor/acceptSMS.jsp"

    invoke-direct {v1, p0, v2, v7}, Lcom/upay/billing/engine/check/Main$1$1;-><init>(Lcom/upay/billing/engine/check/Main$1;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lcom/upay/billing/engine/check/Main$1$1;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1, v7}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "mobile"

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "proc_time"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v4, v4, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v4}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Time-Diff"

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    const-string v3, "upay_progress_ui"

    goto/16 :goto_1

    :cond_2
    const-string v0, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0x97

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "goods_confirm"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "trade_id"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, "op"

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v4, v4, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v4}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v4

    iget-object v4, v4, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v4}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "goods_key"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "result"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0x97

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-wide v1, v1, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/upay/billing/utils/Util;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "goods_confirm"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "trade_id"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, "op"

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v4, v4, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v4}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v4

    iget-object v4, v4, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v4}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "goods_key"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "result"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0x6e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->getGoods(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/bean/Goods;

    move-result-object v0

    const-string v1, "$goods_name"

    iget-object v2, v0, Lcom/upay/billing/bean/Goods;->name:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$goods_price"

    iget v3, v0, Lcom/upay/billing/bean/Goods;->price:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$goods_label"

    iget-object v0, v0, Lcom/upay/billing/bean/Goods;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
