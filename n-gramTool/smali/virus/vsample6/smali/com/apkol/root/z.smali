.class Lcom/apkol/root/z;
.super Ljava/lang/Object;
.source "RootUrlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/z;->a:Landroid/content/Context;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 524
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apkol/utils/i;->c(Ljava/lang/String;)J

    move-result-wide v1

    .line 526
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/apkol/utils/i;->b(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 528
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 530
    :try_start_0
    const-string v0, "Imei"

    iget-object v6, p0, Lcom/apkol/root/z;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/apkol/utils/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apkol/root/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string v0, "MachineModel"

    invoke-static {}, Lcom/apkol/utils/o;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apkol/root/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string v0, "SystemVer"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Lcom/apkol/root/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string v0, "Romname"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v6}, Lcom/apkol/root/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string v0, "Space"

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 535
    const-string v0, "UserSpace"

    invoke-virtual {v5, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 541
    const-string v1, "pm=9&Jsondata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v1

    iget-object v1, v1, Lcom/apkol/root/AssistConst;->T:Ljava/lang/String;

    .line 546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 547
    new-instance v3, Lcom/apkol/utils/e/b$a;

    invoke-direct {v3}, Lcom/apkol/utils/e/b$a;-><init>()V

    .line 548
    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/apkol/utils/e/b$a;->a(Ljava/lang/String;)V

    .line 549
    const-string v4, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v3, v4}, Lcom/apkol/utils/e/b$a;->b(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v3, p0, Lcom/apkol/root/z;->a:Landroid/content/Context;

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 552
    invoke-static {v3, v1, v0, v4, v2}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lcom/apkol/utils/e/h$a;Ljava/util/List;)[B

    move-result-object v0

    .line 554
    if-eqz v0, :cond_0

    .line 556
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 558
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 560
    const-string v1, "rect"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    const-string v1, "rect"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/apkol/root/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v0

    .line 564
    const-string v1, "spaceInfo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/apkol/utils/p;->b(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    :cond_0
    :goto_1
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 538
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 567
    :catch_1
    move-exception v0

    .line 569
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
