.class public final Lcom/apkol/utils/o;
.super Ljava/lang/Object;
.source "PhoneUtil.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const-class v0, Lcom/apkol/utils/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/o;->f:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/apkol/utils/o;->g:Ljava/lang/String;

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/apkol/utils/o;->h:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/apkol/utils/o;->i:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;

    .line 47
    sput-object v1, Lcom/apkol/utils/o;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/apkol/utils/o;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/o;->g:Ljava/lang/String;

    .line 56
    :cond_0
    sget-object v0, Lcom/apkol/utils/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    .line 62
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    check-cast v0, Landroid/view/WindowManager;

    .line 63
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    .line 71
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 72
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/o;->h:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/apkol/utils/o;->h:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 81
    .line 83
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 85
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 113
    const/16 v0, 0xa

    .line 121
    :goto_0
    return v0

    :sswitch_0
    move v0, v1

    .line 90
    goto :goto_0

    :sswitch_1
    move v0, v2

    .line 93
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 96
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 99
    goto :goto_0

    :sswitch_4
    move v0, v1

    .line 102
    goto :goto_0

    :sswitch_5
    move v0, v2

    .line 105
    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 108
    goto :goto_0

    :sswitch_7
    move v0, v3

    .line 111
    goto :goto_0

    :cond_0
    move v0, v4

    .line 118
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v4

    .line 119
    goto :goto_0

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        0xb3b0 -> :sswitch_0
        0xb3b1 -> :sswitch_1
        0xb3b2 -> :sswitch_2
        0xb3b3 -> :sswitch_3
        0x704e0 -> :sswitch_4
        0x704e1 -> :sswitch_5
        0x704e2 -> :sswitch_6
        0x704e3 -> :sswitch_7
    .end sparse-switch
.end method

.method public static e(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 127
    const/4 v1, -0x1

    .line 129
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 130
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 148
    :goto_0
    return v0

    .line 135
    :pswitch_0
    const/4 v0, 0x0

    .line 136
    goto :goto_0

    .line 144
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    sget-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_2

    .line 157
    :cond_0
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 158
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 160
    :goto_0
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;

    .line 163
    :cond_1
    sget-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    sget-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;

    .line 165
    sget-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_2
    :goto_1
    sget-object v0, Lcom/apkol/utils/o;->j:Ljava/lang/String;

    return-object v0

    .line 159
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/apkol/utils/o;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/apkol/utils/o;->k:Ljava/lang/String;

    .line 185
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/o;->k:Ljava/lang/String;

    .line 185
    sget-object v0, Lcom/apkol/utils/o;->k:Ljava/lang/String;

    goto :goto_0
.end method
