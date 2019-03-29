.class public Lcom/qwapi/adclient/android/view/EmptyView;
.super Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private measureHeight(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private measureWidth(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/qwapi/adclient/android/view/EmptyView;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/qwapi/adclient/android/view/EmptyView;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/qwapi/adclient/android/view/EmptyView;->setMeasuredDimension(II)V

    return-void
.end method
