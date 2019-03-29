.class public final Lcom/upay/billing/engine/TelephonyUtil$SimInfo;
.super Ljava/lang/Object;


# instance fields
.field public iccid:Ljava/lang/String;

.field public imsi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIccid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/upay/billing/engine/TelephonyUtil;->toNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->iccid:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/upay/billing/engine/TelephonyUtil;->toNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/TelephonyUtil$SimInfo;->imsi:Ljava/lang/String;

    return-void
.end method
