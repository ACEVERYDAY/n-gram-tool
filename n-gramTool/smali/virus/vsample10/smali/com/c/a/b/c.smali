.class final Lcom/c/a/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/c/a/b/e/a;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/c/a/b/c/a;

.field private final f:Lcom/c/a/b/f/a;

.field private final g:Lcom/c/a/b/m;

.field private final h:Lcom/c/a/b/a/g;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/c/a/b/o;Lcom/c/a/b/m;Lcom/c/a/b/a/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/b/c;->a:Landroid/graphics/Bitmap;

    iget-object v0, p2, Lcom/c/a/b/o;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/c/a/b/c;->b:Ljava/lang/String;

    iget-object v0, p2, Lcom/c/a/b/o;->c:Lcom/c/a/b/e/a;

    iput-object v0, p0, Lcom/c/a/b/c;->c:Lcom/c/a/b/e/a;

    iget-object v0, p2, Lcom/c/a/b/o;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/c/a/b/c;->d:Ljava/lang/String;

    iget-object v0, p2, Lcom/c/a/b/o;->e:Lcom/c/a/b/d;

    invoke-virtual {v0}, Lcom/c/a/b/d;->q()Lcom/c/a/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/c;->e:Lcom/c/a/b/c/a;

    iget-object v0, p2, Lcom/c/a/b/o;->f:Lcom/c/a/b/f/a;

    iput-object v0, p0, Lcom/c/a/b/c;->f:Lcom/c/a/b/f/a;

    iput-object p3, p0, Lcom/c/a/b/c;->g:Lcom/c/a/b/m;

    iput-object p4, p0, Lcom/c/a/b/c;->h:Lcom/c/a/b/a/g;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/c/a/b/c;->g:Lcom/c/a/b/m;

    iget-object v1, p0, Lcom/c/a/b/c;->c:Lcom/c/a/b/e/a;

    invoke-virtual {v0, v1}, Lcom/c/a/b/m;->a(Lcom/c/a/b/e/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/b/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/c/a/b/c;->c:Lcom/c/a/b/e/a;

    invoke-interface {v0}, Lcom/c/a/b/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/c/a/b/c;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/c/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/c/a/b/c;->f:Lcom/c/a/b/f/a;

    iget-object v1, p0, Lcom/c/a/b/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/c/a/b/c;->c:Lcom/c/a/b/e/a;

    invoke-interface {v2}, Lcom/c/a/b/e/a;->d()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/c/a/b/f/a;->b(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/c/a/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/c/a/b/c;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/c/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/c/a/b/c;->f:Lcom/c/a/b/f/a;

    iget-object v1, p0, Lcom/c/a/b/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/c/a/b/c;->c:Lcom/c/a/b/e/a;

    invoke-interface {v2}, Lcom/c/a/b/e/a;->d()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/c/a/b/f/a;->b(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/c/a/b/c;->h:Lcom/c/a/b/a/g;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/c/a/b/c;->d:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/c/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/c/a/b/c;->e:Lcom/c/a/b/c/a;

    iget-object v1, p0, Lcom/c/a/b/c;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/c/a/b/c;->c:Lcom/c/a/b/e/a;

    iget-object v3, p0, Lcom/c/a/b/c;->h:Lcom/c/a/b/a/g;

    invoke-interface {v0, v1, v2, v3}, Lcom/c/a/b/c/a;->a(Landroid/graphics/Bitmap;Lcom/c/a/b/e/a;Lcom/c/a/b/a/g;)V

    iget-object v0, p0, Lcom/c/a/b/c;->g:Lcom/c/a/b/m;

    iget-object v1, p0, Lcom/c/a/b/c;->c:Lcom/c/a/b/e/a;

    invoke-virtual {v0, v1}, Lcom/c/a/b/m;->b(Lcom/c/a/b/e/a;)V

    iget-object v0, p0, Lcom/c/a/b/c;->f:Lcom/c/a/b/f/a;

    iget-object v1, p0, Lcom/c/a/b/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/c/a/b/c;->c:Lcom/c/a/b/e/a;

    invoke-interface {v2}, Lcom/c/a/b/e/a;->d()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/c/a/b/c;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/c/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
