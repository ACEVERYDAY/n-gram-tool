.class final enum Lcom/upay/billing/engine/upay/Main$ExecType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/upay/billing/engine/upay/Main$ExecType;

.field public static final enum DEL:Lcom/upay/billing/engine/upay/Main$ExecType;

.field public static final enum FAIL:Lcom/upay/billing/engine/upay/Main$ExecType;

.field public static final enum HTTP:Lcom/upay/billing/engine/upay/Main$ExecType;

.field public static final enum MO:Lcom/upay/billing/engine/upay/Main$ExecType;

.field public static final enum MO_CALC:Lcom/upay/billing/engine/upay/Main$ExecType;

.field public static final enum MO_CHARGE:Lcom/upay/billing/engine/upay/Main$ExecType;

.field public static final enum SUCCESS:Lcom/upay/billing/engine/upay/Main$ExecType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/upay/billing/engine/upay/Main$ExecType;

    const-string v1, "DEL"

    invoke-direct {v0, v1, v3}, Lcom/upay/billing/engine/upay/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/upay/Main$ExecType;->DEL:Lcom/upay/billing/engine/upay/Main$ExecType;

    new-instance v0, Lcom/upay/billing/engine/upay/Main$ExecType;

    const-string v1, "MO"

    invoke-direct {v0, v1, v4}, Lcom/upay/billing/engine/upay/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/upay/Main$ExecType;->MO:Lcom/upay/billing/engine/upay/Main$ExecType;

    new-instance v0, Lcom/upay/billing/engine/upay/Main$ExecType;

    const-string v1, "MO_CHARGE"

    invoke-direct {v0, v1, v5}, Lcom/upay/billing/engine/upay/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/upay/Main$ExecType;->MO_CHARGE:Lcom/upay/billing/engine/upay/Main$ExecType;

    new-instance v0, Lcom/upay/billing/engine/upay/Main$ExecType;

    const-string v1, "MO_CALC"

    invoke-direct {v0, v1, v6}, Lcom/upay/billing/engine/upay/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/upay/Main$ExecType;->MO_CALC:Lcom/upay/billing/engine/upay/Main$ExecType;

    new-instance v0, Lcom/upay/billing/engine/upay/Main$ExecType;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v7}, Lcom/upay/billing/engine/upay/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/upay/Main$ExecType;->HTTP:Lcom/upay/billing/engine/upay/Main$ExecType;

    new-instance v0, Lcom/upay/billing/engine/upay/Main$ExecType;

    const-string v1, "SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/upay/Main$ExecType;->SUCCESS:Lcom/upay/billing/engine/upay/Main$ExecType;

    new-instance v0, Lcom/upay/billing/engine/upay/Main$ExecType;

    const-string v1, "FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/upay/billing/engine/upay/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/upay/Main$ExecType;->FAIL:Lcom/upay/billing/engine/upay/Main$ExecType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/upay/billing/engine/upay/Main$ExecType;

    sget-object v1, Lcom/upay/billing/engine/upay/Main$ExecType;->DEL:Lcom/upay/billing/engine/upay/Main$ExecType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upay/billing/engine/upay/Main$ExecType;->MO:Lcom/upay/billing/engine/upay/Main$ExecType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upay/billing/engine/upay/Main$ExecType;->MO_CHARGE:Lcom/upay/billing/engine/upay/Main$ExecType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/upay/billing/engine/upay/Main$ExecType;->MO_CALC:Lcom/upay/billing/engine/upay/Main$ExecType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/upay/billing/engine/upay/Main$ExecType;->HTTP:Lcom/upay/billing/engine/upay/Main$ExecType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/upay/billing/engine/upay/Main$ExecType;->SUCCESS:Lcom/upay/billing/engine/upay/Main$ExecType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/upay/billing/engine/upay/Main$ExecType;->FAIL:Lcom/upay/billing/engine/upay/Main$ExecType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/upay/billing/engine/upay/Main$ExecType;->$VALUES:[Lcom/upay/billing/engine/upay/Main$ExecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upay/billing/engine/upay/Main$ExecType;
    .locals 1

    const-class v0, Lcom/upay/billing/engine/upay/Main$ExecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/upay/Main$ExecType;

    return-object v0
.end method

.method public static values()[Lcom/upay/billing/engine/upay/Main$ExecType;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/upay/Main$ExecType;->$VALUES:[Lcom/upay/billing/engine/upay/Main$ExecType;

    invoke-virtual {v0}, [Lcom/upay/billing/engine/upay/Main$ExecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upay/billing/engine/upay/Main$ExecType;

    return-object v0
.end method
