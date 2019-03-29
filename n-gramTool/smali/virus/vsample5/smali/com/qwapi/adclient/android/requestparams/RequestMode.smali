.class public final enum Lcom/qwapi/adclient/android/requestparams/RequestMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qwapi/adclient/android/requestparams/RequestMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qwapi/adclient/android/requestparams/RequestMode;

.field public static final enum batch:Lcom/qwapi/adclient/android/requestparams/RequestMode;

.field public static final enum single:Lcom/qwapi/adclient/android/requestparams/RequestMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;

    const-string v1, "single"

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/requestparams/RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;->single:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;

    const-string v1, "batch"

    invoke-direct {v0, v1, v3}, Lcom/qwapi/adclient/android/requestparams/RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;->batch:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qwapi/adclient/android/requestparams/RequestMode;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/RequestMode;->single:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/RequestMode;->batch:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/RequestMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/RequestMode;
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/RequestMode;

    return-object p0
.end method

.method public static values()[Lcom/qwapi/adclient/android/requestparams/RequestMode;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/RequestMode;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/RequestMode;

    invoke-virtual {v0}, [Lcom/qwapi/adclient/android/requestparams/RequestMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qwapi/adclient/android/requestparams/RequestMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/RequestMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "single"

    goto :goto_0

    :pswitch_1
    const-string v0, "batch"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
