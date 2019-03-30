.class public Lcom/tencent/bugly/lejiagu/proguard/p;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/lejiagu/proguard/p$a;
    }
.end annotation


# static fields
.field private static c:Lcom/tencent/bugly/lejiagu/proguard/p;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/p;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/proguard/p;-><init>()V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/p;->c:Lcom/tencent/bugly/lejiagu/proguard/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/proguard/p;)J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->f:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/proguard/p;J)J
    .locals 0

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->f:J

    return-wide p1
.end method

.method public static a()Lcom/tencent/bugly/lejiagu/proguard/p;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/p;->c:Lcom/tencent/bugly/lejiagu/proguard/p;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x0

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 55
    iput-boolean v3, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->e:Z

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->e:Z

    .line 62
    :cond_2
    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/lejiagu/proguard/p$a;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/lejiagu/proguard/p$a;-><init>(Lcom/tencent/bugly/lejiagu/proguard/p;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->e:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "[session] registed by api"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    iput-boolean v3, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->e:Z

    goto :goto_1
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/common/strategy/c;->a(J)V

    .line 47
    const-string v0, "[session] launch app 1 times (app new start)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->f:J

    .line 49
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->d:Z

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/lejiagu/proguard/p;->d:Z

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/bugly/lejiagu/proguard/p;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
