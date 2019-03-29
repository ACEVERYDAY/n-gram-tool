.class public final enum Lcom/qwapi/adclient/android/requestparams/Income;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qwapi/adclient/android/requestparams/Income;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qwapi/adclient/android/requestparams/Income;

.field public static final enum income_100000_to_149999:Lcom/qwapi/adclient/android/requestparams/Income;

.field public static final enum income_35000_to_49999:Lcom/qwapi/adclient/android/requestparams/Income;

.field public static final enum income_50000_to_74499:Lcom/qwapi/adclient/android/requestparams/Income;

.field public static final enum income_75000_to_99999:Lcom/qwapi/adclient/android/requestparams/Income;

.field public static final enum income_gt_150000:Lcom/qwapi/adclient/android/requestparams/Income;

.field public static final enum income_lt_35000:Lcom/qwapi/adclient/android/requestparams/Income;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Income;

    const-string v1, "income_lt_35000"

    invoke-direct {v0, v1, v3}, Lcom/qwapi/adclient/android/requestparams/Income;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Income;->income_lt_35000:Lcom/qwapi/adclient/android/requestparams/Income;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Income;

    const-string v1, "income_35000_to_49999"

    invoke-direct {v0, v1, v4}, Lcom/qwapi/adclient/android/requestparams/Income;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Income;->income_35000_to_49999:Lcom/qwapi/adclient/android/requestparams/Income;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Income;

    const-string v1, "income_50000_to_74499"

    invoke-direct {v0, v1, v5}, Lcom/qwapi/adclient/android/requestparams/Income;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Income;->income_50000_to_74499:Lcom/qwapi/adclient/android/requestparams/Income;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Income;

    const-string v1, "income_75000_to_99999"

    invoke-direct {v0, v1, v6}, Lcom/qwapi/adclient/android/requestparams/Income;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Income;->income_75000_to_99999:Lcom/qwapi/adclient/android/requestparams/Income;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Income;

    const-string v1, "income_100000_to_149999"

    invoke-direct {v0, v1, v7}, Lcom/qwapi/adclient/android/requestparams/Income;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Income;->income_100000_to_149999:Lcom/qwapi/adclient/android/requestparams/Income;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Income;

    const-string v1, "income_gt_150000"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/requestparams/Income;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Income;->income_gt_150000:Lcom/qwapi/adclient/android/requestparams/Income;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qwapi/adclient/android/requestparams/Income;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Income;->income_lt_35000:Lcom/qwapi/adclient/android/requestparams/Income;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Income;->income_35000_to_49999:Lcom/qwapi/adclient/android/requestparams/Income;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Income;->income_50000_to_74499:Lcom/qwapi/adclient/android/requestparams/Income;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Income;->income_75000_to_99999:Lcom/qwapi/adclient/android/requestparams/Income;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Income;->income_100000_to_149999:Lcom/qwapi/adclient/android/requestparams/Income;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/Income;->income_gt_150000:Lcom/qwapi/adclient/android/requestparams/Income;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Income;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Income;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/Income;
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/requestparams/Income;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Income;

    return-object p0
.end method

.method public static values()[Lcom/qwapi/adclient/android/requestparams/Income;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/Income;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Income;

    invoke-virtual {v0}, [Lcom/qwapi/adclient/android/requestparams/Income;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qwapi/adclient/android/requestparams/Income;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/Income;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
