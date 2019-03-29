.class Lcom/yr/sxmn3/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/bn;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/MainActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    const v6, 0x7f020025

    const v5, 0x7f020023

    const v4, 0x7f020021

    const v3, 0x7f050012

    const v2, 0x7f050004

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->h(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->a(Lcom/yr/sxmn3/MainActivity;)Lcom/yr/sxmn3/MViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/MViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->b(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->c(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v1}, Lcom/yr/sxmn3/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->d(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->e(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v1}, Lcom/yr/sxmn3/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->f(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->g(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v1}, Lcom/yr/sxmn3/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->a(Lcom/yr/sxmn3/MainActivity;)Lcom/yr/sxmn3/MViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/MViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->b(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->c(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v1}, Lcom/yr/sxmn3/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->d(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->e(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v1}, Lcom/yr/sxmn3/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->f(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->g(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v1}, Lcom/yr/sxmn3/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->a(Lcom/yr/sxmn3/MainActivity;)Lcom/yr/sxmn3/MViewPager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/MViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->b(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->c(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v1}, Lcom/yr/sxmn3/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->d(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->e(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v1}, Lcom/yr/sxmn3/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->f(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->g(Lcom/yr/sxmn3/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v1}, Lcom/yr/sxmn3/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/yr/sxmn3/ad;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-virtual {v0}, Lcom/yr/sxmn3/MainActivity;->f()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
