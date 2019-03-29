.class public final enum Lcom/upay/billing/utils/Type;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/upay/billing/utils/Type;

.field public static final enum ARRAY:Lcom/upay/billing/utils/Type;

.field public static final enum BOOL:Lcom/upay/billing/utils/Type;

.field public static final enum NULL:Lcom/upay/billing/utils/Type;

.field public static final enum NUMBER:Lcom/upay/billing/utils/Type;

.field public static final enum OBJECT:Lcom/upay/billing/utils/Type;

.field public static final enum STRING:Lcom/upay/billing/utils/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/upay/billing/utils/Type;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v3}, Lcom/upay/billing/utils/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/utils/Type;->NULL:Lcom/upay/billing/utils/Type;

    new-instance v0, Lcom/upay/billing/utils/Type;

    const-string v1, "BOOL"

    invoke-direct {v0, v1, v4}, Lcom/upay/billing/utils/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/utils/Type;->BOOL:Lcom/upay/billing/utils/Type;

    new-instance v0, Lcom/upay/billing/utils/Type;

    const-string v1, "NUMBER"

    invoke-direct {v0, v1, v5}, Lcom/upay/billing/utils/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/utils/Type;->NUMBER:Lcom/upay/billing/utils/Type;

    new-instance v0, Lcom/upay/billing/utils/Type;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v6}, Lcom/upay/billing/utils/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/utils/Type;->STRING:Lcom/upay/billing/utils/Type;

    new-instance v0, Lcom/upay/billing/utils/Type;

    const-string v1, "OBJECT"

    invoke-direct {v0, v1, v7}, Lcom/upay/billing/utils/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    new-instance v0, Lcom/upay/billing/utils/Type;

    const-string v1, "ARRAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/upay/billing/utils/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/upay/billing/utils/Type;

    sget-object v1, Lcom/upay/billing/utils/Type;->NULL:Lcom/upay/billing/utils/Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upay/billing/utils/Type;->BOOL:Lcom/upay/billing/utils/Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upay/billing/utils/Type;->NUMBER:Lcom/upay/billing/utils/Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/upay/billing/utils/Type;->STRING:Lcom/upay/billing/utils/Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/upay/billing/utils/Type;->OBJECT:Lcom/upay/billing/utils/Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/upay/billing/utils/Type;->ARRAY:Lcom/upay/billing/utils/Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/upay/billing/utils/Type;->$VALUES:[Lcom/upay/billing/utils/Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upay/billing/utils/Type;
    .locals 1

    const-class v0, Lcom/upay/billing/utils/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Type;

    return-object v0
.end method

.method public static values()[Lcom/upay/billing/utils/Type;
    .locals 1

    sget-object v0, Lcom/upay/billing/utils/Type;->$VALUES:[Lcom/upay/billing/utils/Type;

    invoke-virtual {v0}, [Lcom/upay/billing/utils/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upay/billing/utils/Type;

    return-object v0
.end method
