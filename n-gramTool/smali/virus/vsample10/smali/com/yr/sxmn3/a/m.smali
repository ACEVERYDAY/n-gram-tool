.class Lcom/yr/sxmn3/a/m;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/a/k;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v0}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v1, 0x1

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v0}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/a/j;

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    iget-object v4, v4, Lcom/yr/sxmn3/a/k;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    iget-object v5, v5, Lcom/yr/sxmn3/a/k;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v5, v6}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v5

    invoke-virtual {v4, v2, v2, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    iget-object v6, v6, Lcom/yr/sxmn3/a/k;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v6, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v6}, Lcom/yr/sxmn3/a/k;->b(Lcom/yr/sxmn3/a/k;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v7}, Lcom/yr/sxmn3/a/k;->c(Lcom/yr/sxmn3/a/k;)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    iget-object v7, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v7}, Lcom/yr/sxmn3/a/k;->d(Lcom/yr/sxmn3/a/k;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v7}, Lcom/yr/sxmn3/a/k;->e(Lcom/yr/sxmn3/a/k;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v7}, Lcom/yr/sxmn3/a/k;->f(Lcom/yr/sxmn3/a/k;)I

    move-result v7

    iget-object v8, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v8}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/k;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_1

    :goto_0
    invoke-static {v6, v2, v7, v1}, Lcom/yr/sxmn3/a/i;->a(FIIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget v1, v0, Lcom/yr/sxmn3/a/j;->b:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v1, v6}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v1

    :goto_2
    iget-object v6, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-virtual {v6, v9}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v6

    iget-object v7, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-virtual {v7, v9}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v7

    iget-object v8, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v8}, Lcom/yr/sxmn3/a/k;->g(Lcom/yr/sxmn3/a/k;)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v8}, Lcom/yr/sxmn3/a/k;->h(Lcom/yr/sxmn3/a/k;)I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v8}, Lcom/yr/sxmn3/a/k;->i(Lcom/yr/sxmn3/a/k;)I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v9}, Lcom/yr/sxmn3/a/k;->j(Lcom/yr/sxmn3/a/k;)I

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {v3, v1, v6, v8, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget v1, v0, Lcom/yr/sxmn3/a/j;->b:I

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/yr/sxmn3/a/j;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v0, Lcom/yr/sxmn3/a/j;->b:I

    if-nez v0, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v3

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v1}, Lcom/yr/sxmn3/a/k;->f(Lcom/yr/sxmn3/a/k;)I

    move-result v1

    iget-object v7, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v7}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/k;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v2, v1, v7, p1}, Lcom/yr/sxmn3/a/i;->a(FIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/yr/sxmn3/a/m;->a:Lcom/yr/sxmn3/a/k;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v1, v6}, Lcom/yr/sxmn3/a/k;->b(F)I

    move-result v1

    goto :goto_2
.end method
