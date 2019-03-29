.class Lcom/yr/sxmn3/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yr/sxmn3/a/c;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/a/d;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/g;->a:Lcom/yr/sxmn3/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/a/g;->a:Lcom/yr/sxmn3/a/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yr/sxmn3/a/d;->b(Lcom/yr/sxmn3/a/d;Z)V

    return-void
.end method

.method public b(Lcom/b/a/a;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/b/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/a/g;->a:Lcom/yr/sxmn3/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yr/sxmn3/a/d;->b(Lcom/yr/sxmn3/a/d;Z)V

    iget-object v0, p0, Lcom/yr/sxmn3/a/g;->a:Lcom/yr/sxmn3/a/d;

    invoke-virtual {v0}, Lcom/yr/sxmn3/a/d;->c()V

    return-void
.end method
