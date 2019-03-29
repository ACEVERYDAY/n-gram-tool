.class public Lcom/qwapi/adclient/android/service/SingleAdRequestService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qwapi/adclient/android/service/AdRequestService;


# instance fields
.field protected _response:Lcom/qwapi/adclient/android/data/AdResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qwapi/adclient/android/service/SingleAdRequestService;->_response:Lcom/qwapi/adclient/android/data/AdResponse;

    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/SingleAdRequestService;->_response:Lcom/qwapi/adclient/android/data/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/service/SingleAdRequestService;->_response:Lcom/qwapi/adclient/android/data/AdResponse;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/AdResponse;->count()I

    move-result v0

    goto :goto_0
.end method

.method public getAd(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)Lcom/qwapi/adclient/android/data/AdResponse;
    .locals 6

    const/4 v0, 0x0

    const-string v5, "QuattroWirelessSDK/2.1"

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0, v0}, Lcom/qwapi/adclient/android/service/SingleAdRequestService;->getResponse(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;ZI)Lcom/qwapi/adclient/android/utils/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/utils/HttpResponse;->getResponse()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getAdResponse(Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/qwapi/adclient/android/service/SingleAdRequestService;->_response:Lcom/qwapi/adclient/android/data/AdResponse;

    const-string v0, "QuattroWirelessSDK/2.1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad returned in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/service/SingleAdRequestService;->_response:Lcom/qwapi/adclient/android/data/AdResponse;

    return-object v0
.end method

.method protected getResponse(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;ZI)Lcom/qwapi/adclient/android/utils/HttpResponse;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qwapi/adclient/android/AdApiConfig;->getAPIUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "render?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2, p3}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getQueryString(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/utils/Utils;->processUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/qwapi/adclient/android/utils/HttpResponse;

    move-result-object v0

    return-object v0
.end method
