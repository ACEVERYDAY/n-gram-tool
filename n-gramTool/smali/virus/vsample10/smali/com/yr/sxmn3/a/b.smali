.class Lcom/yr/sxmn3/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/b;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/a/a;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/b;->a:Lcom/yr/sxmn3/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/a/b;->a:Lcom/yr/sxmn3/a/a;

    invoke-static {v0}, Lcom/yr/sxmn3/a/a;->a(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yr/sxmn3/a/c;->a(Lcom/b/a/a;)V

    return-void
.end method

.method public b(Lcom/b/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/a/b;->a:Lcom/yr/sxmn3/a/a;

    invoke-static {v0}, Lcom/yr/sxmn3/a/a;->a(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yr/sxmn3/a/c;->c(Lcom/b/a/a;)V

    return-void
.end method

.method public c(Lcom/b/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/a/b;->a:Lcom/yr/sxmn3/a/a;

    invoke-static {v0}, Lcom/yr/sxmn3/a/a;->a(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yr/sxmn3/a/c;->b(Lcom/b/a/a;)V

    return-void
.end method
