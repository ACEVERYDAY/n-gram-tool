.class public Lcom/upay/billing/utils/e;
.super Ljava/lang/Object;


# instance fields
.field private kN:Ljava/lang/Boolean;

.field public kO:Lcom/upay/billing/utils/g;

.field public kP:Lcom/upay/billing/utils/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/upay/billing/utils/g;

    const-string v1, "sh"

    invoke-direct {v0, p0, v1}, Lcom/upay/billing/utils/g;-><init>(Lcom/upay/billing/utils/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/upay/billing/utils/e;->kO:Lcom/upay/billing/utils/g;

    new-instance v0, Lcom/upay/billing/utils/g;

    const-string v1, "su"

    invoke-direct {v0, p0, v1}, Lcom/upay/billing/utils/g;-><init>(Lcom/upay/billing/utils/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/upay/billing/utils/e;->kP:Lcom/upay/billing/utils/g;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/upay/billing/utils/e;->kN:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/utils/e;->kP:Lcom/upay/billing/utils/g;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/upay/billing/utils/g;->g(Ljava/lang/String;)Lcom/upay/billing/utils/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/upay/billing/utils/f;->kQ:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/upay/billing/utils/f;->kQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, v0, Lcom/upay/billing/utils/f;->kR:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/upay/billing/utils/f;->kR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Lcom/upay/billing/utils/f;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/utils/e;->kN:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/upay/billing/utils/e;->kN:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/upay/billing/utils/e;->a(Z)Z

    move-result v0

    return v0
.end method

.method public o()Lcom/upay/billing/utils/g;
    .locals 1

    invoke-virtual {p0}, Lcom/upay/billing/utils/e;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/utils/e;->kP:Lcom/upay/billing/utils/g;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/utils/e;->kO:Lcom/upay/billing/utils/g;

    goto :goto_0
.end method
