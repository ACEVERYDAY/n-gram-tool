.class public Lcom/upay/billing/sdk/Upay;
.super Ljava/lang/Object;


# static fields
.field private static context:Landroid/content/Context;

.field public static mContext:Landroid/content/Context;

.field private static final mapInstances:Ljava/util/HashMap;


# instance fields
.field private appInstalled:Z

.field appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private buildDate:J

.field private certHash:[B

.field private channelKey:Ljava/lang/String;

.field private conn:Landroid/content/ServiceConnection;

.field private initialized:Z

.field mapCallbacks:Ljava/util/HashMap;

.field mapInitCallbacks:Ljava/util/HashMap;

.field private receiver:Lcom/upay/billing/sdk/LocalReceiver;

.field private service:Lcom/upay/billing/IUpayService;

.field private session:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/sdk/Upay;->mapInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/upay/billing/sdk/Upay;->initialized:Z

    iput-boolean v0, p0, Lcom/upay/billing/sdk/Upay;->appInstalled:Z

    iput v0, p0, Lcom/upay/billing/sdk/Upay;->session:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/sdk/Upay;->mapCallbacks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/sdk/Upay;->mapInitCallbacks:Ljava/util/HashMap;

    new-instance v0, Lcom/upay/billing/sdk/a;

    invoke-direct {v0, p0}, Lcom/upay/billing/sdk/a;-><init>(Lcom/upay/billing/sdk/Upay;)V

    iput-object v0, p0, Lcom/upay/billing/sdk/Upay;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/upay/billing/sdk/Upay;)Lcom/upay/billing/IUpayService;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/sdk/Upay;->service:Lcom/upay/billing/IUpayService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/upay/billing/sdk/Upay;Lcom/upay/billing/IUpayService;)Lcom/upay/billing/IUpayService;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/sdk/Upay;->service:Lcom/upay/billing/IUpayService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/upay/billing/sdk/Upay;I)I
    .locals 0

    iput p1, p0, Lcom/upay/billing/sdk/Upay;->session:I

    return p1
.end method

.method static synthetic access$200(Lcom/upay/billing/sdk/Upay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/sdk/Upay;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upay/billing/sdk/Upay;)[B
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/sdk/Upay;->certHash:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/upay/billing/sdk/Upay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/sdk/Upay;->channelKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upay/billing/sdk/Upay;)J
    .locals 2

    iget-wide v0, p0, Lcom/upay/billing/sdk/Upay;->buildDate:J

    return-wide v0
.end method

.method private static final varargs choose(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/upay/billing/sdk/Upay;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    sget-object v1, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, "UPAY_APPKEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/upay/billing/sdk/Upay;->choose(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appKey must be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/upay/billing/sdk/Upay;->mapInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/sdk/Upay;

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILcom/upay/billing/sdk/UpayInitCallback;)V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    const-string v1, "start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/upay/billing/utils/Util;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/upay/billing/sdk/Upay;->initialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/upay/billing/sdk/Upay;->appKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/upay/billing/sdk/Upay;->appSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/sdk/Upay;->channelKey:Ljava/lang/String;

    iget-wide v0, p0, Lcom/upay/billing/sdk/Upay;->buildDate:J

    iput-wide v0, p0, Lcom/upay/billing/sdk/Upay;->buildDate:J

    sget-object v0, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    const-string v1, "update_enabled"

    invoke-static {v0, v1, p5}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    :try_start_0
    sget-object v0, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/sdk/Upay;->certHash:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_2
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/upay/billing/UpayConstant;->DEX_UPDATATIME_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/upay/billing/UpayConstant;->DEX_UPDATATIME_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/upay/billing/utils/Util;->appLastModified(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/classes.dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->deleteFile(Ljava/io/File;)V

    :cond_3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/upay/billing/UpayConstant;->PACK_UNZIP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_3
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".LocalService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/upay/billing/sdk/Upay;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_6

    :goto_4
    sget-object v1, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/upay/billing/sdk/Upay;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connot start billing service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/upay/billing/UpayConstant;->PACK_UNZIP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->deleteFile(Ljava/io/File;)V

    goto :goto_3

    :cond_6
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/upay/billing/sdk/Upay;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/upay/billing/sdk/Upay;->mapInitCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/upay/billing/sdk/LocalReceiver;

    invoke-direct {v0, p0}, Lcom/upay/billing/sdk/LocalReceiver;-><init>(Lcom/upay/billing/sdk/Upay;)V

    iput-object v0, p0, Lcom/upay/billing/sdk/Upay;->receiver:Lcom/upay/billing/sdk/LocalReceiver;

    sget-object v0, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/upay/billing/sdk/Upay;->receiver:Lcom/upay/billing/sdk/LocalReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.upay.billing.UpayCallback"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/upay/billing/sdk/Upay;->initialized:Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method public static final initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/sdk/UpayInitCallback;)Lcom/upay/billing/sdk/Upay;
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/upay/billing/sdk/Upay;->initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/sdk/UpayInitCallback;)Lcom/upay/billing/sdk/Upay;

    move-result-object v0

    return-object v0
.end method

.method public static final initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayInitCallback;)Lcom/upay/billing/sdk/Upay;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/sdk/Upay;->initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayInitCallback;)Lcom/upay/billing/sdk/Upay;

    move-result-object v0

    return-object v0
.end method

.method public static final initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/sdk/UpayInitCallback;)Lcom/upay/billing/sdk/Upay;
    .locals 9

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    sput-object p0, Lcom/upay/billing/sdk/Upay;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string v1, "upay_app_info.txt"

    invoke-static {p0, v1}, Lcom/upay/billing/utils/Util;->assetExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "upay_app_info.txt"

    invoke-static {p0, v1}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "UPAY_APPKEY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/upay/billing/sdk/Upay;->choose(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    const-string v6, "UPAY_APPSECRET"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/upay/billing/sdk/Upay;->choose(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_5

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appKey and appSecret must be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p0

    goto :goto_0

    :cond_3
    const-string v1, "app_info.txt"

    invoke-static {p0, v1}, Lcom/upay/billing/utils/Util;->assetExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "app_info.txt"

    invoke-static {p0, v1}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, "{}"

    goto :goto_2

    :cond_5
    const-string v4, "default"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    const-string v7, "UPAY_CHANNELKEY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "channel"

    invoke-virtual {v1, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/upay/billing/sdk/Upay;->choose(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "20140101"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p4, v6, v7

    const/4 v7, 0x1

    const-string v8, "UPAY_BUILDDATE"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x2

    const-string v7, "build_date"

    invoke-virtual {v1, v7}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Lcom/upay/billing/sdk/Upay;->choose(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v0, Lcom/upay/billing/sdk/Upay;

    invoke-direct {v0}, Lcom/upay/billing/sdk/Upay;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yyyyMMdd"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upay/billing/utils/Util;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/upay/billing/sdk/Upay;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILcom/upay/billing/sdk/UpayInitCallback;)V

    sget-object v1, Lcom/upay/billing/sdk/Upay;->mapInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method public static final initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayInitCallback;)Lcom/upay/billing/sdk/Upay;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/upay/billing/sdk/Upay;->initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/sdk/UpayInitCallback;)Lcom/upay/billing/sdk/Upay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public batchVerifySmsPay(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/upay/billing/utils/Util;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/sdk/Upay;->service:Lcom/upay/billing/IUpayService;

    invoke-interface {v2, v1}, Lcom/upay/billing/IUpayService;->batchVerifySmsPay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public exit()V
    .locals 11

    :try_start_0
    sget-object v0, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    const-string v1, "start_time"

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    const/4 v1, 0x0

    const-string v2, "upay_app_live"

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const-string v10, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/upay/billing/sdk/Upay;->logPeriodicEvent(Ljava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;)V

    sget-object v0, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/upay/billing/sdk/Upay;->receiver:Lcom/upay/billing/sdk/LocalReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/upay/billing/sdk/Upay;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getTrade(Ljava/lang/String;)Lcom/upay/billing/bean/Trade;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/sdk/Upay;->service:Lcom/upay/billing/IUpayService;

    iget v1, p0, Lcom/upay/billing/sdk/Upay;->session:I

    invoke-interface {v0, v1, p1}, Lcom/upay/billing/IUpayService;->getTrade(ILjava/lang/String;)Lcom/upay/billing/bean/Trade;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logConsumeEvent(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cp_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p1, v2}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "item"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "price"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "levels"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "int_extra"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "str_extra"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object p7, v0, v1

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/sdk/Upay;->service:Lcom/upay/billing/IUpayService;

    iget v2, p0, Lcom/upay/billing/sdk/Upay;->session:I

    const-string v3, "custom_consume"

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/upay/billing/IUpayService;->logEvent(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public logIncidentEvent(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cp_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p1, v2}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "names"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v2, "result"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "levels"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "int_extra"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "str_extra"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object p6, v0, v1

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/sdk/Upay;->service:Lcom/upay/billing/IUpayService;

    iget v2, p0, Lcom/upay/billing/sdk/Upay;->session:I

    const-string v3, "custom_incident"

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/upay/billing/IUpayService;->logEvent(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public logPeriodicEvent(Ljava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;)V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cp_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p1, v2}, Lcom/upay/billing/utils/Util;->ifEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "names"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v2, "result"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "levels"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-wide/16 v2, 0x3e8

    div-long v2, p7, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "int_extra"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "str_extra"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object p10, v0, v1

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/sdk/Upay;->service:Lcom/upay/billing/IUpayService;

    iget v2, p0, Lcom/upay/billing/sdk/Upay;->session:I

    const-string v3, "custom_periodic"

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/upay/billing/IUpayService;->logEvent(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/sdk/UpayCallback;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/upay/billing/sdk/Upay;->context:Landroid/content/Context;

    const-string v1, "SHOWLOADINGFLAG"

    invoke-static {v0, v1, p3}, Lcom/upay/billing/utils/Util;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "goodsKey and callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/upay/billing/utils/Util;->unFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/sdk/Upay;->service:Lcom/upay/billing/IUpayService;

    iget v1, p0, Lcom/upay/billing/sdk/Upay;->session:I

    invoke-interface {v0, v1, p1, p2}, Lcom/upay/billing/IUpayService;->pay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/sdk/Upay;->mapCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayCallback;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/upay/billing/sdk/Upay;->pay(Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/sdk/UpayCallback;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method public verifySmsPay(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/sdk/Upay;->service:Lcom/upay/billing/IUpayService;

    invoke-interface {v1, p1}, Lcom/upay/billing/IUpayService;->verifySmsPay(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
