.class public Lcom/qwapi/adclient/android/requestparams/AdRequestParams;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final AMPERSAND:Ljava/lang/String; = "&"

.field public static final ONE:Ljava/lang/String; = "1"

.field private static final PARAM_AGE:Ljava/lang/String; = "age"

.field private static final PARAM_AREA:Ljava/lang/String; = "area"

.field private static final PARAM_BIRTH_DATE:Ljava/lang/String; = "pid"

.field private static final PARAM_DEMOGRAPHIC:Ljava/lang/String; = "dem"

.field private static final PARAM_DMA:Ljava/lang/String; = "dma"

.field private static final PARAM_EDUCATION:Ljava/lang/String; = "edu"

.field private static final PARAM_ETHNICITY:Ljava/lang/String; = "eth"

.field private static final PARAM_FORMAT:Ljava/lang/String; = "fmt"

.field private static final PARAM_FORMAT_VER:Ljava/lang/String; = "fmtver"

.field private static final PARAM_GENDER:Ljava/lang/String; = "g"

.field private static final PARAM_GEOGRAPIC:Ljava/lang/String; = "geo"

.field private static final PARAM_HOUSE_HOLD_INCOME:Ljava/lang/String; = "hhi"

.field private static final PARAM_LAT:Ljava/lang/String; = "lat"

.field private static final PARAM_LON:Ljava/lang/String; = "lon"

.field private static final PARAM_MEDIA_TYPE:Ljava/lang/String; = "adm"

.field private static final PARAM_PHONE_NUMBER:Ljava/lang/String; = "mdn"

.field private static final PARAM_PLACEMENT:Ljava/lang/String; = "plc"

.field private static final PARAM_PUB_ID:Ljava/lang/String; = "pid"

.field private static final PARAM_SECTION:Ljava/lang/String; = "cid"

.field private static final PARAM_SITE_ID:Ljava/lang/String; = "sid"

.field private static final PARAM_TEST:Ljava/lang/String; = "test"

.field private static final PARAM_UDID:Ljava/lang/String; = "udid"

.field private static final PARAM_USER_AGENT:Ljava/lang/String; = "ua"

.field private static final PARAM_ZIPCODE:Ljava/lang/String; = "zip"

.field private static final XML_VERSION:Ljava/lang/String; = "2.0"

.field public static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private _mediaTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/qwapi/adclient/android/requestparams/MediaType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundColor:Landroid/graphics/Color;

.field private dem_params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private geo_params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qwapi/adclient/android/DeviceContext;)V
    .locals 8

    const-wide/16 v5, 0x0

    const-string v7, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "pid"

    invoke-static {}, Lcom/qwapi/adclient/android/AdApiConfig;->getPublihserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "sid"

    invoke-static {}, Lcom/qwapi/adclient/android/AdApiConfig;->getDefaultSiteId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "test"

    invoke-static {}, Lcom/qwapi/adclient/android/AdApiConfig;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "udid"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/DeviceContext;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "ua"

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/DeviceContext;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "fmt"

    const-string v2, "xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "fmtver"

    const-string v2, "2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/DeviceContext;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "lat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/DeviceContext;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/qwapi/adclient/android/DeviceContext;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "lon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qwapi/adclient/android/DeviceContext;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const-string v2, "0"

    goto :goto_0
.end method

.method private buildDemographicParamsQueryString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "dem"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    iget-object v3, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "&"

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qwapi/adclient/android/utils/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildGeographicParamsQueryString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "geo"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    iget-object v3, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "&"

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qwapi/adclient/android/utils/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V
    .locals 3

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    :cond_0
    if-eqz p1, :cond_2

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/MediaType;->banner:Lcom/qwapi/adclient/android/requestparams/MediaType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->expandable:Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->expandable:Lcom/qwapi/adclient/android/requestparams/MediaType;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->animated:Lcom/qwapi/adclient/android/requestparams/MediaType;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v1, "Unable to add mediaType"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAge()Lcom/qwapi/adclient/android/requestparams/Age;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "age"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Age;

    return-object p0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    const-string v1, "area"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBackgroundColor()Landroid/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->backgroundColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public getBirthDate()Ljava/util/Date;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getDmaCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    const-string v1, "dma"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEducation()Lcom/qwapi/adclient/android/requestparams/Education;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "edu"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Education;

    return-object p0
.end method

.method public getEthnicity()Lcom/qwapi/adclient/android/requestparams/Ethnicity;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "eth"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    return-object p0
.end method

.method public getGender()Lcom/qwapi/adclient/android/requestparams/Gender;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "g"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Gender;

    return-object p0
.end method

.method public getIncome()Lcom/qwapi/adclient/android/requestparams/Income;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "hhi"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Income;

    return-object p0
.end method

.method public getMediaTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/qwapi/adclient/android/requestparams/MediaType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    const-string v1, "mdn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPlacement()Lcom/qwapi/adclient/android/requestparams/Placement;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "plc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Placement;

    return-object p0
.end method

.method public getPubId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getQueryString(ZI)Ljava/lang/String;
    .locals 6

    const-string v5, "&"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    iget-object v2, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "&"

    move-object v3, v5

    goto :goto_0

    :cond_1
    const-string v0, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->buildDemographicParamsQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->buildGeographicParamsQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getMediaTypes()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/MediaType;->banner:Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getMediaTypes()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/MediaType;->expandable:Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "sas=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getMediaTypes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/requestparams/MediaType;

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/MediaType;->expandable:Lcom/qwapi/adclient/android/requestparams/MediaType;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/MediaType;->animated:Lcom/qwapi/adclient/android/requestparams/MediaType;

    if-eq v0, v3, :cond_4

    const-string v3, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/MediaType;->batchValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getMediaTypes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v0, "&mode=b"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getMediaTypes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/MediaType;

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/MediaType;->animated:Lcom/qwapi/adclient/android/requestparams/MediaType;

    if-eq p0, v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    const-string v2, "&adm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public getSection()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "sid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTestMode()Z
    .locals 3

    const-string v0, "1"

    iget-object v1, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v2, "test"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method getUdid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "udid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "ua"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    const-string v1, "zip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/MediaType;->banner:Lcom/qwapi/adclient/android/requestparams/MediaType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->animated:Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->expandable:Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public sameAs(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    iget-object v1, p1, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/utils/Utils;->compareMaps(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    iget-object v1, p1, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/utils/Utils;->compareMaps(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    iget-object v1, p1, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/utils/Utils;->compareMaps(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAge(Lcom/qwapi/adclient/android/requestparams/Age;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "age"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    const-string v1, "area"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBackgroundColor(Landroid/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->backgroundColor:Landroid/graphics/Color;

    return-void
.end method

.method public setBirthDate(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDmaCode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    const-string v1, "dma"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEducation(Lcom/qwapi/adclient/android/requestparams/Education;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "edu"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEthnicity(Lcom/qwapi/adclient/android/requestparams/Ethnicity;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "eth"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGender(Lcom/qwapi/adclient/android/requestparams/Gender;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "g"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIncome(Lcom/qwapi/adclient/android/requestparams/Income;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->dem_params:Ljava/util/Map;

    const-string v1, "hhi"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMediaType(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/qwapi/adclient/android/requestparams/MediaType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->_mediaTypes:Ljava/util/Map;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    const-string v1, "mdn"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "plc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPubId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "cid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSiteId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "sid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTestMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "test"

    if-eqz p1, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 5

    const-string v4, ","

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->textColor:Ljava/lang/String;

    return-void
.end method

.method setUdid(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->params:Ljava/util/Map;

    const-string v1, "udid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->geo_params:Ljava/util/Map;

    const-string v1, "zip"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
