.class Lcom/qwapi/adclient/android/view/EventDispatcher$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/view/EventDispatcher;->onAdRequestSuccessful(Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/view/EventDispatcher;

.field final synthetic val$ad:Lcom/qwapi/adclient/android/data/Ad;

.field final synthetic val$params:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/view/EventDispatcher;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Ad;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher$2;->this$0:Lcom/qwapi/adclient/android/view/EventDispatcher;

    iput-object p2, p0, Lcom/qwapi/adclient/android/view/EventDispatcher$2;->val$params:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    iput-object p3, p0, Lcom/qwapi/adclient/android/view/EventDispatcher$2;->val$ad:Lcom/qwapi/adclient/android/data/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/EventDispatcher$2;->this$0:Lcom/qwapi/adclient/android/view/EventDispatcher;

    invoke-static {v0}, Lcom/qwapi/adclient/android/view/EventDispatcher;->access$100(Lcom/qwapi/adclient/android/view/EventDispatcher;)Lcom/qwapi/adclient/android/view/AdEventsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/qwapi/adclient/android/view/EventDispatcher$2;->this$0:Lcom/qwapi/adclient/android/view/EventDispatcher;

    invoke-static {v1}, Lcom/qwapi/adclient/android/view/EventDispatcher;->access$000(Lcom/qwapi/adclient/android/view/EventDispatcher;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/qwapi/adclient/android/view/EventDispatcher$2;->val$params:Lcom/qwapi/adclient/android/requestparams/AdRequestParams;

    iget-object v3, p0, Lcom/qwapi/adclient/android/view/EventDispatcher$2;->val$ad:Lcom/qwapi/adclient/android/data/Ad;

    invoke-interface {v0, v1, v2, v3}, Lcom/qwapi/adclient/android/view/AdEventsListener;->onAdRequestSuccessful(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AdRequestParams;Lcom/qwapi/adclient/android/data/Ad;)V

    return-void
.end method
