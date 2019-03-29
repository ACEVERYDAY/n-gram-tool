.class public final Lcom/ipaynow/plugin/view/c;
.super Lcom/ipaynow/plugin/view/d;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private aG:Landroid/graphics/Bitmap;

.field private aH:Ljava/lang/String;

.field private be:Lcom/ipaynow/plugin/a/b/c/c;

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ipaynow/plugin/a/b/c/c;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/view/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/c;->k:Landroid/content/Context;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/c;->aG:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/c;->aH:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/c;->be:Lcom/ipaynow/plugin/a/b/c/c;

    iput-object p1, p0, Lcom/ipaynow/plugin/view/c;->k:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/ipaynow/plugin/a/b/c/c;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/c;->aG:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/ipaynow/plugin/a/b/c/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/c;->aH:Ljava/lang/String;

    iput-object p2, p0, Lcom/ipaynow/plugin/view/c;->be:Lcom/ipaynow/plugin/a/b/c/c;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/c;->setGravity(I)V

    invoke-virtual {p0, v4}, Lcom/ipaynow/plugin/view/c;->setOrientation(I)V

    invoke-virtual {p0, v4}, Lcom/ipaynow/plugin/view/c;->setClickable(Z)V

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v0

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v1

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v2

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ipaynow/plugin/view/c;->setPadding(IIII)V

    sget-object v0, Lcom/ipaynow/plugin/conf/c;->ab:Landroid/graphics/drawable/Drawable;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/ipaynow/plugin/view/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/c;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/view/c;->aG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v6, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ipaynow/plugin/view/c;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/ipaynow/plugin/view/c;->aH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/ipaynow/plugin/conf/a;->black:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/view/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2, v3}, Lcom/ipaynow/plugin/view/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public final l()Lcom/ipaynow/plugin/a/b/c/c;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/c;->be:Lcom/ipaynow/plugin/a/b/c/c;

    return-object v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/ipaynow/plugin/conf/a;->black:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final performClick()Z
    .locals 1

    invoke-super {p0}, Lcom/ipaynow/plugin/view/d;->performClick()Z

    move-result v0

    return v0
.end method
