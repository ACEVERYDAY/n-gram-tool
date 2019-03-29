.class public Lcom/b/a/ak;
.super Lcom/b/a/a;


# static fields
.field private static h:Ljava/lang/ThreadLocal;

.field private static final i:Ljava/lang/ThreadLocal;

.field private static final j:Ljava/lang/ThreadLocal;

.field private static final k:Ljava/lang/ThreadLocal;

.field private static final l:Ljava/lang/ThreadLocal;

.field private static final m:Ljava/lang/ThreadLocal;

.field private static final n:Landroid/view/animation/Interpolator;

.field private static final o:Lcom/b/a/aj;

.field private static final p:Lcom/b/a/aj;

.field private static z:J


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/view/animation/Interpolator;

.field private D:Ljava/util/ArrayList;

.field b:J

.field c:J

.field d:I

.field e:Z

.field f:[Lcom/b/a/ag;

.field g:Ljava/util/HashMap;

.field private q:Z

.field private r:I

.field private s:F

.field private t:Z

.field private u:J

.field private v:Z

.field private w:Z

.field private x:J

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/b/a/ak;->h:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/b/a/al;

    invoke-direct {v0}, Lcom/b/a/al;-><init>()V

    sput-object v0, Lcom/b/a/ak;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/b/a/am;

    invoke-direct {v0}, Lcom/b/a/am;-><init>()V

    sput-object v0, Lcom/b/a/ak;->j:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/b/a/an;

    invoke-direct {v0}, Lcom/b/a/an;-><init>()V

    sput-object v0, Lcom/b/a/ak;->k:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/b/a/ao;

    invoke-direct {v0}, Lcom/b/a/ao;-><init>()V

    sput-object v0, Lcom/b/a/ak;->l:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/b/a/ap;

    invoke-direct {v0}, Lcom/b/a/ap;-><init>()V

    sput-object v0, Lcom/b/a/ak;->m:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/b/a/ak;->n:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/b/a/m;

    invoke-direct {v0}, Lcom/b/a/m;-><init>()V

    sput-object v0, Lcom/b/a/ak;->o:Lcom/b/a/aj;

    new-instance v0, Lcom/b/a/k;

    invoke-direct {v0}, Lcom/b/a/k;-><init>()V

    sput-object v0, Lcom/b/a/ak;->p:Lcom/b/a/aj;

    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/b/a/ak;->z:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/b/a/a;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/b/a/ak;->c:J

    iput-boolean v2, p0, Lcom/b/a/ak;->q:Z

    iput v2, p0, Lcom/b/a/ak;->r:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/ak;->s:F

    iput-boolean v2, p0, Lcom/b/a/ak;->t:Z

    iput v2, p0, Lcom/b/a/ak;->d:I

    iput-boolean v2, p0, Lcom/b/a/ak;->v:Z

    iput-boolean v2, p0, Lcom/b/a/ak;->w:Z

    iput-boolean v2, p0, Lcom/b/a/ak;->e:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/b/a/ak;->x:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/ak;->y:J

    iput v2, p0, Lcom/b/a/ak;->A:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/b/a/ak;->B:I

    sget-object v0, Lcom/b/a/ak;->n:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/b/a/ak;->C:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ak;->D:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/b/a/ak;)J
    .locals 2

    iget-wide v0, p0, Lcom/b/a/ak;->y:J

    return-wide v0
.end method

.method private a(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lcom/b/a/ak;->q:Z

    iput v3, p0, Lcom/b/a/ak;->r:I

    iput v3, p0, Lcom/b/a/ak;->d:I

    iput-boolean v2, p0, Lcom/b/a/ak;->w:Z

    iput-boolean v3, p0, Lcom/b/a/ak;->t:Z

    sget-object v0, Lcom/b/a/ak;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/b/a/ak;->y:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/ak;->g()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/ak;->d(J)V

    iput v3, p0, Lcom/b/a/ak;->d:I

    iput-boolean v2, p0, Lcom/b/a/ak;->v:Z

    iget-object v0, p0, Lcom/b/a/ak;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/ak;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/b;

    invoke-interface {v1, p0}, Lcom/b/a/b;->a(Lcom/b/a/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/b/a/ak;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/aq;

    if-nez v0, :cond_2

    new-instance v0, Lcom/b/a/aq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/aq;-><init>(Lcom/b/a/al;)V

    sget-object v1, Lcom/b/a/ak;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, v3}, Lcom/b/a/aq;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic a(Lcom/b/a/ak;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/b/a/ak;->b(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/b/a/ak;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/ak;->v:Z

    return p1
.end method

.method public static varargs b([F)Lcom/b/a/ak;
    .locals 1

    new-instance v0, Lcom/b/a/ak;

    invoke-direct {v0}, Lcom/b/a/ak;-><init>()V

    invoke-virtual {v0, p0}, Lcom/b/a/ak;->a([F)V

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/ak;->n()V

    return-void
.end method

.method private b(J)Z
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/b/a/ak;->t:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/b/a/ak;->t:Z

    iput-wide p1, p0, Lcom/b/a/ak;->u:J

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/b/a/ak;->u:J

    sub-long v1, p1, v1

    iget-wide v3, p0, Lcom/b/a/ak;->y:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/b/a/ak;->y:J

    sub-long/2addr v1, v3

    sub-long v1, p1, v1

    iput-wide v1, p0, Lcom/b/a/ak;->b:J

    iput v0, p0, Lcom/b/a/ak;->d:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/b/a/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/ak;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    const/4 v3, 0x0

    sget-object v0, Lcom/b/a/ak;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/b/a/ak;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/b/a/ak;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/b/a/ak;->d:I

    iget-boolean v0, p0, Lcom/b/a/ak;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/ak;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/ak;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/b;

    invoke-interface {v1, p0}, Lcom/b/a/b;->b(Lcom/b/a/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/b/a/ak;->v:Z

    iput-boolean v3, p0, Lcom/b/a/ak;->w:Z

    return-void
.end method

.method static synthetic h()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/b/a/ak;->i:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/b/a/ak;->k:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/b/a/ak;->j:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/b/a/ak;->m:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/b/a/ak;->l:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic m()J
    .locals 2

    sget-wide v0, Lcom/b/a/ak;->z:J

    return-wide v0
.end method

.method private n()V
    .locals 4

    invoke-virtual {p0}, Lcom/b/a/ak;->d()V

    sget-object v0, Lcom/b/a/ak;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/b/a/ak;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/ak;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/ak;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/b;

    invoke-interface {v1, p0}, Lcom/b/a/b;->a(Lcom/b/a/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(J)Lcom/b/a/a;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/b/a/ak;->c(J)Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/ak;->a(Z)V

    return-void
.end method

.method a(F)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/ak;->C:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/b/a/ak;->s:F

    iget-object v1, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    array-length v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lcom/b/a/ag;->a(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/b/a/ak;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/b/a/ak;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/b/a/ak;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ar;

    invoke-interface {v0, p0}, Lcom/b/a/ar;->a(Lcom/b/a/ak;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/b/a/ak;->C:Landroid/view/animation/Interpolator;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/b/a/ak;->C:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public varargs a([F)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/b/a/ag;

    const-string v1, ""

    invoke-static {v1, p1}, Lcom/b/a/ag;->a(Ljava/lang/String;[F)Lcom/b/a/ag;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/b/a/ak;->a([Lcom/b/a/ag;)V

    :goto_1
    iput-boolean v2, p0, Lcom/b/a/ak;->e:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/b/a/ag;->a([F)V

    goto :goto_1
.end method

.method public varargs a([Lcom/b/a/ag;)V
    .locals 6

    const/4 v1, 0x0

    array-length v2, p1

    iput-object p1, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/ak;->g:Ljava/util/HashMap;

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/b/a/ak;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/b/a/ag;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/b/a/ak;->e:Z

    return-void
.end method

.method public synthetic c()Lcom/b/a/a;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/ak;->f()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Lcom/b/a/ak;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/b/a/ak;->x:J

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/ak;->f()Lcom/b/a/ak;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 3

    iget-boolean v0, p0, Lcom/b/a/ak;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/b/a/ag;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/ak;->e:Z

    :cond_1
    return-void
.end method

.method public d(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/b/a/ak;->d()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/b/a/ak;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iput-wide p1, p0, Lcom/b/a/ak;->c:J

    const/4 v2, 0x2

    iput v2, p0, Lcom/b/a/ak;->d:I

    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/b/a/ak;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/b/a/ak;->e(J)Z

    return-void
.end method

.method e(J)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/b/a/ak;->d:I

    if-nez v0, :cond_0

    iput v2, p0, Lcom/b/a/ak;->d:I

    iget-wide v3, p0, Lcom/b/a/ak;->c:J

    cmp-long v0, v3, v6

    if-gez v0, :cond_1

    iput-wide p1, p0, Lcom/b/a/ak;->b:J

    :cond_0
    :goto_0
    iget v0, p0, Lcom/b/a/ak;->d:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    return v1

    :cond_1
    iget-wide v3, p0, Lcom/b/a/ak;->c:J

    sub-long v3, p1, v3

    iput-wide v3, p0, Lcom/b/a/ak;->b:J

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/b/a/ak;->c:J

    goto :goto_0

    :pswitch_0
    iget-wide v3, p0, Lcom/b/a/ak;->x:J

    cmp-long v0, v3, v6

    if-lez v0, :cond_3

    iget-wide v3, p0, Lcom/b/a/ak;->b:J

    sub-long v3, p1, v3

    long-to-float v0, v3

    iget-wide v3, p0, Lcom/b/a/ak;->x:J

    long-to-float v3, v3

    div-float v3, v0, v3

    :goto_2
    cmpl-float v0, v3, v5

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/b/a/ak;->r:I

    iget v4, p0, Lcom/b/a/ak;->A:I

    if-lt v0, v4, :cond_2

    iget v0, p0, Lcom/b/a/ak;->A:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/b/a/ak;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/b/a/ak;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v1

    :goto_3
    if-ge v4, v6, :cond_4

    iget-object v0, p0, Lcom/b/a/ak;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b;

    invoke-interface {v0, p0}, Lcom/b/a/b;->c(Lcom/b/a/a;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/b/a/ak;->B:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/b/a/ak;->q:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/b/a/ak;->q:Z

    :cond_5
    iget v0, p0, Lcom/b/a/ak;->r:I

    float-to-int v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/b/a/ak;->r:I

    rem-float v0, v3, v5

    iget-wide v2, p0, Lcom/b/a/ak;->b:J

    iget-wide v6, p0, Lcom/b/a/ak;->x:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/b/a/ak;->b:J

    :goto_5
    iget-boolean v2, p0, Lcom/b/a/ak;->q:Z

    if-eqz v2, :cond_6

    sub-float v0, v5, v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/b/a/ak;->a(F)V

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v2

    goto :goto_5

    :cond_9
    move v0, v3

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public f()Lcom/b/a/ak;
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/b/a/a;->c()Lcom/b/a/a;

    move-result-object v0

    check-cast v0, Lcom/b/a/ak;

    iget-object v2, p0, Lcom/b/a/ak;->D:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/b/a/ak;->D:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/b/a/ak;->D:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v5, v0, Lcom/b/a/ak;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/b/a/ak;->c:J

    iput-boolean v1, v0, Lcom/b/a/ak;->q:Z

    iput v1, v0, Lcom/b/a/ak;->r:I

    iput-boolean v1, v0, Lcom/b/a/ak;->e:Z

    iput v1, v0, Lcom/b/a/ak;->d:I

    iput-boolean v1, v0, Lcom/b/a/ak;->t:Z

    iget-object v2, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    if-eqz v2, :cond_1

    array-length v3, v2

    new-array v4, v3, [Lcom/b/a/ag;

    iput-object v4, v0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lcom/b/a/ak;->g:Ljava/util/HashMap;

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/b/a/ag;->a()Lcom/b/a/ag;

    move-result-object v4

    iget-object v5, v0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    aput-object v4, v5, v1

    iget-object v5, v0, Lcom/b/a/ak;->g:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/b/a/ag;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public g()J
    .locals 4

    iget-boolean v0, p0, Lcom/b/a/ak;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/b/a/ak;->d:I

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/b/a/ak;->b:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/ak;->f:[Lcom/b/a/ag;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/b/a/ag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
