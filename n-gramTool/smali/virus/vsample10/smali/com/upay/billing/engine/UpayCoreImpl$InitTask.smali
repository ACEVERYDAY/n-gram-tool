.class Lcom/upay/billing/engine/UpayCoreImpl$InitTask;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;


# direct methods
.method private constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/engine/UpayCoreImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v10

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v6}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7000()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    iget-object v9, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v9, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7100(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/api/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    :cond_0
    invoke-static {v3}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "default"

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7200(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7300(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v11

    :cond_3
    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7000()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v6}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v6}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7400(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->setMobileData(Landroid/content/Context;Z)V

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v7, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v7}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7500(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->isNetContected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7000()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_2
    if-ge v0, v7, :cond_5

    aget-object v8, v6, v0

    iget-object v9, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v9, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7100(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/api/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    :cond_5
    invoke-static {v3}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v3, "default"

    :cond_6
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7200(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7000()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/16 v2, 0x69

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/16 v2, 0xc8

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1
.end method
