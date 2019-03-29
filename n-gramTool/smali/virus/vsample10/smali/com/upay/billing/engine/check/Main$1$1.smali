.class Lcom/upay/billing/engine/check/Main$1$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/check/Main$1;

.field final synthetic val$smsNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/check/Main$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iput-object p3, p0, Lcom/upay/billing/engine/check/Main$1$1;->val$smsNumber:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 8

    const/16 v7, 0x9a

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const-string v3, "upay_hint_ui"

    const-string v4, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u83b7\u53d6\uff01"

    const/16 v6, 0x1f40

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/engine/check/Main;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v7}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "goods_confirm"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "trade_id"

    aput-object v6, v3, v4

    iget-object v4, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v4, v4, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string v5, "op"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v5}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v5

    iget-object v5, v5, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v5}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "result"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess([B)V
    .locals 9

    const/16 v8, 0x9a

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/check/Main;->access$000(Lcom/upay/billing/engine/check/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    const-string v1, "upay_v_ui"

    invoke-virtual {v0, v1}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "upay_v_ui"

    new-instance v3, Lcom/upay/billing/engine/check/Main$1$1$1;

    invoke-direct {v3, p0}, Lcom/upay/billing/engine/check/Main$1$1$1;-><init>(Lcom/upay/billing/engine/check/Main$1$1;)V

    invoke-static {v1, v2, v0, v7, v3}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    :goto_2
    return-void

    :cond_0
    const-string v0, "upay_progress_ui"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_v_ui.json"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v2, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v2, v2, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    const-string v3, "upay_hint_ui"

    const-string v4, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u83b7\u53d6\uff01"

    const/16 v6, 0x1f40

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/engine/check/Main;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v8}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "goods_confirm"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "trade_id"

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v4, v4, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string v5, "op"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1;->this$0:Lcom/upay/billing/engine/check/Main;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v5}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v5

    iget-object v5, v5, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v5}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/upay/billing/engine/check/Main$1$1;->this$1:Lcom/upay/billing/engine/check/Main$1;

    iget-object v5, v5, Lcom/upay/billing/engine/check/Main$1;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "result"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
