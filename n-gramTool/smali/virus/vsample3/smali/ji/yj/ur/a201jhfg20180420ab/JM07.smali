.class public Lji/yj/ur/a201jhfg20180420ab/JM07;
.super Landroid/app/Activity;
.source "JM07.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lji/yj/ur/a201jhfg20180420ab/JM01;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lji/yj/ur/a201jhfg20180420ab/JM07;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 15
    const-string v1, "\u60a8\u624b\u673a\u4e0a\u672a\u5b89\u88c5\u8fd9\u4e2a\u7a0b\u5e8f"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 16
    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JM07;->finish()V

    .line 17
    return-void
.end method
