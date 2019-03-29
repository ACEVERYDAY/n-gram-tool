.class Lcom/qwapi/adclient/android/service/AdRequestThread$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/service/AdRequestThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field first:Z

.field final synthetic this$0:Lcom/qwapi/adclient/android/service/AdRequestThread;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/service/AdRequestThread;)V
    .locals 1

    iput-object p1, p0, Lcom/qwapi/adclient/android/service/AdRequestThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRequestThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread$1;->first:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRequestThread;

    iget-object v0, v0, Lcom/qwapi/adclient/android/service/AdRequestThread;->adView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->isStartDisplayingAds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRequestThread;

    iget-object v0, v0, Lcom/qwapi/adclient/android/service/AdRequestThread;->adView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAd()V

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRequestThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRequestThread;

    iget-object v0, v0, Lcom/qwapi/adclient/android/service/AdRequestThread;->adView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->showNextAd()V

    :cond_0
    return-void
.end method
