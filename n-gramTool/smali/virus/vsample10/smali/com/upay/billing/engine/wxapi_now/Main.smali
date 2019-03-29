.class public Lcom/upay/billing/engine/wxapi_now/Main;
.super Lcom/upay/billing/Engine;


# static fields
.field private static APPID:Ljava/lang/String; = null

.field private static final FLAG:Ljava/lang/String; = "13"

.field private static final GETORDERMESSAGE_URL:Ljava/lang/String; = "http://api.upay360.cn/function/getPaydata.jsp"

.field private static final NOTIFY_URL:Ljava/lang/String; = "http://api.upay360.cn/function/dynamic_notify/now_pay/notify.jsp"

.field private static final TAG:Ljava/lang/String; = "wxapi_now"

.field private static act:Landroid/app/Activity; = null

.field private static final gzip:Ljava/lang/String; = "?gzip=1"

.field private static preSignStr:Ljava/lang/String;

.field private static progressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private final WX_PackageName:Ljava/lang/String;

.field private layout:Ljava/lang/String;

.field private mTrade:Lcom/upay/billing/bean/Trade;

.field private temp:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->progressDialog:Landroid/app/ProgressDialog;

    sput-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->preSignStr:Ljava/lang/String;

    sput-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->act:Landroid/app/Activity;

    const-string v0, "1453801194839795"

    sput-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->APPID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/upay/billing/Engine;-><init>()V

    const-string v0, "com.tencent.mm"

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->WX_PackageName:Ljava/lang/String;

    const-string v0, "{\"window-no-title\":true,\"window-full-screen\":true,\"content-view\":{\"type\":\"relative-layout\",\"width\":\"fill\",\"height\":\"fill\"}}"

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->layout:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/wxapi_now/Main;->act:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/wxapi_now/Main;Landroid/app/Activity;Ljava/lang/String;Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/upay/billing/engine/wxapi_now/Main;->goToPay(Landroid/app/Activity;Ljava/lang/String;Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V

    return-void
.end method

.method static synthetic access$200(Lcom/upay/billing/engine/wxapi_now/Main;)Lcom/upay/billing/bean/Trade;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upay/billing/engine/wxapi_now/Main;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/wxapi_now/Main;->logPay(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->preSignStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->progressDialog:Landroid/app/ProgressDialog;

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

.method private goToPay(Landroid/app/Activity;Ljava/lang/String;Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->progressDialog:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u83b7\u53d6\u7b7e\u540d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    sget-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object p2, p3, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->payChannelType:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->generatePreSignMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/wxapi_now/Main;->preSignStr:Ljava/lang/String;

    new-instance v0, Lcom/upay/billing/engine/wxapi_now/Main$GetMessage;

    invoke-direct {v0}, Lcom/upay/billing/engine/wxapi_now/Main$GetMessage;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paydata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/upay/billing/engine/wxapi_now/Main;->preSignStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/MerchantTools;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/wxapi_now/Main$GetMessage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private logCharge(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "charge_handle"

    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "trade_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cmd_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "wxapi_now"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bt_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "wxapi_now"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "description"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    aput-object p2, v3, v4

    const/16 v4, 0xa

    const-string v5, "mt_msg"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "mt_num"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "result"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "sn"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "ts"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "price"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget v5, v5, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logPay(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "trade_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cmd_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "wxapi_now"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bt_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "wxapi_now"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "target"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "sn"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "request"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "response"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    aput-object p2, v3, v4

    const/16 v4, 0x10

    const-string v5, "result"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "ts"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "price"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget v5, v5, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prePayMessage(Lcom/upay/billing/bean/Trade;Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V
    .locals 6

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->getGoods(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/bean/Goods;

    move-result-object v0

    sget-object v1, Lcom/upay/billing/engine/wxapi_now/Main;->APPID:Ljava/lang/String;

    iput-object v1, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->appId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderNo:Ljava/lang/String;

    iget-object v1, v0, Lcom/upay/billing/bean/Goods;->name:Ljava/lang/String;

    iput-object v1, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderName:Ljava/lang/String;

    const-string v1, "01"

    iput-object v1, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderType:Ljava/lang/String;

    const-string v1, "156"

    iput-object v1, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCurrencyType:Ljava/lang/String;

    iget v1, p1, Lcom/upay/billing/bean/Trade;->price:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderAmt:Ljava/lang/String;

    iget-object v0, v0, Lcom/upay/billing/bean/Goods;->label:Ljava/lang/String;

    iput-object v0, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderDetail:Ljava/lang/String;

    const-string v0, "3600"

    iput-object v0, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderTimeOut:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v4}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Time-Diff"

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtOrderStartTime:Ljava/lang/String;

    const-string v0, "http://api.upay360.cn/function/dynamic_notify/now_pay/notify.jsp"

    iput-object v0, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->notifyUrl:Ljava/lang/String;

    const-string v0, "UTF-8"

    iput-object v0, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtCharset:Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->key:Ljava/lang/String;

    iput-object v0, p2, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;->mhtReserved:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/upay/billing/engine/wxapi_now/Main;->showPayUI(Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V

    return-void
.end method


# virtual methods
.method public callbackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v3, 0x6e

    const/16 v4, 0xc8

    const/16 v2, 0x79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->temp:Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->temp:Ljava/lang/StringBuilder;

    const-string v1, "\u4ea4\u6613\u72b6\u6001:\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v4}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    const-string v2, "wxapi_now"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    const-string v0, "wxpay-pay-success"

    invoke-direct {p0, v4, v0}, Lcom/upay/billing/engine/wxapi_now/Main;->logPay(ILjava/lang/String;)V

    const-string v0, "wxpay-charge-success"

    invoke-direct {p0, v4, v0}, Lcom/upay/billing/engine/wxapi_now/Main;->logCharge(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wxnow"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->temp:Ljava/lang/StringBuilder;

    const-string v1, "\u4ea4\u6613\u72b6\u6001:\u53d6\u6d88"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v3}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v0, "code\uff1a110,error\uff1awxpay-pay-cancel"

    invoke-direct {p0, v3, v0}, Lcom/upay/billing/engine/wxapi_now/Main;->logPay(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->temp:Ljava/lang/StringBuilder;

    const-string v1, "\u4ea4\u6613\u72b6\u6001:\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: wxpay-pay-fail , code\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",errorMsg\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/upay/billing/engine/wxapi_now/Main;->logPay(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->temp:Ljava/lang/StringBuilder;

    const-string v1, "\u4ea4\u6613\u72b6\u6001:\u672a\u77e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: wxpay-pay-state-unknow , code\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",errorMsg\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/upay/billing/engine/wxapi_now/Main;->logPay(ILjava/lang/String;)V

    goto/16 :goto_0
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

.method public getOp()Lcom/upay/billing/bean/Op;
    .locals 1

    sget-object v0, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    return-object v0
.end method

.method public getPriceType()Lcom/upay/billing/bean/PriceType;
    .locals 1

    sget-object v0, Lcom/upay/billing/bean/PriceType;->ANY:Lcom/upay/billing/bean/PriceType;

    return-object v0
.end method

.method public hasCustomConfirmUi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public init(Lcom/upay/billing/UpayCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iput-object p2, p0, Lcom/upay/billing/engine/wxapi_now/Main;->key:Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/libplugin_phone.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/upay/billing/engine/wxapi_now/Main;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public isAvailable(Lcom/upay/billing/bean/Op;ZZZZ)Z
    .locals 0

    return p3
.end method

.method public pay(Lcom/upay/billing/bean/Trade;Ljava/util/List;)V
    .locals 3

    const-string v0, "wxapi_now"

    const-string v1, "wxapi_now--->ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_trade_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/upay/billing/engine/wxapi_now/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    new-instance v0, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/PreSignMessageUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/upay/billing/engine/wxapi_now/Main;->prePayMessage(Lcom/upay/billing/bean/Trade;Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V

    return-void
.end method

.method public showPayUI(Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V
    .locals 5

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wxnow"

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi_now/Main;->layout:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/upay/billing/engine/wxapi_now/Main$1;

    invoke-direct {v4, p0, p1}, Lcom/upay/billing/engine/wxapi_now/Main$1;-><init>(Lcom/upay/billing/engine/wxapi_now/Main;Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    return-void
.end method
