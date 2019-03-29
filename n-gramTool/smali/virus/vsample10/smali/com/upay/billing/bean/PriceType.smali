.class public final enum Lcom/upay/billing/bean/PriceType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/upay/billing/bean/PriceType;

.field public static final enum ANY:Lcom/upay/billing/bean/PriceType;

.field public static final enum FIXED:Lcom/upay/billing/bean/PriceType;

.field public static final enum RENT:Lcom/upay/billing/bean/PriceType;

.field public static final enum VARIABLE:Lcom/upay/billing/bean/PriceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/upay/billing/bean/PriceType;

    const-string v1, "FIXED"

    invoke-direct {v0, v1, v2}, Lcom/upay/billing/bean/PriceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/bean/PriceType;->FIXED:Lcom/upay/billing/bean/PriceType;

    new-instance v0, Lcom/upay/billing/bean/PriceType;

    const-string v1, "RENT"

    invoke-direct {v0, v1, v3}, Lcom/upay/billing/bean/PriceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/bean/PriceType;->RENT:Lcom/upay/billing/bean/PriceType;

    new-instance v0, Lcom/upay/billing/bean/PriceType;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v4}, Lcom/upay/billing/bean/PriceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/bean/PriceType;->ANY:Lcom/upay/billing/bean/PriceType;

    new-instance v0, Lcom/upay/billing/bean/PriceType;

    const-string v1, "VARIABLE"

    invoke-direct {v0, v1, v5}, Lcom/upay/billing/bean/PriceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/bean/PriceType;->VARIABLE:Lcom/upay/billing/bean/PriceType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/upay/billing/bean/PriceType;

    sget-object v1, Lcom/upay/billing/bean/PriceType;->FIXED:Lcom/upay/billing/bean/PriceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upay/billing/bean/PriceType;->RENT:Lcom/upay/billing/bean/PriceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upay/billing/bean/PriceType;->ANY:Lcom/upay/billing/bean/PriceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upay/billing/bean/PriceType;->VARIABLE:Lcom/upay/billing/bean/PriceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/upay/billing/bean/PriceType;->$VALUES:[Lcom/upay/billing/bean/PriceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/upay/billing/bean/PriceType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/upay/billing/bean/PriceType;->FIXED:Lcom/upay/billing/bean/PriceType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/upay/billing/bean/PriceType;->FIXED:Lcom/upay/billing/bean/PriceType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/upay/billing/bean/PriceType;->RENT:Lcom/upay/billing/bean/PriceType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/upay/billing/bean/PriceType;->ANY:Lcom/upay/billing/bean/PriceType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/upay/billing/bean/PriceType;->VARIABLE:Lcom/upay/billing/bean/PriceType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upay/billing/bean/PriceType;
    .locals 1

    const-class v0, Lcom/upay/billing/bean/PriceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/bean/PriceType;

    return-object v0
.end method

.method public static values()[Lcom/upay/billing/bean/PriceType;
    .locals 1

    sget-object v0, Lcom/upay/billing/bean/PriceType;->$VALUES:[Lcom/upay/billing/bean/PriceType;

    invoke-virtual {v0}, [Lcom/upay/billing/bean/PriceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upay/billing/bean/PriceType;

    return-object v0
.end method
