.class public interface abstract Lcom/qwapi/adclient/android/view/AdEventsListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAdClick(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;)V
.end method

.method public abstract onAdRequest(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V
.end method

.method public abstract onAdRequestFailed(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Status;)V
.end method

.method public abstract onAdRequestSuccessful(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Ad;)V
.end method

.method public abstract onDisplayAd(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;)V
.end method
