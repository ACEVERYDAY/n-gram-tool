.class final Lcom/qwapi/adclient/android/AdApiRegistration$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/AdApiRegistration;->registerApplication(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dc:Lcom/qwapi/adclient/android/DeviceContext;

.field final synthetic val$settings:Landroid/content/SharedPreferences;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/qwapi/adclient/android/DeviceContext;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/AdApiRegistration$1;->val$settings:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/qwapi/adclient/android/AdApiRegistration$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/qwapi/adclient/android/AdApiRegistration$1;->val$dc:Lcom/qwapi/adclient/android/DeviceContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "userRegistered"

    :try_start_0
    const-class v0, Lcom/qwapi/adclient/android/AdApiRegistration;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/qwapi/adclient/android/AdApiRegistration$1;->val$settings:Landroid/content/SharedPreferences;

    const-string v2, "userRegistered"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qwapi/adclient/android/AdApiRegistration$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/qwapi/adclient/android/AdApiRegistration$1;->val$dc:Lcom/qwapi/adclient/android/DeviceContext;

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/DeviceContext;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qwapi/adclient/android/utils/Utils;->processUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/qwapi/adclient/android/utils/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/utils/HttpResponse;->getReturnCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qwapi/adclient/android/AdApiRegistration$1;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userRegistered"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "QuattroWirelessSDK/2.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem during registration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qwapi/adclient/android/AdApiRegistration$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    throw v0
.end method
