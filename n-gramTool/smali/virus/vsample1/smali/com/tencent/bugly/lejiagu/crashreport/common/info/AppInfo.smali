.class public Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/app/ActivityManager;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "BUGLY_DISABLE"

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->c:Ljava/lang/String;

    .line 39
    const-string v0, ",msdk,imsdk,tbscore,lejiagu,opengame"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a:[Ljava/lang/String;

    .line 40
    const-string v0, "0,1,2,3,4,5"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    :cond_1
    const-string v0, "fail"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 338
    const/4 v2, 0x0

    .line 340
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    const/16 v2, 0x200

    :try_start_1
    new-array v2, v2, [C

    .line 342
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    .line 344
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 345
    aget-char v3, v2, v0

    if-nez v3, :cond_2

    .line 349
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    .line 350
    const/4 v2, 0x0

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 359
    if-eqz v1, :cond_1

    .line 360
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 364
    :cond_1
    :goto_1
    return-object v0

    .line 344
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 353
    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 354
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 356
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 359
    if-eqz v1, :cond_1

    .line 360
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 362
    :catch_1
    move-exception v1

    goto :goto_1

    .line 358
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 359
    :goto_3
    if-eqz v1, :cond_4

    .line 360
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 364
    :cond_4
    :goto_4
    throw v0

    .line 362
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 358
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 352
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 204
    sput-boolean p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->e:Z

    .line 205
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->e:Z

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 84
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 91
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 93
    if-eqz v2, :cond_0

    .line 94
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 95
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 67
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 68
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Can not get version name in AndroidManifest.xml."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    :try_start_1
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    :cond_0
    const-string v0, "fail"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 114
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "android.permission.READ_LOGS"

    invoke-static {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 377
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 394
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 399
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 400
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-object v0

    .line 404
    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 405
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 406
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 408
    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 420
    if-nez p0, :cond_0

    move v0, v1

    .line 439
    :goto_0
    return v0

    .line 423
    :cond_0
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->d:Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    .line 424
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->d:Landroid/app/ActivityManager;

    .line 427
    :cond_1
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 428
    sget-object v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->d:Landroid/app/ActivityManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 429
    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v0, :cond_2

    .line 430
    const-string v0, "Memory is low."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 433
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 437
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move v0, v1

    .line 439
    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 445
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 446
    :goto_0
    sget-object v2, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 447
    add-int/lit8 v2, v0, 0x1

    :goto_1
    sget-object v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 448
    sget-object v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 449
    sget-object v5, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 450
    if-le v4, v5, :cond_0

    .line 451
    sget-object v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 452
    sget-object v5, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a:[Ljava/lang/String;

    sget-object v6, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a:[Ljava/lang/String;

    aget-object v6, v6, v2

    aput-object v6, v5, v0

    .line 453
    sget-object v5, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 454
    sget-object v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 455
    sget-object v5, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b:[Ljava/lang/String;

    sget-object v6, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b:[Ljava/lang/String;

    aget-object v6, v6, v2

    aput-object v6, v5, v0

    .line 456
    sget-object v5, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 447
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 446
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_2
    sget-object v4, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    .line 462
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.tencent.bugly."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".crashreport.CrashReport"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    const-string v0, "bugly"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 465
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.tencent.bugly."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".crashreport.CrashReport"

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 476
    :cond_4
    const-string v0, "[init] find bugly channel: %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v0, v7}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 469
    :catch_0
    move-exception v0

    goto :goto_4

    .line 480
    :cond_5
    return-object v3
.end method
