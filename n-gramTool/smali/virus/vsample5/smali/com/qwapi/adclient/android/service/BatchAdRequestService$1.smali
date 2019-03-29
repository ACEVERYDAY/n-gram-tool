.class Lcom/qwapi/adclient/android/service/BatchAdRequestService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/service/BatchAdRequestService;->deleteExpiredAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/service/BatchAdRequestService;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/service/BatchAdRequestService;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService$1;->this$0:Lcom/qwapi/adclient/android/service/BatchAdRequestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/service/BatchAdRequestService$1;->this$0:Lcom/qwapi/adclient/android/service/BatchAdRequestService;

    invoke-static {v0}, Lcom/qwapi/adclient/android/service/BatchAdRequestService;->access$000(Lcom/qwapi/adclient/android/service/BatchAdRequestService;)Lcom/qwapi/adclient/android/db/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/db/DBHelper;->deleteExpiredAds()V

    return-void
.end method
