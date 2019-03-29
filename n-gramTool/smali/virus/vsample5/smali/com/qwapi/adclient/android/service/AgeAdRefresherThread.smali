.class public Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;
.super Ljava/lang/Thread;


# static fields
.field private static final AGE_AD_MSG:I = 0x22b8

.field private static final MSG:I = 0x270f


# instance fields
.field private adInterval:I

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

.field private displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

.field first:Z

.field private looper:Landroid/os/Looper;

.field private mAgeAdRefreshHandler:Landroid/os/Handler;

.field private volatile stopRequested:Z

.field private volatile suspendAutoRefresh:Z


# direct methods
.method public constructor <init>(Lcom/qwapi/adclient/android/view/QWAdView;Lcom/qwapi/adclient/android/requestparams/DisplayMode;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->first:Z

    iput-boolean v2, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->stopRequested:Z

    iput-boolean v2, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->suspendAutoRefresh:Z

    iput-object v1, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->adView:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->looper:Landroid/os/Looper;

    iput-object v1, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->adInterval:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->adView:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    iput p3, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->adInterval:I

    return-void
.end method

.method static synthetic access$000(Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;)Lcom/qwapi/adclient/android/requestparams/DisplayMode;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->displayMode:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;)I
    .locals 1

    iget v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->adInterval:I

    return v0
.end method

.method static synthetic access$200(Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->suspendAutoRefresh:Z

    return v0
.end method

.method static synthetic access$202(Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->suspendAutoRefresh:Z

    return p1
.end method


# virtual methods
.method public getRefreshHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->mAgeAdRefreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public resumeThread()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->suspendAutoRefresh:Z

    return-void
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->stopRequested:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread$1;

    invoke-direct {v0, p0}, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread$1;-><init>(Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->mAgeAdRefreshHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->first:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->mAgeAdRefreshHandler:Landroid/os/Handler;

    const/16 v1, 0x22b8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->first:Z

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->looper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->stopRequested:Z

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public suspendThread()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AgeAdRefresherThread;->suspendAutoRefresh:Z

    return-void
.end method
