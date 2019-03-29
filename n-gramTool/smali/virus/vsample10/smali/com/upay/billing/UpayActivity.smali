.class public Lcom/upay/billing/UpayActivity;
.super Landroid/app/Activity;


# static fields
.field private static final FINISH_ACTION:Ljava/lang/String; = "com.upay.billing.UpayActivity.FinishAction"

.field private static final TAG:Ljava/lang/String; = "UpayActivity"

.field private static mapExt:Ljava/util/HashMap;


# instance fields
.field private autoFinishTimer:Ljava/util/Timer;

.field private ext:Lcom/upay/billing/UpayActivityExt;

.field private extKey:Ljava/lang/String;

.field private jsonUi:Lcom/upay/billing/JsonUi;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/upay/billing/UpayActivity;->mapExt:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    iput-object v0, p0, Lcom/upay/billing/UpayActivity;->autoFinishTimer:Ljava/util/Timer;

    iput-object v0, p0, Lcom/upay/billing/UpayActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/upay/billing/UpayActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->extKey:Ljava/lang/String;

    return-object v0
.end method

.method public static finish(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "UpayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish UpayActivity with key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.upay.billing.UpayActivity.FinishAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V
    .locals 3

    const-string v0, "UpayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start UpayActivity with key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",layout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/upay/billing/UpayActivity;->mapExt:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/upay/billing/UpayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "ext"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "layout"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "timeout"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public findView(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->jsonUi:Lcom/upay/billing/JsonUi;

    invoke-virtual {v0, p1}, Lcom/upay/billing/JsonUi;->findView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Lcom/upay/billing/UpayActivityExt;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    return-object v0
.end method

.method public myDestory()V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    iget-object v1, p0, Lcom/upay/billing/UpayActivity;->jsonUi:Lcom/upay/billing/JsonUi;

    invoke-virtual {v1}, Lcom/upay/billing/JsonUi;->getResultCode()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/upay/billing/UpayActivityExt;->onFinish(Lcom/upay/billing/UpayActivity;I)V

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->autoFinishTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->autoFinishTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    sget-object v0, Lcom/upay/billing/UpayActivity;->mapExt:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/upay/billing/UpayActivity;->extKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/upay/billing/UpayActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/upay/billing/UpayActivityExt;->onActivityForResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    invoke-virtual {v0, p0}, Lcom/upay/billing/UpayActivityExt;->onBackPressed(Lcom/upay/billing/UpayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/upay/billing/UpayActivity;->myDestory()V

    invoke-virtual {p0}, Lcom/upay/billing/UpayActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/upay/billing/UpayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "ext"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/UpayActivity;->extKey:Ljava/lang/String;

    sget-object v0, Lcom/upay/billing/UpayActivity;->mapExt:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/upay/billing/UpayActivity;->extKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/UpayActivityExt;

    iput-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    invoke-virtual {v0, p0}, Lcom/upay/billing/UpayActivityExt;->onPreCreate(Lcom/upay/billing/UpayActivity;)V

    :cond_0
    const-string v0, "timeout"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/upay/billing/UpayActivity;->autoFinishTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/upay/billing/UpayActivity;->autoFinishTimer:Ljava/util/Timer;

    new-instance v3, Lcom/upay/billing/n;

    invoke-direct {v3, p0}, Lcom/upay/billing/n;-><init>(Lcom/upay/billing/UpayActivity;)V

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    new-instance v0, Lcom/upay/billing/p;

    invoke-direct {v0, p0}, Lcom/upay/billing/p;-><init>(Lcom/upay/billing/UpayActivity;)V

    iput-object v0, p0, Lcom/upay/billing/UpayActivity;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.upay.billing.UpayActivity.FinishAction"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/upay/billing/UpayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "layout"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    const-string v0, "com.upay.billing.engine.JsonUiImpl"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/Util;->createInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/JsonUi;

    iput-object v0, p0, Lcom/upay/billing/UpayActivity;->jsonUi:Lcom/upay/billing/JsonUi;

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->jsonUi:Lcom/upay/billing/JsonUi;

    invoke-virtual {v0, p0, v1}, Lcom/upay/billing/JsonUi;->doCreate(Lcom/upay/billing/UpayActivity;Lcom/upay/billing/utils/Json;)V

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upay/billing/UpayActivity;->ext:Lcom/upay/billing/UpayActivityExt;

    invoke-virtual {v0, p0}, Lcom/upay/billing/UpayActivityExt;->onPostCreate(Lcom/upay/billing/UpayActivity;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
