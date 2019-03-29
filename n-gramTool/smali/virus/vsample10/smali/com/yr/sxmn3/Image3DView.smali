.class public Lcom/yr/sxmn3/Image3DView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/graphics/Camera;

.field private b:Landroid/graphics/Matrix;

.field private c:Landroid/graphics/Bitmap;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/yr/sxmn3/Image3DView;->a:Landroid/graphics/Camera;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yr/sxmn3/Image3DView;->b:Landroid/graphics/Matrix;

    return-void
.end method

.method private b()V
    .locals 8

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v5, -0x3e600000    # -20.0f

    const/4 v4, 0x0

    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    int-to-float v0, v0

    div-float v0, v7, v0

    const/high16 v1, 0x43160000    # 150.0f

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->f:I

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->d:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    int-to-float v2, v2

    iput v2, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float v0, v6, v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    neg-int v2, v2

    if-ge v0, v2, :cond_1

    iput v4, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    int-to-float v2, v2

    iput v2, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    const/high16 v2, 0x439b0000    # 310.0f

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    neg-int v2, v2

    if-ge v1, v2, :cond_3

    iput v5, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    neg-int v1, v1

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    :goto_1
    iput v4, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    int-to-float v1, v1

    iput v1, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float v0, v6, v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    int-to-float v2, v2

    iput v2, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float v0, v6, v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    iput v4, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto/16 :goto_0

    :cond_4
    iput v5, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    iput v4, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    neg-int v2, v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    add-int/2addr v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto/16 :goto_0

    :pswitch_3
    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    if-gez v2, :cond_5

    iput v5, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float v0, v7, v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    if-le v1, v2, :cond_6

    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    int-to-float v1, v1

    iput v1, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float v0, v6, v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    :goto_2
    iput v4, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto/16 :goto_0

    :cond_6
    iput v5, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float v0, v7, v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    goto :goto_2

    :pswitch_4
    iput v5, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    if-le v0, v2, :cond_7

    iput v4, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->d:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->f:I

    iget v4, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->f:I

    iget v4, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->f:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->f:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->f:I

    iget v4, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    sub-int/2addr v3, v4

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    iget v3, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    iget v4, p0, Lcom/yr/sxmn3/Image3DView;->f:I

    iget v5, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/Image3DView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DView;->buildDrawingCache()V

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/Image3DView;->c:Landroid/graphics/Bitmap;

    :cond_0
    sget v0, Lcom/yr/sxmn3/Image3DSwitchView;->a:I

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->f:I

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/yr/sxmn3/Image3DView;->g:I

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/yr/sxmn3/Image3DView;->d:I

    iput p2, p0, Lcom/yr/sxmn3/Image3DView;->e:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/yr/sxmn3/Image3DView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yr/sxmn3/Image3DView;->b()V

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->a:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->a:Landroid/graphics/Camera;

    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->j:F

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->a:Landroid/graphics/Camera;

    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->a:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/yr/sxmn3/Image3DView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->a:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->b:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->b:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/yr/sxmn3/Image3DView;->i:F

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DView;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yr/sxmn3/Image3DView;->b:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yr/sxmn3/Image3DView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DView;->a()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yr/sxmn3/Image3DView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DView;->a()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yr/sxmn3/Image3DView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DView;->a()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yr/sxmn3/Image3DView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DView;->a()V

    return-void
.end method
