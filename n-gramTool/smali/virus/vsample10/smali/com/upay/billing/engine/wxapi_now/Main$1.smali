.class Lcom/upay/billing/engine/wxapi_now/Main$1;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/wxapi_now/Main;

.field final synthetic val$preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/wxapi_now/Main;Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iput-object p2, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->val$preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityForResult(IILandroid/content/Intent;)V
    .locals 8

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "trade_id"

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/wxapi_now/Main;->access$200(Lcom/upay/billing/engine/wxapi_now/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_key"

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    invoke-static {v2}, Lcom/upay/billing/engine/wxapi_now/Main;->access$200(Lcom/upay/billing/engine/wxapi_now/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_secret"

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v6, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    invoke-static {v6}, Lcom/upay/billing/engine/wxapi_now/Main;->access$200(Lcom/upay/billing/engine/wxapi_now/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v6

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/bean/Plan;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/upay/billing/utils/NativeUtil;->genHash(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_secret"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hash"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->mapToJson(Ljava/util/HashMap;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    new-instance v0, Lcom/upay/billing/engine/wxapi_now/Main$1$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/upay/billing/UpayConstant;->API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "trade/show"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?gzip=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/wxapi_now/Main$1$1;-><init>(Lcom/upay/billing/engine/wxapi_now/Main$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/wxapi_now/Main$1$1;->setDoPost()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/upay/billing/utils/HttpRunner;->setPostData([B)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/HttpRunner;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    invoke-virtual {v0, v5, v3, v4}, Lcom/upay/billing/engine/wxapi_now/Main;->callbackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onBackPressed(Lcom/upay/billing/UpayActivity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPostCreate(Lcom/upay/billing/UpayActivity;)V
    .locals 7

    const/16 v6, 0x79

    const/16 v2, 0x69

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/upay/billing/engine/wxapi_now/Main;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v2, "common"

    const-string v3, "wx_packagename"

    const-string v4, "com.tencent.mm"

    invoke-virtual {v1, v2, v3, v4}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/engine/wxapi_now/Main;->appInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    const-string v1, "13"

    iget-object v2, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->val$preSign:Lcom/ipaynow/plugin/utils/PreSignMessageUtil;

    invoke-static {v0, p1, v1, v2}, Lcom/upay/billing/engine/wxapi_now/Main;->access$100(Lcom/upay/billing/engine/wxapi_now/Main;Landroid/app/Activity;Ljava/lang/String;Lcom/ipaynow/plugin/utils/PreSignMessageUtil;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u8bf7\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef\uff01"

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi_now/Main;->access$200(Lcom/upay/billing/engine/wxapi_now/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    const-string v1, "no_weixin_installed"

    invoke-static {v0, v6, v1}, Lcom/upay/billing/engine/wxapi_now/Main;->access$300(Lcom/upay/billing/engine/wxapi_now/Main;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wxnow"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff01"

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    invoke-static {v1}, Lcom/upay/billing/engine/wxapi_now/Main;->access$200(Lcom/upay/billing/engine/wxapi_now/Main;)Lcom/upay/billing/bean/Trade;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    const-string v1, "wxpay-no-network"

    invoke-static {v0, v2, v1}, Lcom/upay/billing/engine/wxapi_now/Main;->access$300(Lcom/upay/billing/engine/wxapi_now/Main;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/wxapi_now/Main$1;->this$0:Lcom/upay/billing/engine/wxapi_now/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/wxapi_now/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wxnow"

    invoke-static {v0, v1}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
