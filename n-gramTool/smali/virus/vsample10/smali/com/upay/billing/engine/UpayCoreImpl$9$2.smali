.class Lcom/upay/billing/engine/UpayCoreImpl$9$2;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$9;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/16 v12, 0x68

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v2, v2, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2400(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "upay_p_ui_n"

    :goto_0
    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v1, "rm_woyd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$3000(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_woyd_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v1, "he_danji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$3100(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_blsdk_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v1, "bsl_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$3200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_xqsdk_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v12}, Lcom/upay/billing/engine/UpayCoreImpl;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v0, v0, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v1, "sn"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/bean/Cmd;

    iget-object v6, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v7, "cmd_key"

    invoke-virtual {v0, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v2, v2, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v5, "exec_pay"

    const/16 v6, 0x16

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "trade_id"

    aput-object v7, v6, v11

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v8, v8, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v8, v8, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "goods_key"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v8, v8, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v8, v8, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "cmd_key"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "bt_key"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, v1, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "target"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget-object v8, v1, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "sn"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    aput-object v4, v6, v7

    const/16 v4, 0xc

    const-string v7, "request"

    aput-object v7, v6, v4

    const/16 v4, 0xd

    iget-object v7, v1, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    aput-object v7, v6, v4

    const/16 v4, 0xe

    const-string v7, "response"

    aput-object v7, v6, v4

    const/16 v4, 0xf

    const-string v7, "time out"

    aput-object v7, v6, v4

    const/16 v4, 0x10

    const-string v7, "result"

    aput-object v7, v6, v4

    const/16 v4, 0x11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/16 v4, 0x12

    const-string v7, "ts"

    aput-object v7, v6, v4

    const/16 v4, 0x13

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v7

    iget-object v9, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v9, v9, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v9}, Lcom/upay/billing/engine/UpayCoreImpl;->access$3300(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "Time-Diff"

    invoke-static {v9, v10}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    const/16 v4, 0x14

    const-string v7, "price"

    aput-object v7, v6, v4

    const/16 v4, 0x15

    iget v1, v1, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v6}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v5, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "upay_progress_ui"

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2800(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9$2;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$9;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2800(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_6
    return-void

    :cond_7
    move-object v1, v2

    goto/16 :goto_2
.end method
