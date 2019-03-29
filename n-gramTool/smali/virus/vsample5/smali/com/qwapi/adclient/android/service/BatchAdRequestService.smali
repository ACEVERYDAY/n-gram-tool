.class public Lcom/qwapi/adclient/android/service/BatchAdRequestService;
.super Lcom/qwapi/adclient/android/service/SingleAdRequestService;


# instance fields
.field private _size:I

.field private dbHelper:Lcom/qwapi/adclient/android/db/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/qwapi/adclient/android/service/SingleAdRequestService;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->_size:I

    new-instance v0, Lcom/qwapi/adclient/android/db/DBHelper;

    invoke-direct {v0, p1}, Lcom/qwapi/adclient/android/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->dbHelper:Lcom/qwapi/adclient/android/db/DBHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/qwapi/adclient/android/service/BatchAdRequestService;)Lcom/qwapi/adclient/android/db/DBHelper;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->dbHelper:Lcom/qwapi/adclient/android/db/DBHelper;

    return-object v0
.end method

.method private declared-synchronized deleteAd(Lcom/qwapi/adclient/android/data/AdResponse;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/AdResponse;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/AdResponse;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->dbHelper:Lcom/qwapi/adclient/android/db/DBHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/qwapi/adclient/android/data/AdResponse;->getAd(I)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/db/DBHelper;->deleteAd(Lcom/qwapi/adclient/android/data/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized deleteExpiredAds()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/qwapi/adclient/android/service/BatchAdRequestService$1;

    invoke-direct {v0, p0}, Lcom/qwapi/adclient/android/service/BatchAdRequestService$1;-><init>(Lcom/qwapi/adclient/android/service/BatchAdRequestService;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized readAd(Ljava/util/Collection;Lcom/qwapi/adclient/android/requestparams/Placement;Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/qwapi/adclient/android/requestparams/MediaType;",
            ">;",
            "Lcom/qwapi/adclient/android/requestparams/Placement;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qwapi/adclient/android/data/AdResponse;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->dbHelper:Lcom/qwapi/adclient/android/db/DBHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qwapi/adclient/android/db/DBHelper;->getAd(Ljava/util/Collection;Lcom/qwapi/adclient/android/requestparams/Placement;Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateAd(Lcom/qwapi/adclient/android/data/AdResponse;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->dbHelper:Lcom/qwapi/adclient/android/db/DBHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/qwapi/adclient/android/data/AdResponse;->getAd(I)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/AdResponse;->getBatchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getPlacement()Lcom/qwapi/adclient/android/requestparams/Placement;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getSection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qwapi/adclient/android/db/DBHelper;->updateAd(Lcom/qwapi/adclient/android/data/Ad;Ljava/lang/String;Lcom/qwapi/adclient/android/requestparams/Placement;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized writeAds(Lcom/qwapi/adclient/android/data/AdResponse;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/AdResponse;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/data/Ad;

    iget-object v2, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->dbHelper:Lcom/qwapi/adclient/android/db/DBHelper;

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/data/AdResponse;->getBatchId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getPlacement()Lcom/qwapi/adclient/android/requestparams/Placement;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getSection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/qwapi/adclient/android/db/DBHelper;->insertAd(Lcom/qwapi/adclient/android/data/Ad;Ljava/lang/String;Lcom/qwapi/adclient/android/requestparams/Placement;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v1, "Unable to write Ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->dbHelper:Lcom/qwapi/adclient/android/db/DBHelper;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/db/DBHelper;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAd(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)Lcom/qwapi/adclient/android/data/AdResponse;
    .locals 7

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getMediaTypes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getPlacement()Lcom/qwapi/adclient/android/requestparams/Placement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getSection()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->readAd(Ljava/util/Collection;Lcom/qwapi/adclient/android/requestparams/Placement;Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->_size:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->getResponse(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;ZI)Lcom/qwapi/adclient/android/utils/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/utils/HttpResponse;->getResponse()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getAdResponse(Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/AdResponse;->getStatus()Lcom/qwapi/adclient/android/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Status;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/AdResponse;->getAds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/AdResponse;->getAds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->writeAds(Lcom/qwapi/adclient/android/data/AdResponse;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getMediaTypes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getPlacement()Lcom/qwapi/adclient/android/requestparams/Placement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getSection()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->readAd(Ljava/util/Collection;Lcom/qwapi/adclient/android/requestparams/Placement;Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;

    move-result-object v0

    invoke-direct {p0}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->deleteExpiredAds()V

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batch ads returned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/AdResponse;->count()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/AdResponse;->updateAd()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->updateAd(Lcom/qwapi/adclient/android/data/AdResponse;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const-string v5, "null adResponse"

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->deleteAd(Lcom/qwapi/adclient/android/data/AdResponse;)V

    goto :goto_1
.end method

.method public declared-synchronized getAllAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qwapi/adclient/android/data/AdResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->dbHelper:Lcom/qwapi/adclient/android/db/DBHelper;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/db/DBHelper;->getAllAds()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBatchSize(I)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xa

    :goto_0
    iput v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->_size:I

    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method
