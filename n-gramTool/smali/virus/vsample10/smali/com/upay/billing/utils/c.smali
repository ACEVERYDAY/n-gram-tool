.class Lcom/upay/billing/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field index:I

.field final synthetic kI:Lcom/upay/billing/utils/Json;


# direct methods
.method constructor <init>(Lcom/upay/billing/utils/Json;)V
    .locals 1

    iput-object p1, p0, Lcom/upay/billing/utils/c;->kI:Lcom/upay/billing/utils/Json;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/upay/billing/utils/c;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/upay/billing/utils/c;->index:I

    iget-object v1, p0, Lcom/upay/billing/utils/c;->kI:Lcom/upay/billing/utils/Json;

    invoke-virtual {v1}, Lcom/upay/billing/utils/Json;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/upay/billing/utils/Json;
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/utils/c;->kI:Lcom/upay/billing/utils/Json;

    iget v1, p0, Lcom/upay/billing/utils/c;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/upay/billing/utils/c;->index:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/upay/billing/utils/Json;->getAt(ILcom/upay/billing/utils/Json;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/upay/billing/utils/c;->m()Lcom/upay/billing/utils/Json;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
