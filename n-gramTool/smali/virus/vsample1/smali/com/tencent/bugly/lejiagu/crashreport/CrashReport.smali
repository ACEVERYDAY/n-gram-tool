.class public Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;,
        Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    .line 57
    sput-object v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->c:Ljava/lang/String;

    .line 59
    sput-object v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 297
    invoke-virtual {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->I()Ljava/util/List;

    move-result-object v2

    .line 299
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 300
    :cond_0
    const-string v0, "not have bugly channel version"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 306
    const/4 v0, 0x2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 307
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 310
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->H()Ljava/util/List;

    move-result-object v0

    .line 311
    invoke-static {v2, v0}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    const-string v0, "# BUGLY CRASH REPORTER EXISTS IN MULTIPLE SDK. FOR MORE EFFICIENCY, \n# PLEASE SET <meta-data> IN [AndroidManifest.xml]:\n# <application>\n# ...\n#     <meta-data android:name=\"BUGLY_DISABLE\" android:value=\"%s\"/>\n# ...\n# </application>\n# FOR MORE INFOMATION, VISIT:\n# http://bugly.qq.com/androidsdk"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 316
    const-string v1, "# \u60a8\u7684App\u4e2d\u542b\u6709\u591a\u4e2a\u5f02\u5e38\u4e0a\u62a5\u6a21\u5757\uff0c\u4e3a\u4e86\u8282\u7701\u60a8\u7684\u8d44\u6e90\uff0c\n# \u8bf7\u5728[AndroidManifest.xml]\u4e2d\u6dfb\u52a0meta-data\u914d\u7f6e\uff1a[AndroidManifest.xml]:\n# <application>\n# ...\n#     <meta-data android:name=\"BUGLY_DISABLE\" android:value=\"%s\"/>\n# ...\n# </application>\n# \u66f4\u591a\u4fe1\u606f\u8bf7\u53c2\u89c1\uff1a\n# http://bugly.qq.com/androidsdk"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 320
    const-string v2, "--------------------------BUGLY TIPS--------------------------"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 321
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 322
    const-string v0, "--------------------------------------------------------------"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 323
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 324
    const-string v0, "--------------------------------------------------------------"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v4, 0x32

    const/4 v8, 0x2

    const/16 v7, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 763
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    const-string v0, "[a-zA-Z[0-9]]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 768
    const-string v1, "CrashReport"

    const-string v2, "putSdkData key length over limit %d , will drop this new key %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_3

    .line 773
    const-string v1, "CrashReport"

    const-string v2, "putSdkData value length over limit %d , has been cutted!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 778
    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v1, "CrashReportInfo"

    const-string v2, "[param] putSdkData data: %s - %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    :try_start_0
    const-string v0, "com.tencent.bugly.unity.UnityAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 271
    const-string v0, "com.tencent.bugly"

    .line 272
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_0
    const-string v2, "sdkPackageName"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/ae;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    :try_start_1
    const-string v0, "com.tencent.bugly.cococs.Cocos2dxAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 284
    const-string v0, "com.tencent.bugly"

    .line 285
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v2

    .line 286
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_1
    const-string v2, "sdkPackageName"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/ae;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :goto_1
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string v0, "no unity agent"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    .line 291
    const-string v0, "no cocos agent"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 331
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v2

    .line 335
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 339
    goto :goto_1

    .line 341
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_0

    .line 342
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static declared-synchronized closeCrashReport()V
    .locals 2

    .prologue
    .line 575
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 578
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 581
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized closeNativeReport()V
    .locals 3

    .prologue
    .line 561
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 569
    :goto_0
    monitor-exit v1

    return-void

    .line 564
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 565
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 568
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static enableBugly(Z)V
    .locals 0
    .param p0, "enableBugly"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    .line 63
    if-nez p0, :cond_0

    .line 64
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->closeCrashReport()V

    .line 66
    :cond_0
    return-void
.end method

.method public static getAllUserDataKeys(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 812
    const-string v0, "CrashReport"

    const-string v1, "Can not get all keys of user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 820
    :goto_0
    return-object v0

    .line 815
    :cond_0
    if-nez p0, :cond_1

    .line 816
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v1, "getAllUserDataKeys args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->L()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 463
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :goto_0
    monitor-exit v1

    return-object v0

    .line 465
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_1

    .line 466
    const/4 v0, 0x0

    goto :goto_0

    .line 468
    :cond_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 469
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 472
    :cond_2
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->B()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getAppID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 353
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :goto_0
    monitor-exit v1

    return-object v0

    .line 355
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 356
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 360
    :cond_1
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getAppVer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 446
    const-string v0, "CrashReport"

    const-string v2, "Can not get app version because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :goto_0
    monitor-exit v1

    return-object v0

    .line 449
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 450
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 453
    :cond_1
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public static getBuglyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    if-nez p0, :cond_0

    .line 371
    const-string v0, "Please call with context."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 372
    const-string v0, "unknown"

    .line 375
    :goto_0
    return-object v0

    .line 374
    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSdkExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 757
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 759
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->d:Ljava/util/Map;

    goto :goto_0
.end method

.method public static getUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 646
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 647
    const-string v0, "unknown"

    .line 656
    :goto_0
    return-object v0

    .line 649
    :cond_0
    if-nez p0, :cond_1

    .line 650
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v1, "getUserDataValue args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    const/4 v0, 0x0

    goto :goto_0

    .line 656
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserDatasSize(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 830
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 831
    const-string v0, "CrashReport"

    const-string v1, "Can not get size of user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v0, -0x1

    .line 838
    :goto_0
    return v0

    .line 834
    :cond_0
    if-nez p0, :cond_1

    .line 835
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v1, "getUserDatasSize args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->K()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 430
    const-string v0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :goto_0
    monitor-exit v1

    return-object v0

    .line 432
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 433
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 436
    :cond_1
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->m()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserSceneTagId(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 627
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 628
    const/4 v0, -0x1

    .line 635
    :goto_0
    return v0

    .line 630
    :cond_0
    if-nez p0, :cond_1

    .line 631
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v1, "getUserSceneTagId args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->N()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "crashReportAppID"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z

    .prologue
    .line 77
    const-class v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v0

    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)V
    .locals 16
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "crashReportAppID"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z
    .param p3, "customStrategy"    # Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;

    .prologue
    .line 90
    const-class v15, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v15

    if-eqz p2, :cond_0

    .line 92
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->isDebug:Z

    .line 93
    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/ac;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/proguard/ac;-><init>()V

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Lcom/tencent/bugly/lejiagu/proguard/z$a;)V

    .line 94
    const-string v1, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- \'isDebug\' is enabled. Now is running in debug model, please disable it when you release."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 95
    const-string v1, "--------------------------------------------------------------------------------------------"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 96
    const-string v1, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 97
    const-string v1, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 98
    const-string v1, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 99
    const-string v1, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 100
    const-string v1, "--------------------------------------------------------------------------------------------"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 101
    const-string v1, "[init] bugly in debug mode."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 104
    :cond_0
    if-eqz p3, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->a(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/lejiagu/proguard/ab;->a(Landroid/content/Context;)V

    .line 106
    const-string v1, "BuglyLog is inited."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 109
    :cond_2
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 110
    const-string v1, "already inited ! nothing to do !"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    monitor-exit v15

    return-void

    .line 114
    :cond_3
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 115
    sput-object p0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 116
    if-nez p0, :cond_4

    .line 117
    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "init arg \'appContext\' should not be null!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v15

    throw v1

    .line 119
    :cond_4
    :try_start_2
    const-string v1, "your appid is set to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 122
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v2

    .line 123
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)V

    .line 126
    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->H()Ljava/util/List;

    move-result-object v3

    .line 127
    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "bugly"

    .line 129
    :goto_1
    if-eqz v3, :cond_6

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 130
    const-string v2, "[init] bugly(%s) is closed."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 131
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 133
    :cond_6
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 134
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Configuration] channel disabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 139
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " crash report start init!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 140
    const-string v1, "[init] bugly start init..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 142
    if-nez p1, :cond_8

    .line 143
    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "init arg \'crashReportAppID\' should not be null!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Ljava/lang/String;)V

    .line 148
    const-string v1, "setted APPID:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    if-eqz p3, :cond_f

    .line 152
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->b(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 154
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_15

    .line 155
    const/4 v1, 0x0

    const/16 v4, 0x64

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v4, "appVersion %s length is over limit %d substring to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 161
    :goto_3
    invoke-virtual {v2, v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c(Ljava/lang/String;)V

    .line 162
    const-string v1, "setted APPVERSION:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->b(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 166
    :cond_9
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->c(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 168
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_a

    .line 169
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 170
    const-string v4, "appChannel %s length is over limit %d substring to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v1, v3

    .line 174
    :cond_a
    invoke-virtual {v2, v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->g(Ljava/lang/String;)V

    .line 175
    const-string v3, "setted APPCHANNEL:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->c(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_b
    move-object v4, v1

    .line 179
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->d(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 181
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x64

    if-le v1, v5, :cond_14

    .line 182
    const/4 v1, 0x0

    const/16 v5, 0x64

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string v5, "appPackageName %s length is over limit %d substring to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 188
    :goto_4
    invoke-virtual {v2, v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b(Ljava/lang/String;)V

    .line 189
    const-string v1, "setted PACKAGENAME:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->d(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 193
    :cond_c
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->e(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 195
    invoke-virtual {v2, v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->h(Ljava/lang/String;)V

    .line 196
    const-string v3, "setted libBugly.so file path :%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 200
    :cond_d
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->f(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)Ljava/lang/String;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_f

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x64

    if-le v3, v5, :cond_e

    .line 203
    const/4 v3, 0x0

    const/16 v5, 0x64

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 204
    const-string v3, "deviceId %s length is over limit %d substring to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    aput-object v1, v5, v4

    invoke-static {v3, v5}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 208
    :cond_e
    invoke-virtual {v2, v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e(Ljava/lang/String;)V

    .line 209
    const-string v3, "setted deviceId :%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 214
    :cond_f
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/p;->a()Lcom/tencent/bugly/lejiagu/proguard/p;

    move-result-object v1

    sget-object v3, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(Landroid/content/Context;)V

    .line 217
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/y;->a()Lcom/tencent/bugly/lejiagu/proguard/y;

    move-result-object v6

    .line 218
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/lejiagu/proguard/q;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/proguard/q;

    move-result-object v8

    .line 219
    move-object/from16 v0, p0

    invoke-static {v0, v6, v2, v8}, Lcom/tencent/bugly/lejiagu/proguard/w;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/y;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/proguard/q;)Lcom/tencent/bugly/lejiagu/proguard/w;

    move-result-object v5

    .line 221
    new-instance v3, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;

    invoke-direct {v3}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/lejiagu/proguard/q;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/proguard/q;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/StrategyBean;Lcom/tencent/bugly/lejiagu/proguard/q;Lcom/tencent/bugly/lejiagu/proguard/w;Lcom/tencent/bugly/lejiagu/proguard/y;)Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    move-result-object v9

    .line 224
    if-eqz p3, :cond_12

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->g(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)J

    move-result-wide v3

    const-wide/16 v10, 0x0

    cmp-long v1, v3, v10

    if-lez v1, :cond_12

    .line 226
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/p;->a()Lcom/tencent/bugly/lejiagu/proguard/p;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->g(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(J)V

    .line 227
    const-string v1, "setted APP_REPORT_DELAY %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->g(Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 233
    :goto_5
    const/4 v14, 0x0

    .line 234
    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 235
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v14

    .line 236
    const-string v1, "setted CrashHanldeCallback"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v7, p0

    move-object v10, v5

    move-object v11, v2

    move-object v12, v6

    move/from16 v13, p2

    .line 238
    invoke-static/range {v7 .. v14}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a(Landroid/content/Context;Lcom/tencent/bugly/lejiagu/proguard/q;Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;Lcom/tencent/bugly/lejiagu/proguard/w;Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Lcom/tencent/bugly/lejiagu/proguard/y;ZLcom/tencent/bugly/lejiagu/crashreport/CrashReport$CrashHandleCallback;)Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->d()V

    .line 244
    if-eqz p3, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport$UserStrategy;->isEnableNativeCrashMonitor()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 246
    :cond_11
    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->f()V

    .line 253
    :goto_6
    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->g()V

    .line 256
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/BuglyBroadcastRecevier;->getInstance()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/BuglyBroadcastRecevier;

    move-result-object v1

    .line 257
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/BuglyBroadcastRecevier;->addFilter(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/BuglyBroadcastRecevier;->regist(Landroid/content/Context;)V

    .line 261
    invoke-static {v2}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a(Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)V

    .line 263
    const-string v1, "crash report inited!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 264
    const-string v1, "[init] bugly init finished."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 229
    :cond_12
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/p;->a()Lcom/tencent/bugly/lejiagu/proguard/p;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/p;->a(J)V

    goto :goto_5

    .line 248
    :cond_13
    const-string v3, "closed native!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_14
    move-object v1, v3

    goto/16 :goto_4

    :cond_15
    move-object v1, v3

    goto/16 :goto_3
.end method

.method public static declared-synchronized isLastSessionCrash()Z
    .locals 3

    .prologue
    .line 481
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 482
    const-string v0, "CrashReport"

    const-string v2, "The info isLastSessionCrash is not accurate because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    const/4 v0, 0x0

    .line 489
    :goto_0
    monitor-exit v1

    return v0

    .line 485
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 486
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 489
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized postCatchedException(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "catchedThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 545
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 546
    const-string v0, "CrashReport"

    const-string v2, "Can not post crash caught because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :goto_0
    monitor-exit v1

    return-void

    .line 549
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 550
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 553
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0xc8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 667
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 668
    const-string v0, "CrashReport"

    const-string v1, "Can not put user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_0
    return-void

    .line 671
    :cond_0
    if-nez p0, :cond_1

    .line 672
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v1, "putUserData args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v1, "putUserData args key should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_2
    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    const-string v0, "putUserData args value should not be null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 684
    :cond_3
    const-string v0, "[a-zA-Z[0-9]]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 685
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putUserData args key should match [a-zA-Z[0-9]]+  {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_5

    .line 690
    const-string v0, "user data value length over limit %d , has been cutted!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 692
    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 695
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->L()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 698
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v0, "replace KV %s %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 704
    :cond_6
    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->K()I

    move-result v0

    if-lt v0, v7, :cond_7

    .line 705
    const-string v0, "user data size is over limit %d , will drop this new key %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 710
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_8

    .line 711
    const-string v0, "user data key length over limit %d , will drop this new key %s"

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 716
    :cond_8
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v0, "[param] set user data: %s - %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataKey"    # Ljava/lang/String;

    .prologue
    .line 789
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 790
    const-string v0, "CrashReport"

    const-string v1, "Can not remove user data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v0, "unknown"

    .line 801
    :goto_0
    return-object v0

    .line 793
    :cond_0
    if-nez p0, :cond_1

    .line 794
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v1, "removeUserData args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    const/4 v0, 0x0

    goto :goto_0

    .line 800
    :cond_2
    const-string v0, "[param] remove user data: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 801
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setIsAppForeground(Z)V
    .locals 2
    .param p0, "isAppForeground"    # Z

    .prologue
    const/4 v1, 0x0

    .line 383
    if-eqz p0, :cond_0

    .line 384
    const-string v0, "App is in foreground."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 388
    :goto_0
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a(Z)V

    .line 389
    return-void

    .line 386
    :cond_0
    const-string v0, "App is in background."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;Z)Z
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "autoInject"    # Z

    .prologue
    .line 856
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z

    move-result v0

    return v0
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z
    .locals 5
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "autoInject"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 875
    sget-boolean v2, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v2, :cond_1

    .line 876
    const-string v1, "CrashReport"

    const-string v2, "Can not set JavaScript monitor because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 879
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 882
    sget-object v2, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 883
    goto :goto_0

    .line 885
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->c:Ljava/lang/String;

    .line 887
    if-nez p2, :cond_3

    .line 888
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 889
    const/16 v3, 0x13

    if-ge v2, v3, :cond_3

    .line 890
    const-string v1, "This interface is only available for Android 4.4 or later."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 894
    :cond_3
    const-string v2, "Set webview monitor."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 896
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 897
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 898
    const-string v3, "Enable the javascript needed by webview monitor."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 899
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 901
    :cond_4
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/H5JavaScriptInterface;->getInstance(Landroid/webkit/WebView;)Lcom/tencent/bugly/lejiagu/crashreport/crash/h5/H5JavaScriptInterface;

    move-result-object v2

    .line 902
    if-eqz v2, :cond_5

    .line 903
    const-string v3, "Add a secure javascript interface to the webview."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 904
    const-string v3, "exceptionUploader"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    :cond_5
    if-eqz p1, :cond_7

    .line 907
    sget-object v2, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v2, :cond_6

    .line 908
    const-string v1, "CrashReport has not been initialed! please to call method \'initCrashReport\' first!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 911
    :cond_6
    const-string v2, "Inject bugly.js(v%s) to the webview."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/aa;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 912
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/aa;->a()Ljava/lang/String;

    move-result-object v0

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_7
    move v0, v1

    .line 915
    goto/16 :goto_0
.end method

.method public static declared-synchronized setSdkExtraData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 727
    const-class v2, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_1

    .line 728
    const-string v0, "CrashReport"

    const-string v1, "Can not put SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 732
    :cond_1
    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->d:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 736
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->d:Ljava/util/Map;

    .line 739
    :cond_2
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 741
    const-string v3, "SDK_INFO"

    .line 742
    const-string v0, ""

    .line 743
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 744
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 745
    goto :goto_1

    .line 746
    :cond_3
    invoke-static {p0, v3, v1}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 6
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x64

    .line 397
    const-class v2, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v1, :cond_0

    .line 398
    const-string v1, "CrashReport"

    const-string v3, "Can not set user ID because bugly is disable."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_0
    monitor-exit v2

    return-void

    .line 401
    :cond_0
    :try_start_1
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 402
    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v3, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v3}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 406
    :cond_1
    if-eqz p0, :cond_2

    .line 407
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 408
    const/4 v1, 0x0

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 409
    const-string v1, "userId %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .end local p0    # "userId":Ljava/lang/String;
    .local v0, "userId":Ljava/lang/String;
    move-object p0, v0

    .line 415
    .end local v0    # "userId":Ljava/lang/String;
    .restart local p0    # "userId":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d(Ljava/lang/String;)V

    .line 416
    const-string v1, "[param] set userId : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setUserSceneTag(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagId"    # I

    .prologue
    .line 605
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 606
    const-string v0, "CrashReport"

    const-string v1, "Can not set tag caught because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void

    .line 609
    :cond_0
    if-nez p0, :cond_1

    .line 610
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v1, "setTag args context should not be null"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_1
    if-gtz p1, :cond_2

    .line 614
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v1, "setTag args tagId should > 0"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a(I)V

    .line 618
    const-string v0, "[param] set user scene tag: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized testANRCrash()V
    .locals 3

    .prologue
    .line 529
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 530
    const-string v0, "CrashReport"

    const-string v2, "Can not test ANR crash because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :goto_0
    monitor-exit v1

    return-void

    .line 533
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 534
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 537
    :cond_1
    :try_start_2
    const-string v0, "start to create a anr crash for test!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 538
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized testJavaCrash()V
    .locals 3

    .prologue
    .line 496
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 497
    const-string v0, "Can not test Java crash because bugly is disable."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    monitor-exit v1

    return-void

    .line 500
    :cond_0
    :try_start_1
    const-string v0, "Test java crash..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 502
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 505
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This Crash create for Test! You can go to Bugly see more detail!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static declared-synchronized testNativeCrash()V
    .locals 3

    .prologue
    .line 513
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->b:Z

    if-nez v0, :cond_0

    .line 514
    const-string v0, "CrashReport"

    const-string v2, "Can not test native crash because bugly is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :goto_0
    monitor-exit v1

    return-void

    .line 517
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 518
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 521
    :cond_1
    :try_start_2
    const-string v0, "start to create a native crash for test!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 522
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/c;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
