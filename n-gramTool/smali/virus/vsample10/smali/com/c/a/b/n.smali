.class Lcom/c/a/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/c/a/b/p;

.field final synthetic b:Lcom/c/a/b/m;


# direct methods
.method constructor <init>(Lcom/c/a/b/m;Lcom/c/a/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/b/n;->b:Lcom/c/a/b/m;

    iput-object p2, p0, Lcom/c/a/b/n;->a:Lcom/c/a/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/n;->b:Lcom/c/a/b/m;

    iget-object v0, v0, Lcom/c/a/b/m;->a:Lcom/c/a/b/h;

    iget-object v0, v0, Lcom/c/a/b/h;->o:Lcom/c/a/a/a/b;

    iget-object v1, p0, Lcom/c/a/b/n;->a:Lcom/c/a/b/p;

    invoke-virtual {v1}, Lcom/c/a/b/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/c/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/c/a/b/n;->b:Lcom/c/a/b/m;

    invoke-static {v1}, Lcom/c/a/b/m;->a(Lcom/c/a/b/m;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/b/n;->b:Lcom/c/a/b/m;

    invoke-static {v0}, Lcom/c/a/b/m;->b(Lcom/c/a/b/m;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/b/n;->a:Lcom/c/a/b/p;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/c/a/b/n;->b:Lcom/c/a/b/m;

    invoke-static {v0}, Lcom/c/a/b/m;->c(Lcom/c/a/b/m;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/b/n;->a:Lcom/c/a/b/p;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
