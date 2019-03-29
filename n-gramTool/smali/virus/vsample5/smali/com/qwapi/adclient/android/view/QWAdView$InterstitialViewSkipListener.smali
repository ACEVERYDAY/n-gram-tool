.class Lcom/qwapi/adclient/android/view/QWAdView$InterstitialViewSkipListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qwapi/adclient/android/view/SkipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qwapi/adclient/android/view/QWAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InterstitialViewSkipListener"
.end annotation


# instance fields
.field private parentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/qwapi/adclient/android/view/QWAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qwapi/adclient/android/view/QWAdView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView$InterstitialViewSkipListener;->parentView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSkip()V
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView$InterstitialViewSkipListener;->parentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/view/QWAdView$InterstitialViewSkipListener;->parentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-static {p0}, Lcom/qwapi/adclient/android/view/QWAdView;->access$200(Lcom/qwapi/adclient/android/view/QWAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QuattroWirelessSDK/2.1"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
