.class public final enum Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qwapi/adclient/android/AdApiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExecutionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

.field public static final enum LIVE:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

.field public static final enum QA:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

.field public static final enum STAGING:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->LIVE:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    new-instance v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const-string v1, "STAGING"

    invoke-direct {v0, v1, v3}, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->STAGING:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    new-instance v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const-string v1, "QA"

    invoke-direct {v0, v1, v4}, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->QA:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->LIVE:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->STAGING:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->QA:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->$VALUES:[Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;
    .locals 1

    const-class v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    return-object p0
.end method

.method public static values()[Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;
    .locals 1

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->$VALUES:[Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    invoke-virtual {v0}, [Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    return-object v0
.end method
