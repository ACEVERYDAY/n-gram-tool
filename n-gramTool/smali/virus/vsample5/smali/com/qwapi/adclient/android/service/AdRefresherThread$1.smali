.class Lcom/qwapi/adclient/android/service/AdRefresherThread$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/service/AdRefresherThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field first:Z

.field final synthetic this$0:Lcom/qwapi/adclient/android/service/AdRefresherThread;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/service/AdRefresherThread;)V
    .locals 1

    iput-object p1, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->first:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x270f

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->first:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->first:Z

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-static {v0}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->access$000(Lcom/qwapi/adclient/android/service/AdRefresherThread;)Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->autoRotate:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-static {v1}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->access$100(Lcom/qwapi/adclient/android/service/AdRefresherThread;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-static {v0}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->access$200(Lcom/qwapi/adclient/android/service/AdRefresherThread;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    iget-object v0, v0, Lcom/qwapi/adclient/android/service/AdRefresherThread;->adView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->prepareAd()V

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    iget-object v0, v0, Lcom/qwapi/adclient/android/service/AdRefresherThread;->adView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->showNextAd()V

    :cond_2
    iget-object v0, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-static {v0}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->access$000(Lcom/qwapi/adclient/android/service/AdRefresherThread;)Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->autoRotate:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->this$0:Lcom/qwapi/adclient/android/service/AdRefresherThread;

    invoke-static {v1}, Lcom/qwapi/adclient/android/service/AdRefresherThread;->access$100(Lcom/qwapi/adclient/android/service/AdRefresherThread;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qwapi/adclient/android/service/AdRefresherThread$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
