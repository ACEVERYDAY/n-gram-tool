.class Lcom/upay/billing/engine/UpayCoreImpl$19;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$appSecret:Ljava/lang/String;

.field final synthetic val$push_polling_time:J


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appSecret:Ljava/lang/String;

    iput-wide p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$push_polling_time:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2200(Lcom/upay/billing/engine/UpayCoreImpl;)Lcom/upay/billing/UpayContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/UpayContext;->hasNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v0, "0"

    :cond_1
    const-string v3, "uid"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_key"

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "area_key"

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->getAreaKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "op"

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2200(Lcom/upay/billing/engine/UpayCoreImpl;)Lcom/upay/billing/UpayContext;

    move-result-object v3

    iget-object v3, v3, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v3}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ts"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_secret"

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appSecret:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/upay/billing/utils/NativeUtil;->genHash(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_secret"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hash"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "push/list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/upay/billing/engine/UpayCoreImpl$19$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$19;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/upay/billing/utils/HttpRunner;->setDoGet()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addParams(Ljava/util/Map;Z)Lcom/upay/billing/utils/HttpRunner;

    invoke-virtual {v0}, Lcom/upay/billing/utils/HttpRunner;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    iget-wide v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$push_polling_time:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
