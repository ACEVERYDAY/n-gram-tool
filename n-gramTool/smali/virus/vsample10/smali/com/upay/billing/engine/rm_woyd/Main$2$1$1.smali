.class Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/upay/billing/engine/rm_woyd/RequestDelegate;


# instance fields
.field final synthetic this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/rm_woyd/Main$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFailed(ILjava/lang/String;)V
    .locals 9

    const/16 v0, 0x2707

    if-ne p1, v0, :cond_1

    const/16 v0, 0x6e

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/rm_woyd/Main;->access$400(Lcom/upay/billing/engine/rm_woyd/Main;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$cpId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/rm_woyd/Main;->access$400(Lcom/upay/billing/engine/rm_woyd/Main;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$sendNum:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v1, v2, v3}, Lcom/upay/billing/engine/rm_woyd/Main;->access$300(Lcom/upay/billing/engine/rm_woyd/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "upay_p_ui_n"

    :goto_1
    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v1, v2, v0}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_0
    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "upay_woyd_ui"

    invoke-static {v1, v2}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "exec_pay"

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v5, "result"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "target"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "price"

    iget-object v5, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v5, v5, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v5, v5, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "response"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "woyd-pay-fail:code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "request"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x2709

    if-ne p1, v0, :cond_2

    const/16 v0, 0x78

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x7a

    goto/16 :goto_0

    :cond_3
    const-string v1, "upay_progress_ui"

    goto/16 :goto_1
.end method

.method public requestOrderSuccessed()V
    .locals 0

    return-void
.end method

.method public requestSuccessed(Ljava/lang/String;)V
    .locals 9

    const/16 v7, 0xc8

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v0, "\u8ba2\u8d2d\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->treeMap:Ljava/util/TreeMap;

    const-string v1, "reponse1"

    const-string v2, "\u8ba2\u8d2d\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "\u9a8c\u8bc1\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->treeMap:Ljava/util/TreeMap;

    const-string v1, "reponse2"

    const-string v2, "\u9a8c\u8bc1\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->treeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/rm_woyd/Main;->access$100(Lcom/upay/billing/engine/rm_woyd/Main;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main;->treeMap:Ljava/util/TreeMap;

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/Main;->access$200(Lcom/upay/billing/engine/rm_woyd/Main;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$cpId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v2, v2, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$serialNo:Ljava/lang/String;

    const-string v3, ""

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->activateHandlers(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->getCooldown(Ljava/lang/String;)Lcom/upay/billing/bean/Cooldown;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/upay/billing/bean/Cooldown;->start()V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

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

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v5, v5, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/Main;->access$200(Lcom/upay/billing/engine/rm_woyd/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/Main;->access$300(Lcom/upay/billing/engine/rm_woyd/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "upay_p_ui_n"

    :goto_3
    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v7}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_woyd_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v3, v3, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v3, v3, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$event:Lcom/upay/billing/utils/Json;

    const-string v4, "result"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "target"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "price"

    iget-object v5, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v5, v5, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v5, v5, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v5, v5, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "response"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "woyd-pay-success: message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v6, v6, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v6, v6, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    invoke-static {v6}, Lcom/upay/billing/engine/rm_woyd/Main;->access$100(Lcom/upay/billing/engine/rm_woyd/Main;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    invoke-static {v7}, Lcom/upay/billing/engine/rm_woyd/Main;->access$100(Lcom/upay/billing/engine/rm_woyd/Main;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "request"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;->this$2:Lcom/upay/billing/engine/rm_woyd/Main$2$1;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v1, v1, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->startPolling(Lcom/upay/billing/bean/Trade;)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const-string v0, "upay_progress_ui"

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method
