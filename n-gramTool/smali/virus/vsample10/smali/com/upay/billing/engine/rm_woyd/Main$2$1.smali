.class Lcom/upay/billing/engine/rm_woyd/Main$2$1;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$cpId:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$myId:Ljava/lang/String;

.field final synthetic val$price:Ljava/lang/String;

.field final synthetic val$serviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/rm_woyd/Main$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iput-object p2, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$cpId:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$serviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$channelId:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$appId:Ljava/lang/String;

    iput-object p6, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$myId:Ljava/lang/String;

    iput-object p7, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$price:Ljava/lang/String;

    iput-object p8, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostCreate(Lcom/upay/billing/UpayActivity;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/upay/billing/UpayActivityExt;->onPostCreate(Lcom/upay/billing/UpayActivity;)V

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, v1}, Lcom/upay/billing/engine/rm_woyd/Main;->access$102(Lcom/upay/billing/engine/rm_woyd/Main;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->getInstance(Landroid/content/Context;)Lcom/upay/billing/engine/rm_woyd/WoUniPay;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "itfType"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "command"

    const-string v3, "2"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "feetype"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cpId"

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$cpId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serviceId"

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$serviceId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelId"

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$channelId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appId"

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "myId"

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$myId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "time"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/upay/billing/engine/rm_woyd/DateUtil;->Date2StringHHmmss(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cpcustom"

    const-string v3, "000"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cporderId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00000000000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$serialNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tradeName"

    iget-object v0, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main$2;->this$0:Lcom/upay/billing/engine/rm_woyd/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/rm_woyd/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v0

    iget-object v0, v0, Lcom/upay/billing/bean/Plan;->goods:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->this$1:Lcom/upay/billing/engine/rm_woyd/Main$2;

    iget-object v4, v4, Lcom/upay/billing/engine/rm_woyd/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Goods;

    iget-object v0, v0, Lcom/upay/billing/bean/Goods;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$price:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "servicePhone"

    const-string v3, "4008319852"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key"

    iget-object v3, p0, Lcom/upay/billing/engine/rm_woyd/Main$2$1;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "showDialog"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;

    invoke-direct {v0, p0}, Lcom/upay/billing/engine/rm_woyd/Main$2$1$1;-><init>(Lcom/upay/billing/engine/rm_woyd/Main$2$1;)V

    invoke-virtual {v1, v2, v0}, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->payAsDuanDai(Landroid/os/Bundle;Lcom/upay/billing/engine/rm_woyd/RequestDelegate;)V

    invoke-virtual {v1}, Lcom/upay/billing/engine/rm_woyd/WoUniPay;->sendConfirmSMS()V

    return-void
.end method
