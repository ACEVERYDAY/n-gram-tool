.class Lcom/upay/billing/engine/UpayCoreImpl$16;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$appState:I


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appState:I

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appKey:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected onSuccess([B)V
    .locals 13

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    :try_start_0
    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    const-string v6, "update_date"

    const-string v7, "1970-01-01 00:00:00"

    invoke-virtual {v2, v6, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/upay/billing/utils/Util;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    const-string v5, "app_package"

    invoke-virtual {v2, v5}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    const-string v7, "app_update"

    const-string v9, "1970-01-01 00:00:00"

    invoke-virtual {v5, v7, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/upay/billing/utils/Util;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :cond_0
    new-instance v9, Ljava/io/File;

    sget-object v5, Lcom/upay/billing/UpayConstant;->UPAY_PROP_PATH:Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "{}"

    invoke-static {v5}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    new-instance v6, Ljava/util/Date;

    const-wide/16 v10, 0x0

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/Date;

    const-wide/16 v10, 0x0

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e

    sget-object v6, Lcom/upay/billing/UpayConstant;->UPAY_PROP_PATH:Ljava/lang/String;

    invoke-static {v6}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    const-string v10, "update_date"

    invoke-virtual {v7, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/upay/billing/utils/Util;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    const-string v10, "package"

    invoke-virtual {v7, v10}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    const-string v11, "build_date"

    const-string v12, "1970-01-01 00:00:00"

    invoke-virtual {v10, v11, v12}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/upay/billing/utils/Util;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    :cond_1
    const-string v10, "app_package"

    invoke-virtual {v7, v10}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    if-eqz v7, :cond_d

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    const-string v11, "app_update"

    const-string v12, "1970-01-01 00:00:00"

    invoke-virtual {v7, v11, v12}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/upay/billing/utils/Util;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    move-object v7, v5

    move-object v5, v6

    :goto_0
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v5, v10, v5

    if-lez v5, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v9}, Lcom/upay/billing/utils/Util;->deleteFile(Ljava/io/File;)V

    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    invoke-static {p1, v9}, Lcom/upay/billing/utils/Util;->writeToFile([BLjava/io/File;)V

    :cond_3
    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v5, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5402(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    iget v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    const-string v5, "package"

    invoke-virtual {v2, v5}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    new-instance v6, Ljava/util/Date;

    const-wide/16 v9, 0x0

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    const-string v5, "http://cdn2.upay360.cn/pack.dat"

    if-eqz v8, :cond_4

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    const-string v9, "build_date"

    const-string v10, "1970-01-01 00:00:00"

    invoke-virtual {v8, v9, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/upay/billing/utils/Util;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    const-string v9, "url"

    invoke-virtual {v8, v9, v5}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string v8, "common"

    invoke-virtual {v2, v8}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const-string v9, "update_so_flag"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_5

    iget-object v8, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v8, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getPackUrlByCpu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/upay/billing/UpayConstant;->PACK_UNZIP_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v9}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5500(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "update_enabled"

    invoke-static {v9, v10}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v6, v10, v6

    if-gtz v6, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    :cond_6
    if-nez v9, :cond_a

    new-instance v6, Lcom/upay/billing/engine/UpayCoreImpl$16$1;

    invoke-direct {v6, p0, v5, v8}, Lcom/upay/billing/engine/UpayCoreImpl$16$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$16;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v6}, Lcom/upay/billing/engine/UpayCoreImpl$16$1;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-virtual {v5}, Lcom/upay/billing/engine/UpayCoreImpl;->loadWxApk()V

    const-string v5, "common"

    invoke-virtual {v2, v5}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v5

    const-string v6, "agency_poll_switch"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "common"

    invoke-virtual {v2, v5}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v5

    const-string v6, "agency_poll_time"

    const-string v7, "300000"

    invoke-virtual {v5, v6, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "common"

    invoke-virtual {v2, v7}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    const-string v7, "agency_poll_port"

    const-string v8, "10892"

    invoke-virtual {v2, v7, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v5, v6, v2}, Lcom/upay/billing/engine/HttpClaimer;->agencyRequest(JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v5}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "cp_key"

    invoke-static {v5, v6}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "verify_cpkey"

    invoke-static {v2, v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->access$2400(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Lcom/upay/billing/engine/UpayCoreImpl$16$2;

    invoke-direct {v2, p0}, Lcom/upay/billing/engine/UpayCoreImpl$16$2;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$16;)V

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :try_start_2
    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "isConfirm"

    invoke-static {v2, v5}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "yes"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-lez v0, :cond_9

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "safety_app"

    invoke-virtual {v0, v2, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getApp(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6000(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "market_app"

    invoke-virtual {v0, v2, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getApp(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6100(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "social_app"

    invoke-virtual {v0, v2, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getApp(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/upay/billing/engine/TelephonyUtil;->getSimCount()I

    move-result v0

    if-ne v0, v4, :cond_c

    move v0, v3

    :goto_3
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/upay/billing/engine/TelephonyUtil;->getPhoneServiceMethod(I)Lcom/upay/billing/utils/Json;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/upay/billing/engine/TelephonyUtil;->getPhoneServiceMethod(I)Lcom/upay/billing/utils/Json;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "{}"

    invoke-static {v4}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "brand"

    invoke-static {}, Lcom/upay/billing/engine/DataCollection;->getBrand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v5, "device"

    invoke-static {}, Lcom/upay/billing/engine/DataCollection;->getDevice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v5, "manufacturer"

    invoke-static {}, Lcom/upay/billing/engine/DataCollection;->getManufacturer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v5, "prodect"

    invoke-static {}, Lcom/upay/billing/engine/DataCollection;->getProduct()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v5, "root"

    invoke-static {}, Lcom/upay/billing/engine/DataCollection;->isRoot()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v5, "installed_apps"

    invoke-static {v1}, Lcom/upay/billing/utils/Json;->asJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "device_service_list"

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->asJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "double_card"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "sim_info"

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v3}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->getMap(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Json;->asJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "service_method"

    invoke-virtual {v4, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v1}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6300(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_collection"

    invoke-virtual {v4}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6400(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "isConfirm"

    const-string v2, "yes"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_9
    :goto_4
    return-void

    :cond_a
    :try_start_3
    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appKey:Ljava/lang/String;

    const/16 v7, 0xc8

    const-string v8, ""

    invoke-virtual {v5, v6, v7, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v5

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v5, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appKey:Ljava/lang/String;

    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5300()I

    move-result v7

    const-string v8, "init fail"

    invoke-virtual {v5, v6, v7, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    :try_start_4
    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appKey:Ljava/lang/String;

    const/16 v7, 0xc8

    const-string v8, ""

    invoke-virtual {v5, v6, v7, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v5

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v5, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appKey:Ljava/lang/String;

    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5300()I

    move-result v7

    const-string v8, "init fail"

    invoke-virtual {v5, v6, v7, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v5

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v5, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl$16;->val$appKey:Ljava/lang/String;

    invoke-static {}, Lcom/upay/billing/engine/UpayCoreImpl;->access$5300()I

    move-result v7

    const-string v8, "init fail"

    invoke-virtual {v5, v6, v7, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    move v0, v4

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v2

    goto/16 :goto_2

    :catch_6
    move-exception v2

    goto/16 :goto_2

    :catch_7
    move-exception v2

    goto/16 :goto_2

    :cond_d
    move-object v7, v5

    move-object v5, v6

    goto/16 :goto_0

    :cond_e
    move-object v7, v5

    move-object v5, v6

    goto/16 :goto_0
.end method
