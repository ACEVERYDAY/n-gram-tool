.class public final enum Lcom/qwapi/adclient/android/requestparams/MediaType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qwapi/adclient/android/requestparams/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qwapi/adclient/android/requestparams/MediaType;

.field public static final enum animated:Lcom/qwapi/adclient/android/requestparams/MediaType;

.field public static final enum banner:Lcom/qwapi/adclient/android/requestparams/MediaType;

.field public static final enum expandable:Lcom/qwapi/adclient/android/requestparams/MediaType;

.field public static final enum interstitial:Lcom/qwapi/adclient/android/requestparams/MediaType;

.field public static final enum text:Lcom/qwapi/adclient/android/requestparams/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/MediaType;

    const-string v1, "banner"

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/requestparams/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/MediaType;->banner:Lcom/qwapi/adclient/android/requestparams/MediaType;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/MediaType;

    const-string v1, "text"

    invoke-direct {v0, v1, v3}, Lcom/qwapi/adclient/android/requestparams/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/MediaType;->text:Lcom/qwapi/adclient/android/requestparams/MediaType;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/MediaType;

    const-string v1, "interstitial"

    invoke-direct {v0, v1, v4}, Lcom/qwapi/adclient/android/requestparams/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/MediaType;->interstitial:Lcom/qwapi/adclient/android/requestparams/MediaType;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/MediaType;

    const-string v1, "expandable"

    invoke-direct {v0, v1, v5}, Lcom/qwapi/adclient/android/requestparams/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/MediaType;->expandable:Lcom/qwapi/adclient/android/requestparams/MediaType;

    new-instance v0, Lcom/qwapi/adclient/android/requestparams/MediaType;

    const-string v1, "animated"

    invoke-direct {v0, v1, v6}, Lcom/qwapi/adclient/android/requestparams/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/MediaType;->animated:Lcom/qwapi/adclient/android/requestparams/MediaType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qwapi/adclient/android/requestparams/MediaType;

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->banner:Lcom/qwapi/adclient/android/requestparams/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->text:Lcom/qwapi/adclient/android/requestparams/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->interstitial:Lcom/qwapi/adclient/android/requestparams/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->expandable:Lcom/qwapi/adclient/android/requestparams/MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qwapi/adclient/android/requestparams/MediaType;->animated:Lcom/qwapi/adclient/android/requestparams/MediaType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qwapi/adclient/android/requestparams/MediaType;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/MediaType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/requestparams/MediaType;
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/requestparams/MediaType;

    return-object p0
.end method

.method public static values()[Lcom/qwapi/adclient/android/requestparams/MediaType;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/requestparams/MediaType;->$VALUES:[Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-virtual {v0}, [Lcom/qwapi/adclient/android/requestparams/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qwapi/adclient/android/requestparams/MediaType;

    return-object v0
.end method


# virtual methods
.method public batchValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/MediaType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "bs"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toNamedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/MediaType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "banner"

    goto :goto_0

    :pswitch_1
    const-string v0, "text"

    goto :goto_0

    :pswitch_2
    const-string v0, "interstitial"

    goto :goto_0

    :pswitch_3
    const-string v0, "expandablebanner"

    goto :goto_0

    :pswitch_4
    const-string v0, "animatedbanner"

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

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v1, "b"

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/requestparams/MediaType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "b"

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const-string v0, "t"

    goto :goto_0

    :pswitch_2
    const-string v0, "i"

    goto :goto_0

    :pswitch_3
    const-string v0, "sa"

    goto :goto_0

    :pswitch_4
    const-string v0, "b"

    move-object v0, v1

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
