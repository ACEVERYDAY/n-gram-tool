.class Lcom/upay/billing/engine/UpayCoreImpl$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$json:Lcom/upay/billing/utils/Json;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$28;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$28;->val$json:Lcom/upay/billing/utils/Json;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$28;->val$json:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    new-instance v1, Lcom/upay/billing/engine/UpayCoreImpl$28$1;

    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7800()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/upay/billing/engine/UpayCoreImpl$28$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$28;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/upay/billing/utils/HttpRunner;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v2, "messagename"

    const-string v3, "init"

    invoke-virtual {v0, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v2, "businessid"

    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$8000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    invoke-virtual {v1}, Lcom/upay/billing/utils/HttpRunner;->run()V

    const-wide/32 v0, 0x493e0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$28;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->logEventCpa()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
