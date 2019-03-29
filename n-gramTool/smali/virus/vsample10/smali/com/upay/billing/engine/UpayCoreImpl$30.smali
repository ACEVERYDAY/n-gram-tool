.class Lcom/upay/billing/engine/UpayCoreImpl$30;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$task:Ljava/lang/String;

.field final synthetic val$taskJson:Lcom/upay/billing/utils/Json;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->val$task:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->val$taskJson:Lcom/upay/billing/utils/Json;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->val$task:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",errorMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->logEventCpa()V

    return-void
.end method

.method protected onSuccess([B)V
    .locals 6

    const-string v0, ""

    const-string v0, ""

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "<status>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    const-string v3, "</status>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<message>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    const-string v4, "</message>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->val$task:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->val$taskJson:Lcom/upay/billing/utils/Json;

    const-string v3, "0"

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->val$task:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->reportRequest([BLcom/upay/billing/utils/Json;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Login"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->val$task:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u767b\u5f55\u6210\u529f"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$8200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "brush_cpa_flag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$30;->val$task:Ljava/lang/String;

    const-string v3, "cmcc_return_encryption_message"

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
