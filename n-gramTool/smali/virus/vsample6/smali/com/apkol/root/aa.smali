.class Lcom/apkol/root/aa;
.super Ljava/lang/Object;
.source "RootUrlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/aa;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/apkol/root/aa;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/apkol/root/aa;->c:I

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/aa;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/apkol/root/aa;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/apkol/root/aa;->c:I

    invoke-static {v0, v1, v2}, Lcom/apkol/root/v;->c(Landroid/content/Context;Ljava/util/ArrayList;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 615
    iget-object v0, p0, Lcom/apkol/root/aa;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 618
    :try_start_1
    iget-object v2, p0, Lcom/apkol/root/aa;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 619
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 620
    const-string v2, "RootToolVer"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    const-string v2, "pm=10&Jsondata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v1

    iget-object v1, v1, Lcom/apkol/root/AssistConst;->T:Ljava/lang/String;

    .line 630
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 631
    new-instance v3, Lcom/apkol/utils/e/b$a;

    invoke-direct {v3}, Lcom/apkol/utils/e/b$a;-><init>()V

    .line 632
    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/apkol/utils/e/b$a;->a(Ljava/lang/String;)V

    .line 633
    const-string v4, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v3, v4}, Lcom/apkol/utils/e/b$a;->b(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v3, p0, Lcom/apkol/root/aa;->a:Landroid/content/Context;

    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 636
    invoke-static {v3, v1, v0, v4, v2}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lcom/apkol/utils/e/h$a;Ljava/util/List;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 638
    if-eqz v0, :cond_0

    .line 640
    :try_start_3
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 642
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 644
    const-string v1, "rect"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    const-string v1, "rect"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget v0, p0, Lcom/apkol/root/aa;->c:I

    if-nez v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/apkol/root/aa;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v0

    .line 650
    const-string v1, "softSysManager"

    .line 651
    const/4 v2, 0x1

    .line 650
    invoke-virtual {v0, v1, v2}, Lcom/apkol/utils/p;->b(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 670
    :cond_0
    :goto_1
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 623
    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 666
    :catch_1
    move-exception v0

    .line 667
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 652
    :cond_1
    :try_start_5
    iget v0, p0, Lcom/apkol/root/aa;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 653
    iget v0, p0, Lcom/apkol/root/aa;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/apkol/root/aa;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apkol/root/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/apkol/root/aa;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v1

    .line 656
    iget-object v0, p0, Lcom/apkol/root/aa;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 655
    invoke-virtual {v1, v0, v2}, Lcom/apkol/utils/p;->b(Ljava/lang/String;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 661
    :catch_2
    move-exception v0

    .line 663
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method
