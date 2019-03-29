.class Lcom/upay/billing/utils/n;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic le:Lcom/upay/billing/utils/m;

.field final synthetic val$out:[Z


# direct methods
.method constructor <init>(Lcom/upay/billing/utils/m;Ljava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/utils/n;->le:Lcom/upay/billing/utils/m;

    iput-object p3, p0, Lcom/upay/billing/utils/n;->val$out:[Z

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSuccess([B)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/upay/billing/utils/n;->le:Lcom/upay/billing/utils/m;

    iget-object v1, v1, Lcom/upay/billing/utils/m;->val$context:Landroid/content/Context;

    const-string v2, "mymobile"

    invoke-static {v1, v2, v0}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/utils/n;->val$out:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
