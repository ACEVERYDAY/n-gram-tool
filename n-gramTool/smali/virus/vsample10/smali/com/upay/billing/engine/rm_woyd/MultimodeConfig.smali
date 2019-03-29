.class public Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;
.super Ljava/lang/Object;


# static fields
.field public static CLIENT_URL:Ljava/lang/String;

.field public static GETPASSWD_URL:Ljava/lang/String;

.field public static Query_Consume:Ljava/lang/String;

.field public static REST_URL:Ljava/lang/String;

.field public static SMSDestinationAddress:Ljava/lang/String;

.field public static SMS_ENCODE_KEY:Ljava/lang/String;

.field public static URL:Ljava/lang/String;

.field public static URL_UNIPAY:Ljava/lang/String;

.field public static URL_UPOMP:Ljava/lang/String;

.field public static VAC_URL:Ljava/lang/String;

.field public static VERCODE_URL:Ljava/lang/String;

.field private static authentime:Ljava/lang/String;

.field private static callbackUrl:Ljava/lang/String;

.field private static fidvac:Ljava/lang/String;

.field private static handphone:Ljava/lang/String;

.field private static helpMsg:Ljava/lang/String;

.field private static imei:Ljava/lang/String;

.field private static imsi:Ljava/lang/String;

.field private static isNeedSave:Z

.field private static passwd:Ljava/lang/String;

.field private static payType:Ljava/lang/String;

.field private static phone:Ljava/lang/String;

.field public static source:Ljava/lang/String;

.field private static starttime:J

.field private static ua:Ljava/lang/String;

.field private static userid:Ljava/lang/String;

.field public static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->CLIENT_URL:Ljava/lang/String;

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->GETPASSWD_URL:Ljava/lang/String;

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->Query_Consume:Ljava/lang/String;

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->SMSDestinationAddress:Ljava/lang/String;

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->URL_UNIPAY:Ljava/lang/String;

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->URL_UPOMP:Ljava/lang/String;

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->VAC_URL:Ljava/lang/String;

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->VERCODE_URL:Ljava/lang/String;

    const-string v0, "http://client.iread.com.cn:6106/appstore_agent/unistore/servicedata.do?"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->CLIENT_URL:Ljava/lang/String;

    const-string v0, "http://client.iread.com.cn:6106/appstore_agent/getverifycode.do?"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->VERCODE_URL:Ljava/lang/String;

    const-string v0, "http://client.iread.com.cn:6106/appstore_agent/getpassword.do?"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->GETPASSWD_URL:Ljava/lang/String;

    const-string v0, "http://58.246.196.82:9008/servicedata.do?"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->VAC_URL:Ljava/lang/String;

    const-string v0, "http://119.39.227.243:9098/servicedata.do?"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->URL:Ljava/lang/String;

    const-string v0, "http://unipay3rd.iread.com.cn:9055/servicedata.do?"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->URL_UNIPAY:Ljava/lang/String;

    const-string v0, "http://210.51.195.14:8089/servicedata.do?"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->URL_UPOMP:Ljava/lang/String;

    const-string v0, "http://iread.wo.com.cn/"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->REST_URL:Ljava/lang/String;

    const-string v0, "3"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->source:Ljava/lang/String;

    const-string v0, "http://10.118.15.19:8088/servicedata.do?"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->Query_Consume:Ljava/lang/String;

    const-string v0, "123456"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->SMS_ENCODE_KEY:Ljava/lang/String;

    const-string v0, "001"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->version:Ljava/lang/String;

    const-string v0, "106566660010"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->SMSDestinationAddress:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->imsi:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->imei:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->phone:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->ua:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->isNeedSave:Z

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->passwd:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->fidvac:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->callbackUrl:Ljava/lang/String;

    const-string v0, "00000000000"

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->handphone:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->helpMsg:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->userid:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->payType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->starttime:J

    const-string v0, ""

    sput-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->authentime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthKeyStr()Ljava/lang/String;
    .locals 1

    const-string v0, "123456"

    return-object v0
.end method

.method public static getAuthentime()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->authentime:Ljava/lang/String;

    return-object v0
.end method

.method public static getCallbackUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getFidvac()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->fidvac:Ljava/lang/String;

    return-object v0
.end method

.method public static getHandphone()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->handphone:Ljava/lang/String;

    return-object v0
.end method

.method public static getHelpMsg()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->helpMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public static getImsi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public static getPasswd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->passwd:Ljava/lang/String;

    return-object v0
.end method

.method public static getPayType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhone()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public static getStarttime()J
    .locals 2

    sget-wide v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->starttime:J

    return-wide v0
.end method

.method public static getUA()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public static final getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "1.0.0"

    goto :goto_0
.end method

.method public static isNeedSave()Z
    .locals 1

    sget-boolean v0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->isNeedSave:Z

    return v0
.end method

.method public static setAuthentime(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->authentime:Ljava/lang/String;

    return-void
.end method

.method public static setCallbackUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->callbackUrl:Ljava/lang/String;

    return-void
.end method

.method public static setFidvac(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->fidvac:Ljava/lang/String;

    return-void
.end method

.method public static setHandphone(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->handphone:Ljava/lang/String;

    return-void
.end method

.method public static setHelpMsg(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->helpMsg:Ljava/lang/String;

    return-void
.end method

.method public static setImei(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->imei:Ljava/lang/String;

    return-void
.end method

.method public static setImsi(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->imsi:Ljava/lang/String;

    return-void
.end method

.method public static setNeedSave(Z)V
    .locals 0

    sput-boolean p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->isNeedSave:Z

    return-void
.end method

.method public static setPasswd(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->passwd:Ljava/lang/String;

    return-void
.end method

.method public static setPayType(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->payType:Ljava/lang/String;

    return-void
.end method

.method public static setPhone(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->phone:Ljava/lang/String;

    return-void
.end method

.method public static setStarttime(J)V
    .locals 0

    sput-wide p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->starttime:J

    return-void
.end method

.method public static setUA(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->ua:Ljava/lang/String;

    return-void
.end method

.method public static setUserid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/upay/billing/engine/rm_woyd/MultimodeConfig;->userid:Ljava/lang/String;

    return-void
.end method
