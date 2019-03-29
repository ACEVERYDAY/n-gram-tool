.class final Lcom/upay/billing/engine/UpayCoreImpl$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl$18;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 5

    const/4 v0, 0x0

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_1

    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    aget v4, p2, v1

    if-eq v3, v4, :cond_2

    sub-int v0, v4, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
