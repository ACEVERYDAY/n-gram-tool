.class Lcom/upay/billing/engine/alipay/Main$1$3;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/alipay/Main$1;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/alipay/Main$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/alipay/Main$1$3;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main$1$3;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/alipay/Main$1;->this$0:Lcom/upay/billing/engine/alipay/Main;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/upay/billing/engine/alipay/Main;->cancelPay(I)V

    return-void
.end method

.method protected onSuccess([B)V
    .locals 5

    const/16 v4, 0xc8

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v1, "reports"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getArray(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main$1$3;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/alipay/Main$1;->this$0:Lcom/upay/billing/engine/alipay/Main;

    invoke-static {v0, v4}, Lcom/upay/billing/engine/alipay/Main;->access$202(Lcom/upay/billing/engine/alipay/Main;I)I

    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main$1$3;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/alipay/Main$1;->this$0:Lcom/upay/billing/engine/alipay/Main;

    invoke-static {v0, v3}, Lcom/upay/billing/engine/alipay/Main;->access$300(Lcom/upay/billing/engine/alipay/Main;I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/alipay/Main$1$3;->this$1:Lcom/upay/billing/engine/alipay/Main$1;

    iget-object v0, v0, Lcom/upay/billing/engine/alipay/Main$1;->this$0:Lcom/upay/billing/engine/alipay/Main;

    invoke-virtual {v0, v3}, Lcom/upay/billing/engine/alipay/Main;->cancelPay(I)V

    goto :goto_1
.end method
