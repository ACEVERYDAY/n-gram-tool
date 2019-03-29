.class public Lcom/c/a/b/a/a/c;
.super Lcom/c/a/b/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/b/a/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/c/a/b/a/a/d;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/c/a/b/a/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
