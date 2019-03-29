.class public Lcom/apkol/utils/i/b;
.super Landroid/support/v4/view/s;
.source "ViewPagerAdapter.java"


# instance fields
.field private c:I

.field private d:Lcom/apkol/utils/i/a;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apkol/utils/i/a;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/apkol/utils/i/b;->d:Lcom/apkol/utils/i/a;

    .line 27
    iput p3, p0, Lcom/apkol/utils/i/b;->c:I

    .line 28
    iput-object p1, p0, Lcom/apkol/utils/i/b;->e:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x2

    return v0
.end method

.method public a()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/apkol/utils/i/b;->d:Lcom/apkol/utils/i/a;

    invoke-interface {v0, p1, p2}, Lcom/apkol/utils/i/a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 54
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 55
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/apkol/utils/i/b;->c:I

    .line 95
    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/apkol/utils/i/b;->d:Lcom/apkol/utils/i/a;

    invoke-interface {v0, p2}, Lcom/apkol/utils/i/a;->a(I)V

    .line 35
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 61
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/apkol/utils/i/b;->c:I

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/apkol/utils/i/b;->c:I

    return v0
.end method
