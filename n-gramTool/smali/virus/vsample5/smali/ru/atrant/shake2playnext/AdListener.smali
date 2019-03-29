.class public Lru/atrant/shake2playnext/AdListener;
.super Ljava/lang/Object;
.source "AdListener.java"

# interfaces
.implements Lcom/qwapi/adclient/android/view/AdEventsListener;


# instance fields
.field private adMobView:Lcom/admob/android/ads/AdView;

.field protected hideHandler:Landroid/os/Handler;

.field private main_context:Landroid/content/Context;

.field private qwAdView:Lcom/qwapi/adclient/android/view/QWAdView;

.field protected showHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lru/atrant/shake2playnext/AdListener$1;

    invoke-direct {v0, p0}, Lru/atrant/shake2playnext/AdListener$1;-><init>(Lru/atrant/shake2playnext/AdListener;)V

    iput-object v0, p0, Lru/atrant/shake2playnext/AdListener;->hideHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lru/atrant/shake2playnext/AdListener$2;

    invoke-direct {v0, p0}, Lru/atrant/shake2playnext/AdListener$2;-><init>(Lru/atrant/shake2playnext/AdListener;)V

    iput-object v0, p0, Lru/atrant/shake2playnext/AdListener;->showHandler:Landroid/os/Handler;

    .line 27
    const v0, 0x7f070006

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    iput-object v0, p0, Lru/atrant/shake2playnext/AdListener;->qwAdView:Lcom/qwapi/adclient/android/view/QWAdView;

    .line 28
    const v0, 0x7f070005

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/AdView;

    iput-object v0, p0, Lru/atrant/shake2playnext/AdListener;->adMobView:Lcom/admob/android/ads/AdView;

    .line 29
    iput-object p1, p0, Lru/atrant/shake2playnext/AdListener;->main_context:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lru/atrant/shake2playnext/AdListener;)Lcom/qwapi/adclient/android/view/QWAdView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lru/atrant/shake2playnext/AdListener;->qwAdView:Lcom/qwapi/adclient/android/view/QWAdView;

    return-object v0
.end method

.method static synthetic access$1(Lru/atrant/shake2playnext/AdListener;)Lcom/admob/android/ads/AdView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lru/atrant/shake2playnext/AdListener;->adMobView:Lcom/admob/android/ads/AdView;

    return-object v0
.end method


# virtual methods
.method public onAdClick(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/qwapi/adclient/android/data/Ad;

    .prologue
    const-string v5, "ads_clicked"

    .line 34
    iget-object v4, p0, Lru/atrant/shake2playnext/AdListener;->main_context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "ads_clicked"

    const/4 v4, 0x0

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "ads_clicked":I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 38
    .local v2, "spe":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ads_clicked"

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    iget-object v4, p0, Lru/atrant/shake2playnext/AdListener;->main_context:Landroid/content/Context;

    const v5, 0x7f04000b

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 42
    .local v3, "t":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 45
    return-void
.end method

.method public onAdRequest(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    .prologue
    .line 49
    return-void
.end method

.method public onAdRequestFailed(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Status;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/qwapi/adclient/android/requestparams/AdRequestParams;
    .param p3, "arg2"    # Lcom/qwapi/adclient/android/data/Status;

    .prologue
    .line 54
    iget-object v0, p0, Lru/atrant/shake2playnext/AdListener;->hideHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 55
    return-void
.end method

.method public onAdRequestSuccessful(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/qwapi/adclient/android/requestparams/AdRequestParams;
    .param p3, "arg2"    # Lcom/qwapi/adclient/android/data/Ad;

    .prologue
    .line 81
    iget-object v0, p0, Lru/atrant/shake2playnext/AdListener;->showHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 82
    return-void
.end method

.method public onDisplayAd(Landroid/content/Context;Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/qwapi/adclient/android/data/Ad;

    .prologue
    .line 86
    return-void
.end method
