.class Lcom/c/a/b/a/a/g;
.super Lcom/c/a/b/a/a/f;


# instance fields
.field final synthetic d:Lcom/c/a/b/a/a/d;


# direct methods
.method private constructor <init>(Lcom/c/a/b/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/b/a/a/g;->d:Lcom/c/a/b/a/a/d;

    invoke-direct {p0, p1}, Lcom/c/a/b/a/a/f;-><init>(Lcom/c/a/b/a/a/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/b/a/a/d;Lcom/c/a/b/a/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/b/a/a/g;-><init>(Lcom/c/a/b/a/a/d;)V

    return-void
.end method


# virtual methods
.method a()Lcom/c/a/b/a/a/h;
    .locals 1

    iget-object v0, p0, Lcom/c/a/b/a/a/g;->d:Lcom/c/a/b/a/a/d;

    iget-object v0, v0, Lcom/c/a/b/a/a/d;->a:Lcom/c/a/b/a/a/h;

    return-object v0
.end method

.method a(Lcom/c/a/b/a/a/h;)Lcom/c/a/b/a/a/h;
    .locals 1

    iget-object v0, p1, Lcom/c/a/b/a/a/h;->c:Lcom/c/a/b/a/a/h;

    return-object v0
.end method
