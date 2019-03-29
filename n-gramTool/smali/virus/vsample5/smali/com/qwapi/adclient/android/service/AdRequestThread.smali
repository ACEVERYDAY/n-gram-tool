.class public Lcom/qwapi/adclient/android/service/AdRequestThread;
.super Ljava/lang/Thread;


# static fields
.field private static final AD_REQUEST_MSG:I = 0x1e61


# instance fields
.field adView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/qwapi/adclient/android/view/QWAdView;",
            ">;"
        }
    .end annotation
.end field

.field first:Z

.field private looper:Landroid/os/Looper;

.field private mHandler:Landroid/os/Handler;

.field private volatile stopRequested:Z


# direct methods
.method public constructor <init>(Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->stopRequested:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->first:Z

    iput-object v1, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->adView:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->looper:Landroid/os/Looper;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->adView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->stopRequested:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/qwapi/adclient/android/service/AdRequestThread$1;

    invoke-direct {v0, p0}, Lcom/qwapi/adclient/android/service/AdRequestThread$1;-><init>(Lcom/qwapi/adclient/android/service/AdRequestThread;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->first:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->first:Z

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->looper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->stopRequested:Z

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method
