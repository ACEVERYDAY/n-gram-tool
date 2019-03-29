.class public abstract Lcom/upay/billing/Engine;
.super Ljava/lang/Object;


# instance fields
.field public core:Lcom/upay/billing/UpayCore;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOp()Lcom/upay/billing/bean/Op;
.end method

.method public abstract getPriceType()Lcom/upay/billing/bean/PriceType;
.end method

.method public abstract hasCustomConfirmUi()Z
.end method

.method public init(Lcom/upay/billing/UpayCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/Engine;->core:Lcom/upay/billing/UpayCore;

    iput-object p2, p0, Lcom/upay/billing/Engine;->key:Ljava/lang/String;

    return-void
.end method

.method public abstract isAvailable(Lcom/upay/billing/bean/Op;ZZZZ)Z
.end method

.method public isComposable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract pay(Lcom/upay/billing/bean/Trade;Ljava/util/List;)V
.end method
