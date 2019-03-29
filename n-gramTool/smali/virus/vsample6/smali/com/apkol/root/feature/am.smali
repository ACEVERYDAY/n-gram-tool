.class Lcom/apkol/root/feature/am;
.super Ljava/lang/Object;
.source "UninstallFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/apkol/root/feature/ag;


# direct methods
.method constructor <init>(Lcom/apkol/root/feature/ag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 327
    iget-object v0, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->c(Lcom/apkol/root/feature/ag;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->c(Lcom/apkol/root/feature/ag;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->c(Lcom/apkol/root/feature/ag;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->g(Lcom/apkol/root/feature/ag;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->g(Lcom/apkol/root/feature/ag;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :try_start_1
    iget-object v0, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->g(Lcom/apkol/root/feature/ag;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v0}, Lcom/apkol/root/feature/ag;->h(Lcom/apkol/root/feature/ag;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 344
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/utils/a/a;

    .line 345
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    iget-object v1, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v1}, Lcom/apkol/root/feature/ag;->i(Lcom/apkol/root/feature/ag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v1}, Lcom/apkol/root/feature/ag;->i(Lcom/apkol/root/feature/ag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apkol/root/b/b;

    .line 347
    invoke-virtual {v1}, Lcom/apkol/root/b/b;->h()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->h()Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 348
    if-eqz v4, :cond_4

    .line 349
    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/apkol/root/b/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 350
    invoke-virtual {v0}, Lcom/apkol/utils/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/apkol/root/b/b;->a(Ljava/lang/String;)V

    .line 351
    iget-object v4, p0, Lcom/apkol/root/feature/am;->a:Lcom/apkol/root/feature/ag;

    invoke-static {v4}, Lcom/apkol/root/feature/ag;->j(Lcom/apkol/root/feature/ag;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method
