.class final Lcom/ipaynow/plugin/activity/g;
.super Landroid/os/Handler;


# instance fields
.field j:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/g;->j:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/activity/g;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v0, p0, Lcom/ipaynow/plugin/activity/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/activity/PayMethodActivity;

    const-string v1, "respCode"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "errorCode"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "respMsg"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/activity/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const-string v2, "PE011"

    const-string v3, "\u652f\u4ed8\u5b9d\u8fd4\u7a7a\u54cd\u5e94"

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/plugin/activity/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/activity/PayMethodActivity;

    sget-object v1, Lcom/ipaynow/plugin/conf/PluginConfig;->CALL_MERCHANT_TRADE_FAIL:Ljava/lang/String;

    const-string v2, "PE009"

    const-string v3, "\u6e20\u9053\u5176\u4ed6\u672a\u77e5\u9519\u8bef"

    invoke-static {v0, v1, v2, v3}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
