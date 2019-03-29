.class Lcom/c/a/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/c/a/b/p;


# direct methods
.method constructor <init>(Lcom/c/a/b/p;II)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/b/q;->c:Lcom/c/a/b/p;

    iput p2, p0, Lcom/c/a/b/q;->a:I

    iput p3, p0, Lcom/c/a/b/q;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/c/a/b/q;->c:Lcom/c/a/b/p;

    iget-object v0, v0, Lcom/c/a/b/p;->e:Lcom/c/a/b/f/b;

    iget-object v1, p0, Lcom/c/a/b/q;->c:Lcom/c/a/b/p;

    iget-object v1, v1, Lcom/c/a/b/p;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/c/a/b/q;->c:Lcom/c/a/b/p;

    iget-object v2, v2, Lcom/c/a/b/p;->b:Lcom/c/a/b/e/a;

    invoke-interface {v2}, Lcom/c/a/b/e/a;->d()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/c/a/b/q;->a:I

    iget v4, p0, Lcom/c/a/b/q;->b:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/c/a/b/f/b;->a(Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method
