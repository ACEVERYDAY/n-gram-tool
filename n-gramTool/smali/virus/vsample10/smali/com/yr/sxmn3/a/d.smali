.class public abstract Lcom/yr/sxmn3/a/d;
.super Landroid/app/Dialog;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/content/Context;

.field protected c:Landroid/util/DisplayMetrics;

.field protected d:Z

.field protected e:F

.field protected f:F

.field protected g:Landroid/widget/LinearLayout;

.field protected h:Landroid/widget/LinearLayout;

.field protected i:F

.field private j:Lcom/yr/sxmn3/a/a;

.field private k:Lcom/yr/sxmn3/a/a;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/yr/sxmn3/a/d;->e:F

    invoke-direct {p0}, Lcom/yr/sxmn3/a/d;->d()V

    iput-object p1, p0, Lcom/yr/sxmn3/a/d;->b:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/a/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->a:Ljava/lang/String;

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/a/d;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yr/sxmn3/a/d;->l:Z

    return-void
.end method

.method static synthetic b(Lcom/yr/sxmn3/a/d;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yr/sxmn3/a/d;->m:Z

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/a/d;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/yr/sxmn3/a/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/yr/sxmn3/a/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public a(F)Lcom/yr/sxmn3/a/d;
    .locals 0

    iput p1, p0, Lcom/yr/sxmn3/a/d;->e:F

    return-object p0
.end method

.method public a(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/d;
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/d;->j:Lcom/yr/sxmn3/a/a;

    return-object p0
.end method

.method protected b(F)I
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public b(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/d;
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/d;->k:Lcom/yr/sxmn3/a/a;

    return-object p0
.end method

.method public abstract b()V
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->a:Ljava/lang/String;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->k:Lcom/yr/sxmn3/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->k:Lcom/yr/sxmn3/a/a;

    new-instance v1, Lcom/yr/sxmn3/a/g;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/a/g;-><init>(Lcom/yr/sxmn3/a/d;)V

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/a/a;->a(Lcom/yr/sxmn3/a/c;)Lcom/yr/sxmn3/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/a/d;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/a/a;->d(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/yr/sxmn3/a/d;->c()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/yr/sxmn3/a/d;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yr/sxmn3/a/d;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    const/4 v1, -0x2

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->a:Ljava/lang/String;

    const-string v2, "onAttachedToWindow"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/yr/sxmn3/a/d;->b()V

    iget v0, p0, Lcom/yr/sxmn3/a/d;->e:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/yr/sxmn3/a/d;->f:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/yr/sxmn3/a/d;->h:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->j:Lcom/yr/sxmn3/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->j:Lcom/yr/sxmn3/a/a;

    new-instance v1, Lcom/yr/sxmn3/a/f;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/a/f;-><init>(Lcom/yr/sxmn3/a/d;)V

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/a/a;->a(Lcom/yr/sxmn3/a/c;)Lcom/yr/sxmn3/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/a/d;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/a/a;->d(Landroid/view/View;)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/yr/sxmn3/a/d;->e:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/yr/sxmn3/a/d;->f:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/yr/sxmn3/a/d;->i:F

    iget v2, p0, Lcom/yr/sxmn3/a/d;->f:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->h:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/yr/sxmn3/a/a;->c(Landroid/view/View;)V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/yr/sxmn3/a/d;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yr/sxmn3/a/d;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/yr/sxmn3/a/d;->c:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yr/sxmn3/a/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yr/sxmn3/a/d;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yr/sxmn3/a/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yr/sxmn3/a/d;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yr/sxmn3/a/d;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yr/sxmn3/a/d;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/yr/sxmn3/a/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/yr/sxmn3/a/p;->a(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/yr/sxmn3/a/d;->i:F

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->g:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/yr/sxmn3/a/d;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/yr/sxmn3/a/d;->i:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/yr/sxmn3/a/d;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Lcom/yr/sxmn3/a/d;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/yr/sxmn3/a/e;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/a/e;-><init>(Lcom/yr/sxmn3/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->a:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->a:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->a:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yr/sxmn3/a/d;->d:Z

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/a/d;->a:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
