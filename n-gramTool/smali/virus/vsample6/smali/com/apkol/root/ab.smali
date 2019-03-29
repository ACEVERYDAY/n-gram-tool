.class Lcom/apkol/root/ab;
.super Ljava/lang/Object;
.source "RootUrlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/ArrayList;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/apkol/root/ab;->b:Landroid/content/Context;

    iput p3, p0, Lcom/apkol/root/ab;->c:I

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 703
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 705
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 706
    iget-object v1, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    .line 707
    :goto_0
    iget-object v0, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 725
    :cond_0
    const-string v0, "PowerSavingInfo"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v0, "Imei"

    iget-object v1, p0, Lcom/apkol/root/ab;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/apkol/utils/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v0, "Model"

    invoke-static {}, Lcom/apkol/utils/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v0, "SystemVer"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string v0, "Device"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string v0, "LogStatues"

    iget v1, p0, Lcom/apkol/root/ab;->c:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 732
    iget-object v0, p0, Lcom/apkol/root/ab;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 735
    :try_start_1
    iget-object v1, p0, Lcom/apkol/root/ab;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 736
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 737
    const-string v1, "RootToolVer"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 742
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 743
    const-string v1, "pm=12&Jsondata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v1

    iget-object v1, v1, Lcom/apkol/root/AssistConst;->T:Ljava/lang/String;

    .line 747
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 748
    new-instance v3, Lcom/apkol/utils/e/b$a;

    invoke-direct {v3}, Lcom/apkol/utils/e/b$a;-><init>()V

    .line 749
    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/apkol/utils/e/b$a;->a(Ljava/lang/String;)V

    .line 750
    const-string v4, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v3, v4}, Lcom/apkol/utils/e/b$a;->b(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v3, p0, Lcom/apkol/root/ab;->b:Landroid/content/Context;

    .line 755
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 754
    invoke-static {v3, v1, v0, v4, v2}, Lcom/apkol/utils/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lcom/apkol/utils/e/h$a;Ljava/util/List;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 756
    if-eqz v0, :cond_1

    .line 758
    :try_start_3
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 760
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 762
    const-string v1, "rect"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    const-string v1, "rect"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    iget v0, p0, Lcom/apkol/root/ab;->c:I

    if-nez v0, :cond_4

    .line 767
    iget-object v0, p0, Lcom/apkol/root/ab;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v0

    .line 768
    const-string v1, "softSelfStart"

    .line 769
    const/4 v2, 0x1

    .line 768
    invoke-virtual {v0, v1, v2}, Lcom/apkol/utils/p;->b(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 787
    :cond_1
    :goto_2
    return-void

    .line 708
    :cond_2
    :try_start_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 709
    const-string v5, "PackageName"

    iget-object v0, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    .line 710
    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    const-string v5, "ApplicationName"

    .line 713
    iget-object v0, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/root/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    iget-object v0, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 716
    const-string v5, "FileName"

    .line 717
    iget-object v0, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/root/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    :cond_3
    const-string v5, "PackageVer"

    .line 720
    iget-object v0, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/root/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 707
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 740
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 783
    :catch_1
    move-exception v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 770
    :cond_4
    :try_start_5
    iget v0, p0, Lcom/apkol/root/ab;->c:I

    if-ne v0, v6, :cond_1

    .line 771
    iget-object v0, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/apkol/root/ab;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/p;->a(Landroid/content/Context;)Lcom/apkol/utils/p;

    move-result-object v1

    .line 773
    iget-object v0, p0, Lcom/apkol/root/ab;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 772
    invoke-virtual {v1, v0, v2}, Lcom/apkol/utils/p;->b(Ljava/lang/String;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 778
    :catch_2
    move-exception v0

    .line 780
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2
.end method
