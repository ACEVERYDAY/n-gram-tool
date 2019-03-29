.class public final enum Lcom/upay/billing/bean/Op;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/upay/billing/bean/Op;

.field public static final enum CMCC:Lcom/upay/billing/bean/Op;

.field public static final enum NONE:Lcom/upay/billing/bean/Op;

.field public static final enum TELECOM:Lcom/upay/billing/bean/Op;

.field public static final enum UNICOM:Lcom/upay/billing/bean/Op;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/upay/billing/bean/Op;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/upay/billing/bean/Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    new-instance v0, Lcom/upay/billing/bean/Op;

    const-string v1, "CMCC"

    invoke-direct {v0, v1, v3}, Lcom/upay/billing/bean/Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/bean/Op;->CMCC:Lcom/upay/billing/bean/Op;

    new-instance v0, Lcom/upay/billing/bean/Op;

    const-string v1, "UNICOM"

    invoke-direct {v0, v1, v4}, Lcom/upay/billing/bean/Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/bean/Op;->UNICOM:Lcom/upay/billing/bean/Op;

    new-instance v0, Lcom/upay/billing/bean/Op;

    const-string v1, "TELECOM"

    invoke-direct {v0, v1, v5}, Lcom/upay/billing/bean/Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/bean/Op;->TELECOM:Lcom/upay/billing/bean/Op;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/upay/billing/bean/Op;

    sget-object v1, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upay/billing/bean/Op;->CMCC:Lcom/upay/billing/bean/Op;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upay/billing/bean/Op;->UNICOM:Lcom/upay/billing/bean/Op;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upay/billing/bean/Op;->TELECOM:Lcom/upay/billing/bean/Op;

    aput-object v1, v0, v5

    sput-object v0, Lcom/upay/billing/bean/Op;->$VALUES:[Lcom/upay/billing/bean/Op;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upay/billing/bean/Op;
    .locals 1

    const-class v0, Lcom/upay/billing/bean/Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/Op;

    return-object v0
.end method

.method public static values()[Lcom/upay/billing/bean/Op;
    .locals 1

    sget-object v0, Lcom/upay/billing/bean/Op;->$VALUES:[Lcom/upay/billing/bean/Op;

    invoke-virtual {v0}, [Lcom/upay/billing/bean/Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upay/billing/bean/Op;

    return-object v0
.end method
