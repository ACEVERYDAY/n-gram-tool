.class Lcom/upay/billing/engine/upay/Main$1$2$2$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

.field final synthetic val$done:[Z


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/upay/Main$1$2$2;Ljava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iput-object p3, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->val$done:[Z

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onSuccess([B)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/16 v1, 0xc8

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "actions"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v6}, Lcom/upay/billing/utils/Json;->getObjectAt(I)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "num"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;

    iget-object v1, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->this$3:Lcom/upay/billing/engine/upay/Main$1$2$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2$2;->this$2:Lcom/upay/billing/engine/upay/Main$1$2;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1$2;->this$1:Lcom/upay/billing/engine/upay/Main$1;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main$1;->this$0:Lcom/upay/billing/engine/upay/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/upay/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;-><init>(Lcom/upay/billing/engine/upay/Main$1$2$2$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/upay/Main$1$2$2$1$1;->run()V

    iget-object v0, p0, Lcom/upay/billing/engine/upay/Main$1$2$2$1;->val$done:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v6

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
