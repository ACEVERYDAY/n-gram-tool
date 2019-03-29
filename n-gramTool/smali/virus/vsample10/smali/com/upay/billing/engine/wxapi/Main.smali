.class public Lcom/upay/billing/engine/wxapi/Main;
.super Lcom/upay/billing/Engine;


# static fields
.field private static final Get_Trade_Id_Fail:I = 0xb7

.field private static final TAG:Ljava/lang/String; = "wxapi"

.field private static final Wx_Service_Download_Fail:I = 0xb8

.field private static final Wx_Service_Install_Fail:I = 0xb9

.field private static final Wx_Service_Packagename_Repeat:I = 0xba


# instance fields
.field private final UPAY_WX_CALLBACK_ACTION:Ljava/lang/String;

.field private final WX_Get_Trade_Fail:I

.field private final WX_PackageName:Ljava/lang/String;

.field private final WX_Pay_Cancel:I

.field private final WX_Pay_Fail:I

.field private final WX_Pay_Ok:I

.field private final WX_Plug_In_PackageName:Ljava/lang/String;

.field private installTimer:Ljava/util/Timer;

.field private mTrade:Lcom/upay/billing/bean/Trade;

.field private wxCallbackReceiver:Landroid/content/BroadcastReceiver;

.field private wx_default_layout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/upay/billing/Engine;-><init>()V

    const-string v0, "com.upay.billing.UpayWXCallback"

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->UPAY_WX_CALLBACK_ACTION:Ljava/lang/String;

    const-string v0, "com.rabbit.newroke"

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->WX_Plug_In_PackageName:Ljava/lang/String;

    const-string v0, "com.tencent.mm"

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->WX_PackageName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/upay/billing/engine/wxapi/Main;->WX_Pay_Ok:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/upay/billing/engine/wxapi/Main;->WX_Pay_Cancel:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/upay/billing/engine/wxapi/Main;->WX_Pay_Fail:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/upay/billing/engine/wxapi/Main;->WX_Get_Trade_Fail:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->installTimer:Ljava/util/Timer;

    const-string v0, "{\"window-no-title\": true,\"window-full-screen\": true,\"content-view\": {\"type\": \"relative-layout\",\"width\": \"fill\",\"height\": \"fill\",\"children\": [{\"type\": \"relative-layout\",\"width\": \"wrap\",\"height\":\"wrap\",\"background\": \"#ffffff\",\"align\": \"hcenter vcenter\",\"margin\": \"auto 20dp auto 20dp\",\"children\": [{\"type\": \"image\",\"id\": \"background\",\"width\": \"fill\",\"height\": \"35dp\",\"background\": \"upay_top_\"},{\"id\": \"img5\",\"type\": \"image\",\"width\": \"wrap\",\"height\": \"wrap\",\"align\": \"hcenter auto\",\"margin\": \"5dp auto auto auto\",\"background\": \"upay_logo\"},{\"id\": \"label\",\"type\": \"text\",\"width\": \"fill\",\"height\": \"wrap\",\"align\": \"below background\",\"margin\": \"auto auto auto auto\",\"padding\": \"5dp auto 5dp 20dp\",\"text\": \"\u6e29\u99a8\u63d0\u793a\",\"background\": \"upay_md_bg\",\"text-color\": \"#089afc\",\"text-size\": \"17px\"},{\"id\": \"label6\",\"type\": \"text\",\"width\": \"fill\",\"height\": \"wrap\",\"align\": \"below label\",\"margin\": \"5dp 20dp auto 20dp\",\"padding\": \"3dp 3dp 3dp 5dp\",\"text\": \"\u4f7f\u7528\u5fae\u4fe1\u652f\u4ed8\u9700\u8981\u5b89\u88c5\u5fae\u4fe1\u5b89\u5168\u652f\u4ed8\u670d\u52a1\uff0c\u5426\u5219\u65e0\u6cd5\u6b63\u5e38\u652f\u4ed8\uff0c\u68c0\u6d4b\u5230\u60a8\u7684\u8bbe\u5907\u4e2d\u76ee\u524d\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\u5b89\u5168\u652f\u4ed8\u670d\u52a1\uff0c\u662f\u5426\u8fdb\u884c\u5b89\u88c5\uff1f\",\"background\": \"#fffbeb\",\"text-color\": \"#797979\",\"text-size\": \"15px\"},{\"type\": \"button\",\"id\": \"okButton\",\"width\": \"fill\",\"height\": \"38dp\",\"align\": \"below label6\",\"margin\": \"5dp 20dp auto 20dp\",\"text\": \"\u786e\u8ba4\u5b89\u88c5\",\"result-code\": \"ok\",\"background\": \"upay_pay_ok\",\"text-color\": \"#ffffff\",\"text-size\": \"17px\"},{\"type\": \"image\",\"width\": \"wrap\",\"height\": \"wrap\",\"align\": \"hcenter auto below okButton\",\"margin\": \"5dp auto auto auto\",\"image-src\": \"upay_logo_bottom\"}]}]}}"

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->wx_default_layout:Ljava/lang/String;

    new-instance v0, Lcom/upay/billing/engine/wxapi/Main$1;

    invoke-direct {v0, p0}, Lcom/upay/billing/engine/wxapi/Main$1;-><init>(Lcom/upay/billing/engine/wxapi/Main;)V

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->wxCallbackReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/upay/billing/engine/wxapi/Main;)Lcom/upay/billing/bean/Trade;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/wxapi/Main;->logPay(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/upay/billing/engine/wxapi/Main;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/wxapi/Main;->logCharge(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/upay/billing/engine/wxapi/Main;)Z
    .locals 1

    invoke-direct {p0}, Lcom/upay/billing/engine/wxapi/Main;->isAppOnForeground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/upay/billing/engine/wxapi/Main;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->installTimer:Ljava/util/Timer;

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

.method private isAppOnForeground()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private logCharge(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "charge_handle"

    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "trade_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cmd_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "wxapi"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bt_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "wxapi"

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

    iget-object v6, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

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

    iget-object v7, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

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

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

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

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "trade_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cmd_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "wxapi"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bt_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "wxapi"

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

    iget-object v6, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

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

    iget-object v7, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

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

    iget-object v5, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

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

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->wxCallbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
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

    iput-object p1, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iput-object p2, p0, Lcom/upay/billing/engine/wxapi/Main;->key:Ljava/lang/String;

    const-string v0, "com.upay.billing.engine.UpayCoreImpl"

    const-string v1, "getImplVcode"

    invoke-virtual {p0, v0, v1}, Lcom/upay/billing/engine/wxapi/Main;->verifyMethod(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public installApp(Ljava/io/File;)V
    .locals 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->installTimer:Ljava/util/Timer;

    new-instance v1, Lcom/upay/billing/engine/wxapi/Main$3;

    invoke-direct {v1, p0}, Lcom/upay/billing/engine/wxapi/Main$3;-><init>(Lcom/upay/billing/engine/wxapi/Main;)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->installTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

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

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public isAvailable(Lcom/upay/billing/bean/Op;ZZZZ)Z
    .locals 0

    return p3
.end method

.method public pay(Lcom/upay/billing/bean/Trade;Ljava/util/List;)V
    .locals 6

    const/16 v5, 0x79

    const/16 v4, 0x69

    const-string v0, "wxapi"

    const-string v1, "wxapi--->ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_trade_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->wxCallbackReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.upay.billing.UpayWXCallback"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v2, "common"

    const-string v3, "wx_packagename"

    const-string v4, "com.tencent.mm"

    invoke-virtual {v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/wxapi/Main;->appInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.rabbit.newroke"

    invoke-static {v0, v1}, Lcom/upay/billing/engine/wxapi/Main;->appInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/upay/billing/engine/wxapi/Main;->wxPay()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "upay_wx_ui"

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/upay/billing/engine/wxapi/Main;->showUI(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0, p1, v5}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v0, "no_weixin_installed"

    invoke-direct {p0, v5, v0}, Lcom/upay/billing/engine/wxapi/Main;->logPay(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0, p1, v4}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v0, "wxpay-no-network"

    invoke-direct {p0, v4, v0}, Lcom/upay/billing/engine/wxapi/Main;->logPay(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public showUI(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/upay/billing/engine/wxapi/Main$4;

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/upay/billing/engine/wxapi/Main$4;-><init>(Lcom/upay/billing/engine/wxapi/Main;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1, v0, v2, v3}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "upay_progress_ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->wx_default_layout:Ljava/lang/String;

    goto :goto_1
.end method

.method public verifyApp()V
    .locals 6

    const/16 v5, 0x79

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v1, "wxapi"

    const-string v2, "url"

    const-string v3, "http://cdn.upay360.cn/Wx_Plugin.apk"

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/upay/billing/engine/wxapi/Main;->installApp(Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "upay_progress_ui"

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u5fae\u4fe1\u5b89\u5168\u652f\u4ed8\u670d\u52a1\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/upay/billing/engine/wxapi/Main;->showUI(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/upay/billing/engine/wxapi/Main$2;

    invoke-direct {v1, p0, v0, v3}, Lcom/upay/billing/engine/wxapi/Main$2;-><init>(Lcom/upay/billing/engine/wxapi/Main;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v5}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v0, "code\uff1a184,error\uff1aweixin-service-download-fail"

    invoke-direct {p0, v5, v0}, Lcom/upay/billing/engine/wxapi/Main;->logPay(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public verifyMethod(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public wxPay()V
    .locals 5

    const/16 v4, 0x79

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.rabbit.newroke"

    const-string v2, "com.rabbit.newroke.WXPayActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "app_key"

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "app_secret"

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v3, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/bean/Plan;->appSecret:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "goods_key"

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cmd_key"

    const-string v2, "wxapi"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "uid"

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-wide v2, v2, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v4}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v0, "code\uff1a186,error\uff1aweixin-service-packagename-repeat"

    invoke-direct {p0, v4, v0}, Lcom/upay/billing/engine/wxapi/Main;->logPay(ILjava/lang/String;)V

    goto :goto_0
.end method
