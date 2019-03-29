.class public final enum Lcom/qwapi/adclient/android/requestparams/Ethnicity;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qwapi/adclient/android/requestparams/Ethnicity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qwapi/adclient/android/requestparams/Ethnicity;

.field public static final enum african_american:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

.field public static final enum asian:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

.field public static final enum hispanic:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

.field public static final enum other:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

.field public static final enum white:Lcom/qwapi/adclient/android/requestparams/Ethnicity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    const-string v1, "african_american"

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/requestparams/Ethnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->african_american:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    const-string v1, "asian"

    invoke-direct {v0, v1, v3}, Lcom/qwapi/adclient/android/requestparams/Ethnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->asian:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    const-string v1, "hispanic"

    invoke-direct {v0, v1, v4}, Lcom/qwapi/adclient/android/requestparams/Ethnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->hispanic:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    const-string v1, "white"

    invoke-direct {v0, v1, v5}, Lcom/qwapi/adclient/android/requestparams/Ethnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->white:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    const-string v1, "other"

    invoke-direct {v0, v1, v6}, Lcom/qwapi/adclient/android/requestparams/Ethnicity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->other:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->african_american:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->asian:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->hispanic:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->white:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->other:Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Ethnicity;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/Ethnicity;
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    return-object p0
.end method

.method public static values()[Lcom/qwapi/adclient/android/requestparams/Ethnicity;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Ethnicity;

    invoke-virtual {v0}, [Lcom/qwapi/adclient/android/requestparams/Ethnicity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qwapi/adclient/android/requestparams/Ethnicity;

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

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/Ethnicity;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
