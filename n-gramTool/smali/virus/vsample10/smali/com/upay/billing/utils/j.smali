.class public Lcom/upay/billing/utils/j;
.super Ljava/lang/Object;


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sPackageName:Ljava/lang/String;

.field private static sResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/upay/billing/utils/j;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static anim(Ljava/lang/String;)I
    .locals 1

    const-string v0, "anim"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static array(Ljava/lang/String;)I
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final attr(Ljava/lang/String;)I
    .locals 1

    const-string v0, "attr"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static color(Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final drawable(Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getItemId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final id(Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final identifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/upay/billing/utils/j;->sResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/upay/billing/utils/j;->sResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/upay/billing/utils/j;->packageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/upay/billing/utils/j;->resources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/upay/billing/utils/j;->packageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static integer(Ljava/lang/String;)I
    .locals 1

    const-string v0, "integer"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final layout(Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final menu(Ljava/lang/String;)I
    .locals 1

    const-string v0, "menu"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final packageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/upay/billing/utils/j;->sPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/upay/billing/utils/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/utils/j;->sPackageName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/upay/billing/utils/j;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static raw(Ljava/lang/String;)I
    .locals 1

    const-string v0, "raw"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final resources()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/upay/billing/utils/j;->sResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget-object v0, Lcom/upay/billing/utils/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/upay/billing/utils/j;->sResources:Landroid/content/res/Resources;

    :cond_0
    sget-object v0, Lcom/upay/billing/utils/j;->sResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static final string(Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final style(Ljava/lang/String;)I
    .locals 1

    const-string v0, "style"

    invoke-static {p0, v0}, Lcom/upay/billing/utils/j;->identifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
