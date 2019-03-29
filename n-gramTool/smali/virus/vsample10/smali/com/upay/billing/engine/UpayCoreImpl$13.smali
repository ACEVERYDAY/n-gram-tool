.class Lcom/upay/billing/engine/UpayCoreImpl$13;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$requestTrade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/String;Lcom/upay/billing/bean/Trade;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$13;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$13;->val$requestTrade:Lcom/upay/billing/bean/Trade;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onSuccess([B)V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/upay/billing/utils/Util;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$13;->val$requestTrade:Lcom/upay/billing/bean/Trade;

    const-string v2, "state"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/upay/billing/bean/Trade;->state:I

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$13;->val$requestTrade:Lcom/upay/billing/bean/Trade;

    const-string v2, "price"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/upay/billing/bean/Trade;->price:I

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$13;->val$requestTrade:Lcom/upay/billing/bean/Trade;

    const-string v2, "paid"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/upay/billing/bean/Trade;->paid:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
