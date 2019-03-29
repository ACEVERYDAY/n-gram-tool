.class public Lcom/apkol/root/feature/x;
.super Ljava/lang/Object;
.source "UninsDataAss.java"


# static fields
.field public static a:Lcom/apkol/root/feature/x; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x1001

.field public static final j:I = 0x1002

.field public static final k:Ljava/lang/String; = "0"

.field public static final l:Ljava/lang/String; = "1"

.field public static final m:Ljava/lang/String; = "3"

.field public static final n:Ljava/lang/String; = "2"

.field public static final o:Ljava/lang/String; = "4"


# instance fields
.field private p:Ljava/lang/String;

.field private q:Landroid/content/Context;

.field private r:Lcom/apkol/root/feature/af;

.field private s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private u:Ljava/lang/Thread;

.field private v:Ljava/lang/Thread;

.field private w:Ljava/lang/Thread;

.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lcom/apkol/root/feature/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/feature/x;->p:Ljava/lang/String;

    .line 60
    const-string v0, "/data/data/bmtet.wwjx.eat/databases/"

    iput-object v0, p0, Lcom/apkol/root/feature/x;->s:Ljava/lang/String;

    .line 61
    const-string v0, "romlist"

    iput-object v0, p0, Lcom/apkol/root/feature/x;->t:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/apkol/root/feature/x;->u:Ljava/lang/Thread;

    .line 70
    iput-object v1, p0, Lcom/apkol/root/feature/x;->v:Ljava/lang/Thread;

    .line 71
    iput-object v1, p0, Lcom/apkol/root/feature/x;->w:Ljava/lang/Thread;

    .line 73
    new-instance v0, Lcom/apkol/root/feature/y;

    invoke-direct {v0, p0}, Lcom/apkol/root/feature/y;-><init>(Lcom/apkol/root/feature/x;)V

    iput-object v0, p0, Lcom/apkol/root/feature/x;->x:Landroid/os/Handler;

    .line 108
    iput-object p1, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/apkol/root/feature/x;->b()V

    .line 110
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/apkol/root/b/b;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x44800000    # 1024.0f

    .line 298
    iget-object v2, p3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 299
    const/4 v0, 0x0

    .line 300
    if-eqz v2, :cond_0

    const-string v3, ""

    if-eq v3, v2, :cond_0

    .line 301
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    :cond_0
    new-instance v3, Lcom/apkol/root/b/b;

    invoke-direct {v3}, Lcom/apkol/root/b/b;-><init>()V

    .line 306
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 307
    iget-object v4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    .line 306
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 308
    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/apkol/root/b/b;->d(Ljava/lang/String;)V

    .line 309
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    const/16 v5, 0x9

    if-lt v2, v5, :cond_2

    .line 311
    new-instance v2, Ljava/util/Date;

    iget-wide v5, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 312
    invoke-static {v2}, Lcom/apkol/utils/h;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/apkol/root/b/b;->i(Ljava/lang/String;)V

    .line 323
    :cond_1
    :goto_0
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/apkol/root/b/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/apkol/root/b/b;->e(Ljava/lang/String;)V

    .line 331
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/apkol/root/b/b;->a(Ljava/lang/String;)V

    .line 332
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/apkol/root/b/b;->g(Ljava/lang/String;)V

    .line 335
    int-to-long v1, v0

    invoke-virtual {v3, v1, v2}, Lcom/apkol/root/b/b;->a(J)V

    .line 336
    int-to-float v1, v0

    div-float/2addr v1, v7

    div-float v2, v1, v7

    .line 339
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_3

    .line 340
    int-to-float v0, v0

    div-float v2, v0, v7

    .line 341
    const-string v1, "KB"

    .line 342
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "##0"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 347
    :goto_1
    float-to-double v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/apkol/root/b/b;->b:Ljava/lang/String;

    .line 350
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/apkol/root/b/b;->a(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v3

    .line 351
    :goto_2
    return-object v0

    .line 314
    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/File;

    iget-object v2, p3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 317
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 319
    :goto_3
    if-eqz v2, :cond_1

    .line 320
    invoke-static {v2}, Lcom/apkol/utils/h;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/apkol/root/b/b;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 327
    goto :goto_2

    .line 344
    :cond_3
    const-string v1, "M"

    .line 345
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "##0.0"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/apkol/root/feature/x;)Lcom/apkol/root/feature/af;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/apkol/root/feature/x;->r:Lcom/apkol/root/feature/af;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/apkol/root/feature/x;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/apkol/root/feature/x;->a:Lcom/apkol/root/feature/x;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/apkol/root/feature/x;

    invoke-direct {v0, p0}, Lcom/apkol/root/feature/x;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apkol/root/feature/x;->a:Lcom/apkol/root/feature/x;

    .line 116
    :cond_0
    sget-object v0, Lcom/apkol/root/feature/x;->a:Lcom/apkol/root/feature/x;

    return-object v0
.end method

.method static synthetic a(Lcom/apkol/root/feature/x;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/apkol/root/feature/x;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apkol/root/feature/x;->a(IILjava/lang/Object;)V

    .line 153
    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 157
    iput p1, v0, Landroid/os/Message;->what:I

    .line 158
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 159
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/apkol/root/feature/x;->x:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 165
    iput p1, v0, Landroid/os/Message;->what:I

    .line 166
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/apkol/root/feature/x;->x:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    return-void
.end method

.method private declared-synchronized a(Lcom/apkol/root/b/b;)V
    .locals 2

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/apkol/root/feature/v;

    iget-object v1, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/apkol/root/feature/v;-><init>(Landroid/content/Context;)V

    .line 630
    invoke-virtual {p1}, Lcom/apkol/root/b/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apkol/root/feature/v;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 633
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    .line 634
    iget-object v1, v0, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    iput-object v1, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 635
    iget-object v1, v0, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    .line 636
    iget-object v1, v0, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    iput-object v1, p1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    .line 637
    iget-object v1, v0, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    iput-object v1, p1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    .line 638
    iget-object v0, v0, Lcom/apkol/root/b/b;->h:Ljava/lang/String;

    iput-object v0, p1, Lcom/apkol/root/b/b;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :cond_0
    monitor-exit p0

    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/apkol/root/feature/x;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/apkol/root/feature/x;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/feature/x;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/apkol/root/feature/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/feature/x;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/apkol/root/feature/x;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/feature/x;->u:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apkol/root/feature/x;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/apkol/root/feature/x;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/c;->a(Landroid/content/Context;)Lcom/apkol/utils/c/c;

    move-result-object v0

    .line 669
    const-string v1, "romlist"

    invoke-virtual {v0, v1}, Lcom/apkol/utils/c/c;->a(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/b;->a(Landroid/content/Context;)Lcom/apkol/utils/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/utils/c/b;->a()V

    .line 673
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 674
    const/4 v0, 0x0

    .line 675
    const-string v2, "rect"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    const-string v0, "rect"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    new-instance v2, Lcom/apkol/root/feature/v;

    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/apkol/root/feature/v;-><init>(Landroid/content/Context;)V

    .line 682
    const-string v0, "ApkList"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 683
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/b;->a(Landroid/content/Context;)Lcom/apkol/utils/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/utils/c/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 684
    :cond_3
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 685
    new-instance v4, Lcom/apkol/root/b/b;

    invoke-direct {v4}, Lcom/apkol/root/b/b;-><init>()V

    .line 686
    const-string v5, "ApkPackName"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apkol/root/b/b;->g(Ljava/lang/String;)V

    .line 687
    const-string v5, "Showname"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 688
    const-string v5, "SoftwareLevel"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    .line 689
    const-string v5, "SoftwareDescription"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    .line 690
    const-string v5, "SoftwareReviews"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    .line 691
    const-string v5, "lastdate"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/apkol/root/b/b;->h:Ljava/lang/String;

    .line 692
    invoke-virtual {v2, v4}, Lcom/apkol/root/feature/v;->b(Lcom/apkol/root/b/b;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v2, Lcom/apkol/root/feature/v;

    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/apkol/root/feature/v;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    iget-object v1, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/apkol/root/AssistConst;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 358
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 359
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 360
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 361
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 362
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    invoke-direct {p0, v4}, Lcom/apkol/root/feature/x;->a(Ljava/util/List;)V

    .line 397
    invoke-direct {p0, v8}, Lcom/apkol/root/feature/x;->a(Ljava/util/List;)V

    .line 398
    invoke-direct {p0, v5}, Lcom/apkol/root/feature/x;->a(Ljava/util/List;)V

    .line 399
    invoke-direct {p0, v6}, Lcom/apkol/root/feature/x;->a(Ljava/util/List;)V

    .line 400
    invoke-direct {p0, v7}, Lcom/apkol/root/feature/x;->a(Ljava/util/List;)V

    .line 402
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v3, v4, v0}, Lcom/apkol/root/feature/x;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;I)V

    .line 403
    invoke-virtual {p0, p1, v8}, Lcom/apkol/root/feature/x;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 404
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v3, v5, v0}, Lcom/apkol/root/feature/x;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;I)V

    .line 405
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v3, v6, v0}, Lcom/apkol/root/feature/x;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;I)V

    .line 406
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v3, v7, v0}, Lcom/apkol/root/feature/x;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;I)V

    .line 419
    return-void

    .line 364
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    .line 366
    invoke-virtual {v0}, Lcom/apkol/root/b/b;->h()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {v2, v1}, Lcom/apkol/root/feature/v;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 369
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkol/root/b/b;

    .line 371
    iget-object v10, v1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 372
    const/4 v10, 0x5

    .line 373
    invoke-virtual {p0, v0, v1, v3, v10}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/b/b;Lcom/apkol/root/b/b;Ljava/lang/String;I)V

    .line 374
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_2
    iget-object v10, v1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 376
    const/4 v10, 0x4

    .line 377
    invoke-virtual {p0, v0, v1, v3, v10}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/b/b;Lcom/apkol/root/b/b;Ljava/lang/String;I)V

    .line 378
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_3
    iget-object v10, v1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    const-string v11, "3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 380
    const/4 v10, 0x3

    .line 381
    invoke-virtual {p0, v0, v1, v3, v10}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/b/b;Lcom/apkol/root/b/b;Ljava/lang/String;I)V

    .line 382
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_4
    iget-object v10, v1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 384
    const/4 v10, 0x2

    .line 385
    invoke-virtual {p0, v0, v1, v3, v10}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/b/b;Lcom/apkol/root/b/b;Ljava/lang/String;I)V

    .line 386
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 391
    :cond_5
    invoke-virtual {v0}, Lcom/apkol/root/b/b;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 392
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 423
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 424
    new-instance v1, Lcom/apkol/root/feature/ab;

    invoke-direct {v1, p0, v0}, Lcom/apkol/root/feature/ab;-><init>(Lcom/apkol/root/feature/x;Ljava/util/Comparator;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 478
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 274
    const/16 v0, 0x2000

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    .line 278
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 292
    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 280
    const/4 v2, 0x0

    .line 281
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_3

    .line 282
    const/4 v2, 0x1

    .line 284
    :cond_3
    if-eqz v2, :cond_1

    .line 285
    invoke-direct {p0, p1, v3, v0}, Lcom/apkol/root/feature/x;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/apkol/root/b/b;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private b()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method static synthetic b(Lcom/apkol/root/feature/x;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/apkol/root/feature/x;->h()V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/apkol/root/feature/x;->p:Ljava/lang/String;

    const-string v1, "handleHttp"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/apkol/root/v;->b(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_0

    .line 646
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/apkol/root/feature/ae;

    invoke-direct {v2, p0, v0}, Lcom/apkol/root/feature/ae;-><init>(Lcom/apkol/root/feature/x;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/apkol/root/feature/x;->w:Ljava/lang/Thread;

    .line 659
    iget-object v0, p0, Lcom/apkol/root/feature/x;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 661
    :cond_0
    return-void
.end method

.method private declared-synchronized c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 598
    const/16 v0, 0x2000

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 599
    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x0

    .line 625
    :goto_0
    monitor-exit p0

    return-object v0

    .line 603
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/apkol/utils/c/c;->a(Landroid/content/Context;)Lcom/apkol/utils/c/c;

    move-result-object v1

    .line 604
    const-string v2, "romlist"

    invoke-virtual {v1, v2}, Lcom/apkol/utils/c/c;->a(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/apkol/utils/c/b;->a(Landroid/content/Context;)Lcom/apkol/utils/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apkol/utils/c/b;->a()V

    .line 607
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 608
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/b;->a(Landroid/content/Context;)Lcom/apkol/utils/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/utils/c/b;->c()V

    move-object v0, v1

    .line 625
    goto :goto_0

    .line 608
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 609
    const/4 v2, 0x0

    .line 610
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_3

    .line 611
    const/4 v2, 0x1

    .line 613
    :cond_3
    if-eqz v2, :cond_1

    .line 614
    invoke-direct {p0, p1, v3, v0}, Lcom/apkol/root/feature/x;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/apkol/root/b/b;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_1

    .line 617
    invoke-direct {p0, v0}, Lcom/apkol/root/feature/x;->a(Lcom/apkol/root/b/b;)V

    .line 618
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method static synthetic c(Lcom/apkol/root/feature/x;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/apkol/root/feature/x;->f()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x1

    const/16 v1, 0x1001

    invoke-direct {p0, v0, v1}, Lcom/apkol/root/feature/x;->a(II)V

    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/feature/z;

    invoke-direct {v1, p0}, Lcom/apkol/root/feature/z;-><init>(Lcom/apkol/root/feature/x;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method

.method static synthetic d(Lcom/apkol/root/feature/x;)Z
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/apkol/root/feature/x;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/apkol/root/feature/x;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/apkol/root/feature/x;->g()V

    return-void
.end method

.method private e()Z
    .locals 5

    .prologue
    .line 172
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apkol/root/feature/x;->s:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "romlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apkol/root/feature/x;->s:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 178
    :cond_0
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    .line 179
    const-string v3, "romparter"

    .line 178
    invoke-virtual {v1, v2, v3}, Lcom/apkol/utils/i;->c(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 180
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 181
    iget-object v1, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v1

    .line 182
    const-string v3, "romparter"

    const-string v4, ""

    .line 181
    invoke-virtual {v1, v3, v4}, Lcom/apkol/utils/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v1

    const-string v3, "romparter"

    invoke-virtual {v1, v3, v2}, Lcom/apkol/utils/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 192
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    .line 194
    const-string v3, "romlist"

    .line 193
    invoke-virtual {v1, v2, v3}, Lcom/apkol/utils/i;->c(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/apkol/root/feature/x;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 201
    :goto_0
    return v0

    .line 197
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 201
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/apkol/root/feature/x;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/feature/aa;

    invoke-direct {v1, p0}, Lcom/apkol/root/feature/aa;-><init>(Lcom/apkol/root/feature/x;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/apkol/root/feature/x;->u:Ljava/lang/Thread;

    .line 236
    iget-object v0, p0, Lcom/apkol/root/feature/x;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    return-void
.end method

.method private declared-synchronized g()V
    .locals 2

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/feature/x;->v:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apkol/root/feature/x;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/apkol/root/feature/x;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/apkol/root/feature/x;->w:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apkol/root/feature/x;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :try_start_3
    iget-object v0, p0, Lcom/apkol/root/feature/x;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :cond_1
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/c;->a(Landroid/content/Context;)Lcom/apkol/utils/c/c;

    move-result-object v0

    .line 260
    const-string v1, "romlist"

    invoke-virtual {v0, v1}, Lcom/apkol/utils/c/c;->a(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/b;->a(Landroid/content/Context;)Lcom/apkol/utils/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/utils/c/b;->a()V

    .line 264
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/apkol/root/feature/x;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, Lcom/apkol/root/feature/x;->a(Ljava/util/ArrayList;)V

    .line 266
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/apkol/root/feature/x;->a(ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/b;->a(Landroid/content/Context;)Lcom/apkol/utils/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/utils/c/b;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 245
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 252
    :catch_1
    move-exception v0

    .line 254
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/apkol/root/feature/x;->p:Ljava/lang/String;

    const-string v1, "handleLoadDbData"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/feature/ac;

    invoke-direct {v1, p0}, Lcom/apkol/root/feature/ac;-><init>(Lcom/apkol/root/feature/x;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/apkol/root/feature/x;->v:Ljava/lang/Thread;

    .line 590
    iget-object v0, p0, Lcom/apkol/root/feature/x;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 591
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/apkol/root/feature/x;->p:Ljava/lang/String;

    const-string v1, "startLoadingData"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/feature/x;->r:Lcom/apkol/root/feature/af;

    .line 131
    invoke-direct {p0}, Lcom/apkol/root/feature/x;->d()V

    .line 132
    return-void
.end method

.method public a(Lcom/apkol/root/b/b;Lcom/apkol/root/b/b;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p2, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 509
    iget-object v0, p2, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    .line 510
    iget-object v0, p2, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    .line 511
    iget-object v0, p2, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    .line 512
    iput p4, p1, Lcom/apkol/root/b/b;->g:I

    .line 514
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p2, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/apkol/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    iput-object v0, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 518
    :cond_0
    return-void
.end method

.method public a(Lcom/apkol/root/feature/af;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/apkol/root/feature/x;->r:Lcom/apkol/root/feature/af;

    .line 124
    invoke-direct {p0}, Lcom/apkol/root/feature/x;->c()V

    .line 125
    invoke-direct {p0}, Lcom/apkol/root/feature/x;->d()V

    .line 126
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 496
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    return-void

    .line 496
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    .line 498
    iget-object v2, v0, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 499
    iget-object v2, v0, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/apkol/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    .line 500
    iget-object v2, v0, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/apkol/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    .line 501
    iput p4, v0, Lcom/apkol/root/b/b;->g:I

    .line 502
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, p4, v2, v0}, Lcom/apkol/root/feature/x;->a(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/apkol/root/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 482
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    return-void

    .line 482
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/b/b;

    .line 483
    invoke-virtual {v0}, Lcom/apkol/root/b/b;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 484
    iget-object v2, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 485
    const v3, 0x7f0500eb

    .line 484
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    .line 486
    iget-object v2, p0, Lcom/apkol/root/feature/x;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 487
    const v3, 0x7f0500ec

    .line 486
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    .line 488
    const-string v2, "4"

    iput-object v2, v0, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    .line 489
    iput v4, v0, Lcom/apkol/root/b/b;->g:I

    .line 490
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v4, v2, v0}, Lcom/apkol/root/feature/x;->a(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    monitor-enter p0

    const/4 v1, 0x0

    .line 206
    :try_start_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 205
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 211
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 216
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    const/4 v0, 0x1

    .line 223
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 218
    :catch_0
    move-exception v2

    .line 220
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
