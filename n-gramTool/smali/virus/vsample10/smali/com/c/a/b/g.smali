.class public Lcom/c/a/b/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile e:Lcom/c/a/b/g;


# instance fields
.field private b:Lcom/c/a/b/h;

.field private c:Lcom/c/a/b/m;

.field private final d:Lcom/c/a/b/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/c/a/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/c/a/b/f/c;

    invoke-direct {v0}, Lcom/c/a/b/f/c;-><init>()V

    iput-object v0, p0, Lcom/c/a/b/g;->d:Lcom/c/a/b/f/a;

    return-void
.end method

.method private static a(Lcom/c/a/b/d;)Landroid/os/Handler;
    .locals 3

    invoke-virtual {p0}, Lcom/c/a/b/d;->r()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/b/d;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method

.method public static a()Lcom/c/a/b/g;
    .locals 2

    sget-object v0, Lcom/c/a/b/g;->e:Lcom/c/a/b/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/c/a/b/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/c/a/b/g;->e:Lcom/c/a/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/c/a/b/g;

    invoke-direct {v0}, Lcom/c/a/b/g;-><init>()V

    sput-object v0, Lcom/c/a/b/g;->e:Lcom/c/a/b/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/c/a/b/g;->e:Lcom/c/a/b/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/g;->b:Lcom/c/a/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/c/a/b/h;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/c/a/b/g;->b:Lcom/c/a/b/h;

    if-nez v0, :cond_1

    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/c/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/c/a/b/m;

    invoke-direct {v0, p1}, Lcom/c/a/b/m;-><init>(Lcom/c/a/b/h;)V

    iput-object v0, p0, Lcom/c/a/b/g;->c:Lcom/c/a/b/m;

    iput-object p1, p0, Lcom/c/a/b/g;->b:Lcom/c/a/b/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/c/a/c/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V
    .locals 6

    const/4 v4, 0x0

    new-instance v2, Lcom/c/a/b/e/b;

    invoke-direct {v2, p2}, Lcom/c/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/c/a/b/g;->a(Ljava/lang/String;Lcom/c/a/b/e/a;Lcom/c/a/b/d;Lcom/c/a/b/f/a;Lcom/c/a/b/f/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/c/a/b/e/a;Lcom/c/a/b/d;Lcom/c/a/b/f/a;Lcom/c/a/b/f/b;)V
    .locals 10

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/c/a/b/g;->b()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_a

    iget-object v6, p0, Lcom/c/a/b/g;->d:Lcom/c/a/b/f/a;

    :goto_0
    if-nez p3, :cond_9

    iget-object v0, p0, Lcom/c/a/b/g;->b:Lcom/c/a/b/h;

    iget-object v5, v0, Lcom/c/a/b/h;->r:Lcom/c/a/b/d;

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/b/g;->c:Lcom/c/a/b/m;

    invoke-virtual {v0, p2}, Lcom/c/a/b/m;->b(Lcom/c/a/b/e/a;)V

    invoke-interface {p2}, Lcom/c/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lcom/c/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v5}, Lcom/c/a/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/b/g;->b:Lcom/c/a/b/h;

    iget-object v0, v0, Lcom/c/a/b/h;->a:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/c/a/b/d;->b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/c/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    :goto_2
    invoke-interface {p2}, Lcom/c/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0, v1}, Lcom/c/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_3
    return-void

    :cond_1
    invoke-interface {p2, v1}, Lcom/c/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/c/a/b/g;->b:Lcom/c/a/b/h;

    invoke-virtual {v0}, Lcom/c/a/b/h;->a()Lcom/c/a/b/a/f;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/c/a/c/a;->a(Lcom/c/a/b/e/a;Lcom/c/a/b/a/f;)Lcom/c/a/b/a/f;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/c/a/c/f;->a(Ljava/lang/String;Lcom/c/a/b/a/f;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/c/a/b/g;->c:Lcom/c/a/b/m;

    invoke-virtual {v0, p2, v4}, Lcom/c/a/b/m;->a(Lcom/c/a/b/e/a;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/c/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lcom/c/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcom/c/a/b/g;->b:Lcom/c/a/b/h;

    iget-object v0, v0, Lcom/c/a/b/h;->n:Lcom/c/a/a/b/a;

    invoke-interface {v0, v4}, Lcom/c/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Load image from memory cache [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/c/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/c/a/b/d;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/c/a/b/o;

    iget-object v1, p0, Lcom/c/a/b/g;->c:Lcom/c/a/b/m;

    invoke-virtual {v1, p1}, Lcom/c/a/b/m;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/c/a/b/o;-><init>(Ljava/lang/String;Lcom/c/a/b/e/a;Lcom/c/a/b/a/f;Ljava/lang/String;Lcom/c/a/b/d;Lcom/c/a/b/f/a;Lcom/c/a/b/f/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lcom/c/a/b/u;

    iget-object v2, p0, Lcom/c/a/b/g;->c:Lcom/c/a/b/m;

    invoke-static {v5}, Lcom/c/a/b/g;->a(Lcom/c/a/b/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v9, v0, v3}, Lcom/c/a/b/u;-><init>(Lcom/c/a/b/m;Landroid/graphics/Bitmap;Lcom/c/a/b/o;Landroid/os/Handler;)V

    invoke-virtual {v5}, Lcom/c/a/b/d;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/c/a/b/u;->run()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/c/a/b/g;->c:Lcom/c/a/b/m;

    invoke-virtual {v0, v1}, Lcom/c/a/b/m;->a(Lcom/c/a/b/u;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/c/a/b/d;->q()Lcom/c/a/b/c/a;

    move-result-object v0

    sget-object v1, Lcom/c/a/b/a/g;->c:Lcom/c/a/b/a/g;

    invoke-interface {v0, v9, p2, v1}, Lcom/c/a/b/c/a;->a(Landroid/graphics/Bitmap;Lcom/c/a/b/e/a;Lcom/c/a/b/a/g;)V

    invoke-interface {p2}, Lcom/c/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0, v9}, Lcom/c/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/c/a/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/c/a/b/g;->b:Lcom/c/a/b/h;

    iget-object v0, v0, Lcom/c/a/b/h;->a:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/c/a/b/d;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/c/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    :cond_6
    :goto_4
    new-instance v0, Lcom/c/a/b/o;

    iget-object v1, p0, Lcom/c/a/b/g;->c:Lcom/c/a/b/m;

    invoke-virtual {v1, p1}, Lcom/c/a/b/m;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/c/a/b/o;-><init>(Ljava/lang/String;Lcom/c/a/b/e/a;Lcom/c/a/b/a/f;Ljava/lang/String;Lcom/c/a/b/d;Lcom/c/a/b/f/a;Lcom/c/a/b/f/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lcom/c/a/b/p;

    iget-object v2, p0, Lcom/c/a/b/g;->c:Lcom/c/a/b/m;

    invoke-static {v5}, Lcom/c/a/b/g;->a(Lcom/c/a/b/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/c/a/b/p;-><init>(Lcom/c/a/b/m;Lcom/c/a/b/o;Landroid/os/Handler;)V

    invoke-virtual {v5}, Lcom/c/a/b/d;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/c/a/b/p;->run()V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v5}, Lcom/c/a/b/d;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2, v1}, Lcom/c/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/c/a/b/g;->c:Lcom/c/a/b/m;

    invoke-virtual {v0, v1}, Lcom/c/a/b/m;->a(Lcom/c/a/b/p;)V

    goto/16 :goto_3

    :cond_9
    move-object v5, p3

    goto/16 :goto_1

    :cond_a
    move-object v6, p4

    goto/16 :goto_0
.end method
