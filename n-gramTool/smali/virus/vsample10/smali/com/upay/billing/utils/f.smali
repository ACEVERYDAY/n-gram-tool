.class public Lcom/upay/billing/utils/f;
.super Ljava/lang/Object;


# instance fields
.field public final kQ:Ljava/lang/String;

.field public final kR:Ljava/lang/String;

.field public final kS:Ljava/lang/Integer;

.field final synthetic kT:Lcom/upay/billing/utils/e;


# direct methods
.method constructor <init>(Lcom/upay/billing/utils/e;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/upay/billing/utils/f;-><init>(Lcom/upay/billing/utils/e;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/upay/billing/utils/e;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/utils/f;->kT:Lcom/upay/billing/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/upay/billing/utils/f;->kS:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/upay/billing/utils/f;->kQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/utils/f;->kR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/utils/f;->kS:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/utils/f;->kS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
