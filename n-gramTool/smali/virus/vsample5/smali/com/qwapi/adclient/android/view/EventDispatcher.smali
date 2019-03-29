.class public Lcom/qwapi/adclient/android/view/EventDispatcher;
.super Ljava/lang/Object;


# instance fields
.field private activity:Landroid/app/Activity;

.field private eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

.field private runOnUIThread:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/qwapi/adclient/android/view/AdEventsListener;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->runOnUIThread:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/qwapi/adclient/android/view/EventDispatcher;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qwapi/adclient/android/view/EventDispatcher;)Lcom/qwapi/adclient/android/view/AdEventsListener;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getEventListener()Lcom/qwapi/adclient/android/view/AdEventsListener;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    return-object v0
.end method

.method public isRunOnUIThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->runOnUIThread:Z

    return v0
.end method

.method onAdClick(Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->runOnUIThread:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/qwapi/adclient/android/view/EventDispatcher$4;

    invoke-direct {v1, p0, p1}, Lcom/qwapi/adclient/android/view/EventDispatcher$4;-><init>(Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/data/Ad;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/qwapi/adclient/android/view/AdEventsListener;->onAdClick(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;)V

    goto :goto_0
.end method

.method onAdRequest(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->runOnUIThread:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/qwapi/adclient/android/view/EventDispatcher$1;

    invoke-direct {v1, p0, p1}, Lcom/qwapi/adclient/android/view/EventDispatcher$1;-><init>(Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/qwapi/adclient/android/view/AdEventsListener;->onAdRequest(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V

    goto :goto_0
.end method

.method onAdRequestFailed(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->runOnUIThread:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/qwapi/adclient/android/view/EventDispatcher$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/qwapi/adclient/android/view/EventDispatcher$3;-><init>(Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Status;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2}, Lcom/qwapi/adclient/android/view/AdEventsListener;->onAdRequestFailed(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Status;)V

    goto :goto_0
.end method

.method onAdRequestSuccessful(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->runOnUIThread:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/qwapi/adclient/android/view/EventDispatcher$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/qwapi/adclient/android/view/EventDispatcher$2;-><init>(Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Ad;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2}, Lcom/qwapi/adclient/android/view/AdEventsListener;->onAdRequestSuccessful(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Ad;)V

    goto :goto_0
.end method

.method onDisplayAd(Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->runOnUIThread:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/qwapi/adclient/android/view/EventDispatcher$5;

    invoke-direct {v1, p0, p1}, Lcom/qwapi/adclient/android/view/EventDispatcher$5;-><init>(Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/data/Ad;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/qwapi/adclient/android/view/AdEventsListener;->onDisplayAd(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;)V

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setEventListener(Lcom/qwapi/adclient/android/view/AdEventsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->eventListener:Lcom/qwapi/adclient/android/view/AdEventsListener;

    return-void
.end method

.method public setRunOnUIThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher;->runOnUIThread:Z

    return-void
.end method
