.class public Lcom/upay/billing/UpayContext;
.super Ljava/lang/Object;


# instance fields
.field private core:Lcom/upay/billing/UpayCore;

.field public iccid:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field private location:Landroid/location/Location;

.field private loctionManager:Landroid/location/LocationManager;

.field public longitude:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public op:Lcom/upay/billing/bean/Op;

.field public os:Ljava/lang/String;

.field public root:Z

.field public screen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/upay/billing/UpayCore;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upay/billing/UpayContext;->root:Z

    iput-object p1, p0, Lcom/upay/billing/UpayContext;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {p1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->mac:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-static {v1, v3}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->model:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " level "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->os:Ljava/lang/String;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->screen:Ljava/lang/String;

    invoke-static {}, Lcom/upay/billing/utils/Util;->checkRoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/upay/billing/UpayContext;->root:Z

    sget-object v1, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    const-string v1, ""

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v3, "46000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v3, "46002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v3, "46007"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    sget-object v1, Lcom/upay/billing/bean/Op;->CMCC:Lcom/upay/billing/bean/Op;

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "iccid"

    invoke-static {v2, v0}, Lcom/upay/billing/utils/Util;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyMMddHHmm"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v3}, Lcom/upay/billing/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x186a0

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const v4, 0xdbba0

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    const-string v0, "iccid"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->longitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->latitude:Ljava/lang/String;

    :try_start_0
    const-string v0, "location"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->loctionManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->loctionManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->location:Landroid/location/Location;

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->location:Landroid/location/Location;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->loctionManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->location:Landroid/location/Location;

    :cond_6
    iget-object v0, p0, Lcom/upay/billing/UpayContext;->location:Landroid/location/Location;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->longitude:Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->latitude:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    return-void

    :cond_8
    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v3, "46001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v3, "46006"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    sget-object v1, Lcom/upay/billing/bean/Op;->UNICOM:Lcom/upay/billing/bean/Op;

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v3, "46003"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v3, "46005"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    const-string v3, "46011"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_b
    sget-object v1, Lcom/upay/billing/bean/Op;->TELECOM:Lcom/upay/billing/bean/Op;

    iput-object v1, p0, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    goto/16 :goto_0

    :cond_c
    const-string v0, "SIM\u5361\u72b6\u6001\u6709\u8bef\uff0c\u8bf7\u68c0\u67e5SIM\u5361\uff01"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imei:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/upay/billing/UpayContext;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sn1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3
.end method


# virtual methods
.method public getParamMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "user_id"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v3, "id"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v3, "mobile"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_key"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ch_key"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "iccid"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imei"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imei:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imsi"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mac"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->mac:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->model:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "op"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    invoke-virtual {v1}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->os:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->screen:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "root"

    iget-boolean v0, p0, Lcom/upay/billing/UpayContext;->root:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "net"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->getNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->core:Lcom/upay/billing/UpayCore;

    iget-object v0, v0, Lcom/upay/billing/UpayCore;->context:Landroid/content/Context;

    const-string v1, "com.upay.billing.engine.PackageData"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v0, "getVersion"

    invoke-static {v1, v0}, Lcom/upay/billing/utils/Util;->invokeGetter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "getBuildDate"

    invoke-static {v1, v3}, Lcom/upay/billing/utils/Util;->invokeGetter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "vcode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "longitude"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->longitude:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "latitude"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->latitude:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public hasMobileNo()Z
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getUser()Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNetwork()Z
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public hasSms()Z
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->op:Lcom/upay/billing/bean/Op;

    sget-object v1, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is3G()Z
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/UpayContext;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WIFI"

    iget-object v1, p0, Lcom/upay/billing/UpayContext;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->getNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
