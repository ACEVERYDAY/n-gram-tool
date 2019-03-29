.class public Lcom/qwapi/adclient/android/AdApiConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;
    }
.end annotation


# static fields
.field private static final API_URLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROXY_URLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultSiteId:Ljava/lang/String;

.field private static mode:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

.field private static publisherId:Ljava/lang/String;

.field public static testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v1, ""

    const-string v0, ""

    sput-object v1, Lcom/qwapi/adclient/android/AdApiConfig;->publisherId:Ljava/lang/String;

    const-string v0, ""

    sput-object v1, Lcom/qwapi/adclient/android/AdApiConfig;->defaultSiteId:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qwapi/adclient/android/AdApiConfig;->testMode:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->API_URLS:Ljava/util/Map;

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->API_URLS:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->LIVE:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const-string v2, "http://ad.qwapi.com/adserver/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->API_URLS:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->STAGING:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const-string v2, "http://stg-ad.qwapi.com/adserver/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->API_URLS:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->QA:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const-string v2, "http://ad-qa.qwapi.com/adserver/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->PROXY_URLS:Ljava/util/Map;

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->PROXY_URLS:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->LIVE:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const-string v2, "http://site.qwapi.com/siteserver/sdkproxy.jsp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->PROXY_URLS:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->STAGING:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const-string v2, "http://stg-site.qwapi.com/siteserver/sdkproxy.jsp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->PROXY_URLS:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->QA:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const-string v2, "http://qa-site.qwapi.com/siteserver/sdkproxy.jsp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->LIVE:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    sput-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->mode:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPIUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->API_URLS:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig;->mode:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultSiteId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->defaultSiteId:Ljava/lang/String;

    return-object v0
.end method

.method public static getExecutionMode()Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->mode:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    return-object v0
.end method

.method public static getProxyUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->PROXY_URLS:Ljava/util/Map;

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig;->mode:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPublihserId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestMode()Z
    .locals 1

    sget-boolean v0, Lcom/qwapi/adclient/android/AdApiConfig;->testMode:Z

    return v0
.end method

.method public static setDefaultSiteId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/qwapi/adclient/android/AdApiConfig;->defaultSiteId:Ljava/lang/String;

    return-void
.end method

.method public static setExecutionMode(Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;)V
    .locals 0

    sput-object p0, Lcom/qwapi/adclient/android/AdApiConfig;->mode:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    return-void
.end method

.method public static setPublisherid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/qwapi/adclient/android/AdApiConfig;->publisherId:Ljava/lang/String;

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/qwapi/adclient/android/AdApiConfig;->testMode:Z

    return-void
.end method
