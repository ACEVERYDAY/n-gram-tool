.class public Lcom/b/a/g;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/b/a/d;

.field private b:Lcom/b/a/j;


# direct methods
.method constructor <init>(Lcom/b/a/d;Lcom/b/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/b/a/g;->a:Lcom/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/b/a/d;->b(Lcom/b/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/j;

    iput-object v0, p0, Lcom/b/a/g;->b:Lcom/b/a/j;

    iget-object v0, p0, Lcom/b/a/g;->b:Lcom/b/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/j;

    invoke-direct {v0, p2}, Lcom/b/a/j;-><init>(Lcom/b/a/a;)V

    iput-object v0, p0, Lcom/b/a/g;->b:Lcom/b/a/j;

    invoke-static {p1}, Lcom/b/a/d;->b(Lcom/b/a/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/g;->b:Lcom/b/a/j;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/b/a/d;->d(Lcom/b/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/g;->b:Lcom/b/a/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a;)Lcom/b/a/g;
    .locals 4

    iget-object v0, p0, Lcom/b/a/g;->a:Lcom/b/a/d;

    invoke-static {v0}, Lcom/b/a/d;->b(Lcom/b/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/b/a/j;

    invoke-direct {v0, p1}, Lcom/b/a/j;-><init>(Lcom/b/a/a;)V

    iget-object v1, p0, Lcom/b/a/g;->a:Lcom/b/a/d;

    invoke-static {v1}, Lcom/b/a/d;->b(Lcom/b/a/d;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/g;->a:Lcom/b/a/d;

    invoke-static {v1}, Lcom/b/a/d;->d(Lcom/b/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/b/a/h;

    iget-object v2, p0, Lcom/b/a/g;->b:Lcom/b/a/j;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/b/a/h;-><init>(Lcom/b/a/j;I)V

    invoke-virtual {v0, v1}, Lcom/b/a/j;->a(Lcom/b/a/h;)V

    return-object p0
.end method
