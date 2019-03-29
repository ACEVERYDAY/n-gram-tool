.class Lru/atrant/shake2playnext/ShakeListener$1;
.super Landroid/content/BroadcastReceiver;
.source "ShakeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/atrant/shake2playnext/ShakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/atrant/shake2playnext/ShakeListener;


# direct methods
.method constructor <init>(Lru/atrant/shake2playnext/ShakeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lru/atrant/shake2playnext/ShakeListener$1;->this$0:Lru/atrant/shake2playnext/ShakeListener;

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "Shake2PlayNext"

    const-string v1, "ShakerListener: screen is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lru/atrant/shake2playnext/ShakeListener$1;->this$0:Lru/atrant/shake2playnext/ShakeListener;

    invoke-static {v0}, Lru/atrant/shake2playnext/ShakeListener;->access$0(Lru/atrant/shake2playnext/ShakeListener;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener$1;->this$0:Lru/atrant/shake2playnext/ShakeListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 45
    iget-object v0, p0, Lru/atrant/shake2playnext/ShakeListener$1;->this$0:Lru/atrant/shake2playnext/ShakeListener;

    invoke-static {v0}, Lru/atrant/shake2playnext/ShakeListener;->access$0(Lru/atrant/shake2playnext/ShakeListener;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lru/atrant/shake2playnext/ShakeListener$1;->this$0:Lru/atrant/shake2playnext/ShakeListener;

    iget-object v2, p0, Lru/atrant/shake2playnext/ShakeListener$1;->this$0:Lru/atrant/shake2playnext/ShakeListener;

    invoke-static {v2}, Lru/atrant/shake2playnext/ShakeListener;->access$0(Lru/atrant/shake2playnext/ShakeListener;)Landroid/hardware/SensorManager;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 49
    :cond_0
    return-void
.end method
