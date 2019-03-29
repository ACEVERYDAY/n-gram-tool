.class public Lcom/upay/billing/engine/wxapi_now/Main$GetMessage;
.super Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/upay/billing/engine/wxapi_now/Main$GetMessage;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "http://api.upay360.cn/function/getPaydata.jsp"

    invoke-static {v1, v0}, Lcom/upay/billing/engine/wxapi_now/WxHttpUtil;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/upay/billing/engine/wxapi_now/Main;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/upay/billing/engine/wxapi_now/Main$GetMessage;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/upay/billing/engine/wxapi_now/Main;->access$500()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->setPayLoading(Landroid/app/ProgressDialog;)V

    invoke-static {}, Lcom/upay/billing/engine/wxapi_now/Main;->access$000()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->pay(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
