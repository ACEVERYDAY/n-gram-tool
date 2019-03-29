.class Lcom/upay/billing/engine/UpayCoreImpl$12;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/UpayCoreImpl;

.field final synthetic val$goods:Lcom/upay/billing/bean/Goods;

.field final synthetic val$task:Ljava/lang/Runnable;

.field final synthetic val$taskTrade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/UpayCoreImpl;Ljava/lang/Runnable;Lcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Goods;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iput-object p2, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$task:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iput-object p4, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$goods:Lcom/upay/billing/bean/Goods;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Lcom/upay/billing/UpayActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/upay/billing/UpayConstant;->RESOURCE_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/upay/billing/engine/UpayCoreImpl;->getPathDrawable(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onFinish(Lcom/upay/billing/UpayActivity;I)V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$3700(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "btkey"

    const-string v2, "alipay"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    if-ne p2, v7, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$3800(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "btkey"

    const-string v2, "yinlian"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    if-ne p2, v8, :cond_2

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$3900(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "btkey"

    const-string v2, "tenpay"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    if-ne p2, v9, :cond_3

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4000(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "btkey"

    const-string v2, "card"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    if-ne p2, v10, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4100(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "btkey"

    const-string v2, "wxapi"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    invoke-static {v0}, Lcom/upay/billing/engine/UpayCoreImpl;->access$4200(Lcom/upay/billing/engine/UpayCoreImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "btkey"

    const-string v2, "wxapi_now"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/utils/Util;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/engine/UpayCoreImpl;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->this$0:Lcom/upay/billing/engine/UpayCoreImpl;

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "goods_confirm"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "trade_id"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, "op"

    aput-object v4, v3, v7

    sget-object v4, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    invoke-virtual {v4}, Lcom/upay/billing/bean/Op;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "goods_key"

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$taskTrade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v4, v3, v10

    const/4 v4, 0x6

    const-string v5, "result"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0x6e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/engine/UpayCoreImpl;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "$goods_name"

    iget-object v1, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$goods:Lcom/upay/billing/bean/Goods;

    iget-object v1, v1, Lcom/upay/billing/bean/Goods;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$goods_price"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$goods:Lcom/upay/billing/bean/Goods;

    iget v2, v2, Lcom/upay/billing/bean/Goods;->price:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$goods_label"

    iget-object v2, p0, Lcom/upay/billing/engine/UpayCoreImpl$12;->val$goods:Lcom/upay/billing/bean/Goods;

    iget-object v2, v2, Lcom/upay/billing/bean/Goods;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
