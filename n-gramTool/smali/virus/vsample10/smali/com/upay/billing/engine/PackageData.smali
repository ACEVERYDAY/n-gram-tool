.class public Lcom/upay/billing/engine/PackageData;
.super Ljava/lang/Object;


# static fields
.field private static final BUILD_DATE:Ljava/lang/String; = "20160229"

.field private static final ENGINES:Ljava/lang/String; = "[ {\"key\":\"upayc\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"upayu\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"upayt\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"alipay\",\"class\":\"com.upay.billing.engine.alipay.Main\",\"args\":\"\"}, {\"key\":\"tenpay\",\"class\":\"com.upay.billing.engine.tenpay.Main\",\"args\":\"\"}, {\"key\":\"he_danji\",\"class\":\"com.upay.billing.engine.he_danji.Main\",\"args\":\"\"}, {\"key\":\"dt_sms_c\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"dt_sms_u\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"dt_sms_t\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"card\",\"class\":\"com.upay.billing.engine.card.Main\",\"args\":\"\"}, {\"key\":\"checkc\",\"class\":\"com.upay.billing.engine.check.Main\",\"args\":\"\"}, {\"key\":\"checku\",\"class\":\"com.upay.billing.engine.check.Main\",\"args\":\"\"}, {\"key\":\"checkt\",\"class\":\"com.upay.billing.engine.check.Main\",\"args\":\"\"}, {\"key\":\"heyi_ddo\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"wxapi\",\"class\":\"com.upay.billing.engine.wxapi.Main\",\"args\":\"\"}, {\"key\":\"wxapi_now\",\"class\":\"com.upay.billing.engine.wxapi_now.Main\",\"args\":\"\"}, {\"key\":\"rm_woyd\",\"class\":\"com.upay.billing.engine.rm_woyd.Main\",\"args\":\"\"} ]"

.field private static final VERSION:Ljava/lang/String; = "and_sdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuildDate()Ljava/lang/String;
    .locals 4

    const-string v0, "20160229"

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yyyyMMdd"

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "20160229"

    goto :goto_0
.end method

.method public getEnginesJson()Ljava/lang/String;
    .locals 1

    const-string v0, "[ {\"key\":\"upayc\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"upayu\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"upayt\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"alipay\",\"class\":\"com.upay.billing.engine.alipay.Main\",\"args\":\"\"}, {\"key\":\"tenpay\",\"class\":\"com.upay.billing.engine.tenpay.Main\",\"args\":\"\"}, {\"key\":\"he_danji\",\"class\":\"com.upay.billing.engine.he_danji.Main\",\"args\":\"\"}, {\"key\":\"dt_sms_c\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"dt_sms_u\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"dt_sms_t\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"card\",\"class\":\"com.upay.billing.engine.card.Main\",\"args\":\"\"}, {\"key\":\"checkc\",\"class\":\"com.upay.billing.engine.check.Main\",\"args\":\"\"}, {\"key\":\"checku\",\"class\":\"com.upay.billing.engine.check.Main\",\"args\":\"\"}, {\"key\":\"checkt\",\"class\":\"com.upay.billing.engine.check.Main\",\"args\":\"\"}, {\"key\":\"heyi_ddo\",\"class\":\"com.upay.billing.engine.upay.Main\",\"args\":\"\"}, {\"key\":\"wxapi\",\"class\":\"com.upay.billing.engine.wxapi.Main\",\"args\":\"\"}, {\"key\":\"wxapi_now\",\"class\":\"com.upay.billing.engine.wxapi_now.Main\",\"args\":\"\"}, {\"key\":\"rm_woyd\",\"class\":\"com.upay.billing.engine.rm_woyd.Main\",\"args\":\"\"} ]"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "and_sdk"

    return-object v0
.end method
