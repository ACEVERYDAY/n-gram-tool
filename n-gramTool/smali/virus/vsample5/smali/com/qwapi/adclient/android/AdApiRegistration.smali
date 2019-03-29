.class public Lcom/qwapi/adclient/android/AdApiRegistration;
.super Ljava/lang/Object;


# static fields
.field public static final PREFS_FILE_NAME:Ljava/lang/String; = "QWAdApiPrefsFile"

.field public static final PREF_NAME:Ljava/lang/String; = "userRegistered"

.field public static final REGISTER_APP_URL:Ljava/lang/String; = "{0}logAction?advid={1}&udid={2}&sid={3}"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRegistered(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "QWAdApiPrefsFile"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userRegistered"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static registerApplication(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/qwapi/adclient/android/AdApiRegistration;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/qwapi/adclient/android/DeviceContext;

    invoke-direct {v0, p0}, Lcom/qwapi/adclient/android/DeviceContext;-><init>(Landroid/content/Context;)V

    const-string v1, "{0}logAction?advid={1}&udid={2}&sid={3}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/qwapi/adclient/android/AdApiConfig;->getAPIUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {}, Lcom/qwapi/adclient/android/AdApiConfig;->getPublihserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/DeviceContext;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/qwapi/adclient/android/AdApiConfig;->getDefaultSiteId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QWAdApiPrefsFile"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Lcom/qwapi/adclient/android/AdApiRegistration$1;

    invoke-direct {v3, v2, v1, v0}, Lcom/qwapi/adclient/android/AdApiRegistration$1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/qwapi/adclient/android/DeviceContext;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
