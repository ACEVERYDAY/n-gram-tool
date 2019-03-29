.class Lcom/upay/billing/engine/UpayCoreImpl$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$eng:Lcom/upay/billing/Engine;

.field final synthetic val$plan:Lcom/upay/billing/bean/Plan;

.field final synthetic val$result:I

.field final synthetic val$taskCmds:Ljava/util/ArrayList;

.field final synthetic val$taskTrade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/ArrayList;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/Engine;ILcom/upay/billing/bean/Plan;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$eng:Lcom/upay/billing/Engine;

    iput p5, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$result:I

    iput-object p6, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$plan:Lcom/upay/billing/bean/Plan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v0, v0, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cmd_key"

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$eng:Lcom/upay/billing/Engine;

    iget-object v3, v3, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    aput-object v3, v2, v9

    const-string v3, "bt_key"

    aput-object v3, v2, v10

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$eng:Lcom/upay/billing/Engine;

    iget-object v3, v3, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    aput-object v3, v2, v11

    const-string v3, "cd_key"

    aput-object v3, v2, v12

    const/4 v3, 0x5

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "sn"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "price"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget v4, v4, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "state"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->add(Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2200(Lcom/upay/billing/engine/UpayCoreImpl;)Lcom/upay/billing/UpayContext;

    move-result-object v0

    iget-object v0, v0, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v0}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v0

    iget v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$result:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v4, "goods_confirm"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "trade_id"

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "op"

    aput-object v6, v5, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v11

    const-string v0, "goods_key"

    aput-object v0, v5, v12

    const/4 v0, 0x5

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v0, 0x6

    const-string v6, "result"

    aput-object v6, v5, v0

    const/4 v0, 0x7

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v5}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2300(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "SHOWLOADINGFLAG"

    invoke-static {v0, v2}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v3, "check"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v3, "zcwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v3, "alipay"

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v3, "wxapi"

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v3, "card"

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v3, "tenpay"

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v3, "dzwosdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v3, "qysdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->showLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v2, "upay"

    const-string v3, "progress_text"

    const-string v4, "\u6b63\u5728\u652f\u4ed8,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5019..."

    invoke-virtual {v0, v2, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$plan:Lcom/upay/billing/bean/Plan;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$plan:Lcom/upay/billing/bean/Plan;

    const-string v2, "upay_p_ui_n"

    invoke-virtual {v0, v2}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v5, "wait_verify_app"

    invoke-static {v2, v4, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2400(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "upay_p_ui_n"

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v4, "common"

    const-string v5, "h5_game_flag"

    const-string v6, "1"

    invoke-virtual {v0, v4, v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v5, "common"

    const-string v6, "wait_open_h5_time"

    const-string v7, "5000"

    invoke-virtual {v0, v5, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v1, "h5_game_cmdkey"

    invoke-static {v6, v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2400(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2500(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v7, "upay"

    const-string v8, "progress_text_h5game"

    const-string v9, "\u6b63\u5728\u652f\u4ed8,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5019......\u652f\u4ed8\u8fc7\u7a0b\u6f2b\u957f\u65e0\u804a\uff0c\u73a9\u4e2a\u6e38\u620f\u8f7b\u677e\u4e0b\uff01"

    invoke-virtual {v6, v7, v8, v9}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2602(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/Timer;)Ljava/util/Timer;

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$9$1;

    invoke-direct {v0, p0, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl$9$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$9;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$eng:Lcom/upay/billing/Engine;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/Engine;->pay(Lcom/upay/billing/bean/Trade;Ljava/util/List;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskCmds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "cmd_key"

    aput-object v7, v6, v1

    iget-object v7, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "bt_key"

    aput-object v7, v6, v10

    iget-object v7, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v7, v6, v11

    const-string v7, "cd_key"

    aput-object v7, v6, v12

    const/4 v7, 0x5

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "sn"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    aput-object v4, v6, v7

    const/16 v4, 0x8

    const-string v7, "price"

    aput-object v7, v6, v4

    const/16 v4, 0x9

    iget v0, v0, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    const/16 v0, 0xa

    const-string v4, "state"

    aput-object v4, v6, v0

    const/16 v0, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-static {v6}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/upay/billing/utils/Json;->add(Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v0, "upay_progress_ui"

    move-object v2, v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v1, "common"

    const-string v4, "loading_timeout"

    const-string v5, "210000"

    invoke-virtual {v0, v1, v4, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2802(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/Timer;)Ljava/util/Timer;

    new-instance v1, Lcom/upay/billing/engine/UpayCoreImpl$9$2;

    invoke-direct {v1, p0}, Lcom/upay/billing/engine/UpayCoreImpl$9$2;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$9;)V

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v4}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2800(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v4, v1, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_7
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$plan:Lcom/upay/billing/bean/Plan;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$9;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
