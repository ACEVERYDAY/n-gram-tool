.class public Lcom/c/a/b/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/c/a/b/a/h;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/c/a/b/g/a;

.field private h:Ljava/util/concurrent/Executor;

.field private i:Ljava/util/concurrent/Executor;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/c/a/b/a/h;

.field private p:I

.field private q:J

.field private r:I

.field private s:Lcom/c/a/a/b/a;

.field private t:Lcom/c/a/a/a/b;

.field private u:Lcom/c/a/a/a/b/a;

.field private v:Lcom/c/a/b/d/c;

.field private w:Lcom/c/a/b/b/d;

.field private x:Lcom/c/a/b/d;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/c/a/b/a/h;->a:Lcom/c/a/b/a/h;

    sput-object v0, Lcom/c/a/b/j;->a:Lcom/c/a/b/a/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/c/a/b/j;->c:I

    iput v2, p0, Lcom/c/a/b/j;->d:I

    iput v2, p0, Lcom/c/a/b/j;->e:I

    iput v2, p0, Lcom/c/a/b/j;->f:I

    iput-object v3, p0, Lcom/c/a/b/j;->g:Lcom/c/a/b/g/a;

    iput-object v3, p0, Lcom/c/a/b/j;->h:Ljava/util/concurrent/Executor;

    iput-object v3, p0, Lcom/c/a/b/j;->i:Ljava/util/concurrent/Executor;

    iput-boolean v2, p0, Lcom/c/a/b/j;->j:Z

    iput-boolean v2, p0, Lcom/c/a/b/j;->k:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/c/a/b/j;->l:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/c/a/b/j;->m:I

    iput-boolean v2, p0, Lcom/c/a/b/j;->n:Z

    sget-object v0, Lcom/c/a/b/j;->a:Lcom/c/a/b/a/h;

    iput-object v0, p0, Lcom/c/a/b/j;->o:Lcom/c/a/b/a/h;

    iput v2, p0, Lcom/c/a/b/j;->p:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/a/b/j;->q:J

    iput v2, p0, Lcom/c/a/b/j;->r:I

    iput-object v3, p0, Lcom/c/a/b/j;->s:Lcom/c/a/a/b/a;

    iput-object v3, p0, Lcom/c/a/b/j;->t:Lcom/c/a/a/a/b;

    iput-object v3, p0, Lcom/c/a/b/j;->u:Lcom/c/a/a/a/b/a;

    iput-object v3, p0, Lcom/c/a/b/j;->v:Lcom/c/a/b/d/c;

    iput-object v3, p0, Lcom/c/a/b/j;->x:Lcom/c/a/b/d;

    iput-boolean v2, p0, Lcom/c/a/b/j;->y:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/j;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/c/a/b/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/c/a/b/j;)I
    .locals 1

    iget v0, p0, Lcom/c/a/b/j;->c:I

    return v0
.end method

.method static synthetic c(Lcom/c/a/b/j;)I
    .locals 1

    iget v0, p0, Lcom/c/a/b/j;->d:I

    return v0
.end method

.method static synthetic d(Lcom/c/a/b/j;)I
    .locals 1

    iget v0, p0, Lcom/c/a/b/j;->e:I

    return v0
.end method

.method private d()V
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/c/a/b/j;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/c/a/b/j;->l:I

    iget v1, p0, Lcom/c/a/b/j;->m:I

    iget-object v2, p0, Lcom/c/a/b/j;->o:Lcom/c/a/b/a/h;

    invoke-static {v0, v1, v2}, Lcom/c/a/b/a;->a(IILcom/c/a/b/a/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/j;->h:Ljava/util/concurrent/Executor;

    :goto_0
    iget-object v0, p0, Lcom/c/a/b/j;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/c/a/b/j;->l:I

    iget v1, p0, Lcom/c/a/b/j;->m:I

    iget-object v2, p0, Lcom/c/a/b/j;->o:Lcom/c/a/b/a/h;

    invoke-static {v0, v1, v2}, Lcom/c/a/b/a;->a(IILcom/c/a/b/a/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/j;->i:Ljava/util/concurrent/Executor;

    :goto_1
    iget-object v0, p0, Lcom/c/a/b/j;->t:Lcom/c/a/a/a/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/c/a/b/j;->u:Lcom/c/a/a/a/b/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/c/a/b/a;->b()Lcom/c/a/a/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/j;->u:Lcom/c/a/a/a/b/a;

    :cond_0
    iget-object v0, p0, Lcom/c/a/b/j;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/c/a/b/j;->u:Lcom/c/a/a/a/b/a;

    iget-wide v2, p0, Lcom/c/a/b/j;->q:J

    iget v4, p0, Lcom/c/a/b/j;->r:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/c/a/b/a;->a(Landroid/content/Context;Lcom/c/a/a/a/b/a;JI)Lcom/c/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/j;->t:Lcom/c/a/a/a/b;

    :cond_1
    iget-object v0, p0, Lcom/c/a/b/j;->s:Lcom/c/a/a/b/a;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/c/a/b/j;->p:I

    invoke-static {v0}, Lcom/c/a/b/a;->a(I)Lcom/c/a/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/j;->s:Lcom/c/a/a/b/a;

    :cond_2
    iget-boolean v0, p0, Lcom/c/a/b/j;->n:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/c/a/a/b/a/a;

    iget-object v1, p0, Lcom/c/a/b/j;->s:Lcom/c/a/a/b/a;

    invoke-static {}, Lcom/c/a/c/f;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/c/a/a/b/a/a;-><init>(Lcom/c/a/a/b/a;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/c/a/b/j;->s:Lcom/c/a/a/b/a;

    :cond_3
    iget-object v0, p0, Lcom/c/a/b/j;->v:Lcom/c/a/b/d/c;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/c/a/b/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/b/a;->a(Landroid/content/Context;)Lcom/c/a/b/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/j;->v:Lcom/c/a/b/d/c;

    :cond_4
    iget-object v0, p0, Lcom/c/a/b/j;->w:Lcom/c/a/b/b/d;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/c/a/b/j;->y:Z

    invoke-static {v0}, Lcom/c/a/b/a;->a(Z)Lcom/c/a/b/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/j;->w:Lcom/c/a/b/b/d;

    :cond_5
    iget-object v0, p0, Lcom/c/a/b/j;->x:Lcom/c/a/b/d;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/c/a/b/d;->t()Lcom/c/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/j;->x:Lcom/c/a/b/d;

    :cond_6
    return-void

    :cond_7
    iput-boolean v3, p0, Lcom/c/a/b/j;->j:Z

    goto :goto_0

    :cond_8
    iput-boolean v3, p0, Lcom/c/a/b/j;->k:Z

    goto :goto_1
.end method

.method static synthetic e(Lcom/c/a/b/j;)I
    .locals 1

    iget v0, p0, Lcom/c/a/b/j;->f:I

    return v0
.end method

.method static synthetic f(Lcom/c/a/b/j;)Lcom/c/a/b/g/a;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->g:Lcom/c/a/b/g/a;

    return-object v0
.end method

.method static synthetic g(Lcom/c/a/b/j;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->h:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic h(Lcom/c/a/b/j;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->i:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic i(Lcom/c/a/b/j;)I
    .locals 1

    iget v0, p0, Lcom/c/a/b/j;->l:I

    return v0
.end method

.method static synthetic j(Lcom/c/a/b/j;)I
    .locals 1

    iget v0, p0, Lcom/c/a/b/j;->m:I

    return v0
.end method

.method static synthetic k(Lcom/c/a/b/j;)Lcom/c/a/b/a/h;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->o:Lcom/c/a/b/a/h;

    return-object v0
.end method

.method static synthetic l(Lcom/c/a/b/j;)Lcom/c/a/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->t:Lcom/c/a/a/a/b;

    return-object v0
.end method

.method static synthetic m(Lcom/c/a/b/j;)Lcom/c/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->s:Lcom/c/a/a/b/a;

    return-object v0
.end method

.method static synthetic n(Lcom/c/a/b/j;)Lcom/c/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->x:Lcom/c/a/b/d;

    return-object v0
.end method

.method static synthetic o(Lcom/c/a/b/j;)Lcom/c/a/b/d/c;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->v:Lcom/c/a/b/d/c;

    return-object v0
.end method

.method static synthetic p(Lcom/c/a/b/j;)Lcom/c/a/b/b/d;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/j;->w:Lcom/c/a/b/b/d;

    return-object v0
.end method

.method static synthetic q(Lcom/c/a/b/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/c/a/b/j;->j:Z

    return v0
.end method

.method static synthetic r(Lcom/c/a/b/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/c/a/b/j;->k:Z

    return v0
.end method

.method static synthetic s(Lcom/c/a/b/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/c/a/b/j;->y:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/c/a/b/j;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/b/j;->n:Z

    return-object p0
.end method

.method public a(I)Lcom/c/a/b/j;
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/c/a/b/j;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/b/j;->i:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/c/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-ge p1, v2, :cond_2

    iput v2, p0, Lcom/c/a/b/j;->m:I

    :goto_0
    return-object p0

    :cond_2
    if-le p1, v3, :cond_3

    iput v3, p0, Lcom/c/a/b/j;->m:I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/c/a/b/j;->m:I

    goto :goto_0
.end method

.method public a(II)Lcom/c/a/b/j;
    .locals 0

    iput p1, p0, Lcom/c/a/b/j;->c:I

    iput p2, p0, Lcom/c/a/b/j;->d:I

    return-object p0
.end method

.method public a(Lcom/c/a/a/a/b/a;)Lcom/c/a/b/j;
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/j;->t:Lcom/c/a/a/a/b;

    if-eqz v0, :cond_0

    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/c/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/c/a/b/j;->u:Lcom/c/a/a/a/b/a;

    return-object p0
.end method

.method public a(Lcom/c/a/a/a/b;)Lcom/c/a/b/j;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/c/a/b/j;->b(Lcom/c/a/a/a/b;)Lcom/c/a/b/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/c/a/b/a/h;)Lcom/c/a/b/j;
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/j;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/b/j;->i:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/c/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/c/a/b/j;->o:Lcom/c/a/b/a/h;

    return-object p0
.end method

.method public b()Lcom/c/a/b/j;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/b/j;->y:Z

    return-object p0
.end method

.method public b(Lcom/c/a/a/a/b;)Lcom/c/a/b/j;
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/c/a/b/j;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/c/a/b/j;->r:I

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/c/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/c/a/b/j;->u:Lcom/c/a/a/a/b/a;

    if-eqz v0, :cond_2

    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/c/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-object p1, p0, Lcom/c/a/b/j;->t:Lcom/c/a/a/a/b;

    return-object p0
.end method

.method public c()Lcom/c/a/b/h;
    .locals 2

    invoke-direct {p0}, Lcom/c/a/b/j;->d()V

    new-instance v0, Lcom/c/a/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/c/a/b/h;-><init>(Lcom/c/a/b/j;Lcom/c/a/b/i;)V

    return-object v0
.end method
