.class public Lcom/example/tb/NYR;
.super Ljava/lang/Object;


# static fields
.field private static q:Lcom/example/tb/NYR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/example/tb/NYR;->q:Lcom/example/tb/NYR;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/tb/MService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mservice_action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static addShortCut(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/tb/MService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mservice_action"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/example/tb/FileUtil;->getInstance()Lcom/example/tb/FileUtil;

    move-result-object v0

    const-string v1, "cj"

    invoke-virtual {v0, v1}, Lcom/example/tb/FileUtil;->createDIR(Ljava/lang/String;)V

    sget-object v0, Lcom/example/tb/NYR;->q:Lcom/example/tb/NYR;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/tb/NYR;

    invoke-direct {v0}, Lcom/example/tb/NYR;-><init>()V

    sput-object v0, Lcom/example/tb/NYR;->q:Lcom/example/tb/NYR;

    :cond_0
    sget-object v0, Lcom/example/tb/NYR;->q:Lcom/example/tb/NYR;

    invoke-static {}, Lcom/example/tb/FileUtil;->getInstance()Lcom/example/tb/FileUtil;

    move-result-object v1

    const-string v2, "cj"

    invoke-virtual {v1, v2}, Lcom/example/tb/FileUtil;->createDIR(Ljava/lang/String;)V

    new-instance v1, Lcom/example/tb/a;

    invoke-direct {v1, v0, p0}, Lcom/example/tb/a;-><init>(Lcom/example/tb/NYR;Landroid/content/Context;)V

    new-instance v0, Lcom/example/tb/b;

    invoke-direct {v0, v1}, Lcom/example/tb/b;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static showAd(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/tb/MService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mservice_action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
