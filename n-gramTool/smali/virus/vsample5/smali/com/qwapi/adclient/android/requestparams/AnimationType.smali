.class public final enum Lcom/qwapi/adclient/android/requestparams/AnimationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qwapi/adclient/android/requestparams/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qwapi/adclient/android/requestparams/AnimationType;

.field public static final enum fade:Lcom/qwapi/adclient/android/requestparams/AnimationType;

.field public static final enum hyperspace:Lcom/qwapi/adclient/android/requestparams/AnimationType;

.field public static final enum pushLeft:Lcom/qwapi/adclient/android/requestparams/AnimationType;

.field public static final enum pushUp:Lcom/qwapi/adclient/android/requestparams/AnimationType;

.field public static final enum slide:Lcom/qwapi/adclient/android/requestparams/AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;

    const-string v1, "fade"

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/requestparams/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->fade:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;

    const-string v1, "slide"

    invoke-direct {v0, v1, v3}, Lcom/qwapi/adclient/android/requestparams/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->slide:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;

    const-string v1, "hyperspace"

    invoke-direct {v0, v1, v4}, Lcom/qwapi/adclient/android/requestparams/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->hyperspace:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;

    const-string v1, "pushUp"

    invoke-direct {v0, v1, v5}, Lcom/qwapi/adclient/android/requestparams/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushUp:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;

    const-string v1, "pushLeft"

    invoke-direct {v0, v1, v6}, Lcom/qwapi/adclient/android/requestparams/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushLeft:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qwapi/adclient/android/requestparams/AnimationType;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/AnimationType;->fade:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/AnimationType;->slide:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/AnimationType;->hyperspace:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushUp:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushLeft:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/AnimationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/AnimationType;
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/qwapi/adclient/android/requestparams/AnimationType;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/AnimationType;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v0}, [Lcom/qwapi/adclient/android/requestparams/AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qwapi/adclient/android/requestparams/AnimationType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/AnimationType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Fade"

    goto :goto_0

    :pswitch_1
    const-string v0, "Slide"

    goto :goto_0

    :pswitch_2
    const-string v0, "Hyperspace"

    goto :goto_0

    :pswitch_3
    const-string v0, "Push Up"

    goto :goto_0

    :pswitch_4
    const-string v0, "Push Left"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
