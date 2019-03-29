.class public Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;
.super Ljava/lang/Object;


# instance fields
.field private AppID:Ljava/lang/String;

.field private CPID:Ljava/lang/String;

.field private CPORDERID:Ljava/lang/String;

.field private ChannelID:Ljava/lang/String;

.field private Command:Ljava/lang/String;

.field private Cpcustom:Ljava/lang/String;

.field private FeeType:Ljava/lang/String;

.field private MyID:Ljava/lang/String;

.field private ServiceID:Ljava/lang/String;

.field private TIME:Ljava/lang/String;

.field private itfType:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private servicePhone:Ljava/lang/String;

.field private showDialog:Z

.field private tradeName:Ljava/lang/String;

.field private verifyCode:Ljava/lang/String;

.field private ystr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->itfType:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->Command:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->FeeType:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->CPID:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->ServiceID:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->ChannelID:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->AppID:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->MyID:Ljava/lang/String;

    const-string v0, "000000"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->TIME:Ljava/lang/String;

    const-string v0, "00000000000000000000000000000000"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->CPORDERID:Ljava/lang/String;

    const-string v0, "000"

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->Cpcustom:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkPamas(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "0"

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->AppID:Ljava/lang/String;

    return-object v0
.end method

.method public getCPID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->CPID:Ljava/lang/String;

    return-object v0
.end method

.method public getCPORDERID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->CPORDERID:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->ChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->Command:Ljava/lang/String;

    return-object v0
.end method

.method public getCpcustom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->Cpcustom:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->FeeType:Ljava/lang/String;

    return-object v0
.end method

.method public getItfType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->itfType:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMyID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->MyID:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->ServiceID:Ljava/lang/String;

    return-object v0
.end method

.method public getServicePhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->servicePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsContent()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getItfType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getFeeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getCPID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getServiceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getChannelID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getMyID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getTIME()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getCPORDERID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->CPID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->ServiceID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->AppID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->TIME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->CPORDERID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/engine/rm_woyd/CryptUtil;->doMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/16 v2, 0x8

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->Cpcustom:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTIME()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->TIME:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->tradeName:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->verifyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getYstr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->ystr:Ljava/lang/String;

    return-object v0
.end method

.method public isShowDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->showDialog:Z

    return v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->checkPamas(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->AppID:Ljava/lang/String;

    return-void
.end method

.method public setCPID(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->checkPamas(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->CPID:Ljava/lang/String;

    return-void
.end method

.method public setCPORDERID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->CPORDERID:Ljava/lang/String;

    return-void
.end method

.method public setChannelID(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "00"

    :goto_0
    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->ChannelID:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->checkPamas(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->Command:Ljava/lang/String;

    return-void
.end method

.method public setCpcustom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->Cpcustom:Ljava/lang/String;

    return-void
.end method

.method public setFeeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->FeeType:Ljava/lang/String;

    return-void
.end method

.method public setItfType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->itfType:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setMyID(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->checkPamas(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->MyID:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->price:Ljava/lang/String;

    return-void
.end method

.method public setServiceID(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->checkPamas(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->ServiceID:Ljava/lang/String;

    return-void
.end method

.method public setServicePhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->servicePhone:Ljava/lang/String;

    return-void
.end method

.method public setShowDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->showDialog:Z

    return-void
.end method

.method public setTIME(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->checkPamas(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->TIME:Ljava/lang/String;

    return-void
.end method

.method public setTradeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->tradeName:Ljava/lang/String;

    return-void
.end method

.method public setVerifyCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->verifyCode:Ljava/lang/String;

    return-void
.end method

.method public setYstr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->ystr:Ljava/lang/String;

    return-void
.end method
