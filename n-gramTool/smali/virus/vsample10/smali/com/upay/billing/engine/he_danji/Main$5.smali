.class Lcom/upay/billing/engine/he_danji/Main$5;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/he_danji/Main;

.field final synthetic val$cTag:I

.field final synthetic val$chargeEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$cmd:Lcom/upay/billing/bean/Cmd;

.field final synthetic val$index:I

.field final synthetic val$payEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$sendNum:I

.field final synthetic val$serialNo:Ljava/lang/String;

.field final synthetic val$subCount:I

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;

.field final synthetic val$ucon:Lcom/upay/billing/UpayContext;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;Ljava/lang/String;Lcom/upay/billing/utils/Json;IILcom/upay/billing/UpayContext;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iput p3, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$subCount:I

    iput-object p4, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p5, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iput p6, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$index:I

    iput-object p7, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$payEvent:Lcom/upay/billing/utils/Json;

    iput-object p8, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$serialNo:Ljava/lang/String;

    iput-object p9, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$chargeEvent:Lcom/upay/billing/utils/Json;

    iput p10, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$sendNum:I

    iput p11, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$cTag:I

    iput-object p12, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$ucon:Lcom/upay/billing/UpayContext;

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 10

    const/16 v6, 0x7f

    invoke-super {p0, p1, p2}, Lcom/upay/billing/utils/HttpRunner;->onFailed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    const-string v1, "tag"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$sendNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$subCount:I

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v4, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$index:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$payEvent:Lcom/upay/billing/utils/Json;

    invoke-virtual {p0}, Lcom/upay/billing/engine/he_danji/Main$5;->getUrl()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "he_danji-registration-fail: code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",errorMsg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "upay_progress_ui"

    goto :goto_0
.end method

.method protected onSuccess([B)V
    .locals 12

    const/16 v6, 0x7f

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "UTF-8"

    invoke-interface {v11, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v3, v2

    move-object v4, v2

    move-object v8, v2

    move-object v9, v2

    move v2, v0

    move v0, v1

    :goto_0
    if-eq v2, v1, :cond_7

    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v5, v8

    move-object v7, v9

    :goto_1
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move-object v8, v5

    move-object v9, v7

    goto :goto_0

    :pswitch_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "status"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    move-object v5, v8

    move-object v7, v9

    goto :goto_1

    :cond_1
    const-string v5, "sessionId"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-object v5, v8

    move-object v7, v9

    goto :goto_1

    :cond_2
    const-string v5, "registSMS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    move-object v5, v8

    move-object v7, v9

    goto :goto_1

    :cond_3
    const-string v5, "chargeSMS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v10

    move-object v5, v8

    move-object v7, v9

    goto :goto_1

    :cond_4
    const-string v5, "error"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v7, v9

    goto :goto_1

    :cond_5
    const-string v5, "SMS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-eqz v0, :cond_6

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v5, v8

    move-object v7, v9

    goto :goto_1

    :cond_6
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v5, v8

    move-object v7, v9

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$subCount:I

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v4, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$index:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$payEvent:Lcom/upay/billing/utils/Json;

    const-string v7, ""

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_7
    const-string v0, "he_danji"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    invoke-static {v4, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$5$1;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "10658422"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upay/billing/engine/he_danji/Main$5$1;-><init>(Lcom/upay/billing/engine/he_danji/Main$5;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/upay/billing/engine/he_danji/Main$5$1;->run()V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$sendNum:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "upay_p_ui_n"

    :goto_3
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_9
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$5;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget v1, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$subCount:I

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget v4, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$index:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$5;->val$payEvent:Lcom/upay/billing/utils/Json;

    const-string v7, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "he_danji-registration-fail: status="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",error="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "upay_progress_ui"

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
