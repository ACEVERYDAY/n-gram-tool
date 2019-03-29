.class public Lcom/upay/billing/engine/rm_woyd/LixianSMS;
.super Ljava/lang/Object;


# instance fields
.field private command:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private feetype:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mstrIMSI:Ljava/lang/String;

.field private reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

.field sendsms:Lcom/upay/billing/engine/rm_woyd/SendSMS;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/upay/billing/engine/rm_woyd/RequestDelegate;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->command:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->feetype:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->mstrIMSI:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->initPayPhoneHandler()V

    invoke-static {p3}, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->mstrIMSI:Ljava/lang/String;

    const-string v0, "feetype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->feetype:Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->feetype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->feetype:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->mstrIMSI:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/PhoneInfoTools;->isUnicomCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->sendSMStoServer()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->notUnicomCard()V

    goto :goto_0
.end method

.method static access$0(Lcom/upay/billing/engine/rm_woyd/LixianSMS;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private getMsg(Landroid/os/Bundle;)Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;
    .locals 4

    new-instance v0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;

    invoke-direct {v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;-><init>()V

    const-string v1, "key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setKey(Ljava/lang/String;)V

    const-string v1, "itfType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setItfType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setCommand(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->feetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setFeeType(Ljava/lang/String;)V

    const-string v1, "cpId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setCPID(Ljava/lang/String;)V

    const-string v1, "serviceId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setServiceID(Ljava/lang/String;)V

    const-string v1, "channelId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setChannelID(Ljava/lang/String;)V

    const-string v1, "appId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setAppID(Ljava/lang/String;)V

    const-string v1, "myId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setMyID(Ljava/lang/String;)V

    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setTIME(Ljava/lang/String;)V

    const-string v1, "cpcustom"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setCpcustom(Ljava/lang/String;)V

    const-string v1, "cporderId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setCPORDERID(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getCPID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setVerifyCode(Ljava/lang/String;)V

    const-string v1, "com.unicom.wounipaysms.duandai.LixianSMS.getMsg()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v0.getVerifyCode()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getVerifyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "tradeName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setTradeName(Ljava/lang/String;)V

    const-string v1, "price"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setPrice(Ljava/lang/String;)V

    const-string v1, "servicePhone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setServicePhone(Ljava/lang/String;)V

    const-string v1, "key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->setKey(Ljava/lang/String;)V

    return-object v0
.end method

.method private initPayPhoneHandler()V
    .locals 0

    return-void
.end method

.method private notUnicomCard()V
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    const/16 v1, 0x2708

    const-string v2, "\u975e\u8054\u901a\u7684\u5361\uff0c\u8bf7\u6362\u53e6\u5916\u7684\u652f\u4ed8\u65b9\u5f0f"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public sendConfirmSMSToServer()V
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->sendsms:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->sendsms:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendVerifySMSToServer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    const/16 v1, 0x8be

    const-string v2, "\u9a8c\u8bc1\u77ed\u4fe1\u53d1\u9001\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected sendSMStoServer()V
    .locals 4

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->getMsg(Landroid/os/Bundle;)Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getServicePhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    const/16 v1, 0x8bb

    const-string v2, "\u672a\u586b\u5165\u5ba2\u670d\u7535\u8bdd"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    const/16 v1, 0x8ba

    const-string v2, "\u672a\u586b\u5165\u4ea7\u54c1\u4ef7\u683c"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getTradeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    const/16 v1, 0x8b9

    const-string v2, "\u672a\u586b\u5165\u4ea4\u6613\u540d\u79f0"

    invoke-interface {v0, v1, v2}, Lcom/upay/billing/engine/rm_woyd/RequestDelegate;->requestFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/upay/billing/engine/rm_woyd/SendSMS;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    invoke-direct {v1, v2, v0, v3}, Lcom/upay/billing/engine/rm_woyd/SendSMS;-><init>(Landroid/content/Context;Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;Lcom/upay/billing/engine/rm_woyd/RequestDelegate;)V

    iput-object v1, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->sendsms:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/LixianSMS;->sendsms:Lcom/upay/billing/engine/rm_woyd/SendSMS;

    invoke-virtual {v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendOrderSMSToServer()V

    goto :goto_0
.end method
