.class public abstract Lcom/yr/sxmn3/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:Lcom/b/a/d;

.field private c:Landroid/view/animation/Interpolator;

.field private d:J

.field private e:Lcom/yr/sxmn3/a/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/yr/sxmn3/a/a;->a:J

    new-instance v0, Lcom/b/a/d;

    invoke-direct {v0}, Lcom/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/yr/sxmn3/a/a;->b:Lcom/b/a/d;

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/c;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/a/a;->e:Lcom/yr/sxmn3/a/c;

    return-object v0
.end method

.method public static c(Landroid/view/View;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {p0, v1}, Lcom/b/c/a;->a(Landroid/view/View;F)V

    invoke-static {p0, v1}, Lcom/b/c/a;->e(Landroid/view/View;F)V

    invoke-static {p0, v1}, Lcom/b/c/a;->f(Landroid/view/View;F)V

    invoke-static {p0, v0}, Lcom/b/c/a;->g(Landroid/view/View;F)V

    invoke-static {p0, v0}, Lcom/b/c/a;->h(Landroid/view/View;F)V

    invoke-static {p0, v0}, Lcom/b/c/a;->b(Landroid/view/View;F)V

    invoke-static {p0, v0}, Lcom/b/c/a;->d(Landroid/view/View;F)V

    invoke-static {p0, v0}, Lcom/b/c/a;->c(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yr/sxmn3/a/c;)Lcom/yr/sxmn3/a/a;
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/a;->e:Lcom/yr/sxmn3/a/c;

    return-object p0
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method protected b(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Lcom/yr/sxmn3/a/a;->c(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/yr/sxmn3/a/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/a;->b:Lcom/b/a/d;

    iget-wide v1, p0, Lcom/yr/sxmn3/a/a;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d;->c(J)Lcom/b/a/d;

    iget-object v0, p0, Lcom/yr/sxmn3/a/a;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/a/a;->b:Lcom/b/a/d;

    iget-object v1, p0, Lcom/yr/sxmn3/a/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/view/animation/Interpolator;)V

    :cond_0
    iget-wide v0, p0, Lcom/yr/sxmn3/a/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yr/sxmn3/a/a;->b:Lcom/b/a/d;

    iget-wide v1, p0, Lcom/yr/sxmn3/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d;->b(J)V

    :cond_1
    iget-object v0, p0, Lcom/yr/sxmn3/a/a;->e:Lcom/yr/sxmn3/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yr/sxmn3/a/a;->b:Lcom/b/a/d;

    new-instance v1, Lcom/yr/sxmn3/a/b;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/a/b;-><init>(Lcom/yr/sxmn3/a/a;)V

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Lcom/b/a/b;)V

    :cond_2
    iget-object v0, p0, Lcom/yr/sxmn3/a/a;->b:Lcom/b/a/d;

    invoke-virtual {v0}, Lcom/b/a/d;->a()V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yr/sxmn3/a/a;->b(Landroid/view/View;)V

    return-void
.end method
