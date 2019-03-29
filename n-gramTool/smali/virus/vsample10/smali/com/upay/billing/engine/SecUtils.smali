.class public Lcom/upay/billing/engine/SecUtils;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/upay/billing/engine/SecUtils;


# instance fields
.field private context:Landroid/content/Context;

.field private listO:Ljava/util/List;

.field private listP:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/upay/billing/engine/SecUtils;->instance:Lcom/upay/billing/engine/SecUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listP:Ljava/util/List;

    iput-object p1, p0, Lcom/upay/billing/engine/SecUtils;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/upay/billing/engine/SecUtils;->init()V

    invoke-direct {p0}, Lcom/upay/billing/engine/SecUtils;->hb()V

    return-void
.end method

.method private a(Lcom/upay/billing/engine/SecUtils$Sec;Lcom/upay/billing/engine/SecUtils$Sec;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/upay/billing/engine/SecUtils$Sec;->getAndroidOs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/upay/billing/engine/SecUtils$Sec;->getAndroidOs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/upay/billing/engine/SecUtils$Sec;->getAndroidOs()Ljava/lang/String;

    move-result-object v1

    const-string v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/upay/billing/engine/SecUtils$Sec;->getSoftVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/upay/billing/engine/SecUtils$Sec;->getSoftVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/upay/billing/engine/SecUtils$Sec;->getSoftVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/upay/billing/engine/SecUtils$Sec;->getIsRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/upay/billing/engine/SecUtils$Sec;->getIsRoot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/upay/billing/engine/SecUtils$Sec;->getIsRoot()Ljava/lang/String;

    move-result-object v1

    const-string v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/upay/billing/engine/SecUtils$Sec;->isOpen()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static getSmsFirewall(Landroid/content/Context;)Lcom/upay/billing/engine/SecUtils;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/SecUtils;->instance:Lcom/upay/billing/engine/SecUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/upay/billing/engine/SecUtils;

    invoke-direct {v0, p0}, Lcom/upay/billing/engine/SecUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/upay/billing/engine/SecUtils;->instance:Lcom/upay/billing/engine/SecUtils;

    :cond_0
    sget-object v0, Lcom/upay/billing/engine/SecUtils;->instance:Lcom/upay/billing/engine/SecUtils;

    return-object v0
.end method

.method private hb()V
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/upay/billing/engine/SecUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v1, p0, Lcom/upay/billing/engine/SecUtils;->listP:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/upay/billing/engine/SecUtils;->listP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/upay/billing/engine/SecUtils;->listP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    move v8, v0

    :goto_0
    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/SecUtils$Sec;

    invoke-virtual {v0}, Lcom/upay/billing/engine/SecUtils$Sec;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/upay/billing/engine/SecUtils;->listP:Ljava/util/List;

    new-instance v0, Lcom/upay/billing/engine/SecUtils$Sec;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/upay/billing/engine/DataCollection;->isRoot()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/engine/SecUtils$Sec;

    invoke-virtual {v1}, Lcom/upay/billing/engine/SecUtils$Sec;->isOpen()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/SecUtils$Sec;-><init>(Lcom/upay/billing/engine/SecUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private init()V
    .locals 9

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v8, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    new-instance v0, Lcom/upay/billing/engine/SecUtils$Sec;

    const-string v2, "com.lbe.security.miui"

    const-string v3, "any"

    const-string v4, "any"

    const-string v5, "any"

    const-string v6, "true"

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/SecUtils$Sec;-><init>(Lcom/upay/billing/engine/SecUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    new-instance v0, Lcom/upay/billing/engine/SecUtils$Sec;

    const-string v2, "com.lenovo.safecenter"

    const-string v3, "any"

    const-string v4, "any"

    const-string v5, "any"

    const-string v6, "true"

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/SecUtils$Sec;-><init>(Lcom/upay/billing/engine/SecUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    new-instance v0, Lcom/upay/billing/engine/SecUtils$Sec;

    const-string v2, "com.qihoo360.mobilesafe"

    const-string v3, "any"

    const-string v4, "any"

    const-string v5, "any"

    const-string v6, "true"

    const/4 v7, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/SecUtils$Sec;-><init>(Lcom/upay/billing/engine/SecUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    new-instance v0, Lcom/upay/billing/engine/SecUtils$Sec;

    const-string v2, "com.ijinshan.duba"

    const-string v3, "any"

    const-string v4, "any"

    const-string v5, "any"

    const-string v6, "true"

    const/16 v7, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/SecUtils$Sec;-><init>(Lcom/upay/billing/engine/SecUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    new-instance v0, Lcom/upay/billing/engine/SecUtils$Sec;

    const-string v2, "com.tencent.qqpimsecure"

    const-string v3, "any"

    const-string v4, "any"

    const-string v5, "any"

    const-string v6, "true"

    const/16 v7, 0x10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/SecUtils$Sec;-><init>(Lcom/upay/billing/engine/SecUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    new-instance v0, Lcom/upay/billing/engine/SecUtils$Sec;

    const-string v2, "com.lbe.security"

    const-string v3, "any"

    const-string v4, "any"

    const-string v5, "any"

    const-string v6, "true"

    const/16 v7, 0x20

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/upay/billing/engine/SecUtils$Sec;-><init>(Lcom/upay/billing/engine/SecUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public hc()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    move v2, v3

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    move v5, v3

    move v4, v0

    :goto_1
    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/SecUtils$Sec;

    invoke-virtual {v0}, Lcom/upay/billing/engine/SecUtils$Sec;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listP:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/SecUtils$Sec;

    invoke-virtual {v0}, Lcom/upay/billing/engine/SecUtils$Sec;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/SecUtils$Sec;

    iget-object v1, p0, Lcom/upay/billing/engine/SecUtils;->listP:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upay/billing/engine/SecUtils$Sec;

    invoke-direct {p0, v0, v1}, Lcom/upay/billing/engine/SecUtils;->a(Lcom/upay/billing/engine/SecUtils$Sec;Lcom/upay/billing/engine/SecUtils$Sec;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/SecUtils;->listO:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/SecUtils$Sec;

    invoke-virtual {v0}, Lcom/upay/billing/engine/SecUtils$Sec;->getValue()I

    move-result v0

    add-int/2addr v4, v0

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
