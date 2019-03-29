.class Lcom/upay/billing/engine/UpayCoreImpl$5$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/UpayCoreImpl$5;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$5;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$5$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$5;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$5$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$5;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v6, "package_name"

    invoke-virtual {v0, v6}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "localPath"

    invoke-virtual {v0, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    iget-object v8, p0, Lcom/upay/billing/engine/UpayCoreImpl$5$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$5;

    iget-object v8, v8, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v8}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->appInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$5$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$5;

    iget-object v6, v6, Lcom/upay/billing/engine/UpayCoreImpl$5;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v1, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->installApp(Ljava/io/File;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
