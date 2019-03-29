.class public Lcom/upay/billing/engine/alipay/Main;
.super Lcom/upay/billing/Engine;


# static fields
.field private static final TAG:Ljava/lang/String; = "Alipay-Main"

.field private static final gzip:Ljava/lang/String; = "?gzip=1"

.field private static final payUrl:Ljava/lang/String; = "http://zfb.upay360.com/alipayto_v2.php"


# instance fields
.field private PAY_CODE:I

.field private container:Landroid/widget/RelativeLayout;

.field private layout:Ljava/lang/String;

.field private mTrade:Lcom/upay/billing/bean/Trade;

.field private response:Ljava/lang/String;

.field private result:I

.field private result_charge:I

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/upay/billing/Engine;-><init>()V

    const/16 v0, 0x79

    iput v0, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    const-string v0, "{\"window-no-title\":true,\"window-full-screen\":false,\"content-view\":{\"type\":\"relative-layout\",\"width\":\"fill\",\"height\":\"fill\"}}"

    iput-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->layout:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/upay/billing/engine/alipay/Main;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/upay/billing/engine/alipay/Main;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/alipay/Main;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->container:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/upay/billing/engine/alipay/Main;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/alipay/Main;->container:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$202(Lcom/upay/billing/engine/alipay/Main;I)I
    .locals 0

    iput p1, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    return p1
.end method

.method static synthetic access$300(Lcom/upay/billing/engine/alipay/Main;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/upay/billing/engine/alipay/Main;->exit(I)V

    return-void
.end method

.method private exit(I)V
    .locals 6

    const/16 v5, 0xc8

    const/4 v4, 0x1

    iget v0, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget v2, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    const-string v2, "alipay"

    iget v3, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/upay/billing/UpayCore;->tradeUpdated(Lcom/upay/billing/bean/Trade;Ljava/lang/String;II)V

    iget v0, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    iput v0, p0, Lcom/upay/billing/engine/alipay/Main;->result:I

    iget v0, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    iput v0, p0, Lcom/upay/billing/engine/alipay/Main;->result_charge:I

    const-string v0, "alipay-pay-success"

    iput-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->response:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lcom/upay/billing/engine/alipay/Main;->result:I

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->response:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/upay/billing/engine/alipay/Main;->logPay(ILjava/lang/String;)V

    iget v0, p0, Lcom/upay/billing/engine/alipay/Main;->result_charge:I

    if-ne v0, v5, :cond_0

    iget v0, p0, Lcom/upay/billing/engine/alipay/Main;->result_charge:I

    const-string v1, "alipay-charge-success"

    invoke-direct {p0, v0, v1}, Lcom/upay/billing/engine/alipay/Main;->logCharge(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    if-ne p1, v4, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_alipay_ui"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget v2, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget v0, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    iput v0, p0, Lcom/upay/billing/engine/alipay/Main;->result:I

    const/16 v0, 0x92

    iput v0, p0, Lcom/upay/billing/engine/alipay/Main;->result_charge:I

    const-string v0, "alipay-pay-fail"

    iput-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->response:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private logCharge(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "charge_handle"

    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "trade_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cmd_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "alipay"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bt_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "alipay"

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

    iget-object v6, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

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

    iget-object v7, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

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

    iget-object v5, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

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

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "trade_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cmd_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "alipay"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bt_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "alipay"

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

    iget-object v6, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

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

    iget-object v7, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

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

    iget-object v5, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

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


# virtual methods
.method public cancelPay(I)V
    .locals 3

    const/16 v2, 0x6e

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->container:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const-string v0, "alipay-pay-cancel"

    invoke-direct {p0, v2, v0}, Lcom/upay/billing/engine/alipay/Main;->logPay(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

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

.method public isAvailable(Lcom/upay/billing/bean/Op;ZZZZ)Z
    .locals 0

    return p3
.end method

.method public judgeAlipayUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "asyn_payment_result.htm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public pay(Lcom/upay/billing/bean/Trade;Ljava/util/List;)V
    .locals 5

    iput-object p1, p0, Lcom/upay/billing/engine/alipay/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/upay/billing/engine/UpayMResource;

    iget-object v1, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/upay/billing/engine/UpayMResource;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/upay/billing/engine/alipay/Main;->PAY_CODE:I

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_alipay_ui"

    iget-object v2, p0, Lcom/upay/billing/engine/alipay/Main;->layout:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/upay/billing/engine/alipay/Main$1;

    invoke-direct {v4, p0, p1}, Lcom/upay/billing/engine/alipay/Main$1;-><init>(Lcom/upay/billing/engine/alipay/Main;Lcom/upay/billing/bean/Trade;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main;->core:Lcom/upay/billing/UpayCore;

    const/16 v1, 0x69

    invoke-virtual {v0, p1, v1}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    const/16 v0, 0x79

    const-string v1, "alipay-no-network"

    invoke-direct {p0, v0, v1}, Lcom/upay/billing/engine/alipay/Main;->logPay(ILjava/lang/String;)V

    goto :goto_0
.end method
