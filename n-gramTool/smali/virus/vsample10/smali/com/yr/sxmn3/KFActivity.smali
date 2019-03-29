.class public Lcom/yr/sxmn3/KFActivity;
.super Lcom/yr/sxmn3/BaseActivity;


# instance fields
.field a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yr/sxmn3/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FF)V
    .locals 5

    const/high16 v4, 0x44340000    # 720.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    cmpl-float v1, p2, v3

    if-eqz v1, :cond_0

    div-float v1, p2, v4

    sget v2, Lcom/yr/sxmn3/n;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    cmpl-float v1, p3, v3

    if-eqz v1, :cond_1

    div-float v1, p3, v4

    sget v2, Lcom/yr/sxmn3/n;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/KFActivity;->setContentView(I)V

    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/KFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yr/sxmn3/KFActivity;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yr/sxmn3/KFActivity;->a:Landroid/widget/ImageView;

    const/high16 v1, 0x44340000    # 720.0f

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/yr/sxmn3/KFActivity;->a(Landroid/view/View;FF)V

    return-void
.end method
