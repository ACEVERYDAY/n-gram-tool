.class public Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/lejiagu/crashreport/common/info/a$a;
    }
.end annotation


# static fields
.field private static N:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/Boolean;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/Object;

.field private P:I

.field private Q:I

.field private R:Ljava/util/Map;
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

.field private S:Ljava/util/Map;
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

.field private final T:Ljava/lang/Object;

.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:B

.field private f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:J

.field private x:J

.field private y:J

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->N:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "com.tencent.bugly"

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->h:Ljava/lang/String;

    .line 32
    const-string v0, "1.2.9"

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->i:Ljava/lang/String;

    .line 33
    const-string v0, "lejiagu"

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 39
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 40
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q:J

    .line 43
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->s:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->t:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->u:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->v:Ljava/lang/String;

    .line 49
    iput-wide v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->w:J

    .line 50
    iput-wide v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->x:J

    .line 51
    iput-wide v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y:J

    .line 52
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->z:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->A:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->B:Ljava/util/Map;

    .line 55
    iput-boolean v7, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->C:Z

    .line 56
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->D:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->F:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->G:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->H:Ljava/lang/Boolean;

    .line 61
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->J:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->K:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->L:Ljava/util/List;

    .line 66
    iput-object v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->M:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->O:Ljava/lang/Object;

    .line 70
    iput v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->P:I

    .line 71
    iput v5, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->Q:I

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->R:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->S:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->T:Ljava/lang/Object;

    .line 79
    const-string v0, "com info create start"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c:J

    .line 81
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/tencent/bugly/lejiagu/proguard/y;->a()Lcom/tencent/bugly/lejiagu/proguard/y;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a$a;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a$a;-><init>(Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/y;->b(Ljava/lang/Runnable;)Z

    .line 83
    iput-byte v7, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e:B

    .line 84
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->g:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->m:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->L:Ljava/util/List;

    .line 92
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->M:Ljava/util/List;

    .line 94
    const-string v0, "com info create end"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;
    .locals 2

    .prologue
    .line 112
    const-class v1, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->N:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->N:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;

    .line 115
    :cond_0
    sget-object v0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->N:Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->O:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->D:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 388
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->D:Ljava/lang/String;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->G:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized C()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->H:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/af;->a(Landroid/content/Context;)Lcom/tencent/bugly/lejiagu/proguard/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/lejiagu/proguard/af;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->H:Ljava/lang/Boolean;

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->H:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized D()Ljava/lang/String;
    .locals 4

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->I:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 419
    const-string v0, "rom:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->I:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->I:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->L:Ljava/util/List;

    return-object v0
.end method

.method public I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->M:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized J()Ljava/util/Map;
    .locals 2
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
    .line 461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 465
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->R:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized K()I
    .locals 1

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized L()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized M()Ljava/util/Map;
    .locals 2
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
    .line 524
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 527
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->S:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized N()I
    .locals 1

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized O()I
    .locals 1

    .prologue
    .line 557
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->Q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized P()Z
    .locals 1

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/AppInfo;->f(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->O:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->b:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->P:I

    .line 534
    if-eq v0, p1, :cond_0

    .line 535
    iput p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->P:I

    .line 536
    const-string v1, "user scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->P:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :cond_0
    monitor-exit p0

    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->F:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    :cond_0
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 490
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_3

    .line 492
    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->R:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->c:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    const-string v0, "server key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :goto_0
    monitor-exit p0

    return-void

    .line 520
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->S:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()B
    .locals 1

    .prologue
    .line 142
    iget-byte v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->e:B

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    monitor-enter p0

    if-nez p1, :cond_0

    .line 199
    :try_start_0
    const-string p1, "10000"

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string v0, "com.tencent.bugly"

    return-object v0
.end method

.method public declared-synchronized g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->G:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "1.2.9"

    return-object v0
.end method

.method public declared-synchronized h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "lejiagu"

    return-object v0
.end method

.method public declared-synchronized i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized j(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    const/4 v0, 0x0

    .line 473
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->R:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized k(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/bugly/lejiagu/proguard/ag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    const/4 v0, 0x0

    .line 481
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->R:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->o:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    monitor-exit p0

    return-object v0

    .line 207
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->n:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()J
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_0
    monitor-exit p0

    return-object v0

    .line 249
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r:Ljava/lang/String;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->r:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_0
    monitor-exit p0

    return-object v0

    .line 260
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->t:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->t:Ljava/lang/String;

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->t:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :goto_0
    monitor-exit p0

    return-object v0

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->u:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->u:Ljava/lang/String;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->u:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :goto_0
    monitor-exit p0

    return-object v0

    .line 282
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->v:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->v:Ljava/lang/String;

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->v:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()J
    .locals 4

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 290
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->w:J

    .line 292
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u()J
    .locals 4

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 297
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->x:J

    .line 299
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->x:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()J
    .locals 4

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y:J

    .line 306
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->y:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->z:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->z:Ljava/lang/String;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->z:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->T:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/common/info/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->A:Ljava/lang/String;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->A:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized y()Z
    .locals 1

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized z()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/lejiagu/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->B:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 348
    :cond_0
    const/4 v0, 0x0

    .line 352
    :goto_0
    monitor-exit p0

    return-object v0

    .line 350
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->B:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 351
    iget-object v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/common/info/a;->B:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
