.class public Lcom/upay/billing/UpayConstant;
.super Ljava/lang/Object;


# static fields
.field public static API_BASE_URL:Ljava/lang/String; = null

.field public static final APP_NAME:Ljava/lang/String; = "Upay_Pay.apk"

.field public static final Analyze_Action_Fail:I = 0x83

.field public static final Bad_Command_Msg:I = 0x80

.field public static final CMD_INSTALL:Ljava/lang/String;

.field public static final CONFIRM_ACTION:Ljava/lang/String; = "com.upay.billing.ConfirmUiFinished"

.field public static final CUSTOM_URL:Ljava/lang/String; = "custom/create_e"

.field public static final Click_Cancel:I = 0x6e

.field public static final DEBUG:Z = false

.field public static final DELETE_ONLY:I = 0x80000

.field public static final DEX_UPDATATIME_PATH:Ljava/lang/String;

.field public static final Ds_Sms_NoMatch:I = 0x91

.field public static final EVENT_CHARGE:Ljava/lang/String; = "charge_handle"

.field public static final EVENT_CLICK:Ljava/lang/String; = "click_goods"

.field public static final EVENT_CONFIRM:Ljava/lang/String; = "goods_confirm"

.field public static final EVENT_PAY:Ljava/lang/String; = "exec_pay"

.field public static final EVENT_PUSH_RECEIVED:Ljava/lang/String; = "push_received"

.field public static final EVENT_PUSH_SHOWN:Ljava/lang/String; = "push_shown"

.field public static final EVENT_URL:Ljava/lang/String; = "event/create_e"

.field public static final EVENT_VERIFY:Ljava/lang/String; = "verify_handle"

.field public static final EXCEPTION_INFO:Ljava/lang/String; = "exception_info"

.field public static final EXTRA_INFO:Ljava/lang/String; = "extra_info"

.field public static final GET_PUSH_URL:Ljava/lang/String; = "push/list"

.field public static final Get_Command_Fail:I = 0x7b

.field public static final H5_BillingSms_Fail:I = 0x9c

.field public static final H5_LoginSms_Fail:I = 0x9b

.field public static final JSONUIIMPL_CLASS:Ljava/lang/String; = "com.upay.billing.engine.JsonUiImpl"

.field public static final METHOD_MASK:I = -0x10000

.field public static final MODEMPOOL_GET_URL:Ljava/lang/String; = "user/modempool_get"

.field public static final No_Goods:I = 0x66

.field public static final No_NetWayNum:I = 0x65

.field public static final No_NetWork:I = 0x69

.field public static final No_Number:I = 0x97

.field public static final No_PlanList:I = 0x67

.field public static final Open_Each_ThirdParty_Pay:I = 0xca

.field public static final Open_ThirdParty_Pay:I = 0xc9

.field public static final PACKAGEDATA_CLASS:Ljava/lang/String; = "com.upay.billing.engine.PackageData"

.field public static final PACK_UNZIP_PATH:Ljava/lang/String;

.field public static final PHONENUMBER_GET_URL:Ljava/lang/String; = "user/show"

.field public static final PLANLIST_GET_URL:Ljava/lang/String; = "plan/list_e"

.field public static final Pay_Fail:I = 0xa1

.field public static final RESOURCE_CACHE_PATH:Ljava/lang/String;

.field public static final RESOURCE_GET_URL:Ljava/lang/String;

.field public static final RESULT_INTENT_EXTRA:Ljava/lang/String; = "resultIntent"

.field public static final RESULT_MASK:I = 0xffff

.field public static final Ready_Pay_Fial:I = 0xa0

.field public static final Reg_Request_Fail:I = 0x7f

.field public static final Reg_SmsSend_Fail:I = 0x7e

.field public static final Request_Fail:I = 0x7c

.field public static final Request_Sms_Fail:I = 0x81

.field public static final SAVE_APP_PATH:Ljava/lang/String;

.field public static final Secondary_Pay_Fail:I = 0x82

.field public static final SmsSend_Fail:I = 0x78

.field public static final Sms_Success_Only:I = 0xcb

.field public static final Special_Channel_Fail:I = 0x7a

.field public static final Special_Channel_Fail_Charge:I = 0x93

.field public static final Success:I = 0xc8

.field public static final TRADE_END:I = 0x10000

.field public static final TRADE_GET_URL:Ljava/lang/String; = "trade/show"

.field public static final ThirdParty_Pay_Fail:I = 0x79

.field public static final ThirdParty_Pay_Fail_Charge:I = 0x92

.field public static final TimeOut:I = 0x68

.field public static final UPAYCOREIMPL_CLASS:Ljava/lang/String; = "com.upay.billing.engine.UpayCoreImpl"

.field public static final UPAY_PROP_PATH:Ljava/lang/String;

.field public static final UPAY_PROP_URL:Ljava/lang/String; = "http://cdn.upay360.cn/upay_properties.json"

.field public static final UpayAppPackageName:Ljava/lang/String; = "com.upay.billing"

.field public static final UpayAppServiceName:Ljava/lang/String; = "com.upay.billing.UpayService"

.field public static final UpaySdkServiceName:Ljava/lang/String; = "com.upay.billing.sdk.LocalService"

.field public static final Verify_Fail:I = 0x96

.field public static final downloadUrl:Ljava/lang/String; = "com.upay.pay.app"

.field public static final httpGetTimeOut:I = 0x7530

.field public static final progressDialogTimeOut:I = 0x493e0


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/upaybilling/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/UpayConstant;->SAVE_APP_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/upay/billing/UpayConstant;->SAVE_APP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "common/cache000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/UpayConstant;->UPAY_PROP_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "common/cache001/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/UpayConstant;->PACK_UNZIP_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/upay/billing/UpayConstant;->PACK_UNZIP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "updata_time.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/UpayConstant;->DEX_UPDATATIME_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pm install -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/upay/billing/UpayConstant;->SAVE_APP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Upay_Pay.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/UpayConstant;->CMD_INSTALL:Ljava/lang/String;

    const-string v0, "http://api.upay360.cn/api/"

    sput-object v0, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "resource/get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/UpayConstant;->RESOURCE_GET_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
