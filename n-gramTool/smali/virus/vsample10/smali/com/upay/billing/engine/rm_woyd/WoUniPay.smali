.class public Lcom/upay/billing/engine/rm_woyd/WoUniPay;
.super Ljava/lang/Object;


# static fields
.field public static final CANCEL_PAY:I = 0x2707

.field public static final CPID_LENGTH_ERROR:I = 0x270d

.field public static final ERROR_PARTNER_INFO:I = 0x270a

.field public static final GET_ORDERID_FAILED:I = 0x270b

.field public static final NON_UNICOM_CARD:I = 0x2708

.field public static final PARSE_ERROR:I = 0x26fd

.field public static final REQUEST_MONEY_FAILED:I = 0x270f

.field public static final REQUEST_PARAM_ERROR:I = 0x270c

.field public static final SEND_SMS_FAILED:I = 0x2709

.field public static final UNKNOWN_ERROR:I = 0x270e

.field public static baoyueFeeType:Ljava/lang/String;

.field public static dianboFeeType:Ljava/lang/String;

.field private static instance:Lcom/upay/billing/engine/rm_woyd/WoUniPay;

.field private static mContext:Landroid/content/Context;

.field public static tuidingFeeType:Ljava/lang/String;


# instance fields
.field private hasSendOrderSMS:Z

.field private lixianSMS:Lcom/upay/billing/engine/rm_woyd/LixianSMS;

.field private mBundle:Landroid/os/Bundle;

.field private reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "13"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->baoyueFeeType:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->dianboFeeType:Ljava/lang/String;

    const-string v0, "14"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->tuidingFeeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/upay/billing/engine/rm_woyd/WoUniPay;
    .locals 1

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->instance:Lcom/upay/billing/engine/rm_woyd/WoUniPay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;

    invoke-direct {v0}, Lcom/upay/billing/engine/rm_woyd/WoUniPay;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->instance:Lcom/upay/billing/engine/rm_woyd/WoUniPay;

    :cond_0
    sget-object v0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->instance:Lcom/upay/billing/engine/rm_woyd/WoUniPay;

    return-object v0
.end method


# virtual methods
.method public payAsDuanDai(Landroid/os/Bundle;Lcom/upay/billing/engine/rm_woyd/RequestDelegate;)V
    .locals 3

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->mBundle:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    new-instance v0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->mBundle:Landroid/os/Bundle;

    sget-object v2, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, v2}, Lcom/upay/billing/engine/rm_woyd/LixianSMS;-><init>(Landroid/os/Bundle;Lcom/upay/billing/engine/rm_woyd/RequestDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->lixianSMS:Lcom/upay/billing/engine/rm_woyd/LixianSMS;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->hasSendOrderSMS:Z

    return-void
.end method

.method public sendConfirmSMS()V
    .locals 3

    iget-boolean v0, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->hasSendOrderSMS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->lixianSMS:Lcom/upay/billing/engine/rm_woyd/LixianSMS;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->hasSendOrderSMS:Z

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->lixianSMS:Lcom/upay/billing/engine/rm_woyd/LixianSMS;

    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->sendConfirmSMSToServer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    const/16 v1, 0x8bc

    const-string v2, "\u8ba2\u8d2d\u77ed\u4fe1\u5c1a\u672a\u53d1\u9001\uff0c\u4e0d\u80fd\u53d1\u9001\u9a8c\u8bc1\u77ed\u4fe1"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setRestAddress(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->REST_URL:Ljava/lang/String;

    return-void
.end method

.method public setServicesAddress(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/servicedata.do?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->URL:Ljava/lang/String;

    return-void
.end method
