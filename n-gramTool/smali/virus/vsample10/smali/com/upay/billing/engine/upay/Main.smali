.class public Lcom/upay/billing/engine/upay/Main;
.super Lcom/upay/billing/engine/CommonEngine;


# static fields
.field private static final Analyze_Action_Fail:I = 0x83

.field public static final CONFIRM_VERIFY_URL:Ljava/lang/String; = "http://api.upay360.cn/function/smsMonitor/acceptSMS.jsp"

.field private static final Cancel_Verifycode_UI:I = 0xc1

.field private static final Confirm_Verifycode_Empty:I = 0xc0

.field private static final H5_BillingSms_Fail:I = 0x9c

.field private static final H5_LoginSms_Fail:I = 0x9b

.field private static final Http_Verify_Fail:I = 0x9a

.field private static final MODEM_POOL_LOG_URL:Ljava/lang/String; = "http://api.upay360.cn/function/modem_pool/log.jsp"

.field private static final REPLY_VERIFY_URL:Ljava/lang/String;

.field private static final Request_Get_Verifycode_Sms_Fail:I = 0x9e

.field private static final Request_Kkdm_Fail:I = 0xbf

.field private static final SAVE_NAME:Ljava/lang/String; = "com.upay.billing.saveddata.Main"

.field private static final Send_Get_Verifycode_Sms_Fail:I = 0x9f

.field private static final Send_Sms_Monitor_Fail:I = 0x9d

.field private static final Step2_Request_Verifycode_Fail:I = 0xbc

.field private static final TAG:Ljava/lang/String; = "Upay"

.field private static charSet:[C

.field private static final dtsmsUrl:Ljava/lang/String;


# instance fields
.field private mTrade:Lcom/upay/billing/bean/Trade;

.field private sendFail:Ljava/util/List;

.field private sendSucc:Ljava/util/List;

.field private tradeList:Ljava/util/ArrayList;

.field private ussdVerifyLayout:Ljava/lang/String;

.field private verifyFlag:Z

.field private verifyMsg:Ljava/lang/String;

.field private verifySendFail:Ljava/util/List;

.field private verifySendSucc:Ljava/util/List;

.field private waitVerifyTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plan/dyncode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/upay/Main;->dtsmsUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plan/dynconfirm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/upay/Main;->REPLY_VERIFY_URL:Ljava/lang/String;

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/upay/Main;->charSet:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/upay/billing/engine/CommonEngine;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upay/billing/engine/upay/Main;->verifyFlag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/engine/upay/Main;->waitVerifyTimer:Ljava/util/Timer;

    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/engine/upay/Main;->ussdVerifyLayout:Ljava/lang/String;

    const-string v0, "topup4u*upc:/$minSn,$verify_code/"

    iput-object v0, p0, Lcom/upay/billing/engine/upay/Main;->verifyMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/upay/billing/engine/upay/Main;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/upay/billing/engine/upay/Main;->verifyFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/upay/Main;)Lcom/upay/billing/bean/Trade;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/upay/billing/engine/upay/Main;->getCmdType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->sendSucc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->verifySendSucc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/upay/billing/engine/upay/Main;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main;->verifySendSucc:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->verifySendFail:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/upay/billing/engine/upay/Main;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main;->verifySendFail:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/upay/billing/engine/upay/Main;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->verifyMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/upay/Main;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/upay/billing/engine/upay/Main;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->waitVerifyTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/upay/billing/engine/upay/Main;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main;->waitVerifyTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/upay/billing/engine/upay/Main;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->tradeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upay/billing/engine/upay/Main;Lcom/upay/billing/bean/Trade;)Lcom/upay/billing/utils/Json;
    .locals 1

    invoke-direct {p0, p1}, Lcom/upay/billing/engine/upay/Main;->getParams(Lcom/upay/billing/bean/Trade;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/upay/Main;->dtsmsUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/upay/billing/engine/upay/Main;->time(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/upay/Main;->shortenSerialNo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/upay/billing/engine/upay/Main;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->sendFail:Ljava/util/List;

    return-object v0
.end method

.method private getCmdType(Ljava/lang/String;)I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.upay.billing.saveddata.Main"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "cmdType"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method private getParams(Lcom/upay/billing/bean/Trade;)Lcom/upay/billing/utils/Json;
    .locals 4

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "imei"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "imsi"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "iccid"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "user_id"

    iget-wide v2, p1, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    return-object v0
.end method

.method public static getRandom(II)I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method private shortenSerialNo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseValueOf"
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v10, 0x3e

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    sget-object v4, Lcom/upay/billing/engine/upay/Main;->charSet:[C

    new-instance v5, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v10

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_2
    sub-int v1, p2, v2

    if-ge v0, v1, :cond_2

    const/16 v1, 0x30

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private time(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Time-Diff"

    invoke-static {v2, v3}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v2}, Lcom/upay/billing/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v2, "common"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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


# virtual methods
.method public checkNetwork()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v2, "common"

    const-string v3, "ping_ip"

    const-string v4, "www.upay360.cn"

    invoke-virtual {v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :try_start_0
    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ping -c 3 -w 5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getOp()Lcom/upay/billing/bean/Op;
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->key:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :sswitch_0
    sget-object v0, Lcom/upay/billing/bean/Op;->CMCC:Lcom/upay/billing/bean/Op;

    :goto_0
    return-object v0

    :sswitch_1
    sget-object v0, Lcom/upay/billing/bean/Op;->UNICOM:Lcom/upay/billing/bean/Op;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/upay/billing/bean/Op;->TELECOM:Lcom/upay/billing/bean/Op;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
    .end sparse-switch
.end method

.method public hasCustomConfirmUi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable(Lcom/upay/billing/bean/Op;ZZZZ)Z
    .locals 0

    return p2
.end method

.method public isComposable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMtAction(Lcom/upay/billing/MtContext;Lcom/upay/billing/utils/Json;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v1, "Upay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMtAction: exec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mtNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mtMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/upay/billing/MtContext;->trade:Lcom/upay/billing/bean/Trade;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/upay/billing/MtContext;->cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v1, v4, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/upay/billing/bean/Trade;->getSubTrade(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v11

    iget-object v6, v5, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const/16 v1, 0x18

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "trade_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "goods_key"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-object v3, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "cmd_key"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    iget-object v3, v4, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "bt_key"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    iget-object v3, v4, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "delete_mt"

    aput-object v3, v2, v1

    const/16 v3, 0x9

    iget-boolean v1, v4, Lcom/upay/billing/bean/Cmd;->deleteMt:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/16 v1, 0xa

    const-string v3, "description"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, ""

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "mt_msg"

    aput-object v3, v2, v1

    const/16 v1, 0xd

    aput-object p4, v2, v1

    const/16 v1, 0xe

    const-string v3, "mt_num"

    aput-object v3, v2, v1

    const/16 v1, 0xf

    aput-object p3, v2, v1

    const/16 v1, 0x10

    const-string v3, "result"

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string v3, "sn"

    aput-object v3, v2, v1

    const/16 v1, 0x13

    const-string v3, "sn"

    invoke-virtual {v11, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x14

    const-string v3, "up_msg"

    aput-object v3, v2, v1

    const/16 v1, 0x15

    const-string v3, ""

    aput-object v3, v2, v1

    const/16 v1, 0x16

    const-string v3, "up_num"

    aput-object v3, v2, v1

    const/16 v1, 0x17

    const-string v3, ""

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "trade_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "goods_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "cmd_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, v4, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "bt_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, v4, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "upay"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "mt_msg"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "mt_num"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "sn"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "sn"

    invoke-virtual {v11, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v12

    sget-object v1, Lcom/upay/billing/engine/upay/Main$9;->$SwitchMap$com$upay$billing$engine$upay$Main$ExecType:[I

    const-string v2, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/engine/upay/Main$ExecType;->valueOf(Ljava/lang/String;)Lcom/upay/billing/engine/upay/Main$ExecType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upay/billing/engine/upay/Main$ExecType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "state"

    invoke-virtual {v11, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    const/high16 v1, 0x80000

    goto :goto_1

    :cond_1
    const-string v1, "num"

    const-string v2, "$mt_num"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$mt_num"

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    iget-object v2, v4, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v3, "ckey"

    const-string v8, "default"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v4, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v8, 0x1

    if-le v3, v8, :cond_4

    const/4 v3, 0x0

    array-length v8, v2

    invoke-static {v3, v8}, Lcom/upay/billing/engine/upay/Main;->getRandom(II)I

    move-result v3

    aget-object v9, v2, v3

    :cond_2
    :goto_2
    const-string v2, "cmd_key"

    invoke-virtual {v11, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xfpj_cmd_key"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/upay/billing/engine/upay/Main;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "state"

    const-string v3, "state"

    invoke-virtual {v11, v3}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    :cond_3
    const-string v10, ""

    const-string v2, "mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$last_mo_msg"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/upay/billing/MtContext;->moMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p5

    array-length v3, v0

    move-object/from16 v17, v2

    move v2, v3

    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "$"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v8, p5, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "$uid"

    iget-wide v13, v5, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v8, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "$serialNo"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/upay/billing/MtContext;->serialNo:Ljava/lang/String;

    invoke-virtual {v3, v8, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    :cond_4
    iget-object v9, v4, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/upay/billing/MtContext;->moMsg:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/upay/billing/MtContext;->moMsg:Ljava/lang/String;

    const-string v13, "#"

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "$last_mo_msg"

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "verifycode"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reply_msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "reply_msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$minSn"

    const-string v8, "sn"

    invoke-virtual {v11, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-static {v8, v13}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$verify_code"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    :cond_7
    const-string v2, "charge"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v10, "0"

    :cond_8
    const/16 v2, 0x78

    new-array v0, v2, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v3, "upay"

    const-string v8, "mp_delay_reply_tag"

    const-string v13, "0"

    invoke-virtual {v2, v3, v8, v13}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v8, "upay"

    const-string v13, "mp_reply_num"

    const-string v14, "1065889920001"

    invoke-virtual {v3, v8, v13, v14}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v13, "upay"

    const-string v14, "sw_reply_num"

    const-string v16, "106588995604"

    move-object/from16 v0, v16

    invoke-virtual {v8, v13, v14, v0}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "1"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/upay/billing/engine/upay/Main;->getRandom(II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/upay/billing/engine/upay/Main;->verifyFlag:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v3, "common"

    const-string v8, "http_confirm_verify_flag"

    const-string v13, "1"

    invoke-virtual {v2, v3, v8, v13}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/upay/billing/engine/upay/Main;->checkNetwork()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v1, :cond_d

    const-string v1, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "topup4u*"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "topup4u*"

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :goto_6
    new-instance v1, Lcom/upay/billing/engine/upay/Main$2;

    const-string v3, "http://api.upay360.cn/function/smsMonitor/acceptSMS.jsp"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/upay/billing/engine/upay/Main$2;-><init>(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/utils/Json;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    const-string v2, "body"

    invoke-virtual {v1, v2, v8}, Lcom/upay/billing/engine/upay/Main$2;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    const-string v2, "number"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    const-string v2, "mobile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    const-string v2, "proc_time"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v5}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Time-Diff"

    invoke-static {v5, v6}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :cond_b
    :goto_7
    const/high16 v1, 0x80000

    goto/16 :goto_1

    :cond_c
    move-object/from16 v8, v17

    goto :goto_6

    :cond_d
    new-instance v13, Lcom/upay/billing/engine/upay/Main$3;

    move-object/from16 v14, p0

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    invoke-direct/range {v13 .. v25}, Lcom/upay/billing/engine/upay/Main$3;-><init>(Lcom/upay/billing/engine/upay/Main;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILcom/upay/billing/bean/Cmd;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    invoke-virtual {v13}, Lcom/upay/billing/engine/upay/Main$3;->run()V

    goto :goto_7

    :pswitch_1
    const-string v1, "num"

    const-string v2, "$mt_num"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$mt_num"

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$last_mo_msg"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/upay/billing/MtContext;->moMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object/from16 v0, p5

    array-length v2, v0

    move-object/from16 v17, v1

    move v1, v2

    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p5, v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$uid"

    iget-wide v8, v5, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$serialNo"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/upay/billing/MtContext;->serialNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    :cond_e
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/upay/billing/MtContext;->moMsg:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/upay/billing/MtContext;->moMsg:Ljava/lang/String;

    const-string v8, "#"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$last_mo_msg"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "verifycode"

    move-object/from16 v0, v17

    invoke-static {v1, v2, v0}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x78

    new-array v0, v1, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v2, "upay"

    const-string v3, "mp_delay_reply_tag"

    const-string v8, "0"

    invoke-virtual {v1, v2, v3, v8}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v3, "upay"

    const-string v8, "mp_reply_num"

    const-string v9, "1065889920001"

    invoke-virtual {v2, v3, v8, v9}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v8, "upay"

    const-string v9, "sw_reply_num"

    const-string v10, "106588995604"

    invoke-virtual {v3, v8, v9, v10}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/upay/billing/engine/upay/Main;->getRandom(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_11
    :goto_a
    new-instance v13, Lcom/upay/billing/engine/upay/Main$4;

    const-string v18, ""

    move-object/from16 v14, p0

    move-object/from16 v20, v11

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v5

    move-object/from16 v24, p2

    move-object/from16 v25, v12

    move-object/from16 v26, v4

    invoke-direct/range {v13 .. v26}, Lcom/upay/billing/engine/upay/Main$4;-><init>(Lcom/upay/billing/engine/upay/Main;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILcom/upay/billing/utils/Json;Ljava/lang/String;Lcom/upay/billing/utils/Json;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;Lcom/upay/billing/bean/Cmd;)V

    invoke-virtual {v13}, Lcom/upay/billing/engine/upay/Main$4;->run()V

    const/high16 v1, 0x80000

    goto/16 :goto_1

    :pswitch_2
    const-string v1, "state"

    invoke-virtual {v11, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_12

    const/high16 v1, 0x80000

    goto/16 :goto_1

    :cond_12
    const-string v1, "msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$last_mo_msg"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/upay/billing/MtContext;->moMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    array-length v1, v0

    :goto_b
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p5, v1

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_13
    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v11, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    or-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/upay/billing/engine/upay/Main;->getRandom(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/upay/billing/engine/upay/Main;->verifyFlag:Z

    if-eqz v1, :cond_14

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v3}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v13, "Time-Diff"

    invoke-static {v3, v13}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v13

    add-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_key"

    iget-object v3, v5, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_secret"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v9, v5, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v3

    iget-object v3, v3, Lcom/upay/billing/bean/Plan;->appSecret:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/upay/billing/utils/NativeUtil;->genHash(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_secret"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hash"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v2, "params"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/upay/billing/engine/upay/Main;->getParams(Lcom/upay/billing/bean/Trade;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "{}"

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v9, "sn"

    const-string v10, "sn"

    invoke-virtual {v11, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v9, "cmd_key"

    const-string v10, "cmd_key"

    invoke-virtual {v11, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v9, "security_code"

    invoke-virtual {v3, v9, v8}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "codes"

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->asJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v13

    new-instance v1, Lcom/upay/billing/engine/upay/Main$5;

    sget-object v3, Lcom/upay/billing/engine/upay/Main;->REPLY_VERIFY_URL:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object v9, v11

    move-object v10, v12

    invoke-direct/range {v1 .. v10}, Lcom/upay/billing/engine/upay/Main$5;-><init>(Lcom/upay/billing/engine/upay/Main;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/utils/Json;Ljava/lang/String;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    invoke-virtual {v1}, Lcom/upay/billing/engine/upay/Main$5;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :cond_14
    const/high16 v1, 0x80000

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "state"

    invoke-virtual {v11, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_15

    const/high16 v1, 0x80000

    goto/16 :goto_1

    :cond_15
    const-string v1, "num"

    const-string v2, "$mt_num"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$mt_num"

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "msg"

    const-string v2, "$1,$2,$3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v17, ""

    const-string v4, "+-*/"

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :goto_d
    new-instance v13, Lcom/upay/billing/engine/upay/Main$6;

    const-string v18, ""

    move-object/from16 v14, p0

    move-object/from16 v19, v11

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v13 .. v21}, Lcom/upay/billing/engine/upay/Main$6;-><init>(Lcom/upay/billing/engine/upay/Main;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/utils/Json;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V

    invoke-virtual {v13}, Lcom/upay/billing/engine/upay/Main$6;->run()V

    const/high16 v1, 0x80000

    goto/16 :goto_1

    :pswitch_4
    add-int v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_d

    :pswitch_5
    sub-int v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_d

    :pswitch_6
    mul-int v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_d

    :pswitch_7
    div-int v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_d

    :pswitch_8
    const/high16 v1, 0x80000

    goto/16 :goto_1

    :pswitch_9
    const v1, 0x100c8

    goto/16 :goto_1

    :pswitch_a
    const/high16 v1, 0x10000

    const-string v2, "code"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_a

    :catch_2
    move-exception v1

    goto/16 :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public pay(Lcom/upay/billing/bean/Trade;Ljava/util/List;)V
    .locals 11

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "verifycode"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upay/billing/engine/upay/Main;->verifyFlag:Z

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/upay/Main;->sendSucc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/upay/Main;->sendFail:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/upay/Main;->tradeList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/upay/Main;->verifySendSucc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/upay/Main;->verifySendFail:Ljava/util/List;

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v0, p1, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v1, "sn"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/bean/Cmd;

    iget-object v9, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v10, "cmd_key"

    invoke-virtual {v0, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_1
    iget-object v0, v1, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v2, "upay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    const-string v2, "heyi_ddo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "{}"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v2, "sn"

    invoke-virtual {v0, v2, v7}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    const-string v2, "cmd_key"

    iget-object v8, v1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v8}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    iget-object v2, p0, Lcom/upay/billing/engine/upay/Main;->tradeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/upay/billing/engine/upay/Main$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/upay/Main$1;-><init>(Lcom/upay/billing/engine/upay/Main;Lcom/upay/billing/bean/Trade;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public showProgressUi(Lcom/upay/billing/bean/Plan;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/upay/billing/engine/upay/Main$8;

    invoke-direct {v2, p0, p4, p3}, Lcom/upay/billing/engine/upay/Main$8;-><init>(Lcom/upay/billing/engine/upay/Main;ZLjava/lang/String;)V

    invoke-static {v1, p2, v0, p5, v2}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public showUssdWaitVerifyUI(Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;)V
    .locals 12

    const/4 v9, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v2

    const/16 v0, 0x18

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "trade_id"

    aput-object v0, v3, v8

    iget-object v0, p1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v0, v3, v1

    const-string v0, "goods_key"

    aput-object v0, v3, v5

    iget-object v0, p1, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v0, v3, v7

    const-string v0, "cmd_key"

    aput-object v0, v3, v9

    const/4 v0, 0x5

    iget-object v4, p3, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "bt_key"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p3, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "delete_mt"

    aput-object v4, v3, v0

    const/16 v4, 0x9

    iget-boolean v0, p3, Lcom/upay/billing/bean/Cmd;->deleteMt:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0xa

    const-string v4, "description"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string v4, ""

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string v4, "mt_msg"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string v4, ""

    aput-object v4, v3, v0

    const/16 v0, 0xe

    const-string v4, "mt_num"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    const-string v4, ""

    aput-object v4, v3, v0

    const/16 v0, 0x10

    const-string v4, "result"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x12

    const-string v4, "sn"

    aput-object v4, v3, v0

    const/16 v0, 0x13

    aput-object p2, v3, v0

    const/16 v0, 0x14

    const-string v4, "up_msg"

    aput-object v4, v3, v0

    const/16 v0, 0x15

    const-string v4, ""

    aput-object v4, v3, v0

    const/16 v0, 0x16

    const-string v4, "up_num"

    aput-object v4, v3, v0

    const/16 v0, 0x17

    const-string v4, ""

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v6

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "trade_id"

    aput-object v3, v0, v8

    iget-object v3, p1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v1, "goods_key"

    aput-object v1, v0, v5

    iget-object v1, p1, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v1, v0, v7

    const-string v1, "cmd_key"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    iget-object v3, p3, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "bt_key"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    iget-object v3, p3, Lcom/upay/billing/bean/Cmd;->btKey:Ljava/lang/String;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "description"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "upay"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "mt_msg"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, ""

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "mt_num"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, ""

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "sn"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    const-string v0, "upay_v_ui"

    invoke-virtual {v2, v0}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "upay_v_ui"

    new-instance v0, Lcom/upay/billing/engine/upay/Main$7;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/upay/Main$7;-><init>(Lcom/upay/billing/engine/upay/Main;Lcom/upay/billing/bean/Plan;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    invoke-static {v10, v11, v9, v8, v0}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    return-void

    :cond_0
    move v0, v8

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_v_ui.json"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->assetExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_v_ui.json"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->ussdVerifyLayout:Ljava/lang/String;

    move-object v9, v0

    goto :goto_1
.end method

.method public timeLimit(Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;)V
    .locals 4

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "timelimit"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p1, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "timelimit"

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p1, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "timelimit"

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public userTimeLimit(Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;)V
    .locals 5

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usertimelimit"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p1, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "usertimelimit"

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/upay/billing/utils/Util;->unserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-wide v3, p1, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p1, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "usertimelimit"

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p2, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
