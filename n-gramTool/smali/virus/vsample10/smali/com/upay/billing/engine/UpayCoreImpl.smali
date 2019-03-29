.class public Lcom/upay/billing/engine/UpayCoreImpl;
.super Lcom/upay/billing/UpayCore;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field private static final CPU_ARCHITECTURE_TYPE:Ljava/lang/String; = "ro.product.cpu.abi"

.field private static Cmd_Cd:I = 0x0

.field private static Cmd_No_Assets_Data:I = 0x0

.field private static Cmd_No_So:I = 0x0

.field private static Cmd_Share_Cd:I = 0x0

.field private static Cmds_No_Combin_Goods:I = 0x0

.field private static Cmds_No_Matching_Goods:I = 0x0

.field private static final DATA_COLLECTION_TYPE:Ljava/lang/String; = "data_collection"

.field private static final DOMAINS:[Ljava/lang/String;

.field private static Date_Limit:I = 0x0

.field public static final EVENT_CPA:Ljava/lang/String; = "brush_cpa"

.field public static final EVENT_EXPAND:Ljava/lang/String; = "ad_expand"

.field public static final EVENT_PUSH_INSTALLED:Ljava/lang/String; = "push_installed"

.field private static Excludes_Engine:I = 0x0

.field private static Fast_Pay:I = 0x0

.field private static In_Quota:I = 0x0

.field private static In_Time_Limit:I = 0x0

.field private static Inconformity_ThirdParty_Engine_Condition:I = 0x0

.field private static Init_Fail:I = 0x0

.field private static Month_Limit:I = 0x0

.field private static No_Cmds:I = 0x0

.field private static No_Sim:I = 0x0

.field private static final PUSH_BASE_URL:Ljava/lang/String; = "http://down.upay360.cn/stat?"

.field private static final SAVE_NAME:Ljava/lang/String; = "com.upay.billing.saveddata.Main"

.field private static final TAG:Ljava/lang/String; = "UpayCoreImpl"

.field private static final UPAY_CALLBACK_ACTION:Ljava/lang/String; = "com.upay.billing.UpayCallback"

.field private static final VERIFY_URL:Ljava/lang/String; = "http://&domain/function/ping.jsp"

.field private static businessid:Ljava/lang/String; = null

.field public static cmdGroupKey:Ljava/util/HashMap; = null

.field public static cmdType:Ljava/util/HashMap; = null

.field private static cpaUrl:Ljava/lang/String; = null

.field private static final gzip:Ljava/lang/String; = "?gzip=1"

.field private static impl_vcode:Ljava/lang/String;

.field private static maxSessionId:I

.field private static final outClass:Ljava/util/regex/Pattern;

.field private static paymentHistory:Ljava/util/HashMap;

.field private static final rand:Ljava/util/Random;

.field private static reverseSorter:Ljava/util/Comparator;

.field private static uniqueFilter:Ljava/util/Comparator;


# instance fields
.field private actions:Ljava/util/HashMap;

.field private activatedHandlers:Ljava/util/TreeMap;

.field private appSecret:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private areaKey:Ljava/lang/String;

.field private buildDate:J

.field private channelKey:Ljava/lang/String;

.field private composes:Ljava/util/HashMap;

.field private container:Landroid/widget/RelativeLayout;

.field private cooldowns:Ljava/util/HashMap;

.field private count:I

.field private cpa_event_map:Ljava/util/LinkedHashMap;

.field private currentTrade:Lcom/upay/billing/bean/Trade;

.field private customs:Ljava/util/HashMap;

.field private deletePush:Ljava/util/List;

.field private engines:Ljava/util/HashMap;

.field private events:Ljava/util/HashMap;

.field private findCmdFail:Ljava/util/HashMap;

.field private h5GameTimer:Ljava/util/Timer;

.field private handler:Landroid/os/Handler;

.field private haveSms:Z

.field private img:Ljava/util/HashMap;

.field private initTimer:Ljava/util/Timer;

.field private installedReceiver:Landroid/content/BroadcastReceiver;

.field private lastReceivedSms:Ljava/lang/String;

.field private lastTradeTimer:Ljava/util/Timer;

.field private layout:Ljava/lang/String;

.field private plans:Ljava/util/HashMap;

.field private pollingTrades:Ljava/util/HashMap;

.field private properties:Lcom/upay/billing/utils/Json;

.field private push:Ljava/util/HashMap;

.field private pushTimer:Ljava/util/Timer;

.field private pushTimerTask:Ljava/util/TimerTask;

.field private sessions:Ljava/util/HashMap;

.field private shieldUser:Ljava/util/HashMap;

.field private smsObserver:Lcom/upay/billing/engine/SmsObserver;

.field private smsReceiver:Lcom/upay/billing/engine/SmsReceiver;

.field private smsSendFlag:Z

.field private timeLimitMap:Ljava/util/HashMap;

.field private timeOutTimer:Ljava/util/Timer;

.field private timer:Ljava/util/Timer;

.field private ucontext:Lcom/upay/billing/UpayContext;

.field private updataPackFlag:Z

.field private user:Lcom/upay/billing/utils/Json;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "api.upay360.cn"

    aput-object v2, v0, v1

    const-string v1, "upayapi.piiwan.com"

    aput-object v1, v0, v3

    const-string v1, "upayapi.upwan.cn"

    aput-object v1, v0, v4

    const-string v1, "115.28.225.12"

    aput-object v1, v0, v5

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->DOMAINS:[Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->rand:Ljava/util/Random;

    sput v3, Lcom/upay/billing/engine/UpayCoreImpl;->maxSessionId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->paymentHistory:Ljava/util/HashMap;

    const/16 v0, 0xa2

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Fast_Pay:I

    const/16 v0, 0xa3

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Date_Limit:I

    const/16 v0, 0xa4

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Month_Limit:I

    const/16 v0, 0xaa

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->No_Cmds:I

    const/16 v0, 0xab

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Cmds_No_Matching_Goods:I

    const/16 v0, 0xbe

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->No_Sim:I

    const/16 v0, 0x12c

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Init_Fail:I

    sput v3, Lcom/upay/billing/engine/UpayCoreImpl;->Cmd_Cd:I

    sput v4, Lcom/upay/billing/engine/UpayCoreImpl;->Cmd_Share_Cd:I

    sput v5, Lcom/upay/billing/engine/UpayCoreImpl;->In_Quota:I

    sput v6, Lcom/upay/billing/engine/UpayCoreImpl;->In_Time_Limit:I

    const/4 v0, 0x5

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Cmds_No_Combin_Goods:I

    const/4 v0, 0x6

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Excludes_Engine:I

    const/4 v0, 0x7

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Inconformity_ThirdParty_Engine_Condition:I

    const/16 v0, 0x8

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Cmd_No_So:I

    const/16 v0, 0x9

    sput v0, Lcom/upay/billing/engine/UpayCoreImpl;->Cmd_No_Assets_Data:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->cmdType:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->cmdGroupKey:Ljava/util/HashMap;

    const-string v0, "2015121101"

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->businessid:Ljava/lang/String;

    const-string v0, "http://211.103.34.111:8080/mild/mg/packet"

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->cpaUrl:Ljava/lang/String;

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$17;

    invoke-direct {v0}, Lcom/upay/billing/engine/UpayCoreImpl$17;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->reverseSorter:Ljava/util/Comparator;

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$18;

    invoke-direct {v0}, Lcom/upay/billing/engine/UpayCoreImpl$18;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->uniqueFilter:Ljava/util/Comparator;

    const-string v0, "^cn\\.cmqame\\.sdk\\..+$|^com\\.by\\.ac\\.loader\\..+$|^com\\.util\\..+$|^com\\.upay\\.billing\\.engine\\..+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->outClass:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/upay/billing/UpayCore;-><init>()V

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->sessions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->actions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/upay/billing/engine/UpayCoreImpl$1;

    invoke-direct {v1, p0}, Lcom/upay/billing/engine/UpayCoreImpl$1;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->activatedHandlers:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pollingTrades:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cooldowns:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->currentTrade:Lcom/upay/billing/bean/Trade;

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->user:Lcom/upay/billing/utils/Json;

    const-string v0, "32000"

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->areaKey:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->events:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->customs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->push:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->img:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->handler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->smsReceiver:Lcom/upay/billing/engine/SmsReceiver;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->smsObserver:Lcom/upay/billing/engine/SmsObserver;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->lastReceivedSms:Ljava/lang/String;

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->properties:Lcom/upay/billing/utils/Json;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->composes:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pushTimerTask:Ljava/util/TimerTask;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pushTimer:Ljava/util/Timer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->shieldUser:Ljava/util/HashMap;

    const/16 v0, 0xa

    iput v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->count:I

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->timer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->initTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->lastTradeTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->h5GameTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->timeOutTimer:Ljava/util/Timer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->deletePush:Ljava/util/List;

    const-string v0, "{\"window-no-title\":true,\"window-full-screen\":true,\"content-view\":{\"type\":\"relative-layout\",\"width\":\"fill\",\"height\":\"fill\"}}"

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->layout:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cooldowns:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/upay/billing/engine/UpayCoreImpl;I)I
    .locals 0

    iput p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->count:I

    return p1
.end method

.method static synthetic access$1110(Lcom/upay/billing/engine/UpayCoreImpl;)I
    .locals 2

    iget v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->count:I

    return v0
.end method

.method static synthetic access$1200(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->channelKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/upay/billing/engine/UpayCoreImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->buildDate:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->initTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->initTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->events:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->lastTradeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/upay/billing/engine/UpayCoreImpl;)Lcom/upay/billing/UpayContext;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->h5GameTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->h5GameTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->timeOutTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->timeOutTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upay/billing/engine/UpayCoreImpl;)Lcom/upay/billing/utils/Json;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->user:Lcom/upay/billing/utils/Json;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->user:Lcom/upay/billing/utils/Json;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/upay/billing/engine/UpayCoreImpl;)Lcom/upay/billing/bean/Trade;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->currentTrade:Lcom/upay/billing/bean/Trade;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->customs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->layout:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->updataPackFlag:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl;->updateAction(Ljava/lang/String;Lcom/upay/billing/utils/Json;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->areaKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->areaKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pollingTrades:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/upay/billing/engine/UpayCoreImpl;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl;->updateEngines(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300()I
    .locals 1

    sget v0, Lcom/upay/billing/engine/UpayCoreImpl;->Init_Fail:I

    return v0
.end method

.method static synthetic access$5402(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->properties:Lcom/upay/billing/utils/Json;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/TreeMap;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->activatedHandlers:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/upay/billing/bean/Cmd;)I
    .locals 1

    invoke-static {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getWeight(Lcom/upay/billing/bean/Cmd;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->img:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/upay/billing/engine/UpayCoreImpl;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->webView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->container:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/upay/billing/engine/UpayCoreImpl;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->container:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pushTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$7000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->DOMAINS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pushTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/upay/billing/engine/UpayCoreImpl;->verifyDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/upay/billing/engine/UpayCoreImpl;->loadPlan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$7300(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPushMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->deletePush:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7700()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->outClass:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$7800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->cpaUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cpa_event_map:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pushTimerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$8000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->businessid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pushTimerTask:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/upay/billing/engine/UpayCoreImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->smsSendFlag:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/upay/billing/engine/UpayCoreImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->push:Ljava/util/HashMap;

    return-object v0
.end method

.method public static appInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private compareDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private findCmds(Lcom/upay/billing/bean/Plan;ILjava/util/HashSet;[[I)Ljava/util/ArrayList;
    .locals 23

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/upay/billing/bean/Plan;->cmds:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/upay/billing/bean/Plan;->excludeCmdKeys:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v3, v2, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    invoke-virtual {v2}, Lcom/upay/billing/UpayContext;->hasSms()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    invoke-virtual {v2}, Lcom/upay/billing/UpayContext;->hasNetwork()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    invoke-virtual {v2}, Lcom/upay/billing/UpayContext;->is3G()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    invoke-virtual {v2}, Lcom/upay/billing/UpayContext;->hasMobileNo()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v8, "usertimelimit"

    invoke-static {v2, v8}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    :try_start_0
    invoke-static {v2}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->timeLimitMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v14, Ljava/util/TreeSet;

    new-instance v2, Lcom/upay/billing/engine/UpayCoreImpl$WeightSorter;

    move/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/upay/billing/engine/UpayCoreImpl$WeightSorter;-><init>(I)V

    invoke-direct {v14, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object/from16 v0, p4

    array-length v15, v0

    const/4 v2, 0x0

    move v11, v2

    :goto_1
    if-ge v11, v15, :cond_14

    aget-object v16, p4, v11

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v18, v0

    :cond_1
    :goto_2
    move/from16 v0, v17

    new-array v0, v0, [Lcom/upay/billing/bean/Cmd;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    move v8, v2

    :goto_3
    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    aget v2, v16, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-nez v8, :cond_3

    const/4 v9, 0x0

    aget v9, v18, v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_3

    :cond_2
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_1

    :cond_3
    aget v9, v18, v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v9, v2, :cond_4

    add-int/lit8 v2, v8, -0x1

    aget v9, v18, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v18, v2

    const/4 v2, 0x0

    aput v2, v18, v8

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    move v8, v2

    :goto_4
    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    aget v2, v16, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aget v9, v18, v8

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upay/billing/bean/Cmd;

    aput-object v2, v19, v8

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v17, -0x1

    aget v8, v18, v2

    add-int/lit8 v8, v8, 0x1

    aput v8, v18, v2

    new-instance v20, Ljava/util/HashSet;

    const/4 v2, 0x6

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v9, 0x0

    const/4 v2, 0x0

    move v10, v2

    move-object v2, v9

    :goto_5
    move/from16 v0, v17

    if-ge v10, v0, :cond_13

    aget-object v21, v19, v10

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v2, :cond_9

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    move-object v9, v2

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upay/billing/Engine;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->cdKey:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v2, :cond_1

    const/4 v8, 0x1

    move/from16 v0, v17

    if-gt v0, v8, :cond_7

    if-lez v10, :cond_8

    :cond_7
    invoke-virtual {v2}, Lcom/upay/billing/Engine;->isComposable()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/upay/billing/engine/UpayCoreImpl;->cooldowns:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/upay/billing/bean/Cooldown;

    invoke-virtual {v8}, Lcom/upay/billing/bean/Cooldown;->cooling()Z

    move-result v8

    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    sget v9, Lcom/upay/billing/engine/UpayCoreImpl;->Cmd_Cd:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "upay"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "dt_sms"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v9, "upay"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v9, "dt_sms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    sget v9, Lcom/upay/billing/engine/UpayCoreImpl;->Cmds_No_Combin_Goods:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_c
    if-eqz v22, :cond_d

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    sget v9, Lcom/upay/billing/engine/UpayCoreImpl;->Cmd_Share_Cd:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, v21

    iget v8, v0, Lcom/upay/billing/bean/Cmd;->price:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->inQuota(Lcom/upay/billing/bean/Cmd;I)Z

    move-result v8

    if-nez v8, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    sget v9, Lcom/upay/billing/engine/UpayCoreImpl;->In_Quota:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->inTimeLimit(Lcom/upay/billing/bean/Cmd;)Z

    move-result v8

    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    sget v9, Lcom/upay/billing/engine/UpayCoreImpl;->In_Time_Limit:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {v2 .. v7}, Lcom/upay/billing/Engine;->isAvailable(Lcom/upay/billing/bean/Op;ZZZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cmd_so_verify"

    const-string v8, "cmd_so"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->cmdSoAndAssetsVerify(Lcom/upay/billing/bean/Cmd;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    sget v9, Lcom/upay/billing/engine/UpayCoreImpl;->Cmd_No_So:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_10
    const-string v2, "cmd_assets_data_verify"

    const-string v8, "cmd_assets_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->cmdSoAndAssetsVerify(Lcom/upay/billing/bean/Cmd;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    sget v9, Lcom/upay/billing/engine/UpayCoreImpl;->Cmd_No_Assets_Data:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_11
    if-eqz v22, :cond_12

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-object v2, v9

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/16 v8, 0x64

    if-lt v2, v8, :cond_1

    :cond_14
    invoke-virtual {v14}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-lez v2, :cond_15

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    :goto_7
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_7

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :cond_16
    move-object v9, v2

    goto/16 :goto_6
.end method

.method private findEngines(ILjava/util/regex/Pattern;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 12

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v1, v0, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    invoke-virtual {v0}, Lcom/upay/billing/UpayContext;->hasSms()Z

    move-result v2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    invoke-virtual {v0}, Lcom/upay/billing/UpayContext;->hasNetwork()Z

    move-result v3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    invoke-virtual {v0}, Lcom/upay/billing/UpayContext;->is3G()Z

    move-result v4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    invoke-virtual {v0}, Lcom/upay/billing/UpayContext;->hasMobileNo()Z

    move-result v5

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/Engine;

    invoke-virtual {v0}, Lcom/upay/billing/Engine;->getPriceType()Lcom/upay/billing/bean/PriceType;

    move-result-object v9

    sget-object v10, Lcom/upay/billing/bean/PriceType;->ANY:Lcom/upay/billing/bean/PriceType;

    if-ne v9, v10, :cond_0

    iget-object v9, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    sget v10, Lcom/upay/billing/engine/UpayCoreImpl;->Excludes_Engine:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual/range {v0 .. v5}, Lcom/upay/billing/Engine;->isAvailable(Lcom/upay/billing/bean/Op;ZZZZ)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    sget v10, Lcom/upay/billing/engine/UpayCoreImpl;->Inconformity_ThirdParty_Engine_Condition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v9, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    const-string v10, "cmd_so_verify"

    const-string v11, "cmd_so"

    invoke-virtual {p0, v9, v10, v11}, Lcom/upay/billing/engine/UpayCoreImpl;->engineSoVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    sget v10, Lcom/upay/billing/engine/UpayCoreImpl;->Cmd_No_So:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v9, "wxapi"

    iget-object v10, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "wxapi"

    iget-object v10, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "wxapi_now"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_4
    const-string v9, "wxapi_now"

    iget-object v10, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "wxapi"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "wxapi"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v9, v0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object v6
.end method

.method public static gZip([B)[B
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getComposeSchemes(Lcom/upay/billing/bean/Plan;)Ljava/util/HashMap;
    .locals 13

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->composes:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/upay/billing/bean/Plan;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_12

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lcom/upay/billing/bean/Plan;->cmds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v1, v0, Lcom/upay/billing/bean/Cmd;->priceType:Lcom/upay/billing/bean/PriceType;

    sget-object v5, Lcom/upay/billing/bean/PriceType;->FIXED:Lcom/upay/billing/bean/PriceType;

    if-ne v1, v5, :cond_1

    iget-object v1, p1, Lcom/upay/billing/bean/Plan;->excludeCmdKeys:Ljava/util/regex/Pattern;

    iget-object v5, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-nez v1, :cond_2

    iget-object v5, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, v0, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->reverseSorter:Ljava/util/Comparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v7, v8

    invoke-static {v4, v3, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->mapSetAdd(Ljava/util/HashMap;I[I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v2, "cp_key"

    invoke-static {v0, v2}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "combine_goods_cpkey"

    invoke-direct {p0, v0, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/Engine;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/upay/billing/Engine;->isComposable()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_2
    if-ge v3, v8, :cond_8

    move v2, v3

    :goto_3
    if-ge v2, v8, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v0, 0x1

    new-array v10, v0, [I

    const/4 v11, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v10, v11

    invoke-static {v9, v10}, Lcom/upay/billing/engine/UpayCoreImpl;->merge(I[I)[I

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v10, v9

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_6

    aget v11, v9, v0

    add-int/2addr v1, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v4, v1, v9}, Lcom/upay/billing/engine/UpayCoreImpl;->mapSetAdd(Ljava/util/HashMap;I[I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-lt v8, v1, :cond_a

    const/4 v1, 0x0

    invoke-static {v8, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->merge(I[I)[I

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v11, v10

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v11, :cond_b

    aget v12, v10, v0

    add-int/2addr v1, v12

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    invoke-static {v4, v1, v10}, Lcom/upay/billing/engine/UpayCoreImpl;->mapSetAdd(Ljava/util/HashMap;I[I)V

    goto :goto_5

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-lt v7, v1, :cond_e

    const/4 v1, 0x0

    invoke-static {v7, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->merge(I[I)[I

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v10, v9

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v10, :cond_f

    aget v11, v9, v0

    add-int/2addr v1, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    invoke-static {v4, v1, v9}, Lcom/upay/billing/engine/UpayCoreImpl;->mapSetAdd(Ljava/util/HashMap;I[I)V

    goto :goto_7

    :cond_10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    new-array v3, v0, [[I

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeSet;

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->composes:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/upay/billing/bean/Plan;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_12
    return-object v0
.end method

.method public static getFormatedDateTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    add-long/2addr v2, p0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileDataState(Landroid/content/Context;[Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    :cond_0
    const-string v4, "getMobileDataEnabled"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private getPushMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "common"

    const-string v1, "push_polling_time"

    const-string v2, "1200000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$19;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/UpayCoreImpl$19;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/UpayCoreImpl$19;->start()V

    return-void
.end method

.method private static final getSubTradeBySn(Lcom/upay/billing/bean/Trade;Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v2, "sn"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_0
.end method

.method private final getTradeId()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->user:Lcom/upay/billing/utils/Json;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v2, Lcom/upay/billing/engine/UpayCoreImpl;->rand:Ljava/util/Random;

    const/16 v3, 0x2328

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Time-Diff"

    invoke-static {v5, v6}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "yyMMddHH"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6, v7}, Lcom/upay/billing/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x2710

    rem-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->zeroPad(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getWeight(Lcom/upay/billing/bean/Cmd;)I
    .locals 2

    :try_start_0
    const-class v0, Lcom/upay/billing/bean/Cmd;

    const-string v1, "weight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x64

    goto :goto_0
.end method

.method private inQuota(Lcom/upay/billing/bean/Cmd;I)Z
    .locals 8

    const v6, 0x7fffffff

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->cmdGroupKey:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/upay/billing/engine/UpayCoreImpl;->paymentHistory:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget v1, p1, Lcom/upay/billing/bean/Cmd;->dayQuota:I

    if-ge v1, v6, :cond_2

    const-string v1, "yyMMdd"

    invoke-static {v1, v2}, Lcom/upay/billing/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    iget v5, p1, Lcom/upay/billing/bean/Cmd;->dayQuota:I

    if-gt v1, v5, :cond_0

    :cond_2
    iget v1, p1, Lcom/upay/billing/bean/Cmd;->monthQuota:I

    if-ge v1, v6, :cond_4

    const-string v1, "yyMM"

    invoke-static {v1, v2}, Lcom/upay/billing/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_3
    add-int v0, v2, p2

    iget v1, p1, Lcom/upay/billing/bean/Cmd;->monthQuota:I

    if-gt v0, v1, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private inTimeLimit(Lcom/upay/billing/bean/Cmd;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/upay/billing/bean/Cmd;->type:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "timelimit"

    invoke-static {v0, v3}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v3, "cmd_day_timelimit_verify"

    invoke-direct {p0, v0, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->timeLimitMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->timeLimitMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    iget-object v4, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cmd_time_limit"

    const-string v5, "1"

    invoke-virtual {p0, v4, v3, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method private initEngines()V
    .locals 5

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "com.upay.billing.engine.PackageData"

    invoke-virtual {p0, v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getEnginesJson"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->invokeGetter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    :try_start_0
    const-string v1, "wxapi_now"

    const-string v3, "key"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "wxapi_now"

    const-string v3, "key"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/data/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/lib/libplugin_phone.so"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "class"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/Engine;

    const-string v3, "key"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "args"

    invoke-virtual {v0, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v3, v0}, Lcom/upay/billing/Engine;->init(Lcom/upay/billing/UpayCore;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private loadPlan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Plan;

    const-string v1, "common"

    const-string v2, "request_planlist_time"

    const-string v3, "300000"

    invoke-virtual {p0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/upay/billing/bean/Plan;->lastUpdate:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "cp_key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    invoke-virtual {v0, p1, p3}, Lcom/upay/billing/UpayContext;->getParamMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "vcode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->impl_vcode:Ljava/lang/String;

    const-string v0, "app_secret"

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "package_name"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_name"

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "longitude"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "longitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "latitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v1}, Lcom/upay/billing/utils/NativeUtil;->genHash(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_secret"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hash"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UpayCoreImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$15;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plan/list_e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?gzip=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/UpayCoreImpl$15;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Lcom/upay/billing/engine/UpayCoreImpl$15;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->updataPackFlag:Z

    const/16 v0, 0xc8

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->initCompleted(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static final mapSetAdd(Ljava/util/HashMap;I[I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/upay/billing/engine/UpayCoreImpl;->uniqueFilter:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final varargs merge(I[I)[I
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    aput p0, v1, v0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget v3, p1, v0

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private register()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v0

    iget-object v0, v0, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v1

    iget-object v1, v1, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "imeis"

    invoke-static {v2, v3}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "imeis"

    invoke-static {v2, v3}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "imeis"

    invoke-static {v2, v3}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v2, "imsis"

    invoke-static {v0, v2}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v2, "imsis"

    invoke-static {v0, v2}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v2, "imsis"

    invoke-static {v0, v2}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "sid1"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "sid1"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "key"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "key"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "randNum1"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "randNum1"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private restoreData()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "com.upay.billing.saveddata.Main"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "imsi"

    invoke-static {v2, v3}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "UpayCoreImpl"

    const-string v3, "sim--change"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "brush_cpa_flag"

    invoke-static {v2, v3, v5}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "plans"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "user"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "areaKey"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "cmdGroupKey"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_0
    sget-object v2, Lcom/upay/billing/engine/UpayCoreImpl;->cmdGroupKey:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/upay/billing/engine/UpayCoreImpl;->cmdGroupKey:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_1
    const-string v2, "{}"

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->user:Lcom/upay/billing/utils/Json;

    const-string v2, "32000"

    iput-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->areaKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "imsi"

    invoke-static {v2, v3, v0}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    :try_start_0
    const-string v0, "actions"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->actions:Ljava/util/HashMap;

    :cond_3
    const-string v0, "cooldowns"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cooldowns:Ljava/util/HashMap;

    :cond_4
    const-string v0, "paymentHistory"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->paymentHistory:Ljava/util/HashMap;

    :cond_5
    const-string v0, "events"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->events:Ljava/util/HashMap;

    :cond_6
    const-string v0, "customs"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->customs:Ljava/util/HashMap;

    :cond_7
    const-string v0, "push"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->push:Ljava/util/HashMap;

    :cond_8
    const-string v0, "shieldUser"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->shieldUser:Ljava/util/HashMap;

    :cond_9
    const-string v0, "img"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->img:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/upay/billing/UpayConstant;->UPAY_PROP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/upay/billing/UpayConstant;->UPAY_PROP_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->properties:Lcom/upay/billing/utils/Json;

    :cond_b
    :goto_2
    return-void

    :cond_c
    :try_start_1
    const-string v0, "plans"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    :cond_d
    const-string v0, "user"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->user:Lcom/upay/billing/utils/Json;

    :cond_e
    const-string v0, "cmdGroupKey"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->cmdGroupKey:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_f
    :goto_3
    const-string v0, "areaKey"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->areaKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "upay_properties.json"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->assetExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "upay_properties.json"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->properties:Lcom/upay/billing/utils/Json;

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "properties.json"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->assetExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "properties.json"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->properties:Lcom/upay/billing/utils/Json;

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private saveData()V
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "com.upay.billing.saveddata.Main"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "plans"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "actions"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->actions:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "cooldowns"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cooldowns:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "paymentHistory"

    sget-object v2, Lcom/upay/billing/engine/UpayCoreImpl;->paymentHistory:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "events"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->events:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "customs"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->customs:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "push"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->push:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "img"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->img:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "user"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->user:Lcom/upay/billing/utils/Json;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "shieldUser"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->shieldUser:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "cmdGroupKey"

    sget-object v2, Lcom/upay/billing/engine/UpayCoreImpl;->cmdGroupKey:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "areaKey"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->areaKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setMobileData(Landroid/content/Context;Z)V
    .locals 5

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-string v3, "setMobileDataEnabled"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateAction(Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->actions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Action;

    if-nez v0, :cond_0

    new-instance v0, Lcom/upay/billing/bean/Action;

    invoke-direct {v0, p1}, Lcom/upay/billing/bean/Action;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->actions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/upay/billing/bean/Action;->update(Lcom/upay/billing/utils/Json;)V

    return-void
.end method

.method private updateEngines(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$16;

    const-string v1, "http://cdn.upay360.cn/upay_properties.json"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl$16;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updatePaymentHistory(Lcom/upay/billing/bean/Trade;Ljava/lang/String;)V
    .locals 6

    const-string v0, "sn:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->getSubTradeBySn(Lcom/upay/billing/bean/Trade;Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    move-object v2, v0

    :goto_0
    const-string v0, "yyMMdd"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->cmdGroupKey:Ljava/util/HashMap;

    const-string v1, "cmd_key"

    invoke-virtual {v2, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/upay/billing/engine/UpayCoreImpl;->paymentHistory:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v0, v3, v4}, Lcom/upay/billing/utils/Util;->mapMapGet(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/upay/billing/engine/UpayCoreImpl;->paymentHistory:Ljava/util/HashMap;

    const-string v5, "price"

    invoke-virtual {v2, v5}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v0, v3, v1}, Lcom/upay/billing/utils/Util;->mapMapAdd(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/upay/billing/bean/Trade;->getSubTrade(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    move-object v2, v0

    goto :goto_0
.end method

.method private verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "common"

    const-string v2, ""

    invoke-virtual {p0, v1, p2, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private verifyDomain(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v3, v0, v3

    const-string v1, "http://&domain/function/ping.jsp"

    const-string v2, "&domain"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/upay/billing/engine/UpayCoreImpl$24;

    invoke-direct {v2, p0, v1, v0}, Lcom/upay/billing/engine/UpayCoreImpl$24;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;[Z)V

    invoke-virtual {v2}, Lcom/upay/billing/engine/UpayCoreImpl$24;->run()V

    aget-boolean v0, v0, v3

    return v0
.end method


# virtual methods
.method public activateHandlers(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V
    .locals 11

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/upay/billing/bean/Plan;

    iget-object v9, p4, Lcom/upay/billing/bean/Cmd;->actions:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v0, Lcom/upay/billing/MtContext;

    iget-boolean v5, v8, Lcom/upay/billing/bean/Plan;->deleteMt:Z

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/MtContext;-><init>(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;ZLjava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->activatedHandlers:Ljava/util/TreeMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->activatedHandlers:Ljava/util/TreeMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public batchVerifySmsPay(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    :try_start_0
    invoke-static {p1}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->verifySmsPay(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public brushCPA()V
    .locals 5

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "event_cpa_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cpa_event_map:Ljava/util/LinkedHashMap;

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v0, "startTime"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "imsi"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "imei"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "brand"

    invoke-static {}, Lcom/upay/billing/engine/DataCollection;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "model"

    invoke-static {}, Lcom/upay/billing/engine/DataCollection;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "ossdk"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "macAddr"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->mac:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "network"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/upay/billing/engine/UtilExt;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "networkStatus"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/upay/billing/engine/UtilExt;->getNetworkStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "operator"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v2}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v2, "isRooted"

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-boolean v0, v0, Lcom/upay/billing/UpayContext;->root:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "smsFirewall"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/upay/billing/engine/UtilExt;->getSmsFirewall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v3, v3, Lcom/upay/billing/UpayContext;->longitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v3, v3, Lcom/upay/billing/UpayContext;->latitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "manufacturer"

    invoke-static {}, Lcom/upay/billing/engine/DataCollection;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "screen"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->screen:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "densityDpi"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/upay/billing/engine/UtilExt;->getDensityDpi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "cpuabi"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/upay/billing/engine/UtilExt;->getCpuabi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "sdcid"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/upay/billing/engine/UtilExt;->getSDCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/upay/billing/engine/UpayCoreImpl$28;

    invoke-direct {v2, p0, v1}, Lcom/upay/billing/engine/UpayCoreImpl$28;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/utils/Json;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public cmdSoAndAssetsVerify(Lcom/upay/billing/bean/Cmd;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/upay/billing/engine/UpayCoreImpl;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, p3, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmd_so_verify"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/upay/billing/utils/Util;->assetExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public copySoToData()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_lib/upay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/upay/billing/UpayConstant;->PACK_UNZIP_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->deleteFile(Ljava/io/File;)V

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/upay/billing/utils/Util;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_3
    return-void
.end method

.method public createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const-string v0, "UpayCoreImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createInstance,class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/upay/billing/utils/NativeUtil;->getExtPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dex"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/app_lib/upay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$26;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/UpayCoreImpl$26;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "UpayCoreImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dex class loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    :try_start_1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "UpayCoreImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in-apk class loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public engineSoVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, p3, p1, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fastPay(J)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl;->shieldUser:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    const-string v1, "common"

    const-string v6, "fast_pay_time"

    const-string v7, "10000"

    invoke-virtual {p0, v1, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->shieldUser:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Lcom/upay/billing/utils/Util;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public fileIsExists(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAction(Ljava/lang/String;)Lcom/upay/billing/bean/Action;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->actions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Action;

    return-object v0
.end method

.method public getApp(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "app_package"

    const-string v3, ""

    invoke-virtual {p0, v0, p2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-static {p1, v4}, Lcom/upay/billing/engine/DataCollection;->isInstallApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "package_name"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "version_code"

    invoke-static {p1, v4}, Lcom/upay/billing/engine/DataCollection;->getAppVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getAreaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->areaKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCooldown(Ljava/lang/String;)Lcom/upay/billing/bean/Cooldown;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cooldowns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cooldown;

    return-object v0
.end method

.method public getCurrentTrade()Lcom/upay/billing/bean/Trade;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->currentTrade:Lcom/upay/billing/bean/Trade;

    return-object v0
.end method

.method public getGoods(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/bean/Goods;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/upay/billing/engine/UpayCoreImpl;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/upay/billing/bean/Plan;->goods:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/upay/billing/bean/Plan;->goods:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Goods;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImplVcode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/UpayCoreImpl;->impl_vcode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMap(Landroid/content/Context;)Ljava/util/List;
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/upay/billing/engine/TelephonyUtil;->listSimInfos(Landroid/content/Context;)[Lcom/upay/billing/engine/TelephonyUtil$SimInfo;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const-string v5, "{}"

    invoke-static {v5}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v5

    const-string v6, "imsi"

    iget-object v7, v4, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v6, "iccid"

    iget-object v4, v4, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->iccid:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPackUrlByCpu(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "ro.product.cpu.abi"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "armeabi-v7a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "_armv7a"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "arm64-v8a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "_armv8a"

    goto :goto_0

    :cond_1
    const-string v1, "x86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "_x86"

    goto :goto_0

    :cond_2
    const-string v1, "x86_64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "_x86_64"

    goto :goto_0

    :cond_3
    const-string v1, "mips"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "_mips"

    goto :goto_0

    :cond_4
    const-string v1, "mips64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_mips64"

    goto :goto_0

    :cond_5
    const-string v0, "_arm"

    goto :goto_0
.end method

.method public getPathDrawable(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method public getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Plan;

    return-object v0
.end method

.method public getProgressTextByEngine(Ljava/util/List;Lcom/upay/billing/bean/Trade;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const-string v2, ""

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cmd;

    iget-object v1, v0, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v4, "upay"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "dt_sms"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v0, "upay"

    iget-object v1, p2, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->length()I

    move-result v1

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_0
    const-string v3, "progress_text"

    const-string v4, "\u6b63\u5728\u4ee5\u77ed\u4fe1\u5f62\u5f0f\u652f\u4ed8\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {p0, v0, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "$mmpt"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$num"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v4, "wypj"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "he_danji"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "he_nc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    const-string v3, "wypj"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p2, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move-object v5, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v5

    goto :goto_0

    :cond_3
    const-string v3, "he_nc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move-object v5, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v5

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    move-object v5, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v5

    goto :goto_0

    :cond_5
    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    move-object v5, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v5

    goto/16 :goto_0

    :cond_6
    iget-object v0, p2, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move-object v5, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v5

    goto/16 :goto_0

    :cond_7
    const-string v4, "ck_mdo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v3, "ckmdo_4"

    iget-object v4, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "ckmdo_20"

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x2

    :goto_1
    move-object v5, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v5

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    const-string v4, "cmcc_mm_dj"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v0, v0, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->length()I

    move-result v2

    const-string v0, "progress_text_r"

    const-string v3, "\u672c\u5e94\u7528\u5c06\u4f1a\u53d1\u9001$num\u6761\u77ed\u4fe1\u6765\u5b8c\u6210\u652f\u4ed8\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {p0, v1, v0, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->register()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "progress_text_regist"

    const-string v2, "\u672c\u5e94\u7528\u4f1a\u6839\u636e\u4fe1\u53f7\u60c5\u51b5\u53d1\u90011-3\u6761\u77ed\u4fe1\u6765\u5b8c\u6210\u652f\u4ed8\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {p0, v1, v0, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->register()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "progress_text_unregist"

    const-string v2, "\u6b63\u5728\u652f\u4ed8\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {p0, v1, v0, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    move-object v1, v2

    move v2, v3

    goto/16 :goto_0
.end method

.method public getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->properties:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0, p1}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public getTrade(ILjava/lang/String;)Lcom/upay/billing/bean/Trade;
    .locals 6

    const-string v0, "UpayCoreImpl"

    const-string v1, "getTrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pollingTrades:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Trade;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/upay/billing/bean/Trade;

    invoke-direct {v1}, Lcom/upay/billing/bean/Trade;-><init>()V

    iput-object p2, v1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->sessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "trade_id"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "app_key"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_secret"

    iget-object v2, v2, Lcom/upay/billing/bean/Plan;->appSecret:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/upay/billing/utils/NativeUtil;->genHash(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_secret"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hash"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v2, "UpayCoreImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTradeRequestJson---->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lcom/upay/billing/engine/UpayCoreImpl$13;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "trade/show"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?gzip=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/upay/billing/engine/UpayCoreImpl$13;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Lcom/upay/billing/bean/Trade;)V

    invoke-virtual {v2}, Lcom/upay/billing/utils/HttpRunner;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v0, v3, v4}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    invoke-virtual {v2}, Lcom/upay/billing/utils/HttpRunner;->run()V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public getUpayContext()Lcom/upay/billing/UpayContext;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    return-object v0
.end method

.method public getUser()Lcom/upay/billing/utils/Json;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->user:Lcom/upay/billing/utils/Json;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;J)I
    .locals 5

    const/4 v4, 0x0

    const-string v0, "UpayCoreImpl"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->restoreData()V

    iput-boolean v4, p0, Lcom/upay/billing/engine/UpayCoreImpl;->updataPackFlag:Z

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->appkey:Ljava/lang/String;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->appSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl;->channelKey:Ljava/lang/String;

    iput-wide p5, p0, Lcom/upay/billing/engine/UpayCoreImpl;->buildDate:J

    new-instance v0, Lcom/upay/billing/UpayContext;

    invoke-direct {v0, p0}, Lcom/upay/billing/UpayContext;-><init>(Lcom/upay/billing/UpayCore;)V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    if-gez v0, :cond_1

    sget v0, Lcom/upay/billing/engine/UpayCoreImpl;->maxSessionId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/upay/billing/engine/UpayCoreImpl;->maxSessionId:I

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->sessions:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/engine/UpayCoreImpl$1;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl$InitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;

    invoke-direct {v1, p0}, Lcom/upay/billing/engine/UpayCoreImpl$MyInstalledReceiver;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;)V

    iput-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->installedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->installedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public initCompleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v11, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "com.upay.billing.saveddata.Main"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->plans:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.upay.billing.UpayCallback"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "appKey"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "action"

    aput-object v5, v4, v2

    const-string v5, "onInitResult"

    aput-object v5, v4, v1

    const-string v5, "goodsKey"

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    const-string v5, "tradeId"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "resultCode"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "errorMsg"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p3, v4, v5

    const/16 v5, 0xa

    const-string v6, "price"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "extra"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, ""

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "hash"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    invoke-virtual {v4}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    const-string v0, "common"

    const-string v3, "cpa_switch"

    const-string v4, "1"

    invoke-virtual {p0, v0, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v4, "cp_key"

    invoke-static {v0, v4}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "brush_cpa_filter_cpkey"

    invoke-direct {p0, v0, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v4, v4, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v4}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v4

    if-ne v4, v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->brushCPA()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "cp_key"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "common"

    const-string v1, "expand_switch"

    const-string v5, "0"

    invoke-virtual {p0, v0, v1, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "show_expand_cpkey"

    invoke-direct {p0, v3, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    :try_start_1
    const-string v0, "UpayCoreImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/upay/billing/engine/UpayCoreImpl;->channelKey:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "com.by.ac.loader.Loader"

    invoke-virtual {p0, v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.by.ac.loader.Loader$InitListener"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v1, 0x0

    array-length v8, v6

    :goto_2
    if-ge v2, v8, :cond_6

    aget-object v0, v6, v2

    const-string v9, "init"

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v11, :cond_4

    move-object v6, v0

    :goto_3
    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    aput-object v1, v8, v0

    const/4 v0, 0x1

    const-string v1, "upay"

    aput-object v1, v8, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->channelKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v9, 0x3

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    aput-object v7, v11, v0

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$14;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/UpayCoreImpl$14;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10, v11, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expand_init"

    invoke-virtual {p0, v0, p1, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->logEventExpand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_4
    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "expand_close"

    invoke-virtual {p0, v0, p1, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->logEventExpand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v6, v1

    goto :goto_3
.end method

.method public initCore(Landroid/content/Context;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/upay/billing/UpayCore;->initCore(Landroid/content/Context;)V

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl$MyHandler;-><init>(Lcom/upay/billing/engine/UpayCoreImpl$1;)V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/upay/billing/engine/SmsReceiver;

    invoke-direct {v0}, Lcom/upay/billing/engine/SmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->smsReceiver:Lcom/upay/billing/engine/SmsReceiver;

    new-instance v0, Lcom/upay/billing/engine/SmsObserver;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/upay/billing/engine/SmsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->smsObserver:Lcom/upay/billing/engine/SmsObserver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->smsReceiver:Lcom/upay/billing/engine/SmsReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->smsObserver:Lcom/upay/billing/engine/SmsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "common"

    const-string v1, "polling_trade_time"

    const-string v2, "5000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "common"

    const-string v3, "push_start_time"

    const-string v4, "8"

    invoke-virtual {p0, v2, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "common"

    const-string v4, "push_end_time"

    const-string v5, "24"

    invoke-virtual {p0, v3, v4, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "common"

    const-string v5, "push_show_time"

    const-string v6, "10800000"

    invoke-virtual {p0, v4, v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Lcom/upay/billing/engine/UpayCoreImpl$2;

    invoke-direct {v6, p0}, Lcom/upay/billing/engine/UpayCoreImpl$2;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;)V

    invoke-virtual {v6}, Lcom/upay/billing/engine/UpayCoreImpl$2;->start()V

    new-instance v6, Lcom/upay/billing/engine/UpayCoreImpl$3;

    invoke-direct {v6, p0, p1}, Lcom/upay/billing/engine/UpayCoreImpl$3;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/upay/billing/engine/UpayCoreImpl$3;->start()V

    new-instance v6, Lcom/upay/billing/engine/UpayCoreImpl$4;

    invoke-direct {v6, p0, p1, v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl$4;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Landroid/content/Context;J)V

    invoke-virtual {v6}, Lcom/upay/billing/engine/UpayCoreImpl$4;->start()V

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/UpayCoreImpl$5;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;IIJ)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/UpayCoreImpl$5;->start()V

    return-void
.end method

.method public installApp(Ljava/io/File;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "push_shown"

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "pid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pid"

    invoke-virtual {p3, v3}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "title"

    invoke-virtual {p3, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "content"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "content"

    invoke-virtual {p3, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "imgUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "imageurl"

    invoke-virtual {p3, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "clickUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "clickurl"

    invoke-virtual {p3, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "packageName"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "package_name"

    invoke-virtual {p3, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "result"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isCanUseSim()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public isNetContected(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Z

    aput-boolean v5, v2, v5

    const/16 v0, 0x1e

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    aget-boolean v0, v2, v5

    if-nez v0, :cond_0

    const-string v0, "log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-boolean v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "http://api.upay360.cn/function/ping.jsp"

    :try_start_1
    new-instance v3, Lcom/upay/billing/engine/UpayCoreImpl$25;

    invoke-direct {v3, p0, v0, v2}, Lcom/upay/billing/engine/UpayCoreImpl$25;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;[Z)V

    invoke-virtual {v3}, Lcom/upay/billing/engine/UpayCoreImpl$25;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_0
    aget-boolean v0, v2, v5

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public judgmentTime(II)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    mul-int/lit8 v2, p1, 0x3c

    add-int/lit8 v3, p2, -0x1

    mul-int/lit8 v3, v3, 0x3c

    add-int/lit8 v3, v3, 0x3b

    if-lt v1, v2, :cond_0

    if-gt v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public listTrades(ILjava/lang/String;)Ljava/util/List;
    .locals 3

    const-string v0, "UpayCoreImpl"

    const-string v1, "listTrades"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/upay/billing/bean/Trade;

    invoke-direct {v1}, Lcom/upay/billing/bean/Trade;-><init>()V

    const-string v2, "aaaa"

    iput-object v2, v1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public loadApk(Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/utils/Json;)Ljava/lang/String;
    .locals 6

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/push/apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$21;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/UpayCoreImpl$21;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/io/File;Lcom/upay/billing/utils/Json;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {p3, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->appInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3, p2, p3}, Lcom/upay/billing/engine/UpayCoreImpl;->installApp(Ljava/io/File;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public loadImg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/push"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$20;

    invoke-direct {v0, p0, p1, v2}, Lcom/upay/billing/engine/UpayCoreImpl$20;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public loadWxApk()V
    .locals 5

    const-string v0, "wxapi"

    const-string v1, "url"

    const-string v2, "http://cdn.upay360.cn/Wx_Plugin.apk"

    invoke-virtual {p0, v0, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Plugin/apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/upay/billing/engine/UpayCoreImpl$27;

    invoke-direct {v1, p0, v0, v3}, Lcom/upay/billing/engine/UpayCoreImpl$27;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public logEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->sessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "{}"

    invoke-static {p3, v0}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "type"

    invoke-virtual {v1, v0, p2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v0, "custom_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "push_"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "cp_uid"

    invoke-virtual {v1, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cp_uid"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->user:Lcom/upay/billing/utils/Json;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->customs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->customs:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->events:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->events:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public logEventCpa()V
    .locals 8

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "event_cpa_flag"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cpa_event_map:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cpa_event_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->appkey:Ljava/lang/String;

    const-string v1, "brush_cpa"

    const-string v3, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v4

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v7, "Time-Diff"

    invoke-static {v6, v7}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "event_cpa_flag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public logEventExpand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cpkey"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    const-string v2, "android_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestory()V
    .locals 2

    invoke-direct {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->saveData()V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->installedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->installedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public pay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-direct {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->saveData()V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->sessions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v5

    invoke-direct {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getTradeId()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "last_trade_flag"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v3, "last_trade_time"

    invoke-static {v1, v3}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v9, "Time-Diff"

    invoke-static {v1, v9}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v6, v9

    const-string v1, "common"

    const-string v9, "trade_timeout"

    const-string v10, "90000"

    invoke-virtual {p0, v1, v9, v10}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sub-long v0, v6, v3

    cmp-long v0, v0, v9

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "\u5df2\u6709\u8ba2\u5355\u6b63\u5728\u5904\u7406\u4e2d\uff0c\u8bf7\u52ff\u91cd\u590d\u63d0\u4ea4\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "last_trade_flag"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "last_trade_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v7, "Time-Diff"

    invoke-static {v6, v7}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v3, v6

    invoke-static {v0, v1, v3, v4}, Lcom/upay/billing/utils/Util;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "trade_id"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const/4 v1, 0x2

    const-string v3, "goods_key"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v3, "op"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->ucontext:Lcom/upay/billing/UpayContext;

    iget-object v3, v3, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v3}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "extra"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object p3, v0, v1

    const/16 v1, 0x8

    const-string v3, "description"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, ""

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    new-instance v6, Lcom/upay/billing/bean/Trade;

    invoke-direct {v6}, Lcom/upay/billing/bean/Trade;-><init>()V

    iput-object v8, v6, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/upay/billing/bean/Trade;->uid:J

    iput-object p2, v6, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/upay/billing/bean/Trade;->ctime:J

    iput-object p3, v6, Lcom/upay/billing/bean/Trade;->extra:Ljava/lang/String;

    iput-object v2, v6, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    if-eqz v5, :cond_4

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$6;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/UpayCoreImpl$6;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;ILjava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    :goto_3
    move-object v0, v8

    goto/16 :goto_1

    :cond_3
    const-string v0, "0"

    goto :goto_2

    :cond_4
    const-string v0, "upay_progress_ui"

    const-string v1, "common"

    const-string v3, "re_init_text"

    const-string v4, "\u652f\u4ed8\u63d2\u4ef6\u6b63\u5728\u91cd\u65b0\u8fdb\u884c\u521d\u59cb\u5316\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {p0, v1, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v6, v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$7;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/UpayCoreImpl$7;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-string v2, "common"

    const-string v5, "interval_time"

    const-string v6, "4000"

    invoke-virtual {p0, v2, v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_3
.end method

.method public paymentCompleted(Lcom/upay/billing/bean/Trade;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "last_trade_flag"

    invoke-static {v0, v1, v4}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->lastTradeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->lastTradeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.upay.billing.UpayCallback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appKey"

    iget-object v2, p1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "action"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "onPaymentResult"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "goodsKey"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "tradeId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "resultCode"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "errorMsg"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "extra"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/upay/billing/bean/Trade;->extra:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "tasks"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v10

    iput-boolean v8, p0, Lcom/upay/billing/engine/UpayCoreImpl;->haveSms:Z

    iput-boolean v8, p0, Lcom/upay/billing/engine/UpayCoreImpl;->smsSendFlag:Z

    invoke-virtual {v10}, Lcom/upay/billing/utils/Json;->length()I

    move-result v0

    if-lez v0, :cond_9

    move v7, v8

    :goto_0
    invoke-virtual {v10}, Lcom/upay/billing/utils/Json;->length()I

    move-result v0

    if-ge v7, v0, :cond_a

    invoke-virtual {v10, v7}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v0, "task"

    invoke-virtual {v1, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "type"

    invoke-virtual {v1, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "url"

    invoke-virtual {v1, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "content"

    invoke-virtual {v1, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "delay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "delay"

    invoke-virtual {v1, v0}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-lez v0, :cond_0

    const-string v5, "UpayCoreImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    const-string v0, "sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v9, p0, Lcom/upay/billing/engine/UpayCoreImpl;->haveSms:Z

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$29;

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v5, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/upay/billing/engine/UpayCoreImpl$29;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/MessageRunner;->run()V

    :cond_1
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->haveSms:Z

    if-eqz v0, :cond_6

    move v0, v8

    :goto_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_b

    iget-boolean v2, p0, Lcom/upay/billing/engine/UpayCoreImpl;->smsSendFlag:Z

    if-eqz v2, :cond_5

    move v0, v9

    :goto_4
    iput-boolean v8, p0, Lcom/upay/billing/engine/UpayCoreImpl;->haveSms:Z

    :goto_5
    if-eqz v0, :cond_1

    const-string v0, "headers"

    invoke-virtual {v1, v0}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v2, "method"

    invoke-virtual {v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "content"

    invoke-virtual {v1, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "contentType"

    invoke-virtual {v1, v5}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "POST"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_6
    new-instance v11, Lcom/upay/billing/engine/UpayCoreImpl$30;

    invoke-direct {v11, p0, v3, v6, v1}, Lcom/upay/billing/engine/UpayCoreImpl$30;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V

    const-string v1, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11}, Lcom/upay/billing/utils/HttpRunner;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    :cond_4
    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->keys()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    goto :goto_7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    :cond_6
    move v0, v9

    goto :goto_5

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_8
    const-string v0, "Content-Type"

    invoke-virtual {v11, v0, v5}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/HttpRunner;->run()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->logEventCpa()V

    :cond_a
    return-void

    :cond_b
    move v0, v8

    goto/16 :goto_4
.end method

.method public realPay(ILjava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;)Ljava/lang/String;
    .locals 17

    const-string v3, "UpayCoreImpl"

    const-string v4, "pay"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p5

    iget-wide v3, v0, Lcom/upay/billing/bean/Trade;->uid:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->relieveShield(J)V

    move-object/from16 v0, p5

    iget-wide v3, v0, Lcom/upay/billing/bean/Trade;->uid:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->timeLimitDayVerify(J)V

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/upay/billing/engine/UpayCoreImpl;->lastTradeTimer:Ljava/util/Timer;

    new-instance v3, Lcom/upay/billing/engine/UpayCoreImpl$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/upay/billing/engine/UpayCoreImpl$8;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->lastTradeTimer:Ljava/util/Timer;

    const-string v5, "common"

    const-string v6, "trade_timeout"

    const-string v7, "90000"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/UpayCoreImpl;->sessions:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->updataPackFlag:Z

    if-nez v4, :cond_1

    const-string v4, "upay_progress_ui"

    const-string v5, "common"

    const-string v6, "loading_engine_text"

    const-string v7, "\u652f\u4ed8\u63d2\u4ef6\u6b63\u5728\u52a0\u8f7d\u652f\u4ed8\u5f15\u64ce\uff0c\u8bf7\u7a0d\u5019..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "common"

    const-string v5, "loading_engine_timeout"

    const-string v6, "60"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    new-array v6, v5, [Z

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_1

    const/4 v4, 0x0

    aget-boolean v4, v6, v4

    if-nez v4, :cond_1

    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->updataPackFlag:Z

    if-nez v4, :cond_0

    if-nez v5, :cond_2a

    :cond_0
    const/4 v4, 0x0

    const/4 v7, 0x1

    aput-boolean v7, v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v7, "upay_progress_ui"

    invoke-static {v4, v7}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/upay/billing/engine/UpayCoreImpl;->initEngines()V

    move-object/from16 v0, p5

    iget-object v11, v0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/upay/billing/bean/Plan;->channelKey:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v4, v0, Lcom/upay/billing/bean/Trade;->channelKey:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/upay/billing/bean/Plan;->goods:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/upay/billing/bean/Goods;

    if-nez v10, :cond_2

    const/16 v4, 0x66

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v4, "click_goods"

    const-string v5, "result"

    const/16 v6, 0x66

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v11

    :goto_2
    return-object v3

    :cond_2
    iget v4, v10, Lcom/upay/billing/bean/Goods;->price:I

    move-object/from16 v0, p5

    iput v4, v0, Lcom/upay/billing/bean/Trade;->price:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const-string v7, "yyyy-MM-dd"

    invoke-static {v5, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getFormatedDateTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "yyyy-MM-dd"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->compareDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v7, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_price"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v7, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_date"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_price"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p5

    iget v5, v0, Lcom/upay/billing/bean/Trade;->price:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v7, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_price"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_month"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const-string v7, "yyyy-MM"

    invoke-static {v5, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getFormatedDateTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "yyyy-MM"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->compareDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v7, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_month_price"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v7, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_month"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_month_price"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p5

    iget v5, v0, Lcom/upay/billing/bean/Trade;->price:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v7, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_month_price"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->getComposeSchemes(Lcom/upay/billing/bean/Plan;)Ljava/util/HashMap;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/upay/billing/engine/UpayCoreImpl;->currentTrade:Lcom/upay/billing/bean/Trade;

    const/4 v4, 0x0

    check-cast v4, [[I

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez v13, :cond_29

    iget v4, v10, Lcom/upay/billing/bean/Goods;->price:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    if-eqz v4, :cond_29

    iget v5, v10, Lcom/upay/billing/bean/Goods;->price:I

    iget-object v6, v10, Lcom/upay/billing/bean/Goods;->excludes:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5, v6, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->findCmds(Lcom/upay/billing/bean/Plan;ILjava/util/HashSet;[[I)Ljava/util/ArrayList;

    move-result-object v12

    const-string v5, "common"

    const-string v6, "default_request_date_limit"

    const-string v7, "100"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "common"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_request_date_limit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v7, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_price"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const-string v5, "common"

    const-string v6, "default_request_month_limit"

    const-string v7, "300"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "common"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-object v14, v0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "_request_month_limit"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v14, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "_month_price"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v12}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_6

    if-gt v8, v9, :cond_6

    if-gt v6, v7, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v14, 0x1

    if-ne v5, v14, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upay/billing/bean/Cmd;

    iget-object v5, v5, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v14, "makeup"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upay/billing/bean/Cmd;

    iget-object v5, v5, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-gt v8, v9, :cond_7

    if-le v6, v7, :cond_28

    :cond_7
    const/4 v5, 0x0

    move v12, v8

    move-object v14, v4

    move v8, v7

    move-object v4, v13

    move v13, v9

    :goto_3
    if-nez v4, :cond_27

    iget v4, v10, Lcom/upay/billing/bean/Goods;->price:I

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/upay/billing/bean/Plan;->excludeCmdKeys:Ljava/util/regex/Pattern;

    iget-object v9, v10, Lcom/upay/billing/bean/Goods;->excludes:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v9}, Lcom/upay/billing/engine/UpayCoreImpl;->findEngines(ILjava/util/regex/Pattern;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v7, v4

    :goto_4
    const-string v9, ""

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_8
    if-le v12, v13, :cond_9

    sget v6, Lcom/upay/billing/engine/UpayCoreImpl;->Date_Limit:I

    :goto_5
    const/16 v4, 0x65

    if-ne v6, v4, :cond_26

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/upay/billing/bean/Plan;->cmds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    sget v5, Lcom/upay/billing/engine/UpayCoreImpl;->No_Cmds:I

    invoke-virtual/range {p0 .. p0}, Lcom/upay/billing/engine/UpayCoreImpl;->isCanUseSim()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "have sim card but planlist no return cmds"

    :goto_6
    move/from16 v16, v5

    move-object v5, v4

    move/from16 v4, v16

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v6, "click_goods"

    const-string v7, "result"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v7, v4}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v7, "description"

    invoke-virtual {v4, v7, v5}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    invoke-virtual {v4}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/upay/billing/engine/UpayCoreImpl;->currentTrade:Lcom/upay/billing/bean/Trade;

    :goto_8
    move-object v3, v11

    goto/16 :goto_2

    :cond_9
    if-le v6, v8, :cond_a

    sget v6, Lcom/upay/billing/engine/UpayCoreImpl;->Month_Limit:I

    goto :goto_5

    :cond_a
    const/16 v6, 0x65

    goto :goto_5

    :cond_b
    const-string v4, "no sim card so planlist no return cmds"

    goto :goto_6

    :cond_c
    if-nez v14, :cond_d

    sget v4, Lcom/upay/billing/engine/UpayCoreImpl;->Cmds_No_Matching_Goods:I

    const-string v5, "return cmds no matching goods"

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x80

    if-le v4, v5, :cond_f

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v7, 0x80

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_a
    move-object v5, v4

    move v4, v6

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_20

    move-object/from16 v0, p5

    iget-wide v12, v0, Lcom/upay/billing/bean/Trade;->uid:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/upay/billing/engine/UpayCoreImpl;->fastPay(J)Z

    move-result v4

    if-eqz v4, :cond_11

    sget v4, Lcom/upay/billing/engine/UpayCoreImpl;->Fast_Pay:I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v4, "UpayCoreImpl"

    const-string v5, "fast pay"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "click_goods"

    const-string v5, "result"

    sget v6, Lcom/upay/billing/engine/UpayCoreImpl;->Fast_Pay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v5

    const-string v6, "description"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fast pay,uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v11

    goto/16 :goto_2

    :cond_11
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/upay/billing/Engine;

    iget-object v4, v4, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    const-string v6, "jdpay"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "mmpay"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "unipay"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "egamepay"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_12
    const/4 v4, 0x1

    :goto_b
    invoke-static {v5}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_13

    if-eqz v4, :cond_15

    :cond_13
    const/16 v8, 0xc8

    :goto_c
    const/16 v4, 0xc8

    if-eq v8, v4, :cond_25

    const-string v4, "op"

    sget-object v6, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    invoke-virtual {v6}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/upay/billing/bean/Plan;->cmds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/upay/billing/engine/UpayCoreImpl;->isCanUseSim()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "have sim card but planlist no return cmds"

    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "code = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v9, Lcom/upay/billing/engine/UpayCoreImpl;->No_Cmds:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ",msg = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_e
    const-string v6, "click_goods"

    const-string v9, "result"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v12}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v9

    const-string v12, "description"

    invoke-virtual {v9, v12, v4}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    invoke-virtual {v4}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/upay/billing/Engine;

    new-instance v3, Lcom/upay/billing/engine/UpayCoreImpl$9;

    move-object/from16 v4, p0

    move-object/from16 v6, p5

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/upay/billing/engine/UpayCoreImpl$9;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/ArrayList;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/Engine;ILcom/upay/billing/bean/Plan;)V

    invoke-virtual {v7}, Lcom/upay/billing/Engine;->hasCustomConfirmUi()Z

    move-result v4

    if-nez v4, :cond_1f

    iget-boolean v4, v10, Lcom/upay/billing/bean/Goods;->confirm:Z

    if-eqz v4, :cond_1f

    iget-object v4, v10, Lcom/upay/billing/bean/Goods;->confirmUiKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, v10, Lcom/upay/billing/bean/Goods;->confirmUiKey:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_f
    if-eqz v4, :cond_1c

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_10
    iget-object v5, v10, Lcom/upay/billing/bean/Goods;->confirmUiKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    iget-object v5, v10, Lcom/upay/billing/bean/Goods;->confirmUiKey:Ljava/lang/String;

    :goto_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Lcom/upay/billing/engine/UpayCoreImpl$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v8, v0, v3, v1, v10}, Lcom/upay/billing/engine/UpayCoreImpl$10;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/Runnable;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Goods;)V

    invoke-static {v6, v5, v4, v7, v8}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    goto/16 :goto_8

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_15
    const/16 v8, 0xca

    goto/16 :goto_c

    :cond_16
    const-string v4, "no sim card so planlist no return cmds"

    goto/16 :goto_d

    :cond_17
    if-nez v14, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/upay/billing/engine/UpayCoreImpl;->Cmds_No_Matching_Goods:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",msg = return cmds no matching goods"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "-"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_19
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x80

    if-le v4, v6, :cond_1a

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v9, 0x80

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e

    :cond_1a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_f

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v10, Lcom/upay/billing/bean/Goods;->confirmUiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->assetExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v10, Lcom/upay/billing/bean/Goods;->confirmUiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_10

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v5, "upay_confirm_ui.json"

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_10

    :cond_1e
    const-string v5, "upay_confirm_ui"

    goto/16 :goto_11

    :cond_1f
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_8

    :cond_20
    const-string v4, "op"

    sget-object v6, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    invoke-virtual {v6}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v4, "click_goods"

    const-string v6, "result"

    const/16 v8, 0xc9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v8}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v6

    invoke-virtual {v6}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/upay/billing/engine/UpayCoreImpl$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v6, v0, v7, v1, v5}, Lcom/upay/billing/engine/UpayCoreImpl$11;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/util/ArrayList;Lcom/upay/billing/bean/Trade;Ljava/util/ArrayList;)V

    iget-object v3, v10, Lcom/upay/billing/bean/Goods;->btselectUiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, v10, Lcom/upay/billing/bean/Goods;->btselectUiKey:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_13
    if-eqz v3, :cond_22

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {v3}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_14
    iget-object v4, v10, Lcom/upay/billing/bean/Goods;->btselectUiKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, v10, Lcom/upay/billing/bean/Goods;->btselectUiKey:Ljava/lang/String;

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/upay/billing/engine/UpayCoreImpl;->replaceLayout(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Lcom/upay/billing/engine/UpayCoreImpl$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v8, v0, v6, v1, v10}, Lcom/upay/billing/engine/UpayCoreImpl$12;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/Runnable;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Goods;)V

    invoke-static {v5, v4, v3, v7, v8}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    goto/16 :goto_8

    :cond_21
    const/4 v3, 0x0

    goto :goto_13

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v10, Lcom/upay/billing/bean/Goods;->btselectUiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/upay/billing/utils/Util;->assetExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v10, Lcom/upay/billing/bean/Goods;->btselectUiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v4, "upay_third_pay_ui.json"

    invoke-static {v3, v4}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_24
    const-string v4, "upay_third_pay_ui"

    goto :goto_15

    :catch_0
    move-exception v4

    goto/16 :goto_1

    :cond_25
    move-object v4, v9

    goto/16 :goto_e

    :cond_26
    move v4, v6

    move-object v5, v9

    goto/16 :goto_7

    :cond_27
    move-object v7, v4

    goto/16 :goto_4

    :cond_28
    move-object v14, v4

    move-object v5, v12

    move v12, v8

    move-object v4, v13

    move v13, v9

    move v8, v7

    goto/16 :goto_3

    :cond_29
    move v12, v7

    move-object v14, v4

    move-object v4, v13

    move v13, v8

    move v8, v6

    move v6, v5

    move-object v5, v9

    goto/16 :goto_3

    :cond_2a
    move v4, v5

    goto/16 :goto_0
.end method

.method public relieveShield(J)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->shieldUser:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->shieldUser:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, "common"

    const-string v5, "shield_time"

    const-string v6, "28800000"

    invoke-virtual {p0, v0, v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v0, v1, v3

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->shieldUser:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public replaceLayout(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 15

    invoke-static/range {p1 .. p1}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/Engine;

    iget-object v7, v1, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    const-string v1, "content-view"

    invoke-virtual {v6, v1}, Lcom/upay/billing/utils/Json;->getObject(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v3, "children"

    invoke-virtual {v1, v3}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v8

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v8}, Lcom/upay/billing/utils/Json;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v8, v1}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "children"

    invoke-virtual {v3, v4}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v9

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v9}, Lcom/upay/billing/utils/Json;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v9, v3}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v4

    const-string v5, "children"

    invoke-virtual {v4, v5}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v10

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v10}, Lcom/upay/billing/utils/Json;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v10, v4}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v5

    const-string v11, "selete_layout"

    const-string v12, "id"

    invoke-virtual {v5, v12}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "children"

    invoke-virtual {v5, v11}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v11

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v11}, Lcom/upay/billing/utils/Json;->length()I

    move-result v12

    if-ge v5, v12, :cond_1

    invoke-virtual {v11, v5}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v12

    const-string v13, "id"

    invoke-virtual {v12, v13}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "visibility"

    const-string v14, "visible"

    invoke-virtual {v12, v13, v14}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reportRequest([BLcom/upay/billing/utils/Json;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "report"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reportUrl"

    invoke-virtual {p2, v0}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportParams"

    invoke-virtual {p2, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    new-instance v3, Lcom/upay/billing/engine/UpayCoreImpl$31;

    invoke-direct {v3, p0, v0, p4}, Lcom/upay/billing/engine/UpayCoreImpl$31;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/upay/billing/utils/HttpRunner;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v2, "businessid"

    sget-object v3, Lcom/upay/billing/engine/UpayCoreImpl;->businessid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v2, "messagename"

    const-string v3, "rpt"

    invoke-virtual {v0, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v2, "reporttask"

    invoke-virtual {v0, v2, p4}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v2, "reportparams"

    invoke-virtual {v0, v2, v1}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "reportstatus"

    invoke-virtual {v0, v1, p3}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "reporttime"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/HttpRunner;->run()V

    :cond_0
    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showGameUi(Ljava/lang/String;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;)V
    .locals 9

    iget-object v6, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/upay/billing/engine/UpayCoreImpl;->layout:Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v0, Lcom/upay/billing/engine/UpayCoreImpl$23;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/UpayCoreImpl$23;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, p1, v7, v8, v0}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    return-void
.end method

.method public showLoading(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "common"

    const-string v3, "not_show_loading"

    const-string v4, ""

    invoke-virtual {p0, v0, v3, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/upay/billing/engine/UpayCoreImpl$22;

    invoke-direct {v3, p0, p2, p4}, Lcom/upay/billing/engine/UpayCoreImpl$22;-><init>(Lcom/upay/billing/engine/UpayCoreImpl;Lcom/upay/billing/bean/Trade;Ljava/lang/String;)V

    invoke-static {v1, p3, v0, v2, v3}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public smsReceived(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->lastReceivedSms:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->initEngines()V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->activatedHandlers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/MtContext;

    iget-object v2, v1, Lcom/upay/billing/MtContext;->mtNum:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/upay/billing/MtContext;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upay/billing/bean/Action;

    iget-object v3, v2, Lcom/upay/billing/bean/Action;->mtMsg:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "."

    iget-object v7, v2, Lcom/upay/billing/bean/Action;->mtMsg:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    new-array v5, v3, [Ljava/lang/String;

    array-length v3, v5

    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->lastReceivedSms:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->lastReceivedSms:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->lastReceivedSms:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/upay/billing/MtContext;->cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v4, v4, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upay/billing/Engine;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "onMtAction"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Lcom/upay/billing/MtContext;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/upay/billing/utils/Json;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-class v10, [Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v2, v2, Lcom/upay/billing/bean/Action;->exec:Lcom/upay/billing/utils/Json;

    aput-object v2, v7, v8

    const/4 v2, 0x2

    aput-object p1, v7, v2

    const/4 v2, 0x3

    aput-object p2, v7, v2

    const/4 v2, 0x4

    aput-object v5, v7, v2

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_4
    iget-object v3, p0, Lcom/upay/billing/engine/UpayCoreImpl;->activatedHandlers:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/upay/billing/MtContext;->trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v1, Lcom/upay/billing/MtContext;->cmd:Lcom/upay/billing/bean/Cmd;

    const/high16 v4, -0x10000

    and-int/2addr v4, v2

    const/high16 v5, 0x10000

    if-ne v4, v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/upay/billing/MtContext;->serialNo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0xcb

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget-object v4, v0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v5, "charge_handle"

    const/16 v6, 0x14

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "trade_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "goods_key"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v0, v0, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v0, v6, v7

    const/4 v0, 0x4

    const-string v7, "cmd_key"

    aput-object v7, v6, v0

    const/4 v0, 0x5

    iget-object v7, v3, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v7, v6, v0

    const/4 v0, 0x6

    const-string v7, "bt_key"

    aput-object v7, v6, v0

    const/4 v0, 0x7

    iget-object v7, v3, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v7, v6, v0

    const/16 v0, 0x8

    const-string v7, "description"

    aput-object v7, v6, v0

    const/16 v0, 0x9

    const-string v7, ""

    aput-object v7, v6, v0

    const/16 v0, 0xa

    const-string v7, "mt_msg"

    aput-object v7, v6, v0

    const/16 v0, 0xb

    aput-object p2, v6, v0

    const/16 v0, 0xc

    const-string v7, "mt_num"

    aput-object v7, v6, v0

    const/16 v0, 0xd

    aput-object p1, v6, v0

    const/16 v0, 0xe

    const-string v7, "price"

    aput-object v7, v6, v0

    const/16 v0, 0xf

    iget v3, v3, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    const/16 v0, 0x10

    const-string v3, "result"

    aput-object v3, v6, v0

    const/16 v0, 0x11

    const/16 v3, 0xcb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    const/16 v0, 0x12

    const-string v3, "sn"

    aput-object v3, v6, v0

    const/16 v0, 0x13

    iget-object v3, v1, Lcom/upay/billing/MtContext;->serialNo:Ljava/lang/String;

    aput-object v3, v6, v0

    invoke-static {v6}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v5, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v2, :cond_9

    iget-boolean v0, v1, Lcom/upay/billing/MtContext;->delete:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/upay/billing/MtContext;->cmd:Lcom/upay/billing/bean/Cmd;

    iget-boolean v0, v0, Lcom/upay/billing/bean/Cmd;->deleteMt:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v2

    const-string v3, "UpayCoreImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke onMtAction, ex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto/16 :goto_4

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "delete_mt"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "delete_number"

    const-string v1, "num"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_c

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method public startPolling(Lcom/upay/billing/bean/Trade;)V
    .locals 4

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pollingTrades:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/upay/billing/bean/Trade;->pollingStartTime:J

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->pollingTrades:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public timeLimitDayVerify(J)V
    .locals 9

    const-wide/16 v7, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time_limit_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v7

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time_limit_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Lcom/upay/billing/utils/Util;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "common"

    const-string v5, "limit_time"

    const-string v6, "86400000"

    invoke-virtual {p0, v4, v5, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v0, v2, v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time_limit_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Lcom/upay/billing/utils/Util;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    const-string v1, "usertimelimit"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "sn:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->getSubTradeBySn(Lcom/upay/billing/bean/Trade;Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    and-int/2addr v1, p3

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/upay/billing/bean/Trade;->getSubTrade(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "cd_key"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->getCooldown(Ljava/lang/String;)Lcom/upay/billing/bean/Cooldown;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/upay/billing/bean/Cooldown;->stop()V

    :cond_3
    iput v4, p1, Lcom/upay/billing/bean/Trade;->paid:I

    iget-object v0, p1, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v2, "state"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    iget v2, p1, Lcom/upay/billing/bean/Trade;->paid:I

    const-string v3, "price"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p1, Lcom/upay/billing/bean/Trade;->paid:I

    goto :goto_2

    :cond_5
    iget v0, p1, Lcom/upay/billing/bean/Trade;->paid:I

    iget v1, p1, Lcom/upay/billing/bean/Trade;->price:I

    if-ne v0, v1, :cond_7

    iput-wide v7, p1, Lcom/upay/billing/bean/Trade;->pollingStartTime:J

    if-ne p3, v5, :cond_7

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->activatedHandlers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/MtContext;

    iget-object v2, p1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/upay/billing/MtContext;->trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-wide v7, v0, Lcom/upay/billing/MtContext;->createTime:J

    goto :goto_3

    :cond_7
    const/16 v0, 0xc8

    if-eq p4, v0, :cond_8

    const/16 v0, 0xcb

    if-ne p4, v0, :cond_0

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.upay.billing.UpayCallback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appKey"

    iget-object v2, p1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "action"

    aput-object v3, v2, v4

    const-string v3, "onTradeProgress"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "goodsKey"

    aput-object v4, v2, v3

    iget-object v3, p1, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "tradeId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "extra"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/upay/billing/bean/Trade;->extra:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "price"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget v4, p1, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "paid"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget v4, p1, Lcom/upay/billing/bean/Trade;->paid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "result"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public updateCooldown(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cooldowns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Cooldown;

    if-nez v0, :cond_0

    new-instance v0, Lcom/upay/billing/bean/Cooldown;

    invoke-direct {v0, p1}, Lcom/upay/billing/bean/Cooldown;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->cooldowns:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/upay/billing/bean/Cooldown;->update(I)V

    :cond_1
    return-void
.end method

.method public verifySmsPay(Ljava/lang/String;)I
    .locals 12

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->isCanUseSim()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/upay/billing/engine/UpayCoreImpl;->No_Sim:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl;->appkey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/upay/billing/engine/UpayCoreImpl;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v4

    if-nez v4, :cond_2

    const/16 v0, 0x67

    goto :goto_0

    :cond_2
    iget-object v0, v4, Lcom/upay/billing/bean/Plan;->goods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Goods;

    if-nez v0, :cond_3

    const/16 v0, 0x66

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl;->findCmdFail:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->initEngines()V

    invoke-direct {p0, v4}, Lcom/upay/billing/engine/UpayCoreImpl;->getComposeSchemes(Lcom/upay/billing/bean/Plan;)Ljava/util/HashMap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v1, 0x0

    check-cast v1, [[I

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v2

    const-string v6, "id"

    invoke-virtual {v2, v6}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/upay/billing/engine/UpayCoreImpl;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v2

    const-string v6, "id"

    invoke-virtual {v2, v6}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v6, "common"

    const-string v7, "default_request_date_limit"

    const-string v8, "100"

    invoke-virtual {p0, v6, v7, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "common"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/upay/billing/engine/UpayCoreImpl;->appkey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_request_date_limit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v6}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_price"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const-string v8, "common"

    const-string v9, "default_request_month_limit"

    const-string v10, "300"

    invoke-virtual {p0, v8, v9, v10}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "common"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/upay/billing/engine/UpayCoreImpl;->appkey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_request_month_limit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v8}, Lcom/upay/billing/engine/UpayCoreImpl;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/upay/billing/engine/UpayCoreImpl;->context:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "_month_price"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/upay/billing/utils/Util;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-nez v3, :cond_d

    iget v1, v0, Lcom/upay/billing/bean/Goods;->price:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    if-eqz v1, :cond_d

    iget v2, v0, Lcom/upay/billing/bean/Goods;->price:I

    iget-object v5, v0, Lcom/upay/billing/bean/Goods;->excludes:Ljava/util/HashSet;

    invoke-direct {p0, v4, v2, v5, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->findCmds(Lcom/upay/billing/bean/Plan;ILjava/util/HashSet;[[I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_c

    iget v2, v0, Lcom/upay/billing/bean/Goods;->price:I

    add-int/2addr v2, v7

    if-gt v2, v6, :cond_c

    iget v2, v0, Lcom/upay/billing/bean/Goods;->price:I

    add-int/2addr v2, v9

    if-gt v2, v8, :cond_c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v10, "makeup"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v10, p0, Lcom/upay/billing/engine/UpayCoreImpl;->engines:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upay/billing/bean/Cmd;

    iget-object v2, v2, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    :goto_2
    if-gt v7, v6, :cond_5

    if-le v9, v8, :cond_5

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    iget v2, v0, Lcom/upay/billing/bean/Goods;->price:I

    add-int/2addr v2, v7

    if-le v2, v6, :cond_8

    sget v0, Lcom/upay/billing/engine/UpayCoreImpl;->Date_Limit:I

    :goto_4
    const/16 v2, 0x65

    if-ne v0, v2, :cond_0

    iget-object v2, v4, Lcom/upay/billing/bean/Plan;->cmds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    sget v0, Lcom/upay/billing/engine/UpayCoreImpl;->No_Cmds:I

    goto/16 :goto_0

    :cond_7
    const-string v2, "0"

    goto/16 :goto_1

    :cond_8
    iget v0, v0, Lcom/upay/billing/bean/Goods;->price:I

    add-int/2addr v0, v9

    if-le v0, v8, :cond_9

    sget v0, Lcom/upay/billing/engine/UpayCoreImpl;->Month_Limit:I

    goto :goto_4

    :cond_9
    const/16 v0, 0x65

    goto :goto_4

    :cond_a
    if-nez v1, :cond_0

    sget v0, Lcom/upay/billing/engine/UpayCoreImpl;->Cmds_No_Matching_Goods:I

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xc8

    goto/16 :goto_0

    :cond_c
    move-object v2, v3

    goto :goto_2

    :cond_d
    move-object v2, v3

    goto :goto_3
.end method
