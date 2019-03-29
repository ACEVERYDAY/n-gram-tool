.class public Lcom/yr/sxmn3/a/k;
.super Lcom/yr/sxmn3/a/d;


# instance fields
.field private A:Z

.field private B:Landroid/widget/BaseAdapter;

.field private C:Ljava/util/ArrayList;

.field private D:Lcom/yr/sxmn3/a/n;

.field private E:Landroid/view/animation/LayoutAnimationController;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/TextView;

.field private l:F

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:F

.field private t:I

.field private u:I

.field private v:F

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/yr/sxmn3/a/d;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/yr/sxmn3/a/k;->l:F

    const-string v0, "#303030"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yr/sxmn3/a/k;->m:I

    const-string v0, "\u93bb\u612e\u305a"

    iput-object v0, p0, Lcom/yr/sxmn3/a/k;->n:Ljava/lang/String;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yr/sxmn3/a/k;->o:I

    const/high16 v0, 0x41840000    # 16.5f

    iput v0, p0, Lcom/yr/sxmn3/a/k;->p:F

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yr/sxmn3/a/k;->q:I

    const v0, -0x333334

    iput v0, p0, Lcom/yr/sxmn3/a/k;->r:I

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/yr/sxmn3/a/k;->s:F

    const-string v0, "#ffcccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yr/sxmn3/a/k;->t:I

    const-string v0, "#303030"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yr/sxmn3/a/k;->u:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/yr/sxmn3/a/k;->v:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yr/sxmn3/a/k;->A:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yr/sxmn3/a/k;->C:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/yr/sxmn3/a/k;->d()V

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/a/k;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yr/sxmn3/a/k;)I
    .locals 1

    iget v0, p0, Lcom/yr/sxmn3/a/k;->u:I

    return v0
.end method

.method static synthetic c(Lcom/yr/sxmn3/a/k;)F
    .locals 1

    iget v0, p0, Lcom/yr/sxmn3/a/k;->v:F

    return v0
.end method

.method static synthetic d(Lcom/yr/sxmn3/a/k;)F
    .locals 1

    iget v0, p0, Lcom/yr/sxmn3/a/k;->l:F

    return v0
.end method

.method private d()V
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/a/k;->a(F)Lcom/yr/sxmn3/a/d;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x40000000    # 2.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    const v2, 0x3df5c28f    # 0.12f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    iput-object v1, p0, Lcom/yr/sxmn3/a/k;->E:Landroid/view/animation/LayoutAnimationController;

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->E:Landroid/view/animation/LayoutAnimationController;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic e(Lcom/yr/sxmn3/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/yr/sxmn3/a/k;->A:Z

    return v0
.end method

.method static synthetic f(Lcom/yr/sxmn3/a/k;)I
    .locals 1

    iget v0, p0, Lcom/yr/sxmn3/a/k;->t:I

    return v0
.end method

.method static synthetic g(Lcom/yr/sxmn3/a/k;)I
    .locals 1

    iget v0, p0, Lcom/yr/sxmn3/a/k;->w:I

    return v0
.end method

.method static synthetic h(Lcom/yr/sxmn3/a/k;)I
    .locals 1

    iget v0, p0, Lcom/yr/sxmn3/a/k;->x:I

    return v0
.end method

.method static synthetic i(Lcom/yr/sxmn3/a/k;)I
    .locals 1

    iget v0, p0, Lcom/yr/sxmn3/a/k;->y:I

    return v0
.end method

.method static synthetic j(Lcom/yr/sxmn3/a/k;)I
    .locals 1

    iget v0, p0, Lcom/yr/sxmn3/a/k;->z:I

    return v0
.end method

.method static synthetic k(Lcom/yr/sxmn3/a/k;)Lcom/yr/sxmn3/a/n;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->D:Lcom/yr/sxmn3/a/n;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 8

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yr/sxmn3/a/k;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, v2}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v4

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yr/sxmn3/a/k;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/yr/sxmn3/a/k;
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/k;->n:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/yr/sxmn3/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/k;->D:Lcom/yr/sxmn3/a/n;

    return-void
.end method

.method public b()V
    .locals 10

    const/4 v9, 0x1

    const/16 v2, 0x8

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/yr/sxmn3/a/k;->l:F

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    iget v4, p0, Lcom/yr/sxmn3/a/k;->m:I

    new-array v5, v2, [F

    aput v3, v5, v1

    aput v3, v5, v9

    aput v3, v5, v8

    const/4 v6, 0x3

    aput v3, v5, v6

    const/4 v6, 0x4

    aput v7, v5, v6

    const/4 v6, 0x5

    aput v7, v5, v6

    const/4 v6, 0x6

    aput v7, v5, v6

    const/4 v6, 0x7

    aput v7, v5, v6

    invoke-static {v4, v5}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yr/sxmn3/a/k;->n:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    iget v4, p0, Lcom/yr/sxmn3/a/k;->p:F

    invoke-virtual {v0, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    iget v4, p0, Lcom/yr/sxmn3/a/k;->o:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/yr/sxmn3/a/k;->k:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/yr/sxmn3/a/k;->A:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/yr/sxmn3/a/k;->r:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    iget v4, p0, Lcom/yr/sxmn3/a/k;->s:F

    invoke-virtual {p0, v4}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-boolean v0, p0, Lcom/yr/sxmn3/a/k;->A:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    iget v4, p0, Lcom/yr/sxmn3/a/k;->q:I

    new-array v2, v2, [F

    aput v7, v2, v1

    aput v7, v2, v9

    aput v7, v2, v8

    const/4 v1, 0x3

    aput v7, v2, v1

    const/4 v1, 0x4

    aput v3, v2, v1

    const/4 v1, 0x5

    aput v3, v2, v1

    const/4 v1, 0x6

    aput v3, v2, v1

    const/4 v1, 0x7

    aput v3, v2, v1

    invoke-static {v4, v2}, Lcom/yr/sxmn3/a/i;->a(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->B:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yr/sxmn3/a/m;

    invoke-direct {v0, p0}, Lcom/yr/sxmn3/a/m;-><init>(Lcom/yr/sxmn3/a/k;)V

    iput-object v0, p0, Lcom/yr/sxmn3/a/k;->B:Landroid/widget/BaseAdapter;

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->B:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/yr/sxmn3/a/l;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/a/l;-><init>(Lcom/yr/sxmn3/a/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yr/sxmn3/a/k;->E:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yr/sxmn3/a/k;->j:Landroid/widget/ListView;

    iget v1, p0, Lcom/yr/sxmn3/a/k;->q:I

    invoke-static {v1, v3}, Lcom/yr/sxmn3/a/i;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
