.class public Lcom/apkol/utils/ui/BasePinnedHeaderListView;
.super Landroid/widget/ListView;
.source "BasePinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;,
        Lcom/apkol/utils/ui/BasePinnedHeaderListView$b;,
        Lcom/apkol/utils/ui/BasePinnedHeaderListView$c;,
        Lcom/apkol/utils/ui/BasePinnedHeaderListView$d;
    }
.end annotation


# static fields
.field private static final a:I = 0xff


# instance fields
.field private b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Lcom/apkol/utils/ui/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-direct {v0, p0, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;-><init>(Lcom/apkol/utils/ui/BasePinnedHeaderListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    .line 45
    iput-object p1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->g:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-direct {v0, p0, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;-><init>(Lcom/apkol/utils/ui/BasePinnedHeaderListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    .line 51
    iput-object p1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->g:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-direct {v0, p0, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;-><init>(Lcom/apkol/utils/ui/BasePinnedHeaderListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    .line 58
    iput-object p1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->g:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/apkol/utils/ui/BasePinnedHeaderListView;)Lcom/apkol/utils/ui/b;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->h:Lcom/apkol/utils/ui/b;

    return-object v0
.end method

.method private setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->setFadingEdgeLength(I)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->requestLayout()V

    .line 145
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-virtual {v0, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-virtual {v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-virtual {v0, p1, p2}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a(II)V

    .line 83
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 73
    return-void
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-virtual {v0, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 6

    .prologue
    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    if-nez v1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-virtual {v1, p1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a(I)I

    move-result v1

    .line 152
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    iput-boolean v2, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->d:Z

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    iget-object v3, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v1, v3, p1, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a(Landroid/view/View;II)V

    .line 160
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    iget v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->e:I

    iget v3, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->f:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 163
    :cond_1
    iput-boolean v5, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->d:Z

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 170
    iget-object v3, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 173
    if-ge v1, v3, :cond_3

    .line 174
    sub-int/2addr v1, v3

    .line 175
    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    .line 180
    :goto_1
    iget-object v3, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    iget-object v4, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v3, v4, p1, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;->a(Landroid/view/View;II)V

    .line 181
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    iget v3, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->e:I

    iget v4, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->f:I

    .line 183
    add-int/2addr v4, v1

    .line 182
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 185
    :cond_2
    iput-boolean v5, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->d:Z

    goto :goto_0

    :cond_3
    move v1, v2

    .line 178
    goto :goto_1

    .line 152
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
    .line 192
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 193
    iget-boolean v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->d:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 196
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 124
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    iget v1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->e:I

    iget v2, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->f:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 126
    invoke-virtual {p0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c(I)V

    .line 128
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 132
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    .line 134
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->e:I

    .line 135
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->f:I

    .line 137
    :cond_0
    return-void
.end method

.method public setBasePinnedListView(Lcom/apkol/utils/ui/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iput-object p1, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->h:Lcom/apkol/utils/ui/b;

    .line 101
    new-instance v0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$b;

    invoke-direct {v0, p0, v1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$b;-><init>(Lcom/apkol/utils/ui/BasePinnedHeaderListView;Lcom/apkol/utils/ui/BasePinnedHeaderListView$b;)V

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v0, Lcom/apkol/utils/ui/BasePinnedHeaderListView$c;

    invoke-direct {v0, p0, v1}, Lcom/apkol/utils/ui/BasePinnedHeaderListView$c;-><init>(Lcom/apkol/utils/ui/BasePinnedHeaderListView;Lcom/apkol/utils/ui/BasePinnedHeaderListView$c;)V

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->b:Lcom/apkol/utils/ui/BasePinnedHeaderListView$a;

    invoke-virtual {p0, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 106
    return-void
.end method

.method public setHeaderLayoutRes(I)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apkol/utils/ui/BasePinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 92
    return-void
.end method
