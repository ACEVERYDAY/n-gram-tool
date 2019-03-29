.class public Lcom/upay/billing/engine/MessageRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MSG_ID:Ljava/lang/String; = "upay.message.id"

.field private static final SMS_SENT_ACTION:Ljava/lang/String; = "com.upay.billing.util.SmsSentAction"

.field private static final TAG:Ljava/lang/String; = "MessageRunner"

.field private static maxId:I

.field private static queue:Ljava/util/LinkedHashMap;

.field private static receiver:Landroid/content/BroadcastReceiver;

.field private static registered:Z

.field private static worker:Ljava/lang/Thread;


# instance fields
.field private context:Landroid/content/Context;

.field private createTime:J

.field private id:I

.field private msg:Ljava/lang/String;

.field private num:Ljava/lang/String;

.field private retryCount:I

.field private sb:Ljava/lang/StringBuffer;

.field private sending:Z

.field private smsType:I

.field private tagMsg:Ljava/lang/String;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/MessageRunner;->queue:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    sput v0, Lcom/upay/billing/engine/MessageRunner;->maxId:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/upay/billing/engine/MessageRunner;->registered:Z

    new-instance v0, Lcom/upay/billing/engine/MessageRunner$1;

    invoke-direct {v0}, Lcom/upay/billing/engine/MessageRunner$1;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/MessageRunner;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/upay/billing/engine/MessageRunner$2;

    invoke-direct {v0}, Lcom/upay/billing/engine/MessageRunner$2;-><init>()V

    sput-object v0, Lcom/upay/billing/engine/MessageRunner;->worker:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/upay/billing/engine/MessageRunner;->sending:Z

    const v0, 0xea60

    iput v0, p0, Lcom/upay/billing/engine/MessageRunner;->timeout:I

    iput v1, p0, Lcom/upay/billing/engine/MessageRunner;->retryCount:I

    iput-object p1, p0, Lcom/upay/billing/engine/MessageRunner;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/upay/billing/engine/MessageRunner;->num:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/MessageRunner;->msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/MessageRunner;->tagMsg:Ljava/lang/String;

    invoke-static {p1}, Lcom/upay/billing/UpayCore;->getInstance(Landroid/content/Context;)Lcom/upay/billing/UpayCore;

    move-result-object v0

    const-string v2, "common"

    const-string v3, "send_sms_timeout"

    const-string v4, "60000"

    invoke-virtual {v0, v2, v3, v4}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/upay/billing/engine/MessageRunner;->timeout:I

    invoke-direct {p0}, Lcom/upay/billing/engine/MessageRunner;->needRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/upay/billing/engine/MessageRunner;->retryCount:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->sb:Ljava/lang/StringBuffer;

    iput v1, p0, Lcom/upay/billing/engine/MessageRunner;->smsType:I

    const-class v1, Lcom/upay/billing/engine/MessageRunner;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/upay/billing/engine/MessageRunner;->maxId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/upay/billing/engine/MessageRunner;->maxId:I

    iput v0, p0, Lcom/upay/billing/engine/MessageRunner;->id:I

    monitor-exit v1

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/upay/billing/engine/MessageRunner;->sending:Z

    const v1, 0xea60

    iput v1, p0, Lcom/upay/billing/engine/MessageRunner;->timeout:I

    iput v0, p0, Lcom/upay/billing/engine/MessageRunner;->retryCount:I

    iput-object p1, p0, Lcom/upay/billing/engine/MessageRunner;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/upay/billing/engine/MessageRunner;->num:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/MessageRunner;->msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/MessageRunner;->tagMsg:Ljava/lang/String;

    invoke-static {p1}, Lcom/upay/billing/UpayCore;->getInstance(Landroid/content/Context;)Lcom/upay/billing/UpayCore;

    move-result-object v1

    const-string v2, "common"

    const-string v3, "send_sms_timeout"

    const-string v4, "60000"

    invoke-virtual {v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/upay/billing/engine/MessageRunner;->timeout:I

    invoke-direct {p0}, Lcom/upay/billing/engine/MessageRunner;->needRetry()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/upay/billing/engine/MessageRunner;->retryCount:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->sb:Ljava/lang/StringBuffer;

    iput p5, p0, Lcom/upay/billing/engine/MessageRunner;->smsType:I

    const-class v1, Lcom/upay/billing/engine/MessageRunner;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/upay/billing/engine/MessageRunner;->maxId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/upay/billing/engine/MessageRunner;->maxId:I

    iput v0, p0, Lcom/upay/billing/engine/MessageRunner;->id:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Ljava/util/LinkedHashMap;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/MessageRunner;->queue:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->msg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/upay/billing/engine/MessageRunner;)I
    .locals 1

    iget v0, p0, Lcom/upay/billing/engine/MessageRunner;->smsType:I

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/upay/billing/engine/MessageRunner;->simpleDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->num:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->tagMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$310(Lcom/upay/billing/engine/MessageRunner;)I
    .locals 2

    iget v0, p0, Lcom/upay/billing/engine/MessageRunner;->retryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/upay/billing/engine/MessageRunner;->retryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/upay/billing/engine/MessageRunner;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->sb:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upay/billing/engine/MessageRunner;)J
    .locals 2

    iget-wide v0, p0, Lcom/upay/billing/engine/MessageRunner;->createTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/upay/billing/engine/MessageRunner;J)J
    .locals 0

    iput-wide p1, p0, Lcom/upay/billing/engine/MessageRunner;->createTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/upay/billing/engine/MessageRunner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/upay/billing/engine/MessageRunner;->sending:Z

    return v0
.end method

.method static synthetic access$602(Lcom/upay/billing/engine/MessageRunner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/upay/billing/engine/MessageRunner;->sending:Z

    return p1
.end method

.method static synthetic access$700(Lcom/upay/billing/engine/MessageRunner;)I
    .locals 1

    iget v0, p0, Lcom/upay/billing/engine/MessageRunner;->timeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/upay/billing/engine/MessageRunner;)I
    .locals 1

    iget v0, p0, Lcom/upay/billing/engine/MessageRunner;->id:I

    return v0
.end method

.method static synthetic access$900(Lcom/upay/billing/engine/MessageRunner;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->context:Landroid/content/Context;

    return-object v0
.end method

.method private needRetry()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/engine/MessageRunner;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/upay/billing/UpayCore;->getInstance(Landroid/content/Context;)Lcom/upay/billing/UpayCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getCurrentTrade()Lcom/upay/billing/bean/Trade;

    move-result-object v1

    iget-object v2, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/upay/billing/engine/MessageRunner;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/upay/billing/UpayCore;->getInstance(Landroid/content/Context;)Lcom/upay/billing/UpayCore;

    move-result-object v1

    const-string v3, "common"

    const-string v4, "not_show_loading"

    const-string v5, ""

    invoke-virtual {v1, v3, v4, v5}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static simpleDec(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x31

    const/16 v1, 0x4d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x32

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x33

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x34

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x35

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x36

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->num:Ljava/lang/String;

    return-object v0
.end method

.method protected onFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    sget-object v1, Lcom/upay/billing/engine/MessageRunner;->worker:Ljava/lang/Thread;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/upay/billing/engine/MessageRunner;->registered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/MessageRunner;->context:Landroid/content/Context;

    sget-object v2, Lcom/upay/billing/engine/MessageRunner;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.upay.billing.util.SmsSentAction"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/upay/billing/engine/MessageRunner;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/upay/billing/engine/MessageRunner;->registered:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/upay/billing/engine/MessageRunner;->queue:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/upay/billing/engine/MessageRunner;->queue:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcom/upay/billing/engine/MessageRunner;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setTimeout(I)Lcom/upay/billing/engine/MessageRunner;
    .locals 0

    iput p1, p0, Lcom/upay/billing/engine/MessageRunner;->timeout:I

    return-object p0
.end method
