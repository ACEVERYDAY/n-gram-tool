.class public final enum Lcom/qwapi/adclient/android/requestparams/Education;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qwapi/adclient/android/requestparams/Education;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qwapi/adclient/android/requestparams/Education;

.field public static final enum college_graduate:Lcom/qwapi/adclient/android/requestparams/Education;

.field public static final enum graduate_school:Lcom/qwapi/adclient/android/requestparams/Education;

.field public static final enum no_college:Lcom/qwapi/adclient/android/requestparams/Education;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Education;

    const-string v1, "no_college"

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/requestparams/Education;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Education;->no_college:Lcom/qwapi/adclient/android/requestparams/Education;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Education;

    const-string v1, "college_graduate"

    invoke-direct {v0, v1, v3}, Lcom/qwapi/adclient/android/requestparams/Education;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Education;->college_graduate:Lcom/qwapi/adclient/android/requestparams/Education;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Education;

    const-string v1, "graduate_school"

    invoke-direct {v0, v1, v4}, Lcom/qwapi/adclient/android/requestparams/Education;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Education;->graduate_school:Lcom/qwapi/adclient/android/requestparams/Education;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qwapi/adclient/android/requestparams/Education;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Education;->no_college:Lcom/qwapi/adclient/android/requestparams/Education;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Education;->college_graduate:Lcom/qwapi/adclient/android/requestparams/Education;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Education;->graduate_school:Lcom/qwapi/adclient/android/requestparams/Education;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Education;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Education;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/Education;
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/requestparams/Education;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Education;

    return-object p0
.end method

.method public static values()[Lcom/qwapi/adclient/android/requestparams/Education;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/Education;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Education;

    invoke-virtual {v0}, [Lcom/qwapi/adclient/android/requestparams/Education;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qwapi/adclient/android/requestparams/Education;

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

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/Education;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
