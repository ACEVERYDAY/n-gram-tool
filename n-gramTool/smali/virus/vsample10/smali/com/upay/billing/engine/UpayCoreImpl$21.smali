.class Lcom/upay/billing/engine/UpayCoreImpl$21;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$f:Ljava/io/File;

.field final synthetic val$json:Lcom/upay/billing/utils/Json;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/io/File;Lcom/upay/billing/utils/Json;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->val$f:Ljava/io/File;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->val$json:Lcom/upay/billing/utils/Json;

    iput-object p5, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->val$appKey:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onSuccess([B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->val$f:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/upay/billing/utils/Util;->writeToFile([BLjava/io/File;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->val$json:Lcom/upay/billing/utils/Json;

    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->appInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->val$f:Ljava/io/File;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$21;->val$json:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->installApp(Ljava/io/File;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
