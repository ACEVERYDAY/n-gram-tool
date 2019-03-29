.class Lcom/upay/billing/engine/he_danji/Main$2;
.super Lcom/upay/billing/utils/HttpRunner;


# instance fields
.field sms_1:Ljava/lang/String;

.field sms_1_num:Ljava/lang/String;

.field sms_2:Ljava/lang/String;

.field sms_2_num:Ljava/lang/String;

.field final synthetic this$0:Lcom/upay/billing/engine/he_danji/Main;

.field final synthetic val$chargeEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$cmd:Lcom/upay/billing/bean/Cmd;

.field final synthetic val$payEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$sendNum:I

.field final synthetic val$serialNo:Ljava/lang/String;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/utils/Json;Lcom/upay/billing/utils/Json;I)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iput-object p3, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p4, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$serialNo:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iput-object p6, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$payEvent:Lcom/upay/billing/utils/Json;

    iput-object p7, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$chargeEvent:Lcom/upay/billing/utils/Json;

    iput p8, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$sendNum:I

    invoke-direct {p0, p2}, Lcom/upay/billing/utils/HttpRunner;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailed(ILjava/lang/String;)V
    .locals 10

    const/16 v6, 0x7c

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$sendNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "wait_verify_app"

    invoke-static {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upay_p_ui_n"

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v1, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$payEvent:Lcom/upay/billing/utils/Json;

    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "he_nc-fail: code="

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
    .locals 10

    const/16 v6, 0x7c

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "UTF-8"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sms_1_num"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_1_num:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_1_num:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_1:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_2_num:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_2:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_2:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$2$1;

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_1_num:Ljava/lang/String;

    const-string v5, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/upay/billing/engine/he_danji/Main$2$1;-><init>(Lcom/upay/billing/engine/he_danji/Main$2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string v3, "sms_1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_1:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v3, "sms_2_num"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_2_num:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, "sms_2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_2:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    const-string v2, "tag"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    invoke-static {v0}, Lcom/upay/billing/engine/he_danji/Main;->access$700(Lcom/upay/billing/engine/he_danji/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$sendNum:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-static {v0, v2, v3}, Lcom/upay/billing/engine/he_danji/Main;->access$500(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "upay_p_ui_n"

    :goto_3
    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, v2, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/upay/billing/UpayActivity;->finish(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v0, v0, Lcom/upay/billing/engine/he_danji/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    invoke-virtual {v0, v2, v6}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    :cond_6
    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$2;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v2, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$trade:Lcom/upay/billing/bean/Trade;

    iget-object v3, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iget-object v5, p0, Lcom/upay/billing/engine/he_danji/Main$2;->val$payEvent:Lcom/upay/billing/utils/Json;

    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "he_nc-fail:sms_1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_1:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",sms_2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/upay/billing/engine/he_danji/Main$2;->sms_2:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/upay/billing/engine/he_danji/Main;->access$600(Lcom/upay/billing/engine/he_danji/Main;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;ILcom/upay/billing/utils/Json;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v0, "upay_progress_ui"

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
