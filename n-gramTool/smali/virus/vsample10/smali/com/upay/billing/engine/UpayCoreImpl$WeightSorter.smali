.class Lcom/upay/billing/engine/UpayCoreImpl$WeightSorter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field price:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/upay/billing/engine/UpayCoreImpl$WeightSorter;->price:I

    iput p1, p0, Lcom/upay/billing/engine/UpayCoreImpl$WeightSorter;->price:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, [Lcom/upay/billing/bean/Cmd;

    check-cast p2, [Lcom/upay/billing/bean/Cmd;

    invoke-virtual {p0, p1, p2}, Lcom/upay/billing/engine/UpayCoreImpl$WeightSorter;->compare([Lcom/upay/billing/bean/Cmd;[Lcom/upay/billing/bean/Cmd;)I

    move-result v0

    return v0
.end method

.method public compare([Lcom/upay/billing/bean/Cmd;[Lcom/upay/billing/bean/Cmd;)I
    .locals 10

    const/16 v9, 0x7c

    const/4 v1, 0x0

    array-length v4, p1

    array-length v5, p2

    array-length v6, p1

    move v0, v1

    move v3, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6500(Lcom/upay/billing/bean/Cmd;)I

    move-result v7

    iget v2, v2, Lcom/upay/billing/bean/Cmd;->price:I

    mul-int/2addr v2, v7

    iget v7, p0, Lcom/upay/billing/engine/UpayCoreImpl$WeightSorter;->price:I

    div-int/2addr v2, v7

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v6, p2

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, p2, v0

    invoke-static {v7}, Lcom/upay/billing/engine/UpayCoreImpl;->access$6500(Lcom/upay/billing/bean/Cmd;)I

    move-result v8

    iget v7, v7, Lcom/upay/billing/bean/Cmd;->price:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/upay/billing/engine/UpayCoreImpl$WeightSorter;->price:I

    div-int/2addr v7, v8

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v4, 0x5

    sub-int v0, v3, v0

    mul-int/lit8 v3, v5, 0x5

    sub-int/2addr v2, v3

    sub-int v0, v2, v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_2
    return v0

    :cond_3
    sub-int v0, v4, v5

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_3
    if-ge v1, v4, :cond_4

    aget-object v0, p2, v1

    iget v0, v0, Lcom/upay/billing/bean/Cmd;->price:I

    aget-object v5, p1, v1

    iget v5, v5, Lcom/upay/billing/bean/Cmd;->price:I

    sub-int/2addr v0, v5

    if-nez v0, :cond_2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    aget-object v5, p2, v1

    iget-object v5, v5, Lcom/upay/billing/bean/Cmd;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method
