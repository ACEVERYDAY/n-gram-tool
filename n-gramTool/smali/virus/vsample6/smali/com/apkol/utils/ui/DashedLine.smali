.class public Lcom/apkol/utils/ui/DashedLine;
.super Landroid/view/View;
.source "DashedLine.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/PathEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apkol/utils/ui/DashedLine;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->a:Landroid/graphics/Paint;

    .line 18
    iput-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->b:Landroid/graphics/Path;

    .line 19
    iput-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->c:Landroid/graphics/PathEffect;

    .line 30
    sget-object v0, Lcom/apkol/a/a$i;->dashedline:[I

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->a:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->b:Landroid/graphics/Path;

    .line 40
    iget-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/apkol/utils/ui/DashedLine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 45
    invoke-virtual {p0}, Lcom/apkol/utils/ui/DashedLine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    .line 46
    invoke-virtual {p0}, Lcom/apkol/utils/ui/DashedLine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    .line 47
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/apkol/utils/ui/DashedLine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 48
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/apkol/utils/ui/DashedLine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 49
    new-instance v1, Landroid/graphics/DashPathEffect;

    invoke-virtual {p0}, Lcom/apkol/utils/ui/DashedLine;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 50
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    invoke-static {v2, v3}, Lcom/apkol/utils/w;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v1, p0, Lcom/apkol/utils/ui/DashedLine;->c:Landroid/graphics/PathEffect;

    .line 51
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 57
    iget-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->b:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/apkol/utils/ui/DashedLine;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    iget-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/apkol/utils/ui/DashedLine;->c:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 59
    iget-object v0, p0, Lcom/apkol/utils/ui/DashedLine;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apkol/utils/ui/DashedLine;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 60
    return-void
.end method
