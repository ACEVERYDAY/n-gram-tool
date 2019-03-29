.class public Lcom/apkol/root/view/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "PinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/root/view/PinnedHeaderListView$a;
    }
.end annotation


# static fields
.field private static final a:I = 0xff


# instance fields
.field private b:Lcom/apkol/root/view/PinnedHeaderListView$a;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v1, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/apkol/root/view/PinnedHeaderListView;->b:Lcom/apkol/root/view/PinnedHeaderListView$a;

    invoke-interface {v1, p1}, Lcom/apkol/root/view/PinnedHeaderListView$a;->a(I)I

    move-result v1

    .line 74
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    iput-boolean v2, p0, Lcom/apkol/root/view/PinnedHeaderListView;->d:Z

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v1, p0, Lcom/apkol/root/view/PinnedHeaderListView;->b:Lcom/apkol/root/view/PinnedHeaderListView$a;

    iget-object v3, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-interface {v1, v3, p1, v0}, Lcom/apkol/root/view/PinnedHeaderListView$a;->a(Landroid/view/View;II)V

    .line 82
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    iget v1, p0, Lcom/apkol/root/view/PinnedHeaderListView;->e:I

    iget v3, p0, Lcom/apkol/root/view/PinnedHeaderListView;->f:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 85
    :cond_1
    iput-boolean v5, p0, Lcom/apkol/root/view/PinnedHeaderListView;->d:Z

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/apkol/root/view/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 92
    iget-object v3, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 95
    if-ge v1, v3, :cond_3

    .line 96
    sub-int/2addr v1, v3

    .line 97
    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    .line 102
    :goto_1
    iget-object v3, p0, Lcom/apkol/root/view/PinnedHeaderListView;->b:Lcom/apkol/root/view/PinnedHeaderListView$a;

    iget-object v4, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-interface {v3, v4, p1, v0}, Lcom/apkol/root/view/PinnedHeaderListView$a;->a(Landroid/view/View;II)V

    .line 103
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    iget v3, p0, Lcom/apkol/root/view/PinnedHeaderListView;->e:I

    iget v4, p0, Lcom/apkol/root/view/PinnedHeaderListView;->f:I

    .line 105
    add-int/2addr v4, v1

    .line 104
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 107
    :cond_2
    iput-boolean v5, p0, Lcom/apkol/root/view/PinnedHeaderListView;->d:Z

    goto :goto_0

    :cond_3
    move v1, v2

    .line 100
    goto :goto_1

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 115
    iget-boolean v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->d:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/apkol/root/view/PinnedHeaderListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/apkol/root/view/PinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 118
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 44
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    iget v1, p0, Lcom/apkol/root/view/PinnedHeaderListView;->e:I

    iget v2, p0, Lcom/apkol/root/view/PinnedHeaderListView;->f:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 46
    invoke-virtual {p0}, Lcom/apkol/root/view/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apkol/root/view/PinnedHeaderListView;->a(I)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 51
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/apkol/root/view/PinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    .line 53
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->e:I

    .line 54
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->f:I

    .line 56
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    check-cast p1, Lcom/apkol/root/view/PinnedHeaderListView$a;

    iput-object p1, p0, Lcom/apkol/root/view/PinnedHeaderListView;->b:Lcom/apkol/root/view/PinnedHeaderListView$a;

    .line 67
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/apkol/root/view/PinnedHeaderListView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apkol/root/view/PinnedHeaderListView;->setFadingEdgeLength(I)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/apkol/root/view/PinnedHeaderListView;->requestLayout()V

    .line 63
    return-void
.end method
