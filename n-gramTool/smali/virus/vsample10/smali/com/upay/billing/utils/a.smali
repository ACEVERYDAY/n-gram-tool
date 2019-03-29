.class Lcom/upay/billing/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic kI:Lcom/upay/billing/utils/Json;


# direct methods
.method constructor <init>(Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/utils/a;->kI:Lcom/upay/billing/utils/Json;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/upay/billing/utils/b;

    invoke-direct {v0, p0}, Lcom/upay/billing/utils/b;-><init>(Lcom/upay/billing/utils/a;)V

    return-object v0
.end method
