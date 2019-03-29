.class final enum Lcom/upay/billing/engine/he_danji/Main$ExecType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/upay/billing/engine/he_danji/Main$ExecType;

.field public static final enum DEL:Lcom/upay/billing/engine/he_danji/Main$ExecType;

.field public static final enum FAIL:Lcom/upay/billing/engine/he_danji/Main$ExecType;

.field public static final enum SUCCESS:Lcom/upay/billing/engine/he_danji/Main$ExecType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;

    const-string v1, "DEL"

    invoke-direct {v0, v1, v2}, Lcom/upay/billing/engine/he_danji/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;->DEL:Lcom/upay/billing/engine/he_danji/Main$ExecType;

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/upay/billing/engine/he_danji/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;->SUCCESS:Lcom/upay/billing/engine/he_danji/Main$ExecType;

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/upay/billing/engine/he_danji/Main$ExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;->FAIL:Lcom/upay/billing/engine/he_danji/Main$ExecType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/upay/billing/engine/he_danji/Main$ExecType;

    sget-object v1, Lcom/upay/billing/engine/he_danji/Main$ExecType;->DEL:Lcom/upay/billing/engine/he_danji/Main$ExecType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upay/billing/engine/he_danji/Main$ExecType;->SUCCESS:Lcom/upay/billing/engine/he_danji/Main$ExecType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upay/billing/engine/he_danji/Main$ExecType;->FAIL:Lcom/upay/billing/engine/he_danji/Main$ExecType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;->$VALUES:[Lcom/upay/billing/engine/he_danji/Main$ExecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upay/billing/engine/he_danji/Main$ExecType;
    .locals 1

    const-class v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;

    return-object v0
.end method

.method public static values()[Lcom/upay/billing/engine/he_danji/Main$ExecType;
    .locals 1

    sget-object v0, Lcom/upay/billing/engine/he_danji/Main$ExecType;->$VALUES:[Lcom/upay/billing/engine/he_danji/Main$ExecType;

    invoke-virtual {v0}, [Lcom/upay/billing/engine/he_danji/Main$ExecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upay/billing/engine/he_danji/Main$ExecType;

    return-object v0
.end method
