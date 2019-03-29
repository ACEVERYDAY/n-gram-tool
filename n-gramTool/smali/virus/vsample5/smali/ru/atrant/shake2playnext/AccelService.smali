.class public Lru/atrant/shake2playnext/AccelService;
.super Landroid/app/Service;
.source "AccelService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/atrant/shake2playnext/AccelService$AndlessMediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$BTunesMediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$DoubleTwistMediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$HeroMediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$MediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$MeridianMediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$MixzingMediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;,
        Lru/atrant/shake2playnext/AccelService$RhapsodyMediaPlayerServiceConnection;
    }
.end annotation


# static fields
.field public static mService:Lru/atrant/shake2playnext/AccelService;


# instance fields
.field private killMusicAppThreadRunning:Z

.field private mAM:Landroid/app/ActivityManager;

.field private mKeepScreen:Z

.field private mLeaftSeconds:I

.field private mShaker:Lru/atrant/shake2playnext/ShakeListener;

.field private myTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lru/atrant/shake2playnext/AccelService;->mService:Lru/atrant/shake2playnext/AccelService;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    iput-object v0, p0, Lru/atrant/shake2playnext/AccelService;->mShaker:Lru/atrant/shake2playnext/ShakeListener;

    .line 32
    iput-boolean v1, p0, Lru/atrant/shake2playnext/AccelService;->mKeepScreen:Z

    .line 33
    iput-object v0, p0, Lru/atrant/shake2playnext/AccelService;->mAM:Landroid/app/ActivityManager;

    .line 34
    iput-object v0, p0, Lru/atrant/shake2playnext/AccelService;->myTelManager:Landroid/telephony/TelephonyManager;

    .line 727
    iput-boolean v1, p0, Lru/atrant/shake2playnext/AccelService;->killMusicAppThreadRunning:Z

    .line 728
    const/16 v0, 0x1e

    iput v0, p0, Lru/atrant/shake2playnext/AccelService;->mLeaftSeconds:I

    .line 29
    return-void
.end method

.method private _shutdownService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lru/atrant/shake2playnext/AccelService;->mShaker:Lru/atrant/shake2playnext/ShakeListener;

    invoke-virtual {v0}, Lru/atrant/shake2playnext/ShakeListener;->pause()V

    .line 344
    iput-boolean v1, p0, Lru/atrant/shake2playnext/AccelService;->mKeepScreen:Z

    .line 345
    invoke-direct {p0, v1}, Lru/atrant/shake2playnext/AccelService;->enableStatusbarNotification(Z)V

    .line 346
    return-void
.end method

.method private _startService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "accel_sensitivity"

    .line 82
    const/16 v3, 0x7d0

    .line 81
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, "user_level":I
    new-instance v2, Lru/atrant/shake2playnext/ShakeListener;

    invoke-direct {v2, p0, v1}, Lru/atrant/shake2playnext/ShakeListener;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lru/atrant/shake2playnext/AccelService;->mShaker:Lru/atrant/shake2playnext/ShakeListener;

    .line 84
    iget-object v2, p0, Lru/atrant/shake2playnext/AccelService;->mShaker:Lru/atrant/shake2playnext/ShakeListener;

    new-instance v3, Lru/atrant/shake2playnext/AccelService$2;

    invoke-direct {v3, p0}, Lru/atrant/shake2playnext/AccelService$2;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    invoke-virtual {v2, v3}, Lru/atrant/shake2playnext/ShakeListener;->setOnShakeListener(Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;)V

    .line 299
    const-string v2, "Shake2PlayNext"

    const-string v3, "AccelService shaker inited"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v2, "KEEP_SCREEN_ON_ENABLED"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0, v4}, Lru/atrant/shake2playnext/AccelService;->runKeepScreenThread(Z)V

    .line 305
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/AccelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lru/atrant/shake2playnext/AccelService;->mAM:Landroid/app/ActivityManager;

    .line 307
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/AccelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 306
    iput-object v2, p0, Lru/atrant/shake2playnext/AccelService;->myTelManager:Landroid/telephony/TelephonyManager;

    .line 309
    invoke-direct {p0, v4}, Lru/atrant/shake2playnext/AccelService;->enableStatusbarNotification(Z)V

    .line 310
    return-void
.end method

.method static synthetic access$0(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lru/atrant/shake2playnext/AccelService;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0, p1, p2}, Lru/atrant/shake2playnext/AccelService;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2(Lru/atrant/shake2playnext/AccelService;)Lru/atrant/shake2playnext/ShakeListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lru/atrant/shake2playnext/AccelService;->mShaker:Lru/atrant/shake2playnext/ShakeListener;

    return-object v0
.end method

.method static synthetic access$3(Lru/atrant/shake2playnext/AccelService;Z)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lru/atrant/shake2playnext/AccelService;->enableStatusbarNotification(Z)V

    return-void
.end method

.method static synthetic access$4(Lru/atrant/shake2playnext/AccelService;)Landroid/app/ActivityManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lru/atrant/shake2playnext/AccelService;->mAM:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$5(Lru/atrant/shake2playnext/AccelService;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lru/atrant/shake2playnext/AccelService;->myTelManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$6(Lru/atrant/shake2playnext/AccelService;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lru/atrant/shake2playnext/AccelService;->mKeepScreen:Z

    return v0
.end method

.method static synthetic access$7(Lru/atrant/shake2playnext/AccelService;)I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lru/atrant/shake2playnext/AccelService;->mLeaftSeconds:I

    return v0
.end method

.method static synthetic access$8(Lru/atrant/shake2playnext/AccelService;I)V
    .locals 0

    .prologue
    .line 728
    iput p1, p0, Lru/atrant/shake2playnext/AccelService;->mLeaftSeconds:I

    return-void
.end method

.method private enableStatusbarNotification(Z)V
    .locals 12
    .param p1, "esn"    # Z

    .prologue
    .line 314
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 315
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "STATUSBAR_NOTIFICATIONS_ENABLED"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 316
    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p0}, Lru/atrant/shake2playnext/AccelService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 318
    .local v7, "r":Landroid/content/res/Resources;
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lru/atrant/shake2playnext/AccelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 319
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification;

    const v8, 0x7f020001

    .line 320
    const v9, 0x7f040030

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 319
    invoke-direct {v4, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 323
    .local v4, "notification":Landroid/app/Notification;
    const v8, 0x7f040030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "contentTitle":Ljava/lang/CharSequence;
    const v8, 0x7f040031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "contentText":Ljava/lang/CharSequence;
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lru/atrant/shake2playnext/MainActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v5, "notificationIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 328
    const/4 v9, 0x0

    .line 327
    invoke-static {p0, v8, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 329
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lru/atrant/shake2playnext/AccelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 331
    const/16 v8, 0x22

    iput v8, v4, Landroid/app/Notification;->flags:I

    .line 334
    const/16 v8, 0x777

    invoke-virtual {v3, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 340
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "contentText":Ljava/lang/CharSequence;
    .end local v2    # "contentTitle":Ljava/lang/CharSequence;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .end local v7    # "r":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 337
    .end local v3    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_0
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lru/atrant/shake2playnext/AccelService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 338
    .restart local v3    # "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x777

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 3
    .param p1, "res_id"    # I

    .prologue
    .line 714
    invoke-virtual {p0}, Lru/atrant/shake2playnext/AccelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shake2PlayNext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/atrant/shake2playnext/AccelService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    const/4 v2, 0x0

    .line 714
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 717
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 709
    invoke-virtual {p0}, Lru/atrant/shake2playnext/AccelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shake2PlayNext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    const/4 v2, 0x0

    .line 709
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 711
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "player_name"    # Ljava/lang/String;
    .param p2, "res_id"    # I

    .prologue
    .line 721
    invoke-virtual {p0}, Lru/atrant/shake2playnext/AccelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shake2PlayNext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 723
    invoke-virtual {p0}, Lru/atrant/shake2playnext/AccelService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 722
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    const/4 v2, 0x0

    .line 720
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 725
    return-void
.end method

.method private startKillMusicAppThread()V
    .locals 4

    .prologue
    .line 731
    iget-boolean v2, p0, Lru/atrant/shake2playnext/AccelService;->killMusicAppThreadRunning:Z

    if-eqz v2, :cond_0

    .line 732
    const/16 v2, 0x1e

    iput v2, p0, Lru/atrant/shake2playnext/AccelService;->mLeaftSeconds:I

    .line 760
    :goto_0
    return-void

    .line 736
    :cond_0
    new-instance v0, Lru/atrant/shake2playnext/AccelService$4;

    invoke-direct {v0, p0}, Lru/atrant/shake2playnext/AccelService$4;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 755
    .local v0, "killmusic_run":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    .line 756
    const-string v3, "Shake2PlayNext_killMusicThread"

    .line 755
    invoke-direct {v1, v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 757
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public ShowAdvert()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v6, "nexted_times"

    .line 765
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 767
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "nexted_times"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 768
    .local v2, "nexted":I
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 769
    .local v4, "spe":Landroid/content/SharedPreferences$Editor;
    const-string v5, "nexted_times"

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 770
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 772
    rem-int/lit8 v5, v2, 0x1e

    if-nez v5, :cond_0

    .line 773
    const-string v5, "ads_clicked"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x14

    if-ge v5, v6, :cond_0

    .line 774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 775
    .local v0, "extras":Landroid/os/Bundle;
    const-string v5, "popup_for_advert"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 777
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lru/atrant/shake2playnext/MainActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 778
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 779
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 780
    invoke-virtual {p0, v1}, Lru/atrant/shake2playnext/AccelService;->startActivity(Landroid/content/Intent;)V

    .line 781
    const-string v5, "Shake2PlayNext"

    const-string v6, "fired advert"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    new-instance v0, Lru/atrant/shake2playnext/AccelService$1;

    invoke-direct {v0, p0}, Lru/atrant/shake2playnext/AccelService$1;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    const-string v0, "Shake2PlayNext"

    const-string v1, "AccelService starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sput-object p0, Lru/atrant/shake2playnext/AccelService;->mService:Lru/atrant/shake2playnext/AccelService;

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/AccelService;->setForeground(Z)V

    .line 65
    invoke-direct {p0}, Lru/atrant/shake2playnext/AccelService;->_startService()V

    .line 66
    const v0, 0x7f040017

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/AccelService;->showToast(I)V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    const-string v0, "Shake2PlayNext"

    const-string v1, "AccelService destroying service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lru/atrant/shake2playnext/AccelService;->_shutdownService()V

    .line 74
    const v0, 0x7f040018

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/AccelService;->showToast(I)V

    .line 75
    return-void
.end method

.method public runKeepScreenThread(Z)V
    .locals 4
    .param p1, "run"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lru/atrant/shake2playnext/AccelService;->mKeepScreen:Z

    .line 350
    iget-boolean v2, p0, Lru/atrant/shake2playnext/AccelService;->mKeepScreen:Z

    if-nez v2, :cond_0

    .line 351
    const-string v2, "Shake2PlayNext"

    const-string v3, "Stopping KeepScreen thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v0, Lru/atrant/shake2playnext/AccelService$3;

    invoke-direct {v0, p0}, Lru/atrant/shake2playnext/AccelService$3;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 392
    .local v0, "keepscreen":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    .line 393
    const-string v3, "Shake2PlayNext KeepScreenThread"

    .line 392
    invoke-direct {v1, v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 394
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopKeepScreenThread()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/atrant/shake2playnext/AccelService;->mKeepScreen:Z

    .line 399
    return-void
.end method
