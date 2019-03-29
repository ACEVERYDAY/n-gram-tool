.class Lcom/upay/billing/engine/UpayCoreImpl$19$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$19;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onSuccess([B)V
    .locals 14

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v1, "imageurl"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v4, v4, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appKey:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->loadImg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v4, v4, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v4}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v4, "pid"

    invoke-virtual {v0, v4}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "ets"

    invoke-virtual {v0, v5}, Lcom/upay/billing/utils/Json;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "title"

    invoke-virtual {v0, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v0, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "clickurl"

    invoke-virtual {v0, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "package_name"

    invoke-virtual {v0, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "{}"

    invoke-static {v11}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v11

    const-string v12, "pid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v12, "ets"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v12, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v5, "title"

    invoke-virtual {v11, v5, v7}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v5, "content"

    invoke-virtual {v11, v5, v8}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v5, "imgLocal"

    invoke-virtual {v11, v5, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "imageurl"

    invoke-virtual {v11, v1, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "package_name"

    invoke-virtual {v11, v1, v10}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "clickurl"

    invoke-virtual {v11, v1, v9}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://down.upay360.cn/stat?pid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&app_key="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v5, v5, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appKey:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&area="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v5, v5, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getAreaKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&uid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v5, v5, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&url="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v5, v5, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v6, v6, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appKey:Ljava/lang/String;

    invoke-virtual {v5, v1, v6, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->loadApk(Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/utils/Json;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "localPath"

    invoke-virtual {v11, v1, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v5, v5, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appKey:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$19;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$19$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$19;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$19;->val$appKey:Ljava/lang/String;

    const-string v5, "push_received"

    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "pid"

    aput-object v12, v6, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v11

    const/4 v4, 0x2

    const-string v11, "title"

    aput-object v11, v6, v4

    const/4 v4, 0x3

    aput-object v7, v6, v4

    const/4 v4, 0x4

    const-string v7, "content"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    aput-object v8, v6, v4

    const/4 v4, 0x6

    const-string v7, "imgUrl"

    aput-object v7, v6, v4

    const/4 v4, 0x7

    aput-object v3, v6, v4

    const/16 v3, 0x8

    const-string v4, "clickUrl"

    aput-object v4, v6, v3

    const/16 v3, 0x9

    aput-object v9, v6, v3

    const/16 v3, 0xa

    const-string v4, "packageName"

    aput-object v4, v6, v3

    const/16 v3, 0xb

    aput-object v10, v6, v3

    const/16 v3, 0xc

    const-string v4, "result"

    aput-object v4, v6, v3

    const/16 v3, 0xd

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v6}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v5, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method
