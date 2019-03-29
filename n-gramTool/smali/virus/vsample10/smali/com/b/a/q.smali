.class public final Lcom/b/a/q;
.super Lcom/b/a/ak;


# static fields
.field private static final h:Ljava/util/Map;


# instance fields
.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/String;

.field private k:Lcom/b/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "alpha"

    sget-object v2, Lcom/b/a/r;->a:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "pivotX"

    sget-object v2, Lcom/b/a/r;->b:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "pivotY"

    sget-object v2, Lcom/b/a/r;->c:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "translationX"

    sget-object v2, Lcom/b/a/r;->d:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "translationY"

    sget-object v2, Lcom/b/a/r;->e:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "rotation"

    sget-object v2, Lcom/b/a/r;->f:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "rotationX"

    sget-object v2, Lcom/b/a/r;->g:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "rotationY"

    sget-object v2, Lcom/b/a/r;->h:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "scaleX"

    sget-object v2, Lcom/b/a/r;->i:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "scaleY"

    sget-object v2, Lcom/b/a/r;->j:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "scrollX"

    sget-object v2, Lcom/b/a/r;->k:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "scrollY"

    sget-object v2, Lcom/b/a/r;->l:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "x"

    sget-object v2, Lcom/b/a/r;->m:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    const-string v1, "y"

    sget-object v2, Lcom/b/a/r;->n:Lcom/b/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/ak;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/ak;-><init>()V

    iput-object p1, p0, Lcom/b/a/q;->i:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/b/a/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/b/a/q;
    .locals 1

    new-instance v0, Lcom/b/a/q;

    invoke-direct {v0, p0, p1}, Lcom/b/a/q;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/b/a/q;->a([F)V

    return-object v0
.end method


# virtual methods
.method public synthetic a(J)Lcom/b/a/a;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/b/a/q;->b(J)Lcom/b/a/q;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/b/a/ak;->a()V

    return-void
.end method

.method a(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/b/a/ak;->a(F)V

    iget-object v0, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/b/a/q;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/b/a/ag;->b(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/b/b/c;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/b/a/ag;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/b/a/ag;->a(Lcom/b/b/c;)V

    iget-object v2, p0, Lcom/b/a/q;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/q;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/b/a/q;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/b/a/q;->k:Lcom/b/b/c;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/b/b/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/q;->j:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/b/a/q;->k:Lcom/b/b/c;

    iput-boolean v3, p0, Lcom/b/a/q;->e:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/b/a/ag;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/b/a/ag;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/q;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/q;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lcom/b/a/q;->j:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/b/a/q;->e:Z

    return-void
.end method

.method public varargs a([F)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/b/a/q;->k:Lcom/b/b/c;

    if-eqz v0, :cond_1

    new-array v0, v1, [Lcom/b/a/ag;

    iget-object v1, p0, Lcom/b/a/q;->k:Lcom/b/b/c;

    invoke-static {v1, p1}, Lcom/b/a/ag;->a(Lcom/b/b/c;[F)Lcom/b/a/ag;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/b/a/q;->a([Lcom/b/a/ag;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Lcom/b/a/ag;

    iget-object v1, p0, Lcom/b/a/q;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/b/a/ag;->a(Ljava/lang/String;[F)Lcom/b/a/ag;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/b/a/q;->a([Lcom/b/a/ag;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/b/a/ak;->a([F)V

    goto :goto_0
.end method

.method public b(J)Lcom/b/a/q;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/b/a/ak;->c(J)Lcom/b/a/ak;

    return-object p0
.end method

.method public synthetic c()Lcom/b/a/a;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/q;->e()Lcom/b/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(J)Lcom/b/a/ak;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/b/a/q;->b(J)Lcom/b/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/q;->e()Lcom/b/a/q;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 4

    iget-boolean v0, p0, Lcom/b/a/q;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/q;->k:Lcom/b/b/c;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/b/c/a/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/q;->i:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/b/a/q;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/b/a/q;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/b/a/q;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/b/c;

    invoke-virtual {p0, v0}, Lcom/b/a/q;->a(Lcom/b/b/c;)V

    :cond_0
    iget-object v0, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/b/a/q;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/b/a/ag;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/b/a/ak;->d()V

    :cond_2
    return-void
.end method

.method public e()Lcom/b/a/q;
    .locals 1

    invoke-super {p0}, Lcom/b/a/ak;->f()Lcom/b/a/ak;

    move-result-object v0

    check-cast v0, Lcom/b/a/q;

    return-object v0
.end method

.method public synthetic f()Lcom/b/a/ak;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/q;->e()Lcom/b/a/q;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/q;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/q;->f:[Lcom/b/a/ag;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/b/a/ag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
