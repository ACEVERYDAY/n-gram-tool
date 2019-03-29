.class public Lcom/apkol/root/b/h;
.super Ljava/lang/Object;
.source "SysDirInfo.java"


# static fields
.field private static b:Lcom/apkol/root/b/h;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apkol/utils/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/b/h;->a:Ljava/util/HashMap;

    .line 19
    const-string v0, "/system/app/"

    iput-object v0, p0, Lcom/apkol/root/b/h;->c:Ljava/lang/String;

    .line 20
    const-string v0, "/system/priv-app/"

    iput-object v0, p0, Lcom/apkol/root/b/h;->d:Ljava/lang/String;

    .line 21
    const-string v0, "/system/framework/"

    iput-object v0, p0, Lcom/apkol/root/b/h;->e:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/b/h;->a:Ljava/util/HashMap;

    .line 33
    invoke-direct {p0, p1}, Lcom/apkol/root/b/h;->b(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/apkol/root/b/h;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/apkol/root/b/h;->b:Lcom/apkol/root/b/h;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/apkol/root/b/h;

    invoke-direct {v0, p0}, Lcom/apkol/root/b/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apkol/root/b/h;->b:Lcom/apkol/root/b/h;

    .line 27
    :cond_0
    sget-object v0, Lcom/apkol/root/b/h;->b:Lcom/apkol/root/b/h;

    return-object v0
.end method

.method static synthetic a(Lcom/apkol/root/b/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apkol/root/b/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 69
    :cond_0
    return-void

    .line 55
    :cond_1
    aget-object v3, v1, v0

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {p1, v4}, Lcom/apkol/root/b/h;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/apkol/utils/a/a;

    move-result-object v4

    .line 61
    if-eqz v4, :cond_2

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/apkol/utils/a/a;->a(Ljava/lang/String;)V

    .line 64
    iget-object v3, p0, Lcom/apkol/root/b/h;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/apkol/utils/a/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/apkol/root/b/h;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/apkol/root/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/apkol/utils/a/a;
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 84
    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Lcom/apkol/utils/a/a;

    invoke-direct {v0}, Lcom/apkol/utils/a/a;-><init>()V

    .line 88
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 89
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 90
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 92
    :try_start_0
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Lcom/apkol/utils/a/a;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/apkol/root/b/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/apkol/root/b/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/b/i;

    invoke-direct {v1, p0, p1}, Lcom/apkol/root/b/i;-><init>(Lcom/apkol/root/b/h;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method

.method static synthetic c(Lcom/apkol/root/b/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apkol/root/b/h;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/apkol/utils/a/a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/apkol/root/b/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/apkol/root/b/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
