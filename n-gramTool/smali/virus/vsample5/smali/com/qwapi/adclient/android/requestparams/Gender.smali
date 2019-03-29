.class public final enum Lcom/qwapi/adclient/android/requestparams/Gender;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qwapi/adclient/android/requestparams/Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qwapi/adclient/android/requestparams/Gender;

.field public static final enum female:Lcom/qwapi/adclient/android/requestparams/Gender;

.field public static final enum male:Lcom/qwapi/adclient/android/requestparams/Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Gender;

    const-string v1, "male"

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/requestparams/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Gender;->male:Lcom/qwapi/adclient/android/requestparams/Gender;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Gender;

    const-string v1, "female"

    invoke-direct {v0, v1, v3}, Lcom/qwapi/adclient/android/requestparams/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Gender;->female:Lcom/qwapi/adclient/android/requestparams/Gender;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qwapi/adclient/android/requestparams/Gender;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Gender;->male:Lcom/qwapi/adclient/android/requestparams/Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Gender;->female:Lcom/qwapi/adclient/android/requestparams/Gender;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Gender;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Gender;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/Gender;
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/requestparams/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Gender;

    return-object p0
.end method

.method public static values()[Lcom/qwapi/adclient/android/requestparams/Gender;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/Gender;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Gender;

    invoke-virtual {v0}, [Lcom/qwapi/adclient/android/requestparams/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qwapi/adclient/android/requestparams/Gender;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/Gender;->ordinal()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "m"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "f"

    goto :goto_0
.end method
