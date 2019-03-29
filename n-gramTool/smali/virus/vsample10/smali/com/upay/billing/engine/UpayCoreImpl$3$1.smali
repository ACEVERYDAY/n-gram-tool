.class Lcom/upay/billing/engine/UpayCoreImpl$3$1;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/UpayCoreImpl$3;

.field final synthetic val$sub:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl$3;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$3$1;->this$1:Lcom/upay/billing/engine/UpayCoreImpl$3;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$3$1;->val$sub:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onSuccess([B)V
    .locals 3

    const-string v0, "UpayCoreImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventResult--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$3$1;->val$sub:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
