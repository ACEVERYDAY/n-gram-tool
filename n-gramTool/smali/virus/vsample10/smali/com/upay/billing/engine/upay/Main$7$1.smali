.class Lcom/upay/billing/engine/upay/Main$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/upay/Main$7;

.field final synthetic val$verifyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main$7;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iput-object p2, p0, Lcom/upay/billing/engine/upay/Main$7$1;->val$verifyCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v1, "common"

    const-string v2, "http_confirm_verify_flag"

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-virtual {v1}, Lcom/upay/billing/engine/upay/Main;->checkNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$1400(Lcom/upay/billing/engine/upay/Main;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$minSn"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$7;->val$serialNo:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$verify_code"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$7$1;->val$verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "topup4u*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "topup4u*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v1, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    new-instance v2, Lcom/upay/billing/engine/upay/Main$7$1$1;

    const-string v3, "http://api.upay360.cn/function/smsMonitor/acceptSMS.jsp"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/upay/billing/engine/upay/Main$7$1$1;-><init>(Lcom/upay/billing/engine/upay/Main$7$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {v2, v1, v0}, Lcom/upay/billing/engine/upay/Main$7$1$1;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "number"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "mobile"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "proc_time"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v4, v4, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

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

    invoke-virtual {v0}, Lcom/upay/billing/utils/HttpRunner;->run()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v0, v0, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/upay/Main;->access$1400(Lcom/upay/billing/engine/upay/Main;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$minSn"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v2, v2, Lcom/upay/billing/engine/upay/Main$7;->val$serialNo:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$verify_code"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main$7$1;->val$verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/upay/billing/engine/upay/Main$7$1$2;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$7$1;->this$1:Lcom/upay/billing/engine/upay/Main$7;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$7;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v3, v1, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    const-string v5, "0"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/upay/Main$7$1$2;-><init>(Lcom/upay/billing/engine/upay/Main$7$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/upay/Main$7$1$2;->run()V

    goto :goto_0
.end method
