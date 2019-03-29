.class Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6300(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/utils/Json;

    const-string v4, "package_name"

    invoke-virtual {v1, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v4}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6300(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "push_installed"

    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "pid"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "pid"

    invoke-virtual {v1, v8}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "title"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "title"

    invoke-virtual {v1, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "content"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "content"

    invoke-virtual {v1, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "imgUrl"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "imageurl"

    invoke-virtual {v1, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "clickUrl"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "clickurl"

    invoke-virtual {v1, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "packageName"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    aput-object v2, v6, v7

    const/16 v2, 0xc

    const-string v7, "result"

    aput-object v7, v6, v2

    const/16 v2, 0xd

    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v6}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/List;

    move-result-object v2

    const-string v3, "pid"

    invoke-virtual {v1, v3}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$7600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method
