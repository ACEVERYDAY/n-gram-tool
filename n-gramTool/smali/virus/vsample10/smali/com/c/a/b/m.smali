.class Lcom/c/a/b/m;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/c/a/b/h;

.field private b:Ljava/util/concurrent/Executor;

.field private c:Ljava/util/concurrent/Executor;

.field private d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/c/a/b/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/m;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/b/m;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/c/a/b/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/c/a/b/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/c/a/b/m;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/c/a/b/m;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/c/a/b/m;->a:Lcom/c/a/b/h;

    iget-object v0, p1, Lcom/c/a/b/h;->g:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/c/a/b/m;->b:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Lcom/c/a/b/h;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/c/a/b/m;->c:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/c/a/b/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/m;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/c/a/b/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/b/m;->e()V

    return-void
.end method

.method static synthetic b(Lcom/c/a/b/m;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/m;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic c(Lcom/c/a/b/m;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/m;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/m;->a:Lcom/c/a/b/h;

    iget-boolean v0, v0, Lcom/c/a/b/h;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/b/m;->b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/c/a/b/m;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/m;->b:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Lcom/c/a/b/m;->a:Lcom/c/a/b/h;

    iget-boolean v0, v0, Lcom/c/a/b/h;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/c/a/b/m;->c:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/c/a/b/m;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/m;->c:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method

.method private f()Ljava/util/concurrent/Executor;
    .locals 3

    iget-object v0, p0, Lcom/c/a/b/m;->a:Lcom/c/a/b/h;

    iget v0, v0, Lcom/c/a/b/h;->k:I

    iget-object v1, p0, Lcom/c/a/b/m;->a:Lcom/c/a/b/h;

    iget v1, v1, Lcom/c/a/b/h;->l:I

    iget-object v2, p0, Lcom/c/a/b/m;->a:Lcom/c/a/b/h;

    iget-object v2, v2, Lcom/c/a/b/h;->m:Lcom/c/a/b/a/h;

    invoke-static {v0, v1, v2}, Lcom/c/a/b/a;->a(IILcom/c/a/b/a/h;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/c/a/b/e/a;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/m;->e:Ljava/util/Map;

    invoke-interface {p1}, Lcom/c/a/b/e/a;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/m;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v1, p0, Lcom/c/a/b/m;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method a(Lcom/c/a/b/e/a;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/m;->e:Ljava/util/Map;

    invoke-interface {p1}, Lcom/c/a/b/e/a;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lcom/c/a/b/p;)V
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/m;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/c/a/b/n;

    invoke-direct {v1, p0, p1}, Lcom/c/a/b/n;-><init>(Lcom/c/a/b/m;Lcom/c/a/b/p;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/c/a/b/u;)V
    .locals 1

    invoke-direct {p0}, Lcom/c/a/b/m;->e()V

    iget-object v0, p0, Lcom/c/a/b/m;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/m;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/m;->j:Ljava/lang/Object;

    return-object v0
.end method

.method b(Lcom/c/a/b/e/a;)V
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/m;->e:Ljava/util/Map;

    invoke-interface {p1}, Lcom/c/a/b/e/a;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method c()Z
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/m;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
