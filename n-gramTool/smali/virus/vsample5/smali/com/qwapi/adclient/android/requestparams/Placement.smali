.class public final enum Lcom/qwapi/adclient/android/requestparams/Placement;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qwapi/adclient/android/requestparams/Placement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qwapi/adclient/android/requestparams/Placement;

.field public static final enum bottom:Lcom/qwapi/adclient/android/requestparams/Placement;

.field public static final enum middle:Lcom/qwapi/adclient/android/requestparams/Placement;

.field public static final enum top:Lcom/qwapi/adclient/android/requestparams/Placement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Placement;

    const-string v1, "top"

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/requestparams/Placement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Placement;->top:Lcom/qwapi/adclient/android/requestparams/Placement;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Placement;

    const-string v1, "middle"

    invoke-direct {v0, v1, v3}, Lcom/qwapi/adclient/android/requestparams/Placement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Placement;->middle:Lcom/qwapi/adclient/android/requestparams/Placement;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/Placement;

    const-string v1, "bottom"

    invoke-direct {v0, v1, v4}, Lcom/qwapi/adclient/android/requestparams/Placement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Placement;->bottom:Lcom/qwapi/adclient/android/requestparams/Placement;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qwapi/adclient/android/requestparams/Placement;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Placement;->top:Lcom/qwapi/adclient/android/requestparams/Placement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Placement;->middle:Lcom/qwapi/adclient/android/requestparams/Placement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/Placement;->bottom:Lcom/qwapi/adclient/android/requestparams/Placement;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/Placement;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Placement;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/Placement;
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/requestparams/Placement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/Placement;

    return-object p0
.end method

.method public static values()[Lcom/qwapi/adclient/android/requestparams/Placement;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/Placement;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/Placement;

    invoke-virtual {v0}, [Lcom/qwapi/adclient/android/requestparams/Placement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qwapi/adclient/android/requestparams/Placement;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/Placement;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "top"

    goto :goto_0

    :pswitch_1
    const-string v0, "middle"

    goto :goto_0

    :pswitch_2
    const-string v0, "bottom"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
