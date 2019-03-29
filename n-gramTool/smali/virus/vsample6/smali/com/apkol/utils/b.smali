.class public final Lcom/apkol/utils/b;
.super Ljava/lang/Object;
.source "ApkUtil.java"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "package"

.field private static final c:Ljava/lang/String; = "com.android.settings.ApplicationPkgName"

.field private static final d:Ljava/lang/String; = "pkg"

.field private static final e:Ljava/lang/String; = "com.android.settings"

.field private static final f:Ljava/lang/String; = "com.android.settings.InstalledAppDetails"

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/apkol/utils/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/utils/b;->a:Ljava/lang/String;

    .line 504
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/apkol/utils/a/a;)Lcom/apkol/utils/a/a;
    .locals 4

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 286
    const/4 v1, 0x1

    .line 285
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_2

    .line 288
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 289
    if-eqz v1, :cond_0

    .line 298
    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 299
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 300
    invoke-virtual {p2}, Lcom/apkol/utils/a/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/apkol/utils/a/a;->g(Ljava/lang/String;)V

    .line 304
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/apkol/utils/a/a;->d(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2, v2}, Lcom/apkol/utils/a/a;->c(Ljava/lang/String;)V

    .line 307
    :cond_2
    return-object p2
.end method

.method public static a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 410
    if-nez p0, :cond_0

    .line 419
    :goto_0
    return-object v0

    .line 413
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v1, :cond_1

    .line 414
    const-string v1, "-->>"

    const-string v2, "fcuk"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    :catch_0
    move-exception v1

    goto :goto_0

    .line 417
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/apkol/utils/b;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x10

    const-wide/16 v1, 0x0

    const/16 v9, 0x10

    const/16 v0, 0x8

    .line 455
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 456
    :cond_0
    const-string v0, "-1"

    .line 472
    :goto_0
    return-object v0

    .line 457
    :cond_1
    const/16 v3, 0x18

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 460
    const-string v3, ""

    .line 461
    const/4 v3, 0x0

    move-wide v4, v1

    :goto_1
    if-lt v3, v0, :cond_2

    .line 466
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 471
    add-long v0, v1, v4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 472
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_2
    mul-long/2addr v4, v10

    .line 463
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v4, v7

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 467
    :cond_3
    mul-long/2addr v1, v10

    .line 468
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v7, v3

    add-long/2addr v1, v7

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static final a([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 424
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    .line 427
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 428
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 429
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 430
    array-length v4, v3

    .line 431
    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [C

    move v1, v0

    .line 435
    :goto_0
    if-lt v1, v4, :cond_0

    .line 436
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 446
    :goto_1
    return-object v0

    .line 437
    :cond_0
    aget-byte v6, v3, v1

    .line 438
    add-int/lit8 v7, v0, 0x1

    .line 439
    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v5, v0

    .line 440
    add-int/lit8 v0, v7, 0x1

    .line 441
    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    add-int/lit8 v1, v1, 0x1

    .line 434
    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 446
    const/4 v0, 0x0

    goto :goto_1

    .line 424
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/utils/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/apkol/utils/b;->a(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/utils/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 514
    const/16 v0, 0x2000

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 515
    if-nez v0, :cond_0

    move-object v0, v4

    .line 582
    :goto_0
    return-object v0

    .line 519
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 520
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v5

    .line 582
    goto :goto_0

    .line 520
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 522
    if-nez p1, :cond_5

    .line 523
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4

    move v1, v7

    .line 536
    :goto_2
    if-eqz v1, :cond_1

    .line 537
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 539
    if-eqz v10, :cond_9

    const-string v1, ""

    if-eq v1, v10, :cond_9

    .line 540
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 543
    :goto_3
    new-instance v11, Lcom/apkol/utils/a/a;

    invoke-direct {v11}, Lcom/apkol/utils/a/a;-><init>()V

    .line 545
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 546
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x40

    .line 545
    invoke-virtual {v3, v6, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 548
    :try_start_1
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 547
    invoke-virtual {v11, v6}, Lcom/apkol/utils/a/a;->d(Ljava/lang/String;)V

    .line 549
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 550
    const/16 v12, 0x9

    if-lt v6, v12, :cond_7

    .line 551
    new-instance v6, Ljava/util/Date;

    iget-wide v12, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 552
    invoke-static {v6}, Lcom/apkol/utils/h;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/apkol/utils/a/a;->i(Ljava/lang/String;)V

    .line 563
    :cond_3
    :goto_4
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Lcom/apkol/utils/a/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    :goto_5
    invoke-static {v3}, Lcom/apkol/utils/b;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apkol/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 570
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 571
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 570
    invoke-virtual {v11, v6}, Lcom/apkol/utils/a/a;->e(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v11, v10}, Lcom/apkol/utils/a/a;->a(Ljava/lang/String;)V

    .line 573
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Lcom/apkol/utils/a/a;->g(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v11, v3}, Lcom/apkol/utils/a/a;->j(Ljava/lang/String;)V

    .line 577
    int-to-long v12, v1

    invoke-virtual {v11, v12, v13}, Lcom/apkol/utils/a/a;->a(J)V

    .line 578
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/apkol/utils/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 579
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 525
    :cond_4
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_a

    move v1, v7

    .line 528
    goto/16 :goto_2

    :cond_5
    if-ne p1, v7, :cond_6

    .line 529
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_a

    move v1, v7

    .line 532
    goto/16 :goto_2

    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    move v1, v7

    .line 533
    goto/16 :goto_2

    .line 554
    :cond_7
    :try_start_2
    new-instance v12, Ljava/io/File;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 557
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 559
    :goto_6
    if-eqz v6, :cond_3

    .line 560
    invoke-static {v6}, Lcom/apkol/utils/h;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/apkol/utils/a/a;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 564
    :catch_0
    move-exception v6

    .line 566
    :goto_7
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 564
    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v4

    goto :goto_7

    :cond_8
    move-object v6, v4

    goto :goto_6

    :cond_9
    move v1, v2

    goto/16 :goto_3

    :cond_a
    move v1, v2

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 50
    const-string v0, "application/vnd.android.package-archive"

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string v0, "installApk"

    const-string v1, "failure, File does not exist"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    .line 56
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 57
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    const-string v0, "installApk"

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/utils/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/apkol/utils/b;->a(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/utils/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apkol/utils/b;->a(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    const-string v0, "APK open"

    const-string v1, "\u4e0d\u80fd\u76f4\u63a5\u6253\u5f00\u7684\u8f6f\u4ef6"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 608
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 610
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 609
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 611
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 615
    :goto_0
    return-object v0

    .line 612
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 141
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void

    .line 149
    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const-string v0, "pkg"

    .line 151
    :goto_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v2, "com.android.settings"

    .line 153
    const-string v3, "com.android.settings.InstalledAppDetails"

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_0

    .line 150
    :cond_1
    const-string v0, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lcom/apkol/utils/a/a;
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 168
    const-string v0, "android.content.pm.PackageParser"

    .line 169
    const-string v1, "android.content.res.AssetManager"

    .line 170
    new-instance v2, Lcom/apkol/utils/a/a;

    invoke-direct {v2}, Lcom/apkol/utils/a/a;-><init>()V

    .line 178
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 179
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 180
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 182
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 183
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 185
    const-string v4, "ANDROID_LAB"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pkgParser:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 188
    invoke-virtual {v6}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 192
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    .line 193
    const/4 v7, 0x0

    const-class v8, Ljava/io/File;

    aput-object v8, v4, v7

    .line 194
    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v7

    .line 195
    const/4 v7, 0x2

    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v4, v7

    .line 196
    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v7

    .line 199
    const-string v7, "parsePackage"

    .line 198
    invoke-virtual {v0, v7, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 200
    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/Object;

    .line 201
    const/4 v0, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v8, v0

    .line 203
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :goto_0
    :try_start_2
    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9}, Ljava/text/DecimalFormat;-><init>()V

    .line 212
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 213
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 215
    new-instance v10, Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    int-to-float v0, v0

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v0, v11

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v0, v11

    float-to-double v11, v0

    .line 215
    invoke-virtual {v9, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    const-string v0, "MB"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v2, v0}, Lcom/apkol/utils/a/a;->h(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    aput-object p1, v8, v0

    .line 219
    const/4 v0, 0x2

    aput-object v6, v8, v0

    .line 220
    const/4 v0, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v0

    .line 221
    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 224
    const-string v6, "applicationInfo"

    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 226
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 227
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/apkol/utils/a/a;->g(Ljava/lang/String;)V

    .line 228
    const-string v5, "ANDROID_LAB"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pkg:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 229
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {v5, v6}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 231
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 232
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 233
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    .line 234
    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 236
    const-string v7, "addAssetPath"

    .line 235
    invoke-virtual {v1, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 237
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 238
    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 239
    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 241
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    .line 242
    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    .line 243
    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    .line 244
    const/4 v7, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    .line 245
    const-class v7, Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 246
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 247
    const/4 v8, 0x0

    aput-object v5, v7, v8

    .line 248
    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    aput-object v8, v7, v5

    .line 249
    const/4 v5, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    aput-object v1, v7, v5

    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 252
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v5, :cond_1

    .line 253
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 254
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/apkol/utils/a/a;->e(Ljava/lang/String;)V

    .line 258
    :goto_1
    const-string v6, "ANDROID_LAB"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "label="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/apkol/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v5, :cond_0

    .line 261
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    invoke-virtual {v2, v0}, Lcom/apkol/utils/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object v0, v2

    .line 271
    :goto_2
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    move-object v0, v3

    goto/16 :goto_0

    .line 256
    :cond_1
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/apkol/utils/a/a;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v3

    goto :goto_1

    .line 264
    :catch_1
    move-exception v0

    move-object v0, v3

    .line 265
    :goto_3
    sget-object v1, Lcom/apkol/utils/b;->a:Ljava/lang/String;

    const-string v2, "--------> file parse error"

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    move-object v0, v3

    .line 269
    goto :goto_2

    .line 264
    :catch_2
    move-exception v0

    move-object v0, v4

    goto :goto_3
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Lcom/apkol/utils/a/a;
    .locals 7

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 318
    const/4 v1, 0x1

    .line 317
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 319
    if-eqz v3, :cond_0

    .line 320
    new-instance v1, Lcom/apkol/utils/a/a;

    invoke-direct {v1}, Lcom/apkol/utils/a/a;-><init>()V

    .line 322
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 323
    iput-object p1, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 324
    iput-object p1, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 326
    :try_start_0
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 327
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 328
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 329
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 332
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/apkol/utils/a/a;->d(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, v6}, Lcom/apkol/utils/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 334
    invoke-virtual {v1, v3}, Lcom/apkol/utils/a/a;->c(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1, v0}, Lcom/apkol/utils/a/a;->e(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v2}, Lcom/apkol/utils/a/a;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 341
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/utils/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_0

    .line 358
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 379
    :cond_0
    return-object v1

    .line 358
    :cond_1
    aget-object v4, v2, v0

    .line 359
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-static {p0, v5}, Lcom/apkol/utils/b;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/apkol/utils/a/a;

    move-result-object v5

    .line 363
    if-nez v5, :cond_3

    .line 358
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/apkol/utils/a/a;->b(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v5, v4}, Lcom/apkol/utils/a/a;->a(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v5, v4}, Lcom/apkol/utils/a/a;->f(Ljava/lang/String;)V

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v5}, Lcom/apkol/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/apkol/utils/a/a;)Lcom/apkol/utils/a/a;

    .line 371
    invoke-virtual {v5}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 372
    invoke-virtual {v5}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    if-eq v4, v6, :cond_2

    .line 373
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Lcom/apkol/utils/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 386
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 390
    invoke-static {p0, p1}, Lcom/apkol/utils/b;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/apkol/utils/a/a;

    move-result-object v0

    .line 391
    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-object v1

    .line 394
    :cond_0
    invoke-virtual {v0, v2}, Lcom/apkol/utils/a/a;->a(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, v2}, Lcom/apkol/utils/a/a;->f(Ljava/lang/String;)V

    .line 396
    invoke-static {p0, p1, v0}, Lcom/apkol/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/apkol/utils/a/a;)Lcom/apkol/utils/a/a;

    .line 397
    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    :cond_1
    :goto_1
    move-object v1, v0

    .line 401
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 591
    .line 592
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 591
    check-cast v0, Landroid/app/ActivityManager;

    .line 593
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 594
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method
