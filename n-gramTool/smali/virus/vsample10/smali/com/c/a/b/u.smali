.class final Lcom/c/a/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/c/a/b/m;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lcom/c/a/b/o;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/c/a/b/m;Landroid/graphics/Bitmap;Lcom/c/a/b/o;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/b/u;->a:Lcom/c/a/b/m;

    iput-object p2, p0, Lcom/c/a/b/u;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/c/a/b/u;->c:Lcom/c/a/b/o;

    iput-object p4, p0, Lcom/c/a/b/u;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "PostProcess image before displaying [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/c/a/b/u;->c:Lcom/c/a/b/o;

    iget-object v3, v3, Lcom/c/a/b/o;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/c/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/c/a/b/u;->c:Lcom/c/a/b/o;

    iget-object v0, v0, Lcom/c/a/b/o;->e:Lcom/c/a/b/d;

    invoke-virtual {v0}, Lcom/c/a/b/d;->p()Lcom/c/a/b/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/b/u;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/c/a/b/g/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/c/a/b/c;

    iget-object v2, p0, Lcom/c/a/b/u;->c:Lcom/c/a/b/o;

    iget-object v3, p0, Lcom/c/a/b/u;->a:Lcom/c/a/b/m;

    sget-object v4, Lcom/c/a/b/a/g;->c:Lcom/c/a/b/a/g;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/c/a/b/c;-><init>(Landroid/graphics/Bitmap;Lcom/c/a/b/o;Lcom/c/a/b/m;Lcom/c/a/b/a/g;)V

    iget-object v0, p0, Lcom/c/a/b/u;->c:Lcom/c/a/b/o;

    iget-object v0, v0, Lcom/c/a/b/o;->e:Lcom/c/a/b/d;

    invoke-virtual {v0}, Lcom/c/a/b/d;->s()Z

    move-result v0

    iget-object v2, p0, Lcom/c/a/b/u;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/c/a/b/u;->a:Lcom/c/a/b/m;

    invoke-static {v1, v0, v2, v3}, Lcom/c/a/b/p;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/c/a/b/m;)V

    return-void
.end method
