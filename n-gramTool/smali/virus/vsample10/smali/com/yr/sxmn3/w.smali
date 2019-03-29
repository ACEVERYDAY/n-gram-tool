.class final Lcom/yr/sxmn3/w;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/HomePageFragment;


# direct methods
.method private constructor <init>(Lcom/yr/sxmn3/HomePageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yr/sxmn3/HomePageFragment;Lcom/yr/sxmn3/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yr/sxmn3/w;-><init>(Lcom/yr/sxmn3/HomePageFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;Ljava/util/List;)V

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/yr/sxmn3/HomePageFragment;->b(Lcom/yr/sxmn3/HomePageFragment;Ljava/util/List;)V

    iget-object v1, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/yr/sxmn3/HomePageFragment;->c(Lcom/yr/sxmn3/HomePageFragment;Ljava/util/List;)V

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->a(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->b(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->b(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->b(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->c(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->b(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->e(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->b(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->f(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->b(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->g(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->b(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->h(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->i(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->i(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->i(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->j(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->i(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->k(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->i(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->l(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->i(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->m(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->i(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->n(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    :cond_1
    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->o(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->o(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->o(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->p(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->o(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->q(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->o(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->r(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->o(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->s(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    invoke-static {}, Lcom/c/a/b/g;->a()Lcom/c/a/b/g;

    move-result-object v1

    iget-object v0, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->o(Lcom/yr/sxmn3/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yr/sxmn3/m;

    invoke-virtual {v0}, Lcom/yr/sxmn3/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/HomePageFragment;->t(Lcom/yr/sxmn3/HomePageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yr/sxmn3/w;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v3}, Lcom/yr/sxmn3/HomePageFragment;->d(Lcom/yr/sxmn3/HomePageFragment;)Lcom/c/a/b/d;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/c/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/c/a/b/d;)V

    :cond_2
    return-void
.end method
