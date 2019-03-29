.class public Ldl/hp/xx/fm/G;
.super Ljava/lang/Object;
.source "l"


# static fields
.field static B:Ldl/hp/xx/fm/b/a; = null

.field private static synthetic c:Ldl/hp/xx/fm/G; = null

.field private static final synthetic d:I = 0x3


# instance fields
.field private synthetic g:Landroid/content/Context;

.field private synthetic pDvqLhYe:Ldalvik/system/DexClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-class v0, Ldl/hp/xx/fm/G;

    invoke-static {v0}, Ldl/hp/xx/fm/b/a;->pDvqLhYe(Ljava/lang/Class;)Ldl/hp/xx/fm/b/a;

    move-result-object v0

    sput-object v0, Ldl/hp/xx/fm/G;->B:Ldl/hp/xx/fm/b/a;

    .line 10
    const/4 v0, 0x0

    sput-object v0, Ldl/hp/xx/fm/G;->c:Ldl/hp/xx/fm/G;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v0, p0, Ldl/hp/xx/fm/G;->pDvqLhYe:Ldalvik/system/DexClassLoader;

    .line 46
    return-void
.end method

.method public static J(Landroid/content/Context;)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {}, Ldl/hp/xx/fm/G;->pDvqLhYe()Ldl/hp/xx/fm/G;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldl/hp/xx/fm/G;->pDvqLhYe(Landroid/content/Context;)Ldl/hp/xx/fm/G;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldl/hp/xx/fm/G;->pDvqLhYe(Z)V

    .line 94
    return-void
.end method

.method static synthetic pDvqLhYe(Ldl/hp/xx/fm/G;)Landroid/content/Context;
    .locals 1
    .param p0, "arg0"    # Ldl/hp/xx/fm/G;

    .prologue
    .line 187
    iget-object v0, p0, Ldl/hp/xx/fm/G;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic pDvqLhYe(Ldl/hp/xx/fm/G;)Ldalvik/system/DexClassLoader;
    .locals 1
    .param p0, "arg0"    # Ldl/hp/xx/fm/G;

    .prologue
    .line 187
    iget-object v0, p0, Ldl/hp/xx/fm/G;->pDvqLhYe:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method static synthetic pDvqLhYe(Ldl/hp/xx/fm/G;Ldalvik/system/DexClassLoader;)Ldalvik/system/DexClassLoader;
    .locals 0
    .param p0, "arg0"    # Ldl/hp/xx/fm/G;
    .param p1, "arg1"    # Ldalvik/system/DexClassLoader;

    .prologue
    .line 187
    iput-object p1, p0, Ldl/hp/xx/fm/G;->pDvqLhYe:Ldalvik/system/DexClassLoader;

    return-object p1
.end method

.method public static declared-synchronized pDvqLhYe()Ldl/hp/xx/fm/G;
    .locals 2

    .prologue
    .line 224
    const-class v1, Ldl/hp/xx/fm/G;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldl/hp/xx/fm/G;->c:Ldl/hp/xx/fm/G;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ldl/hp/xx/fm/G;

    invoke-direct {v0}, Ldl/hp/xx/fm/G;-><init>()V

    sput-object v0, Ldl/hp/xx/fm/G;->c:Ldl/hp/xx/fm/G;

    .line 173
    :cond_0
    sget-object v0, Ldl/hp/xx/fm/G;->c:Ldl/hp/xx/fm/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private synthetic pDvqLhYe(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 108
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 246
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u0001eOuO.J`Z`\u0001"

    invoke-static {v3}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0014$R*\u0014"

    invoke-static {v1}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic pDvqLhYe(Ldl/hp/xx/fm/G;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # Ldl/hp/xx/fm/G;
    .param p1, "arg1"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Ldl/hp/xx/fm/G;->pDvqLhYe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pDvqLhYe(Landroid/content/Context;)V
    .locals 2
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {}, Ldl/hp/xx/fm/G;->pDvqLhYe()Ldl/hp/xx/fm/G;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldl/hp/xx/fm/G;->pDvqLhYe(Landroid/content/Context;)Ldl/hp/xx/fm/G;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldl/hp/xx/fm/G;->pDvqLhYe(Z)V

    .line 243
    return-void
.end method


# virtual methods
.method public pDvqLhYe(Landroid/content/Context;)Ldl/hp/xx/fm/G;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldl/hp/xx/fm/G;->g:Landroid/content/Context;

    .line 255
    return-object p0
.end method

.method public declared-synchronized pDvqLhYe(Z)V
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldl/hp/xx/fm/G;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldl/hp/xx/fm/J;

    invoke-direct {v1, p0, p1}, Ldl/hp/xx/fm/J;-><init>(Ldl/hp/xx/fm/G;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
