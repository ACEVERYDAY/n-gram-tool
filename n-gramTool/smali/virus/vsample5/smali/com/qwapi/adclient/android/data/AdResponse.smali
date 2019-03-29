.class public Lcom/qwapi/adclient/android/data/AdResponse;
.super Ljava/lang/Object;


# instance fields
.field private ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qwapi/adclient/android/data/Ad;",
            ">;"
        }
    .end annotation
.end field

.field private batchId:Ljava/lang/String;

.field private status:Lcom/qwapi/adclient/android/data/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/qwapi/adclient/android/data/AdResponse;->init(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;)V

    return-void
.end method

.method public constructor <init>(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/qwapi/adclient/android/data/AdResponse;->init(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;)V

    iput-object p3, p0, Lcom/qwapi/adclient/android/data/AdResponse;->batchId:Ljava/lang/String;

    return-void
.end method

.method public static createParseErrorAdReseponse(Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/qwapi/adclient/android/data/ErrorMessage;

    sget v2, Lcom/qwapi/adclient/android/data/ErrorMessage;->PARSE_ERROR:I

    invoke-direct {v1, v2, p0, p0}, Lcom/qwapi/adclient/android/data/ErrorMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/qwapi/adclient/android/data/AdResponse;

    new-instance v2, Lcom/qwapi/adclient/android/data/Ad;

    invoke-direct {v2}, Lcom/qwapi/adclient/android/data/Ad;-><init>()V

    new-instance v3, Lcom/qwapi/adclient/android/data/Status;

    const-string v4, "failure"

    invoke-direct {v3, v4, v0}, Lcom/qwapi/adclient/android/data/Status;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v1, v2, v3}, Lcom/qwapi/adclient/android/data/AdResponse;-><init>(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;)V

    return-object v1
.end method

.method private init(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->ads:Ljava/util/List;

    iput-object p2, p0, Lcom/qwapi/adclient/android/data/AdResponse;->status:Lcom/qwapi/adclient/android/data/Status;

    invoke-virtual {p0, p1}, Lcom/qwapi/adclient/android/data/AdResponse;->addAd(Lcom/qwapi/adclient/android/data/Ad;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addAd(Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->ads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->status:Lcom/qwapi/adclient/android/data/Status;

    invoke-virtual {p1, v0}, Lcom/qwapi/adclient/android/data/Ad;->setStatus(Lcom/qwapi/adclient/android/data/Status;)V
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

.method public final count()I
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAd(I)Lcom/qwapi/adclient/android/data/Ad;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/data/AdResponse;->count()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->ads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/data/Ad;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ad list error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0
.end method

.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qwapi/adclient/android/data/Ad;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->ads:Ljava/util/List;

    return-object v0
.end method

.method public getBatchId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->batchId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/qwapi/adclient/android/data/Status;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->status:Lcom/qwapi/adclient/android/data/Status;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->status:Lcom/qwapi/adclient/android/data/Status;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/Status;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/data/AdResponse;->count()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setAd(ILcom/qwapi/adclient/android/data/Ad;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->ads:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/AdResponse;->status:Lcom/qwapi/adclient/android/data/Status;

    invoke-virtual {p2, v0}, Lcom/qwapi/adclient/android/data/Ad;->setStatus(Lcom/qwapi/adclient/android/data/Status;)V
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

.method public setAd(Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/qwapi/adclient/android/data/AdResponse;->setAd(ILcom/qwapi/adclient/android/data/Ad;)V

    return-void
.end method

.method public setStatus(Lcom/qwapi/adclient/android/data/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/AdResponse;->status:Lcom/qwapi/adclient/android/data/Status;

    return-void
.end method

.method public updateAd()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/qwapi/adclient/android/data/AdResponse;->getAd(I)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/Ad;->served()I

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/Ad;->getStatus()Lcom/qwapi/adclient/android/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Status;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/Ad;->isExpired()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/Ad;->getImpressions()I

    move-result v0

    if-ge v0, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method
