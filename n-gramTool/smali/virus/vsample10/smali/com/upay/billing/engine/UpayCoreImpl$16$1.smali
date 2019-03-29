.class Lcom/upay/billing/engine/UpayCoreImpl$16$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

.field final synthetic val$dir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$16;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->val$dir:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected onSuccess([B)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/upay/billing/UpayConstant;->PACK_UNZIP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

    iget-object v3, v3, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5600(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "dex"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/classes.dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->deleteFile(Ljava/io/File;)V

    :cond_0
    invoke-static {v0}, Lcom/upay/billing/utils/Util;->deleteFile(Ljava/io/File;)V

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->val$dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->val$dir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->unzip(Ljava/io/InputStream;Ljava/io/File;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->copySoToData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

    iget-object v0, v0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$16;

    iget-object v1, v1, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appKey:Ljava/lang/String;

    const/16 v2, 0xc8

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/upay/billing/UpayConstant;->DEX_UPDATATIME_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/upay/billing/utils/Util;->writeToFile(Ljava/lang/String;Ljava/io/File;)V

    const/4 v0, 0x3

    new-array v3, v7, [Z

    aput-boolean v6, v3, v6

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    aget-boolean v0, v3, v6

    if-nez v0, :cond_3

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sget-object v0, Lcom/upay/billing/UpayConstant;->DEX_UPDATATIME_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    aput-boolean v7, v3, v6

    move v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/upay/billing/UpayConstant;->DEX_UPDATATIME_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/upay/billing/utils/Util;->writeToFile(Ljava/lang/String;Ljava/io/File;)V

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    return-void

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
