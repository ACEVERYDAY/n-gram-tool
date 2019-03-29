.class public Lcom/yr/sxmn3/a/o;
.super Lcom/yr/sxmn3/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yr/sxmn3/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/a/o;->b:Lcom/b/a/d;

    new-array v2, v6, [Lcom/b/a/a;

    const-string v3, "translationY"

    new-array v4, v6, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    const/high16 v5, 0x437a0000    # 250.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v5

    aput v0, v4, v8

    invoke-static {p1, v3, v4}, Lcom/b/a/q;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/b/a/q;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v0, v3}, Lcom/b/a/q;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/b/a/q;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Lcom/b/a/d;->a([Lcom/b/a/a;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
