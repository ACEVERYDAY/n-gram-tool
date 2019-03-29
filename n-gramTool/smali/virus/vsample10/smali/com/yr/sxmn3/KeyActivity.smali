.class public Lcom/yr/sxmn3/KeyActivity;
.super Lcom/yr/sxmn3/BaseActivity;


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yr/sxmn3/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/KeyActivity;->setContentView(I)V

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/yr/sxmn3/KeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yr/sxmn3/KeyActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yr/sxmn3/KeyActivity;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/yr/sxmn3/ab;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/ab;-><init>(Lcom/yr/sxmn3/KeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
