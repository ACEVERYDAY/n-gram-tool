.class public Lcom/upay/billing/engine/rm_woyd/SendSMS;
.super Ljava/lang/Object;


# static fields
.field public static final INT_SEND_MESSAGE_FAILED_INNERCODE:I = 0x2709

.field public static final INT_SEND_MESSAGE_TIME_OUT:I = 0x8bd

.field public static final SECOND_CONFRIM_SMS_ADDRESS:Ljava/lang/String; = "106566660020"

.field private static sendCounter:I


# instance fields
.field private context:Landroid/content/Context;

.field private deliverReceiver:Landroid/content/BroadcastReceiver;

.field private mTimerClock:Ljava/util/Timer;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

.field private smsBean:Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/upay/billing/engine/rm_woyd/RequestDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    invoke-direct {p0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;Lcom/upay/billing/engine/rm_woyd/RequestDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->smsBean:Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;

    iput-object p3, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    invoke-direct {p0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->init()V

    return-void
.end method

.method static access$0(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$000(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    return-object v0
.end method

.method static access$1(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->deliverReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static access$2(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/RequestDelegate;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->reqDelegate:Lcom/upay/billing/engine/rm_woyd/RequestDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->context:Landroid/content/Context;

    return-object v0
.end method

.method static access$3(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->smsBean:Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static access$4(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->mTimerClock:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->mTimerClock:Ljava/util/Timer;

    return-object v0
.end method

.method static access$5(Lcom/upay/billing/engine/rm_woyd/SendSMS;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->deliverReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private getOrderDeliverPI()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "DELIVERED_SMS_ACTION_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->context:Landroid/content/Context;

    sget v2, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendCounter:I

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getOrderSentPI()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SENT_SMS_ACTION_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->context:Landroid/content/Context;

    sget v2, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendCounter:I

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getVerifyDeliverPI()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "DELIVERED_SMS_ACTION_VERIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->context:Landroid/content/Context;

    sget v2, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendCounter:I

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getVerifySentPI()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SENT_SMS_ACTION_VERIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->context:Landroid/content/Context;

    sget v2, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendCounter:I

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/upay/billing/engine/rm_woyd/SendSMS$SendBroadcastReceiver;-><init>(Lcom/upay/billing/engine/rm_woyd/SendSMS;)V

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/upay/billing/engine/rm_woyd/SendSMS$DeliverBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/upay/billing/engine/rm_woyd/SendSMS$DeliverBroadcastReceiver;-><init>(Lcom/upay/billing/engine/rm_woyd/SendSMS;)V

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->deliverReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private resetTimer(I)V
    .locals 4

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->mTimerClock:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->mTimerClock:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->mTimerClock:Ljava/util/Timer;

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->mTimerClock:Ljava/util/Timer;

    new-instance v1, Lcom/upay/billing/engine/rm_woyd/SendSMS$MyTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/upay/billing/engine/rm_woyd/SendSMS$MyTimerTask;-><init>(Lcom/upay/billing/engine/rm_woyd/SendSMS;I)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private sendSMS(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :try_start_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v1, "com.unicom.wounipaysms.duandai.sendSMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v7.next="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object v1, p4

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public sendOrderSMSToServer()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "SENT_SMS_ACTION_ORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "SENT_SMS_ACTION_VERIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->resetTimer(I)V

    invoke-direct {p0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->getOrderSentPI()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->getOrderDeliverPI()Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->smsBean:Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;

    invoke-virtual {v2}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getSmsContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "106566660020"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendSMS(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendVerifySMSToServer()V
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->resetTimer(I)V

    const-string v0, "com.unicom.wounipaysms.duandai.sendSMS.sendVerifySMSToServer()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.smsBean.getVerifyCode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->smsBean:Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;

    invoke-virtual {v2}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getVerifyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->getVerifySentPI()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->getVerifyDeliverPI()Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/rm_woyd/SendSMS;->smsBean:Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;

    invoke-virtual {v2}, Lcom/upay/billing/engine/rm_woyd/UpLinkSMSMBean;->getVerifyCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "106566660020"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/upay/billing/engine/rm_woyd/SendSMS;->sendSMS(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
