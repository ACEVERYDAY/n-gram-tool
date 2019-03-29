.class public Lcom/qwapi/adclient/android/data/ErrorMessage;
.super Ljava/lang/Object;


# static fields
.field public static PARSE_ERROR:I


# instance fields
.field description:Ljava/lang/String;

.field message:Ljava/lang/String;

.field msgCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x270f

    sput v0, Lcom/qwapi/adclient/android/data/ErrorMessage;->PARSE_ERROR:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qwapi/adclient/android/data/ErrorMessage;->msgCode:I

    iput-object p2, p0, Lcom/qwapi/adclient/android/data/ErrorMessage;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/qwapi/adclient/android/data/ErrorMessage;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/ErrorMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/ErrorMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgCode()I
    .locals 1

    iget v0, p0, Lcom/qwapi/adclient/android/data/ErrorMessage;->msgCode:I

    return v0
.end method
