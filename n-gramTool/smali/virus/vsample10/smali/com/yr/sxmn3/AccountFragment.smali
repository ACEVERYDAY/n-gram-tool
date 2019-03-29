.class public Lcom/yr/sxmn3/AccountFragment;
.super Lcom/yr/sxmn3/BaseFragment;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yr/sxmn3/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/AccountFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/yr/sxmn3/AccountFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yr/sxmn3/AccountFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "10001289"

    invoke-static {v0}, Lcom/upay/billing/sdk/Upay;->getInstance(Ljava/lang/String;)Lcom/upay/billing/sdk/Upay;

    move-result-object v0

    invoke-static {}, Lcom/yr/sxmn3/b/c;->a()Lcom/yr/sxmn3/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yr/sxmn3/AccountFragment;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/yr/sxmn3/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yr/sxmn3/g;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/g;-><init>(Lcom/yr/sxmn3/AccountFragment;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/upay/billing/sdk/Upay;->pay(Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayCallback;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {p0}, Lcom/yr/sxmn3/AccountFragment;->g()Landroid/os/Bundle;

    const v0, 0x7f03000d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0025

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->b:Landroid/widget/LinearLayout;

    const/high16 v0, 0x7f0a0000

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0024

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->f:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/yr/sxmn3/a;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/a;-><init>(Lcom/yr/sxmn3/AccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->e:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/yr/sxmn3/b;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/b;-><init>(Lcom/yr/sxmn3/AccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->d:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/yr/sxmn3/c;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/c;-><init>(Lcom/yr/sxmn3/AccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->c:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/yr/sxmn3/d;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/d;-><init>(Lcom/yr/sxmn3/AccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yr/sxmn3/AccountFragment;->b:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/yr/sxmn3/e;

    invoke-direct {v2, p0}, Lcom/yr/sxmn3/e;-><init>(Lcom/yr/sxmn3/AccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/yr/sxmn3/BaseFragment;->a(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/yr/sxmn3/AccountFragment;->a:Landroid/app/Activity;

    return-void
.end method
