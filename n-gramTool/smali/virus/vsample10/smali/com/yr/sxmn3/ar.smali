.class public Lcom/yr/sxmn3/ar;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Lcom/c/a/b/d;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/c/a/b/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p3, p0, Lcom/yr/sxmn3/ar;->c:Lcom/c/a/b/d;

    iput-object p1, p0, Lcom/yr/sxmn3/ar;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yr/sxmn3/ar;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FF)V
    .locals 5

    const/4 v1, -0x2

    const/high16 v4, 0x44340000    # 720.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    cmpl-float v1, p2, v3

    if-eqz v1, :cond_1

    div-float v1, p2, v4

    sget v2, Lcom/yr/sxmn3/n;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    cmpl-float v1, p3, v3

    if-eqz v1, :cond_2

    div-float v1, p3, v4

    sget v2, Lcom/yr/sxmn3/n;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/ar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/yr/sxmn3/ar;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/ar;->d:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/yr/sxmn3/ar;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0048

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/high16 v1, 0x43af0000    # 350.0f

    const v3, 0x44118000    # 582.0f

    invoke-virtual {p0, v0, v1, v3}, Lcom/yr/sxmn3/ar;->a(Landroid/view/View;FF)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v3

    iget-object v1, p0, Lcom/yr/sxmn3/ar;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yr/sxmn3/m;

    invoke-virtual {v1}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/yr/sxmn3/ar;->c:Lcom/c/a/b/d;

    invoke-virtual {v3, v1, v0, v4}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    return-object v2
.end method
