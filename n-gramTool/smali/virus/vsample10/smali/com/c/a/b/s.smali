.class Lcom/c/a/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/c/a/b/p;


# direct methods
.method constructor <init>(Lcom/c/a/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/b/s;->a:Lcom/c/a/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/c/a/b/s;->a:Lcom/c/a/b/p;

    iget-object v0, v0, Lcom/c/a/b/p;->d:Lcom/c/a/b/f/a;

    iget-object v1, p0, Lcom/c/a/b/s;->a:Lcom/c/a/b/p;

    iget-object v1, v1, Lcom/c/a/b/p;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/c/a/b/s;->a:Lcom/c/a/b/p;

    iget-object v2, v2, Lcom/c/a/b/p;->b:Lcom/c/a/b/e/a;

    invoke-interface {v2}, Lcom/c/a/b/e/a;->d()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/c/a/b/f/a;->b(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
