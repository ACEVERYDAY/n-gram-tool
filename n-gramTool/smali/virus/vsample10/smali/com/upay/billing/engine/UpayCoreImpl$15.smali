.class Lcom/upay/billing/engine/UpayCoreImpl$15;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$appSecret:Ljava/lang/String;

.field final synthetic val$buildDate:J

.field final synthetic val$channelKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$appKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$appSecret:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$channelKey:Ljava/lang/String;

    iput-wide p6, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$buildDate:J

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 3

    const-string v0, "UpayCoreImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPlan failed, code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected onSuccess([B)V
    .locals 10

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const-string v0, "UpayCoreImpl"

    const-string v1, "planlist---finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/upay/billing/utils/NativeUtil;->decrypt([B)[B

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v6

    const-string v0, "result"

    invoke-virtual {v6, v0}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const-string v0, "result"

    invoke-virtual {v6, v0}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "error"

    invoke-virtual {v6, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl$15;->onFailed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0, v9}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "actions"

    invoke-virtual {v6, v0}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v3, "key"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4600(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v1, "user"

    invoke-virtual {v6, v1}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$302(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const-string v1, "area_key"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4702(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "cp_key"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_key"

    invoke-static {v1, v2, v0}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Plan;

    if-nez v0, :cond_2

    new-instance v0, Lcom/upay/billing/bean/Plan;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$appKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/upay/billing/bean/Plan;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$appKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$appSecret:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$channelKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$buildDate:J

    invoke-virtual/range {v0 .. v6}, Lcom/upay/billing/bean/Plan;->update(Lcom/upay/billing/UpayCore;Ljava/lang/String;Ljava/lang/String;JLcom/upay/billing/utils/Json;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget v0, v0, Lcom/upay/billing/bean/Plan;->state:I

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$appKey:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5000(Lcom/upay/billing/engine/UpayCoreImpl;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5100(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "delete_mt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete_mt"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cmd"

    invoke-virtual {v6, v0}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    sget-object v2, Lcom/upay/billing/engine/UpayCoreImpl;->cmdType:Ljava/util/HashMap;

    const-string v3, "key"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v0, v4}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/upay/billing/engine/UpayCoreImpl;->cmdGroupKey:Ljava/util/HashMap;

    const-string v3, "key"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "group_key"

    invoke-virtual {v0, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.upay.billing.saveddata.Main"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cmdType"

    sget-object v2, Lcom/upay/billing/engine/UpayCoreImpl;->cmdType:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "ts"

    invoke-virtual {v6, v0}, Lcom/upay/billing/utils/Json;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_4
    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Time-Diff"

    invoke-static {v2, v3, v0, v1}, Lcom/upay/billing/utils/Util;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "UpayCoreImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPlan failed, code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",error=init fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0, v9}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$15;->val$appKey:Ljava/lang/String;

    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5300()I

    move-result v2

    const-string v3, "init fail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move-wide v0, v7

    goto :goto_4
.end method
