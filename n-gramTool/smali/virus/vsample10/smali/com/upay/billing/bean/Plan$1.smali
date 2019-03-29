.class Lcom/upay/billing/bean/Plan$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/bean/Plan;

.field final synthetic val$f:Ljava/io/File;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/bean/Plan;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/bean/Plan$1;->this$0:Lcom/upay/billing/bean/Plan;

    iput-object p3, p0, Lcom/upay/billing/bean/Plan$1;->val$f:Ljava/io/File;

    iput-object p4, p0, Lcom/upay/billing/bean/Plan$1;->val$key:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onSuccess([B)V
    .locals 6

    iget-object v0, p0, Lcom/upay/billing/bean/Plan$1;->val$f:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/upay/billing/utils/Util;->writeToFile([BLjava/io/File;)V

    iget-object v0, p0, Lcom/upay/billing/bean/Plan$1;->this$0:Lcom/upay/billing/bean/Plan;

    iget-object v0, v0, Lcom/upay/billing/bean/Plan;->localResources:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/upay/billing/bean/Plan$1;->val$key:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/upay/billing/bean/Plan$1;->val$f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ctime"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
