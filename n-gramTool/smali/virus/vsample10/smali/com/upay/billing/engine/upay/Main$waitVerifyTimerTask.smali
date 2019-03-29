.class Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/upay/Main;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x96

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "verifycode"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0, v12}, Lcom/upay/billing/engine/upay/Main;->access$002(Lcom/upay/billing/engine/upay/Main;Z)Z

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/upay/Main;->access$100(Lcom/upay/billing/engine/upay/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main;->access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getCurrentTrade()Lcom/upay/billing/bean/Trade;

    move-result-object v1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0, v1, v11}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, v1, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v3, v3, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v4}, Lcom/upay/billing/UpayCore;->getCurrentTrade()Lcom/upay/billing/bean/Trade;

    move-result-object v4

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v5, "verify_handle"

    const/16 v6, 0x1a

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "trade_id"

    aput-object v7, v6, v12

    const/4 v7, 0x1

    iget-object v8, v1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "goods_key"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v1, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "cmd_key"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "cmd_key"

    invoke-virtual {v0, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "bt_key"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "bt_key"

    invoke-virtual {v0, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "delete_mt"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, ""

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "description"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cmd_key"

    invoke-virtual {v0, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-get-verification-code-failed : code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "mt_msg"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, ""

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "mt_num"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, ""

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "result"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "sn"

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string v8, "sn"

    invoke-virtual {v0, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v0, 0x14

    const-string v7, "ts"

    aput-object v7, v6, v0

    const/16 v0, 0x15

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v7

    iget-object v9, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v9, v9, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v9}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Time-Diff"

    invoke-static {v9, v10}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    const/16 v0, 0x16

    const-string v7, "up_msg"

    aput-object v7, v6, v0

    const/16 v0, 0x17

    const-string v7, ""

    aput-object v7, v6, v0

    const/16 v0, 0x18

    const-string v7, "up_num"

    aput-object v7, v6, v0

    const/16 v0, 0x19

    const-string v7, ""

    aput-object v7, v6, v0

    invoke-static {v6}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "upay_progress_ui"

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$300(Lcom/upay/billing/engine/upay/Main;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$waitVerifyTimerTask;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$300(Lcom/upay/billing/engine/upay/Main;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    return-void
.end method
