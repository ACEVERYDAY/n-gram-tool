.class Lcom/upay/billing/engine/he_danji/Main$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/he_danji/Main;

.field final synthetic val$chargeEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$cmd:Lcom/upay/billing/bean/Cmd;

.field final synthetic val$imei:Ljava/lang/String;

.field final synthetic val$imsi:Ljava/lang/String;

.field final synthetic val$payEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$sendNum:I

.field final synthetic val$serialNo:Ljava/lang/String;

.field final synthetic val$ssid:Ljava/lang/String;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;

.field final synthetic val$url_billing:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;I)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$7;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iput-object p2, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$imei:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$imsi:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$url_billing:Ljava/lang/String;

    iput-object p6, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p7, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$serialNo:Ljava/lang/String;

    iput-object p8, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iput-object p9, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$payEvent:Lcom/upay/billing/utils/Json;

    iput-object p10, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$chargeEvent:Lcom/upay/billing/utils/Json;

    iput p11, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$sendNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v2, v1, [Z

    aput-boolean v5, v2, v5

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    aget-boolean v0, v2, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ssid"

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$imei:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imsi"

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$imsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/upay/billing/engine/he_danji/Main$7$1;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$7;->val$url_billing:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/upay/billing/engine/he_danji/Main$7$1;-><init>(Lcom/upay/billing/engine/he_danji/Main$7;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/upay/billing/engine/he_danji/Main$7$1;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/HttpRunner;->run()V

    return-void
.end method
