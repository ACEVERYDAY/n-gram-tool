.class public final Lcom/c/a/b/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Lcom/c/a/b/g/a;

.field final g:Ljava/util/concurrent/Executor;

.field final h:Ljava/util/concurrent/Executor;

.field final i:Z

.field final j:Z

.field final k:I

.field final l:I

.field final m:Lcom/c/a/b/a/h;

.field final n:Lcom/c/a/a/b/a;

.field final o:Lcom/c/a/a/a/b;

.field final p:Lcom/c/a/b/d/c;

.field final q:Lcom/c/a/b/b/d;

.field final r:Lcom/c/a/b/d;

.field final s:Lcom/c/a/b/d/c;

.field final t:Lcom/c/a/b/d/c;


# direct methods
.method private constructor <init>(Lcom/c/a/b/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/c/a/b/j;->a(Lcom/c/a/b/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->a:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/c/a/b/j;->b(Lcom/c/a/b/j;)I

    move-result v0

    iput v0, p0, Lcom/c/a/b/h;->b:I

    invoke-static {p1}, Lcom/c/a/b/j;->c(Lcom/c/a/b/j;)I

    move-result v0

    iput v0, p0, Lcom/c/a/b/h;->c:I

    invoke-static {p1}, Lcom/c/a/b/j;->d(Lcom/c/a/b/j;)I

    move-result v0

    iput v0, p0, Lcom/c/a/b/h;->d:I

    invoke-static {p1}, Lcom/c/a/b/j;->e(Lcom/c/a/b/j;)I

    move-result v0

    iput v0, p0, Lcom/c/a/b/h;->e:I

    invoke-static {p1}, Lcom/c/a/b/j;->f(Lcom/c/a/b/j;)Lcom/c/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->f:Lcom/c/a/b/g/a;

    invoke-static {p1}, Lcom/c/a/b/j;->g(Lcom/c/a/b/j;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->g:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/c/a/b/j;->h(Lcom/c/a/b/j;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->h:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/c/a/b/j;->i(Lcom/c/a/b/j;)I

    move-result v0

    iput v0, p0, Lcom/c/a/b/h;->k:I

    invoke-static {p1}, Lcom/c/a/b/j;->j(Lcom/c/a/b/j;)I

    move-result v0

    iput v0, p0, Lcom/c/a/b/h;->l:I

    invoke-static {p1}, Lcom/c/a/b/j;->k(Lcom/c/a/b/j;)Lcom/c/a/b/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->m:Lcom/c/a/b/a/h;

    invoke-static {p1}, Lcom/c/a/b/j;->l(Lcom/c/a/b/j;)Lcom/c/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->o:Lcom/c/a/a/a/b;

    invoke-static {p1}, Lcom/c/a/b/j;->m(Lcom/c/a/b/j;)Lcom/c/a/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->n:Lcom/c/a/a/b/a;

    invoke-static {p1}, Lcom/c/a/b/j;->n(Lcom/c/a/b/j;)Lcom/c/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->r:Lcom/c/a/b/d;

    invoke-static {p1}, Lcom/c/a/b/j;->o(Lcom/c/a/b/j;)Lcom/c/a/b/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->p:Lcom/c/a/b/d/c;

    invoke-static {p1}, Lcom/c/a/b/j;->p(Lcom/c/a/b/j;)Lcom/c/a/b/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/h;->q:Lcom/c/a/b/b/d;

    invoke-static {p1}, Lcom/c/a/b/j;->q(Lcom/c/a/b/j;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/a/b/h;->i:Z

    invoke-static {p1}, Lcom/c/a/b/j;->r(Lcom/c/a/b/j;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/a/b/h;->j:Z

    new-instance v0, Lcom/c/a/b/k;

    iget-object v1, p0, Lcom/c/a/b/h;->p:Lcom/c/a/b/d/c;

    invoke-direct {v0, v1}, Lcom/c/a/b/k;-><init>(Lcom/c/a/b/d/c;)V

    iput-object v0, p0, Lcom/c/a/b/h;->s:Lcom/c/a/b/d/c;

    new-instance v0, Lcom/c/a/b/l;

    iget-object v1, p0, Lcom/c/a/b/h;->p:Lcom/c/a/b/d/c;

    invoke-direct {v0, v1}, Lcom/c/a/b/l;-><init>(Lcom/c/a/b/d/c;)V

    iput-object v0, p0, Lcom/c/a/b/h;->t:Lcom/c/a/b/d/c;

    invoke-static {p1}, Lcom/c/a/b/j;->s(Lcom/c/a/b/j;)Z

    move-result v0

    invoke-static {v0}, Lcom/c/a/c/e;->a(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/b/j;Lcom/c/a/b/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/b/h;-><init>(Lcom/c/a/b/j;)V

    return-void
.end method


# virtual methods
.method a()Lcom/c/a/b/a/f;
    .locals 3

    iget-object v0, p0, Lcom/c/a/b/h;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, p0, Lcom/c/a/b/h;->b:I

    if-gtz v0, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    iget v1, p0, Lcom/c/a/b/h;->c:I

    if-gtz v1, :cond_1

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    new-instance v2, Lcom/c/a/b/a/f;

    invoke-direct {v2, v0, v1}, Lcom/c/a/b/a/f;-><init>(II)V

    return-object v2
.end method
