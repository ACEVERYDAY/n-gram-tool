.class Lcom/upay/billing/engine/upay/Main$7;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/upay/Main;

.field final synthetic val$charge_event:Lcom/upay/billing/utils/Json;

.field final synthetic val$cmd:Lcom/upay/billing/bean/Cmd;

.field final synthetic val$plan:Lcom/upay/billing/bean/Plan;

.field final synthetic val$serialNo:Ljava/lang/String;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;

.field final synthetic val$verifyEvent:Lcom/upay/billing/utils/Json;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main;Lcom/upay/billing/bean/Plan;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iput-object p2, p0, Lcom/upay/billing/engine/upay/Main$7;->val$plan:Lcom/upay/billing/bean/Plan;

    iput-object p3, p0, Lcom/upay/billing/engine/upay/Main$7;->val$serialNo:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/upay/Main$7;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iput-object p5, p0, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p6, p0, Lcom/upay/billing/engine/upay/Main$7;->val$verifyEvent:Lcom/upay/billing/utils/Json;

    iput-object p7, p0, Lcom/upay/billing/engine/upay/Main$7;->val$charge_event:Lcom/upay/billing/utils/Json;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed(Lcom/upay/billing/UpayActivity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFinish(Lcom/upay/billing/UpayActivity;I)V
    .locals 9

    const/16 v6, 0xc1

    const/16 v7, 0xc0

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "verify_edit"

    invoke-virtual {p1, v0}, Lcom/upay/billing/UpayActivity;->findView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7;->val$plan:Lcom/upay/billing/bean/Plan;

    const-string v2, "upay_progress_ui"

    const-string v3, "\u6b63\u5728\u652f\u4ed8,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5019..."

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/upay/billing/engine/upay/Main;->showProgressUi(Lcom/upay/billing/bean/Plan;Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/upay/billing/engine/upay/Main$7$1;

    invoke-direct {v1, p0, v6}, Lcom/upay/billing/engine/upay/Main$7$1;-><init>(Lcom/upay/billing/engine/upay/Main$7;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v7}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "verify_handle"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$7;->val$verifyEvent:Lcom/upay/billing/utils/Json;

    const-string v4, "up_msg"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "up_num"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "description"

    const-string v5, "confirm-verifycode-empty"

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "result"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

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

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "verify_handle"

    iget-object v3, p0, Lcom/upay/billing/engine/upay/Main$7;->val$verifyEvent:Lcom/upay/billing/utils/Json;

    const-string v4, "up_msg"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "up_num"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "description"

    const-string v5, "cancel-verifycode-ui"

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "result"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v7, v7, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

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

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
