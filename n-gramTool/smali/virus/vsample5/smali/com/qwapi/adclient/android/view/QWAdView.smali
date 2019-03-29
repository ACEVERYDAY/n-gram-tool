.class public Lcom/qwapi/adclient/android/view/QWAdView;
.super Landroid/widget/ViewAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qwapi/adclient/android/view/QWAdView$InterstitialViewSkipListener;
    }
.end annotation


# static fields
.field private static final AD_REQUEST_MSG:I = 0x1e61

.field private static final AGE_AD_MSG:I = 0x22b8

.field private static final MIN_INTERVAL:I = 0x1e

.field private static final MSG:I = 0x270f


# instance fields
.field private _ad:Lcom/qwapi/adclient/android/data/Ad;

.field private activity:Landroid/app/Activity;

.field private adInterval:I

.field private adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

.field private adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

.field private adRequestThread:Lcom/qwapi/adclient/android/service/AdRequestThread;

.field private adResponse:Lcom/qwapi/adclient/android/data/AdResponse;

.field adService:Lcom/qwapi/adclient/android/service/AdRequestService;

.field private ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

.field private defaultAdImage:Ljava/lang/String;

.field private defaultAdView:Lcom/qwapi/adclient/android/view/AdImageView;

.field private deviceContext:Lcom/qwapi/adclient/android/DeviceContext;

.field private displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

.field private eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

.field private eventListenerClassName:Ljava/lang/String;

.field private interstitialSkipListener:Lcom/qwapi/adclient/android/view/SkipListener;

.field private mFirstTime:Z

.field private mWhichChild:I

.field private requestMode:Lcom/qwapi/adclient/android/requestparams/RequestMode;

.field private startDisplayingAds:Z

.field private suspendAutoRefresh:Z

.field useBatch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qwapi/adclient/android/view/QWAdViewException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "QuattroWirelessSDK/2.1"

    const-string v7, "]"

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v11, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    iput-boolean v9, p0, Lcom/qwapi/adclient/android/view/QWAdView;->useBatch:Z

    iput-boolean v9, p0, Lcom/qwapi/adclient/android/view/QWAdView;->startDisplayingAds:Z

    new-instance v0, Lcom/qwapi/adclient/android/view/QWAdView$InterstitialViewSkipListener;

    invoke-direct {v0, p0}, Lcom/qwapi/adclient/android/view/QWAdView$InterstitialViewSkipListener;-><init>(Lcom/qwapi/adclient/android/view/QWAdView;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->interstitialSkipListener:Lcom/qwapi/adclient/android/view/SkipListener;

    new-instance v0, Lcom/qwapi/adclient/android/DeviceContext;

    invoke-direct {v0, p1}, Lcom/qwapi/adclient/android/DeviceContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->deviceContext:Lcom/qwapi/adclient/android/DeviceContext;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->deviceContext:Lcom/qwapi/adclient/android/DeviceContext;

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;-><init>(Lcom/qwapi/adclient/android/DeviceContext;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    sget-object v0, Lcom/qwapi/adclient/android/R$styleable;->QWAdView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qwapi/adclient/android/requestparams/RequestMode;->valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/RequestMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setRequestMode(Lcom/qwapi/adclient/android/requestparams/RequestMode;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getRequestMode()Lcom/qwapi/adclient/android/requestparams/RequestMode;

    move-result-object v2

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/RequestMode;->batch:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v3, v9

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_4

    aget-object v4, v2, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for mediaType in batch request mode : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid value for mediaType in batch request mode : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for requestMode : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid value for requestMode : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v0, "requestMode not provided using single request mode"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;->single:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setRequestMode(Lcom/qwapi/adclient/android/requestparams/RequestMode;)V

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Lcom/qwapi/adclient/android/requestparams/MediaType;->valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/MediaType;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/qwapi/adclient/android/view/QWAdView;->addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v0, "QuattroWirelessSDK/2.1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value for mediaType in batch request mode : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] count : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for mediaType in batch request mode : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] count : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v2, v9

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_4

    :try_start_2
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/qwapi/adclient/android/requestparams/MediaType;->valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/MediaType;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/qwapi/adclient/android/view/QWAdView;->addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid value for mediaType in single request mode : ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid value for mediaType in single request mode : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v0, "mediaType is a required property."

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qwapi/adclient/android/view/QWAdViewException;

    const-string v1, "mediaType is a required property."

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qwapi/adclient/android/requestparams/Placement;->valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/Placement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_6

    const-string v2, "QuattroWirelessSDK/2.1"

    const-string v3, "adInterval is smaller than the min interval of [30] setting interval to [30]"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1e

    :cond_6
    invoke-virtual {p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAdInterval(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setSiteId(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setPublisherId(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qwapi/adclient/android/requestparams/AnimationType;->valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/AnimationType;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_4
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setSection(Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setDisplayMode(Lcom/qwapi/adclient/android/requestparams/DisplayMode;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_5
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move-object v2, v11

    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setDefaultAd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_8
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setEventListenerClassName(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getEventListenerClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getEventListenerClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    :try_start_7
    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getEventListenerClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/AdEventsListener;
    :try_end_7
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_9

    move-object v2, v0

    move-object v0, v11

    :goto_7
    if-eqz v0, :cond_10

    const-string v1, "QuattroWirelessSDK/2.1"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdViewException;

    invoke-direct {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v1

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for placement : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid value for placement : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v1

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem parsing refreshInterval : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem parsing refreshInterval : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setAdInterval(I)V

    goto/16 :goto_3

    :cond_b
    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v0, "siteId is a required parameter"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qwapi/adclient/android/view/QWAdViewException;

    const-string v1, "siteId is a required parameter"

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v0, "publisherId is a required parameter"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qwapi/adclient/android/view/QWAdViewException;

    const-string v1, "publisherId is a required parameter"

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v1

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for animation : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid value for animation : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    sget-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->slide:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V

    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v0, "animation parameter was not provided using default value of slide"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_6
    move-exception v1

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value for displayMode : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid value for displayMode : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    sget-object v0, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->normal:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setDisplayMode(Lcom/qwapi/adclient/android/requestparams/DisplayMode;)V

    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v0, "displayMode parameter was not provided using default value of autoRotate"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adEventsListenerClass : Instantiation issue while trying to instantiate : ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getEventListenerClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v11

    goto/16 :goto_7

    :catch_8
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adEventsListenerClass : Illegal Access issue while trying to instantiate : ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getEventListenerClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v11

    goto/16 :goto_7

    :catch_9
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adEventsListenerClass : Class Not Found, issue while trying to instantiate : ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getEventListenerClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v11

    goto/16 :goto_7

    :cond_10
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_8
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    move-result v0

    :goto_8
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    move-result v3

    :goto_9
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/qwapi/adclient/android/view/QWAdView;->setBackgroundColor(I)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_c

    :goto_a
    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qwapi/adclient/android/view/QWAdView;->setTextColor(I)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_d

    :goto_b
    invoke-virtual {p0, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->setTestMode(Z)V

    invoke-direct {p0, p1, v2, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->init(Landroid/content/Context;Lcom/qwapi/adclient/android/view/AdEventsListener;Z)V

    return-void

    :catch_a
    move-exception v0

    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid renderOnCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid renderOnCreate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v0, "renderOnCreate parameter not provided using default value of true"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto :goto_8

    :catch_b
    move-exception v0

    const-string v0, "QuattroWirelessSDK/2.1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid testMode value must be true|false : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid testMode value must be true|false : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-string v3, "QuattroWirelessSDK/2.1"

    const-string v3, "testMode parameter not provided using default value of false"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v9

    goto/16 :goto_9

    :catch_c
    move-exception v0

    const-string v0, "QuattroWirelessSDK/2.1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bgColor value must be a valid color format as defined by android.graphics.Color.parseColor(String)  : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bgColor value must be a valid color format as defined by android.graphics.Color.parseColor(String) : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/high16 v5, -0x1000000

    invoke-virtual {p0, v5}, Lcom/qwapi/adclient/android/view/QWAdView;->setBackgroundColor(I)V

    goto/16 :goto_a

    :catch_d
    move-exception v0

    const-string v0, "QuattroWirelessSDK/2.1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid textColor value must be a valid color format as defined by android.graphics.Color.parseColor(String)  : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qwapi/adclient/android/view/QWAdViewException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textColor value must be a valid color format as defined by android.graphics.Color.parseColor(String) : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdViewException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/16 v1, -0x100

    invoke-virtual {p0, v1}, Lcom/qwapi/adclient/android/view/QWAdView;->setTextColor(I)V

    goto/16 :goto_b

    :cond_15
    move-object v0, v11

    move-object v2, v11

    goto/16 :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qwapi/adclient/android/requestparams/MediaType;Lcom/qwapi/adclient/android/requestparams/Placement;Lcom/qwapi/adclient/android/requestparams/DisplayMode;ILcom/qwapi/adclient/android/requestparams/AnimationType;Lcom/qwapi/adclient/android/view/AdEventsListener;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    iput-boolean v3, p0, Lcom/qwapi/adclient/android/view/QWAdView;->useBatch:Z

    iput-boolean v3, p0, Lcom/qwapi/adclient/android/view/QWAdView;->startDisplayingAds:Z

    new-instance v0, Lcom/qwapi/adclient/android/view/QWAdView$InterstitialViewSkipListener;

    invoke-direct {v0, p0}, Lcom/qwapi/adclient/android/view/QWAdView$InterstitialViewSkipListener;-><init>(Lcom/qwapi/adclient/android/view/QWAdView;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->interstitialSkipListener:Lcom/qwapi/adclient/android/view/SkipListener;

    new-instance v0, Lcom/qwapi/adclient/android/DeviceContext;

    invoke-direct {v0, p1}, Lcom/qwapi/adclient/android/DeviceContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->deviceContext:Lcom/qwapi/adclient/android/DeviceContext;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->deviceContext:Lcom/qwapi/adclient/android/DeviceContext;

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;-><init>(Lcom/qwapi/adclient/android/DeviceContext;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    iput-object p6, p0, Lcom/qwapi/adclient/android/view/QWAdView;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    invoke-virtual {p0, p1, p8}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/qwapi/adclient/android/view/QWAdView;->setSiteId(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/qwapi/adclient/android/view/QWAdView;->setPublisherId(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V

    invoke-virtual {p0, p5}, Lcom/qwapi/adclient/android/view/QWAdView;->setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V

    invoke-virtual {p0, p7}, Lcom/qwapi/adclient/android/view/QWAdView;->setAdInterval(I)V

    invoke-virtual {p0, p1, p8}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V

    invoke-direct {p0, p1, p9, p10}, Lcom/qwapi/adclient/android/view/QWAdView;->init(Landroid/content/Context;Lcom/qwapi/adclient/android/view/AdEventsListener;Z)V

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->setPadding(IIII)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/qwapi/adclient/android/view/QWAdView;)Lcom/qwapi/adclient/android/data/Ad;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->_ad:Lcom/qwapi/adclient/android/data/Ad;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qwapi/adclient/android/view/QWAdView;Lcom/qwapi/adclient/android/data/Ad;)Lcom/qwapi/adclient/android/data/Ad;
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->_ad:Lcom/qwapi/adclient/android/data/Ad;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qwapi/adclient/android/view/QWAdView;)Lcom/qwapi/adclient/android/view/EventDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->clearViews()V

    return-void
.end method

.method private clearViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->removeAllViews()V

    new-instance v0, Lcom/qwapi/adclient/android/view/EmptyView;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/view/EmptyView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->invalidate()V

    return-void
.end method

.method private getNextChildIndex()I
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->mFirstTime:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->mWhichChild:I

    iget v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->mWhichChild:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->mWhichChild:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Lcom/qwapi/adclient/android/view/AdEventsListener;Z)V
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->activity:Landroid/app/Activity;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->mFirstTime:Z

    new-instance v1, Lcom/qwapi/adclient/android/view/EmptyView;

    invoke-direct {v1, p1}, Lcom/qwapi/adclient/android/view/EmptyView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/qwapi/adclient/android/view/QWAdView;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/qwapi/adclient/android/view/EmptyView;

    invoke-direct {v1, p1}, Lcom/qwapi/adclient/android/view/EmptyView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/qwapi/adclient/android/view/QWAdView;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/qwapi/adclient/android/view/EventDispatcher;

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, p2, v3}, Lcom/qwapi/adclient/android/view/EventDispatcher;-><init>(Landroid/app/Activity;Lcom/qwapi/adclient/android/view/AdEventsListener;Z)V

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->reset()V

    iput-boolean p3, p0, Lcom/qwapi/adclient/android/view/QWAdView;->startDisplayingAds:Z

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAdRequester()Z

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAdFetcher()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAgeAdRefresher()Z

    :cond_1
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1, p2}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V

    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->dispatchWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->suspendAutoRefresh:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public displayNextAd()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->startDisplayingAds:Z

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAdRequester()Z

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestThread:Lcom/qwapi/adclient/android/service/AdRequestThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AdRequestThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestThread:Lcom/qwapi/adclient/android/service/AdRequestThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AdRequestThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public getAdEventsListener()Lcom/qwapi/adclient/android/view/AdEventsListener;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/EventDispatcher;->getEventListener()Lcom/qwapi/adclient/android/view/AdEventsListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdInterval()I
    .locals 1

    iget v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adInterval:I

    return v0
.end method

.method public getAge()Lcom/qwapi/adclient/android/requestparams/Age;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getAge()Lcom/qwapi/adclient/android/requestparams/Age;

    move-result-object v0

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()Landroid/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getBackgroundColor()Landroid/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getBirthDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getBirthDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCachedBatchAds()Ljava/util/List;
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

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    instance-of v0, v0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    check-cast p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->getAllAds()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultAdImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->defaultAdImage:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMode()Lcom/qwapi/adclient/android/requestparams/DisplayMode;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    return-object v0
.end method

.method public getDmaCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getDmaCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEducation()Lcom/qwapi/adclient/android/requestparams/Education;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getEducation()Lcom/qwapi/adclient/android/requestparams/Education;

    move-result-object v0

    return-object v0
.end method

.method public getEthnicity()Lcom/qwapi/adclient/android/requestparams/Ethnicity;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getEthnicity()Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    move-result-object v0

    return-object v0
.end method

.method public getEventListenerClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventListenerClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/qwapi/adclient/android/requestparams/Gender;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getGender()Lcom/qwapi/adclient/android/requestparams/Gender;

    move-result-object v0

    return-object v0
.end method

.method public getIncome()Lcom/qwapi/adclient/android/requestparams/Income;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getIncome()Lcom/qwapi/adclient/android/requestparams/Income;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getMediaTypes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNextView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getNextChildIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPlacement()Lcom/qwapi/adclient/android/requestparams/Placement;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getPlacement()Lcom/qwapi/adclient/android/requestparams/Placement;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getPubId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMode()Lcom/qwapi/adclient/android/requestparams/RequestMode;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->requestMode:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getSection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getSiteId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestMode()Z
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getTestMode()Z

    move-result v0

    return v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getTextColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->getZipCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStartDisplayingAds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->startDisplayingAds:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->suspendAutoRefresh:Z

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAdFetcher()Z

    :cond_0
    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAdRequester()Z

    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->stopThread()V

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->stopThread()V

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    :cond_1
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestThread:Lcom/qwapi/adclient/android/service/AdRequestThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestThread:Lcom/qwapi/adclient/android/service/AdRequestThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AdRequestThread;->stopThread()V

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestThread:Lcom/qwapi/adclient/android/service/AdRequestThread;

    :cond_2
    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->clearViews()V

    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    return-void
.end method

.method public prepareAd()V
    .locals 3

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qwapi/adclient/android/AdApiRegistration;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qwapi/adclient/android/AdApiRegistration;->registerApplication(Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->useBatch:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->setBatchSize(I)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/view/EventDispatcher;->onAdRequest(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-interface {v0, v1}, Lcom/qwapi/adclient/android/service/AdRequestService;->getAd(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)Lcom/qwapi/adclient/android/data/AdResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adResponse:Lcom/qwapi/adclient/android/data/AdResponse;

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adResponse:Lcom/qwapi/adclient/android/data/AdResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adResponse:Lcom/qwapi/adclient/android/data/AdResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/AdResponse;->getAd(I)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v0

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->_ad:Lcom/qwapi/adclient/android/data/Ad;

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->_ad:Lcom/qwapi/adclient/android/data/Ad;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->_ad:Lcom/qwapi/adclient/android/data/Ad;

    invoke-virtual {v0, v1, v2}, Lcom/qwapi/adclient/android/view/EventDispatcher;->onAdRequestSuccessful(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Ad;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_2
    new-instance v0, Lcom/qwapi/adclient/android/service/SingleAdRequestService;

    invoke-direct {v0}, Lcom/qwapi/adclient/android/service/SingleAdRequestService;-><init>()V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adResponse:Lcom/qwapi/adclient/android/data/AdResponse;

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/AdResponse;->getStatus()Lcom/qwapi/adclient/android/data/Status;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qwapi/adclient/android/view/EventDispatcher;->onAdRequestFailed(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Status;)V

    goto :goto_1
.end method

.method prepareAdFetcher()Z
    .locals 3

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->autoRotate:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/qwapi/adclient/android/service/AdRefresherThread;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    iget v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adInterval:I

    invoke-direct {v0, p0, v1, v2}, Lcom/qwapi/adclient/android/service/AdRefresherThread;-><init>(Lcom/qwapi/adclient/android/view/QWAdView;Lcom/qwapi/adclient/android/requestparams/DisplayMode;I)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->start()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepareAdRequester()Z
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestThread:Lcom/qwapi/adclient/android/service/AdRequestThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qwapi/adclient/android/service/AdRequestThread;

    invoke-direct {v0, p0}, Lcom/qwapi/adclient/android/service/AdRequestThread;-><init>(Lcom/qwapi/adclient/android/view/QWAdView;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestThread:Lcom/qwapi/adclient/android/service/AdRequestThread;

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestThread:Lcom/qwapi/adclient/android/service/AdRequestThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AdRequestThread;->start()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method prepareAgeAdRefresher()Z
    .locals 3

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->aged:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    iget v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adInterval:I

    invoke-direct {v0, p0, v1, v2}, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;-><init>(Lcom/qwapi/adclient/android/view/QWAdView;Lcom/qwapi/adclient/android/requestparams/DisplayMode;I)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->start()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->removeMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;)V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->mFirstTime:Z

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/qwapi/adclient/android/view/QWAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetAutoRefresh()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->stopThread()V

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->stopThread()V

    iput-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    :cond_1
    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAdFetcher()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAgeAdRefresher()Z

    :cond_2
    return-void
.end method

.method public resumeRefresherThreads()V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->resumeThread()V

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->resumeThread()V

    :cond_1
    return-void
.end method

.method public setAdEventsListener(Lcom/qwapi/adclient/android/view/AdEventsListener;Z)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/view/EventDispatcher;->setEventListener(Lcom/qwapi/adclient/android/view/AdEventsListener;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    invoke-virtual {v0, p2}, Lcom/qwapi/adclient/android/view/EventDispatcher;->setRunOnUIThread(Z)V

    return-void
.end method

.method public setAdInterval(I)V
    .locals 1

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adInterval:I

    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public setAdResponse(Lcom/qwapi/adclient/android/data/AdResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adResponse:Lcom/qwapi/adclient/android/data/AdResponse;

    return-void
.end method

.method public setAdView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->defaultAdView:Lcom/qwapi/adclient/android/view/AdImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->defaultAdView:Lcom/qwapi/adclient/android/view/AdImageView;

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    iget v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->mWhichChild:I

    invoke-virtual {p0, v1}, Lcom/qwapi/adclient/android/view/QWAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v4, v2, Lcom/qwapi/adclient/android/view/AdWebView;

    if-eqz v4, :cond_9

    instance-of v4, v1, Lcom/qwapi/adclient/android/view/AdWebView;

    if-eqz v4, :cond_9

    move v3, v5

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->clearViews()V

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_b

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getNextChildIndex()I

    move-result v4

    invoke-virtual {p0, v2, v4, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getNextChildIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->setDisplayedChild(I)V

    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getNextChildIndex()I

    move-result v3

    iput v3, p0, Lcom/qwapi/adclient/android/view/QWAdView;->mWhichChild:I

    instance-of v3, v2, Lcom/qwapi/adclient/android/view/AdInterstitialView;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    :cond_2
    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/qwapi/adclient/android/view/AdInterstitialView;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/qwapi/adclient/android/view/AdInterstitialView;

    move-object p0, v0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->cleanup()V

    :cond_3
    return-void

    :cond_4
    new-instance v1, Lcom/qwapi/adclient/android/view/EmptyView;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qwapi/adclient/android/view/EmptyView;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lcom/qwapi/adclient/android/view/AdInterstitialView;

    if-eqz v1, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/qwapi/adclient/android/view/AdInterstitialView;

    move-object v1, v0

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->interstitialSkipListener:Lcom/qwapi/adclient/android/view/SkipListener;

    invoke-virtual {v1, v2}, Lcom/qwapi/adclient/android/view/AdInterstitialView;->setSkipListener(Lcom/qwapi/adclient/android/view/SkipListener;)V

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->_ad:Lcom/qwapi/adclient/android/data/Ad;

    invoke-virtual {v1, v2}, Lcom/qwapi/adclient/android/view/EventDispatcher;->onDisplayAd(Lcom/qwapi/adclient/android/data/Ad;)V

    move-object v2, p1

    goto :goto_0

    :cond_6
    instance-of v1, p1, Lcom/qwapi/adclient/android/view/AdWebView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->_ad:Lcom/qwapi/adclient/android/data/Ad;

    invoke-virtual {v1, v2}, Lcom/qwapi/adclient/android/view/EventDispatcher;->onDisplayAd(Lcom/qwapi/adclient/android/data/Ad;)V

    move-object v2, p1

    goto :goto_0

    :cond_7
    instance-of v1, p1, Lcom/qwapi/adclient/android/view/AdExpandableView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventDispatcher:Lcom/qwapi/adclient/android/view/EventDispatcher;

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->_ad:Lcom/qwapi/adclient/android/data/Ad;

    invoke-virtual {v1, v2}, Lcom/qwapi/adclient/android/view/EventDispatcher;->onDisplayAd(Lcom/qwapi/adclient/android/data/Ad;)V

    :cond_8
    move-object v2, p1

    goto/16 :goto_0

    :cond_9
    instance-of v4, v2, Lcom/qwapi/adclient/android/view/AdInterstitialView;

    if-eqz v4, :cond_a

    instance-of v4, v1, Lcom/qwapi/adclient/android/view/AdInterstitialView;

    if-eqz v4, :cond_a

    move v3, v5

    goto/16 :goto_1

    :cond_a
    instance-of v4, v2, Lcom/qwapi/adclient/android/view/EmptyView;

    if-eqz v4, :cond_0

    instance-of v4, v1, Lcom/qwapi/adclient/android/view/EmptyView;

    if-eqz v4, :cond_0

    move v3, v5

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getNextChildIndex()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/qwapi/adclient/android/view/QWAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method public setAge(Lcom/qwapi/adclient/android/requestparams/Age;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setAge(Lcom/qwapi/adclient/android/requestparams/Age;)V

    return-void
.end method

.method public setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V
    .locals 5

    const v4, 0x10a0003

    const v3, 0x10a0002

    :try_start_0
    sget-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->fade:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    if-ne p2, v0, :cond_1

    const/high16 v0, 0x10a0000

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setInAnimation(Landroid/content/Context;I)V

    const v0, 0x10a0001

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setOutAnimation(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->slide:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    if-ne p2, v0, :cond_2

    const v0, 0x10a0002

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setInAnimation(Landroid/content/Context;I)V

    const v0, 0x10a0003

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setOutAnimation(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "QuattroWirelessSDK/2.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set the requested Animation Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->setInAnimation(Landroid/content/Context;I)V

    invoke-virtual {p0, p1, v4}, Lcom/qwapi/adclient/android/view/QWAdView;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->hyperspace:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    if-ne p2, v0, :cond_3

    const/high16 v0, 0x7f040000

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setInAnimation(Landroid/content/Context;I)V

    const v0, 0x7f040001

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushUp:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    if-ne p2, v0, :cond_4

    const v0, 0x7f040004

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setInAnimation(Landroid/content/Context;I)V

    const v0, 0x7f040005

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushLeft:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    if-ne p2, v0, :cond_0

    const v0, 0x7f040002

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setInAnimation(Landroid/content/Context;I)V

    const v0, 0x7f040003

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/view/QWAdView;->setOutAnimation(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setAreaCode(Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(Landroid/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setBackgroundColor(Landroid/graphics/Color;)V

    return-void
.end method

.method public setBirthDate(Ljava/util/Date;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setBirthDate(Ljava/util/Date;)V

    return-void
.end method

.method public setDefaultAd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->defaultAdView:Lcom/qwapi/adclient/android/view/AdImageView;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/qwapi/adclient/android/view/AdImageView;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/qwapi/adclient/android/view/AdImageView;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->defaultAdView:Lcom/qwapi/adclient/android/view/AdImageView;

    :cond_0
    return-void
.end method

.method public setDefaultAdImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->defaultAdImage:Ljava/lang/String;

    return-void
.end method

.method public setDisplayMode(Lcom/qwapi/adclient/android/requestparams/DisplayMode;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    return-void
.end method

.method public setDmaCode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setDmaCode(Ljava/lang/String;)V

    return-void
.end method

.method public setEducation(Lcom/qwapi/adclient/android/requestparams/Education;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setEducation(Lcom/qwapi/adclient/android/requestparams/Education;)V

    return-void
.end method

.method public setEthnicity(Lcom/qwapi/adclient/android/requestparams/Ethnicity;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setEthnicity(Lcom/qwapi/adclient/android/requestparams/Ethnicity;)V

    return-void
.end method

.method public setEventListenerClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->eventListenerClassName:Ljava/lang/String;

    return-void
.end method

.method public setGender(Lcom/qwapi/adclient/android/requestparams/Gender;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setGender(Lcom/qwapi/adclient/android/requestparams/Gender;)V

    return-void
.end method

.method public setIncome(Lcom/qwapi/adclient/android/requestparams/Income;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setIncome(Lcom/qwapi/adclient/android/requestparams/Income;)V

    return-void
.end method

.method public setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V

    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/qwapi/adclient/android/AdApiConfig;->setPublisherid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setPubId(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestMode(Lcom/qwapi/adclient/android/requestparams/RequestMode;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string v0, "QuattroWirelessSDK/2.1"

    const-string v1, "requestMode not provided using single requestMode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;->single:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->requestMode:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    iput-boolean v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->useBatch:Z

    :goto_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    instance-of v0, v0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    check-cast v0, Lcom/qwapi/adclient/android/service/BatchAdRequestService;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->closeDatabase()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adService:Lcom/qwapi/adclient/android/service/AdRequestService;

    return-void

    :cond_1
    sget-object v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;->batch:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->useBatch:Z

    :goto_1
    iput-object p1, p0, Lcom/qwapi/adclient/android/view/QWAdView;->requestMode:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/qwapi/adclient/android/view/QWAdView;->useBatch:Z

    goto :goto_1
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setSection(Ljava/lang/String;)V

    return-void
.end method

.method public setSiteId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/qwapi/adclient/android/AdApiConfig;->setDefaultSiteId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setSiteId(Ljava/lang/String;)V

    return-void
.end method

.method public setTestMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setTestMode(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setTextColor(I)V

    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRequestParams:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    invoke-virtual {v0, p1}, Lcom/qwapi/adclient/android/requestparams/AdRequestParams;->setZipCode(Ljava/lang/String;)V

    return-void
.end method

.method public showNextAd()V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/qwapi/adclient/android/view/QWAdView$1;

    invoke-direct {v1, p0}, Lcom/qwapi/adclient/android/view/QWAdView$1;-><init>(Lcom/qwapi/adclient/android/view/QWAdView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public suspendRefresherThreads()V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->ageAdRefresher:Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->suspendThread()V

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView;->adRefresher:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->suspendThread()V

    :cond_1
    return-void
.end method

.method public testParent()V
    .locals 2

    const-string v0, "QWAdview"

    const-string v1, "testParent successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
