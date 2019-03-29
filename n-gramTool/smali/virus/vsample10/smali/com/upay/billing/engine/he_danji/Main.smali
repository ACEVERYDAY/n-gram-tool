.class public Lcom/upay/billing/engine/he_danji/Main;
.super Lcom/upay/billing/engine/CommonEngine;


# static fields
.field private static final INITFAIL:I = 0xb4

.field private static final SPCPAFAIL:I = 0xb5

.field private static final SPPAYFAIL:I = 0xb6

.field private static final TAG:Ljava/lang/String; = "he_danji"

.field private static final chargeNum:Ljava/lang/String; = "1065889923"

.field private static final feeUrl:Ljava/lang/String; = "http://$ip/cmcc/g/single/s2sChargeSMS?pid=$pid&imsi=$imsi&imei=$imei&regist=0&version=$version&payId=$payId&chargeId=$chargeId&contentId=$contentId&channelId=$channelId"

.field private static final loginUrl:Ljava/lang/String; = "http://$login_ip/mole3/login?cid=$cid&imei=$imei&imsi=$imsi&nike=$nike&brand=$brand&model=$model"

.field private static final payUrl:Ljava/lang/String; = "http://$pay_ip/mole3/sms?cid=$cid&imei=$imei&imsi=$imsi&nike=$nike&brand=$brand&model=$model"

.field private static final registrationNum:Ljava/lang/String; = "10658422"

.field private static final url_nc:Ljava/lang/String; = "$url?price=$price&imsi=$imsi&imei=$imei&cpparam=$cpparam&factory=$factory&model=$model&ua=$ua&os_version=$os_version&width=$width&height=$height"


# instance fields
.field private billing_b64:Ljava/lang/String;

.field private billing_b64_str:Ljava/lang/String;

.field private billing_dst:Ljava/lang/String;

.field private confirmFail:Ljava/util/List;

.field private count:I

.field private i:I

.field initTimer:Ljava/util/Timer;

.field private init_b64:Ljava/lang/String;

.field private init_b64_str:Ljava/lang/String;

.field private init_dst:Ljava/lang/String;

.field private layout:Ljava/lang/String;

.field private regFail:Ljava/util/List;

.field private regSmsFail:Ljava/util/List;

.field private sendFail:Ljava/util/List;

.field private sendSucc:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/upay/billing/engine/CommonEngine;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/upay/billing/engine/he_danji/Main;->i:I

    const-string v0, "{\"window-no-title\":true,\"window-full-screen\":false,\"content-view\":{\"type\":\"relative-layout\",\"width\":\"fill\",\"height\":\"fill\"}}"

    iput-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->layout:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->initTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->init_dst:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main;->init_dst:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->init_b64:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->sendFail:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main;->init_b64:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/upay/billing/engine/he_danji/Main;->pay_xq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/upay/billing/engine/he_danji/Main;->getChargeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->confirmFail:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/upay/billing/engine/he_danji/Main;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/UpayContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/upay/billing/engine/he_danji/Main;->brushes(Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/UpayContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->billing_dst:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main;->billing_dst:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->billing_b64:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main;->billing_b64:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->billing_b64_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main;->billing_b64_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/upay/billing/engine/he_danji/Main;)I
    .locals 1

    iget v0, p0, Lcom/upay/billing/engine/he_danji/Main;->i:I

    return v0
.end method

.method static synthetic access$1808(Lcom/upay/billing/engine/he_danji/Main;)I
    .locals 2

    iget v0, p0, Lcom/upay/billing/engine/he_danji/Main;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/upay/billing/engine/he_danji/Main;->i:I

    return v0
.end method

.method static synthetic access$200(Lcom/upay/billing/engine/he_danji/Main;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->init_b64_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main;->init_b64_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/upay/billing/engine/he_danji/Main;->billing_sms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    return-void
.end method

.method static synthetic access$400(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->regSmsFail:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/he_danji/Main;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/upay/billing/engine/he_danji/Main;->logPay(ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->regFail:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->sendSucc:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/upay/billing/engine/he_danji/Main;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/upay/billing/engine/he_danji/Main;->logCharge(Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private billing_sms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V
    .locals 12

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$7;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/upay/billing/engine/he_danji/Main$7;-><init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;I)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private brushes(Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/UpayContext;Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/upay/billing/UpayConstant;->UPAY_PROP_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v4, "he_danji_brushes"

    invoke-virtual {v0, v4}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v4

    invoke-virtual {v4}, Lcom/upay/billing/utils/Json;->length()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Lcom/upay/billing/utils/Json;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {v4, v0}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v9, [Z

    aput-boolean v1, v4, v1

    move-object v0, v2

    :cond_1
    :goto_1
    aget-boolean v2, v4, v1

    if-nez v2, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/upay/billing/engine/he_danji/Main;->getRandom(II)I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v2, "cmd_key"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    aput-boolean v9, v4, v1

    goto :goto_1

    :cond_2
    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ip"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pid"

    invoke-virtual {v0, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "contentId"

    invoke-virtual {v0, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "channelId"

    invoke-virtual {v0, v5}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cpId"

    invoke-virtual {v0, v6}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "chargeId"

    invoke-virtual {v0, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3, v9}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http://$ip/cmcc/g/single/s2sChargeSMS?pid=$pid&imsi=$imsi&imei=$imei&regist=0&version=$version&payId=$payId&chargeId=$chargeId&contentId=$contentId&channelId=$channelId"

    const-string v9, "$imsi"

    iget-object v10, p2, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "$imei"

    iget-object v10, p2, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "$ip"

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "$version"

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$pid"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$contentId"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$channelId"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$cpId"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$chargeId"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$payId"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/upay/billing/engine/he_danji/Main$8;

    invoke-direct {v1, p0, v0}, Lcom/upay/billing/engine/he_danji/Main$8;-><init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private getChargeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payctrl:pay?args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&delayTime=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRandom(II)I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private final logCharge(Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "result"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "mt_num"

    invoke-virtual {v0, v1, p6}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "mt_msg"

    invoke-virtual {v0, v1, p7}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1, p8}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "price"

    iget v2, p2, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v4}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Time-Diff"

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "charge_handle"

    invoke-virtual {p4}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final logPay(ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "result"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1, p7}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1, p8}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "price"

    iget v2, p3, Lcom/upay/billing/bean/Cmd;->price:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "ts"

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v4}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Time-Diff"

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    invoke-virtual {p5}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private pay_xq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v2, "http://$pay_ip/mole3/sms?cid=$cid&imei=$imei&imsi=$imsi&nike=$nike&brand=$brand&model=$model"

    const-string v3, "$pay_ip"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$cid"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$imei"

    invoke-virtual {v2, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$imsi"

    invoke-virtual {v2, v3, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$nike"

    invoke-virtual {v2, v3, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$brand"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$model"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$6;

    move-object v1, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move/from16 v8, p9

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/upay/billing/engine/he_danji/Main$6;-><init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

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
.method public getOp()Lcom/upay/billing/bean/Op;
    .locals 1

    sget-object v0, Lcom/upay/billing/bean/Op;->CMCC:Lcom/upay/billing/bean/Op;

    return-object v0
.end method

.method public hasCustomConfirmUi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable(Lcom/upay/billing/bean/Op;ZZZZ)Z
    .locals 1

    sget-object v0, Lcom/upay/billing/bean/Op;->CMCC:Lcom/upay/billing/bean/Op;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComposable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMtAction(Lcom/upay/billing/MtContext;Lcom/upay/billing/utils/Json;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "he_danji"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMtAction: exec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mtNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mtMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/upay/billing/engine/he_danji/Main$9;->$SwitchMap$com$upay$billing$engine$he_danji$Main$ExecType:[I

    const-string v1, "type"

    invoke-virtual {p2, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/engine/he_danji/Main$ExecType;->valueOf(Ljava/lang/String;)Lcom/upay/billing/engine/he_danji/Main$ExecType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upay/billing/engine/he_danji/Main$ExecType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, 0x80000

    goto :goto_0

    :pswitch_1
    const v0, 0x100c8

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x10000

    const-string v1, "code"

    invoke-virtual {p2, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pay(Lcom/upay/billing/bean/Trade;Ljava/util/List;)V
    .locals 34
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->regFail:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->sendSucc:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->sendFail:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->regSmsFail:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->confirmFail:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/upay/billing/engine/he_danji/Main;->count:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_0
    :goto_0
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upay/billing/utils/Json;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/upay/billing/engine/he_danji/Main;->count:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/upay/billing/engine/he_danji/Main;->count:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/upay/billing/engine/he_danji/Main;->count:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->length()I

    move-result v17

    const-string v3, "sn"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upay/billing/bean/Cmd;

    iget-object v6, v3, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    const-string v7, "cmd_key"

    invoke-virtual {v2, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v3

    :cond_2
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "trade_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "goods_key"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "cmd_key"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, v5, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "bt_key"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/he_danji/Main;->key:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "target"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "sn"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object v16, v2, v3

    const/16 v3, 0xc

    const-string v4, "request"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "response"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v7

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "trade_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "goods_key"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "cmd_key"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, v5, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "bt_key"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/he_danji/Main;->key:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "description"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "he_danji"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "mt_msg"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "mt_num"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "sn"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    aput-object v16, v2, v3

    invoke-static {v2}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v19

    :try_start_0
    iget-object v2, v5, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "{}"

    :goto_1
    invoke-static {v2}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v4, "upay"

    const-string v6, "make_up_num"

    const-string v8, "1888888"

    invoke-virtual {v3, v4, v6, v8}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v2, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "get-json"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v3, "url_init"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "url_billing"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "ssid"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "ssid"

    invoke-virtual {v6, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "imei"

    iget-object v9, v13, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "imsi"

    iget-object v9, v13, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "brand"

    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "model"

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "osbuild"

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v8, Lcom/upay/billing/engine/he_danji/Main$1;

    move-object/from16 v9, p0

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v18, v7

    invoke-direct/range {v8 .. v19}, Lcom/upay/billing/engine/he_danji/Main$1;-><init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/UpayContext;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    invoke-virtual {v8, v2}, Lcom/upay/billing/engine/he_danji/Main$1;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v2

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v2

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v2, v5, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const/4 v6, 0x1

    const/16 v8, 0x80

    const-string v9, ""

    iget-object v10, v5, Lcom/upay/billing/bean/Cmd;->msg:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/upay/billing/engine/he_danji/Main;->logPay(ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "get-nc"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "price"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_2
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v3, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    move-object v3, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v10, Landroid/graphics/Point;->x:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    const-string v11, "$url?price=$price&imsi=$imsi&imei=$imei&cpparam=$cpparam&factory=$factory&model=$model&ua=$ua&os_version=$os_version&width=$width&height=$height"

    const-string v12, "$url"

    invoke-virtual {v11, v12, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "$price"

    invoke-virtual {v4, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$imsi"

    iget-object v11, v13, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v12, ""

    invoke-static {v11, v12}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$imei"

    iget-object v11, v13, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    const-string v12, ""

    invoke-static {v11, v12}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$cpparam"

    move-object/from16 v0, v16

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$factory"

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$model"

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$ua"

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$os_version"

    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$width"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$height"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    new-instance v20, Lcom/upay/billing/engine/he_danji/Main$2;

    move-object/from16 v21, p0

    move-object/from16 v23, p1

    move-object/from16 v24, v16

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v19

    move/from16 v28, v17

    invoke-direct/range {v20 .. v28}, Lcom/upay/billing/engine/he_danji/Main$2;-><init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;I)V

    invoke-static/range {v20 .. v20}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    goto/16 :goto_2

    :cond_6
    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "get-xq"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v3, "ip"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v3, "cid"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v3, "login_nike"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "pay_nike"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_3
    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v6, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v6, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    :goto_3
    const-string v6, "http://$login_ip/mole3/login?cid=$cid&imei=$imei&imsi=$imsi&nike=$nike&brand=$brand&model=$model"

    const-string v8, "$login_ip"

    move-object/from16 v0, v23

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "$cid"

    move-object/from16 v0, v24

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "$imei"

    iget-object v9, v13, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "$imsi"

    iget-object v9, v13, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "$nike"

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$brand"

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$model"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    new-instance v20, Lcom/upay/billing/engine/he_danji/Main$3;

    move-object/from16 v21, p0

    move-object/from16 v26, v13

    move-object/from16 v27, p1

    move-object/from16 v28, v5

    move-object/from16 v29, v16

    move/from16 v30, v17

    move-object/from16 v31, v7

    move-object/from16 v32, v19

    invoke-direct/range {v20 .. v32}, Lcom/upay/billing/engine/he_danji/Main$3;-><init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/UpayContext;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Ljava/lang/String;ILcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;)V

    invoke-static/range {v20 .. v20}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "get-xqsdk"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_8
    iget-object v6, v5, Lcom/upay/billing/bean/Cmd;->num:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->regFail:Ljava/util/List;

    iget-object v3, v5, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->confirmFail:Ljava/util/List;

    iget-object v3, v5, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->regFail:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-eq v2, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->confirmFail:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ne v2, v0, :cond_a

    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/upay/billing/engine/he_danji/Main;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "upay_p_ui_n"

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v3}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    const/16 v3, 0x78

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_a
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v8, 0x78

    const-string v9, ""

    const-string v10, "code=120,errorCode = make up danji cmd"

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/upay/billing/engine/he_danji/Main;->logPay(ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "upay_progress_ui"

    goto :goto_4

    :cond_c
    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "get-blsdk"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "cid"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v3, "pid_cpa"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v3, "pid_pay"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v3, "chargepoint"

    invoke-virtual {v2, v3}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "amount"

    invoke-virtual {v2, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpparam:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#1#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "chargepoint:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "upay_blsdk_ui"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upay/billing/engine/he_danji/Main;->layout:Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v20, Lcom/upay/billing/engine/he_danji/Main$4;

    move-object/from16 v21, p0

    move/from16 v26, v17

    move-object/from16 v27, p1

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    move-object/from16 v31, v16

    move-object/from16 v32, v19

    invoke-direct/range {v20 .. v32}, Lcom/upay/billing/engine/he_danji/Main$4;-><init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/utils/Json;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V

    move-object/from16 v0, v20

    invoke-static {v2, v3, v4, v6, v0}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "version"

    const-string v4, "1.0.0.7"

    invoke-virtual {v2, v3, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ip"

    const-string v6, "182.92.21.219:10789"

    invoke-virtual {v2, v4, v6}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "params"

    invoke-virtual {v2, v6}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v2

    const-string v6, "http://$ip/cmcc/g/single/s2sChargeSMS?pid=$pid&imsi=$imsi&imei=$imei&regist=0&version=$version&payId=$payId&chargeId=$chargeId&contentId=$contentId&channelId=$channelId"

    const-string v8, "$imsi"

    iget-object v9, v13, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "$imei"

    iget-object v9, v13, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "$ip"

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$version"

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v2}, Lcom/upay/billing/utils/Json;->length()I

    move-result v23

    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v3

    const-string v4, "pid"

    invoke-virtual {v3, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "contentId"

    invoke-virtual {v3, v6}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "channelId"

    invoke-virtual {v3, v8}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cpId"

    invoke-virtual {v3, v9}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "chargeId"

    invoke-virtual {v3, v10}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v26, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "00"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/upay/billing/utils/Util;->shortenSn(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "$pid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "$contentId"

    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$channelId"

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$cpId"

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "$chargeId"

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$payId"

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$minTradeId"

    const/16 v6, 0x8

    const/16 v8, 0x12

    invoke-virtual {v10, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    new-instance v20, Lcom/upay/billing/engine/he_danji/Main$5;

    move-object/from16 v21, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v16

    move-object/from16 v29, v19

    move/from16 v30, v17

    move-object/from16 v32, v13

    invoke-direct/range {v20 .. v32}, Lcom/upay/billing/engine/he_danji/Main$5;-><init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;Ljava/lang/String;Lcom/upay/billing/utils/Json;IILcom/upay/billing/UpayContext;)V

    invoke-static/range {v20 .. v20}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_5

    :catch_2
    move-exception v6

    goto/16 :goto_3
.end method
