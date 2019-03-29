.class abstract Lcom/c/a/b/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/c/a/b/a/a/h;

.field b:Ljava/lang/Object;

.field final synthetic c:Lcom/c/a/b/a/a/d;

.field private d:Lcom/c/a/b/a/a/h;


# direct methods
.method constructor <init>(Lcom/c/a/b/a/a/d;)V
    .locals 2

    iput-object p1, p0, Lcom/c/a/b/a/a/f;->c:Lcom/c/a/b/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Lcom/c/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/c/a/b/a/a/f;->a()Lcom/c/a/b/a/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    iget-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/c/a/b/a/a/f;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    iget-object v0, v0, Lcom/c/a/b/a/a/h;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private b(Lcom/c/a/b/a/a/h;)Lcom/c/a/b/a/a/h;
    .locals 2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/c/a/b/a/a/f;->a(Lcom/c/a/b/a/a/h;)Lcom/c/a/b/a/a/h;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/c/a/b/a/a/h;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/c/a/b/a/a/f;->a()Lcom/c/a/b/a/a/h;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method abstract a()Lcom/c/a/b/a/a/h;
.end method

.method abstract a(Lcom/c/a/b/a/a/h;)Lcom/c/a/b/a/a/h;
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/a/a/f;->c:Lcom/c/a/b/a/a/d;

    iget-object v1, v0, Lcom/c/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    invoke-direct {p0, v0}, Lcom/c/a/b/a/a/f;->b(Lcom/c/a/b/a/a/h;)Lcom/c/a/b/a/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    iget-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/c/a/b/a/a/f;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    iget-object v0, v0, Lcom/c/a/b/a/a/h;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/c/a/b/a/a/f;->a:Lcom/c/a/b/a/a/h;

    iput-object v0, p0, Lcom/c/a/b/a/a/f;->d:Lcom/c/a/b/a/a/h;

    iget-object v0, p0, Lcom/c/a/b/a/a/f;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/c/a/b/a/a/f;->b()V

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/c/a/b/a/a/f;->d:Lcom/c/a/b/a/a/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/c/a/b/a/a/f;->d:Lcom/c/a/b/a/a/h;

    iget-object v1, p0, Lcom/c/a/b/a/a/f;->c:Lcom/c/a/b/a/a/d;

    iget-object v1, v1, Lcom/c/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, v0, Lcom/c/a/b/a/a/h;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/c/a/b/a/a/f;->c:Lcom/c/a/b/a/a/d;

    invoke-virtual {v2, v0}, Lcom/c/a/b/a/a/d;->a(Lcom/c/a/b/a/a/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
