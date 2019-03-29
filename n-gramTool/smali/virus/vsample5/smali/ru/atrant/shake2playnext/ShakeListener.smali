.class public Lru/atrant/shake2playnext/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_DURATION:I = 0x3e8

.field private static final TIME_THRESHOLD:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastShake:J

.field public mLastSpeed:I

.field private mLastTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mShakeListener:Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;

.field private mStarted:J

.field private mTreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "treshold"    # I

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastX:F

    iput v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastY:F

    iput v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastZ:F

    .line 37
    new-instance v1, Lru/atrant/shake2playnext/ShakeListener$1;

    invoke-direct {v1, p0}, Lru/atrant/shake2playnext/ShakeListener$1;-><init>(Lru/atrant/shake2playnext/ShakeListener;)V

    iput-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    const-string v1, "Shake2PlayNext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ShakerListener treshold: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lru/atrant/shake2playnext/ShakeListener;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mStarted:J

    .line 60
    int-to-float v1, p2

    iput v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mTreshold:F

    .line 61
    invoke-virtual {p0}, Lru/atrant/shake2playnext/ShakeListener;->resume()V

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lru/atrant/shake2playnext/ShakeListener;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    return-object v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 110
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 114
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 115
    .local v5, "values":[F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 118
    .local v2, "now":J
    iget-wide v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mStarted:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 122
    iget-wide v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 123
    iget-wide v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastTime:J

    sub-long v0, v2, v6

    .line 124
    .local v0, "diff":J
    const/4 v6, 0x0

    aget v6, v5, v6

    .line 125
    const/4 v7, 0x1

    aget v7, v5, v7

    .line 124
    add-float/2addr v6, v7

    .line 126
    const/4 v7, 0x2

    aget v7, v5, v7

    .line 124
    add-float/2addr v6, v7

    .line 126
    iget v7, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastX:F

    .line 124
    sub-float/2addr v6, v7

    .line 126
    iget v7, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastY:F

    .line 124
    sub-float/2addr v6, v7

    .line 126
    iget v7, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastZ:F

    .line 124
    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 127
    long-to-float v7, v0

    .line 124
    div-float/2addr v6, v7

    .line 127
    const v7, 0x461c4000    # 10000.0f

    .line 124
    mul-float v4, v6, v7

    .line 128
    .local v4, "speed":F
    iget-wide v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastShake:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 129
    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 130
    const-string v6, "Shake2PlayNext"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Speed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_2
    iget v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mTreshold:F

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_3

    .line 132
    iput-wide v2, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastShake:J

    .line 133
    iget-object v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mShakeListener:Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;

    if-eqz v6, :cond_3

    .line 134
    const-string v6, "Shake2PlayNext"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Treshold Shake Speed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    float-to-int v6, v4

    iput v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastSpeed:I

    .line 136
    iget-object v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mShakeListener:Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;

    invoke-interface {v6}, Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;->onStrongShake()V

    .line 140
    :cond_3
    iput-wide v2, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastTime:J

    .line 141
    const/4 v6, 0x0

    aget v6, v5, v6

    iput v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastX:F

    .line 142
    const/4 v6, 0x1

    aget v6, v5, v6

    iput v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastY:F

    .line 143
    const/4 v6, 0x2

    aget v6, v5, v6

    iput v6, p0, Lru/atrant/shake2playnext/ShakeListener;->mLastZ:F

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 99
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 104
    :cond_0
    iget-object v0, p0, Lru/atrant/shake2playnext/ShakeListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 81
    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mContext:Landroid/content/Context;

    .line 82
    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 81
    iput-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 83
    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sensors not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 87
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 86
    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 89
    .local v0, "supported":Z
    if-nez v0, :cond_1

    .line 90
    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lru/atrant/shake2playnext/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 91
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 90
    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 92
    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener;->mContext:Landroid/content/Context;

    const-string v2, "Accelerometer not supported"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    :cond_1
    return-void
.end method

.method public setOnShakeListener(Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;)V
    .locals 0
    .param p1, "listener"    # Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;

    .prologue
    .line 77
    iput-object p1, p0, Lru/atrant/shake2playnext/ShakeListener;->mShakeListener:Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;

    .line 78
    return-void
.end method

.method public setTreshold(I)V
    .locals 3
    .param p1, "new_treshold"    # I

    .prologue
    .line 72
    int-to-float v0, p1

    iput v0, p0, Lru/atrant/shake2playnext/ShakeListener;->mTreshold:F

    .line 73
    const-string v0, "Shake2PlayNext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New ShakerListener treshold: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lru/atrant/shake2playnext/ShakeListener;->mTreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method
