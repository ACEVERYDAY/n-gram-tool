.class public Lcom/qwapi/adclient/android/service/AdRequestTestCase;
.super Ljunit/framework/TestCase;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/service/AdRequestTestCase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/qwapi/adclient/android/service/AdRequestTestCase;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public testSimpleCase()V
    .locals 3

    const-string v0, "http://stg-ad.qwapi.com/adserver/render?test=false&fmtver=2.0&plc=top&adm=b&udid=ANDROID_SIMULATOR_0&pid=3d1d1275c2d649729bd43fa5a50ee936&ua=Android_USQuattroSDK&fmt=xml&sid=people-fp2qqq96&dem=&geo="

    const-string v1, "Android"

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/utils/Utils;->processUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/qwapi/adclient/android/utils/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/utils/HttpResponse;->getResponse()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&ic=1"

    const-string v2, "&amp;ic=1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getAdResponse(Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/AdResponse;->getAd(I)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v0

    sget-boolean v1, Lcom/qwapi/adclient/android/service/AdRequestTestCase;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
