.class public Lcom/yr/sxmn3/Image3DSwitchView;
.super Landroid/view/ViewGroup;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static a:I

.field private static b:Landroid/os/Handler;


# instance fields
.field private c:Landroid/widget/Scroller;

.field private d:Lcom/yr/sxmn3/aa;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:Z

.field private m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/yr/sxmn3/Image3DSwitchView;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->e:I

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->f:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->c:Landroid/widget/Scroller;

    return-void
.end method

.method private a(I)I
    .locals 2

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x3

    :goto_0
    if-ltz v0, :cond_0

    :goto_1
    iget v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->i:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    return v0

    :cond_0
    iget v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->i:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->i:I

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method private a(IIIII)V
    .locals 6

    const/high16 v0, 0x442f0000    # 700.0f

    iget v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->c:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->invalidate()V

    sget-object v0, Lcom/yr/sxmn3/Image3DSwitchView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/yr/sxmn3/z;

    invoke-direct {v1, p0, p5}, Lcom/yr/sxmn3/z;-><init>(Lcom/yr/sxmn3/Image3DSwitchView;I)V

    int-to-long v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/Image3DSwitchView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->l:Z

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->m:[I

    array-length v0, v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->m:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/Image3DSwitchView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/Image3DView;

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yr/sxmn3/Image3DView;->a(II)V

    invoke-virtual {v0}, Lcom/yr/sxmn3/Image3DView;->invalidate()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    iget v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->i:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->h:I

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    invoke-direct {p0, v2}, Lcom/yr/sxmn3/Image3DSwitchView;->b(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->d:Lcom/yr/sxmn3/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->d:Lcom/yr/sxmn3/aa;

    iget v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    invoke-interface {v0, v1}, Lcom/yr/sxmn3/aa;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->getScrollX()I

    move-result v1

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/yr/sxmn3/Image3DSwitchView;->a(IIIII)V

    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yr/sxmn3/Image3DSwitchView;->scrollTo(II)V

    invoke-direct {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->b()V

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v3, p0, Lcom/yr/sxmn3/Image3DSwitchView;->e:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iput v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->e:I

    :cond_2
    :goto_1
    iget v2, p0, Lcom/yr/sxmn3/Image3DSwitchView;->e:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iput v3, p0, Lcom/yr/sxmn3/Image3DSwitchView;->k:F

    iput v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->e:I

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/yr/sxmn3/Image3DSwitchView;->k:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/yr/sxmn3/Image3DSwitchView;->f:I

    if-le v2, v3, :cond_2

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->e:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->i:I

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->i:I

    if-ge v0, v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->getMeasuredWidth()I

    move-result v0

    sput v0, Lcom/yr/sxmn3/Image3DSwitchView;->a:I

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->g:I

    sget v0, Lcom/yr/sxmn3/Image3DSwitchView;->a:I

    int-to-double v0, v0

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->h:I

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    iget v1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->i:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0, v2}, Lcom/yr/sxmn3/Image3DSwitchView;->setScrollX(I)V

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->h:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/yr/sxmn3/Image3DSwitchView;->a:I

    iget v3, p0, Lcom/yr/sxmn3/Image3DSwitchView;->h:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v4, v5, [I

    invoke-direct {p0, v6}, Lcom/yr/sxmn3/Image3DSwitchView;->a(I)I

    move-result v1

    aput v1, v4, v2

    invoke-direct {p0, v7}, Lcom/yr/sxmn3/Image3DSwitchView;->a(I)I

    move-result v1

    aput v1, v4, v6

    invoke-direct {p0, v8}, Lcom/yr/sxmn3/Image3DSwitchView;->a(I)I

    move-result v1

    aput v1, v4, v7

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/yr/sxmn3/Image3DSwitchView;->a(I)I

    move-result v1

    aput v1, v4, v8

    const/4 v1, 0x4

    invoke-direct {p0, v5}, Lcom/yr/sxmn3/Image3DSwitchView;->a(I)I

    move-result v3

    aput v3, v4, v1

    iput-object v4, p0, Lcom/yr/sxmn3/Image3DSwitchView;->m:[I

    move v1, v2

    move v3, v0

    :goto_1
    array-length v0, v4

    if-lt v1, v0, :cond_4

    invoke-direct {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->b()V

    :cond_3
    iput-boolean v2, p0, Lcom/yr/sxmn3/Image3DSwitchView;->l:Z

    goto :goto_0

    :cond_4
    aget v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/Image3DSwitchView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/Image3DView;

    add-int/lit8 v5, v3, 0xa

    iget v6, p0, Lcom/yr/sxmn3/Image3DSwitchView;->h:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0xa

    iget v7, p0, Lcom/yr/sxmn3/Image3DSwitchView;->g:I

    invoke-virtual {v0, v5, v2, v6, v7}, Lcom/yr/sxmn3/Image3DView;->layout(IIII)V

    invoke-virtual {v0}, Lcom/yr/sxmn3/Image3DView;->a()V

    iget v0, p0, Lcom/yr/sxmn3/Image3DSwitchView;->h:I

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentImage(I)V
    .locals 0

    iput p1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->j:I

    invoke-virtual {p0}, Lcom/yr/sxmn3/Image3DSwitchView;->requestLayout()V

    return-void
.end method

.method public setOnImageSwitchListener(Lcom/yr/sxmn3/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/Image3DSwitchView;->d:Lcom/yr/sxmn3/aa;

    return-void
.end method
