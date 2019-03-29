.class public Lcom/qwapi/adclient/android/utils/HttpResponse;
.super Ljava/lang/Object;


# instance fields
.field private response:Ljava/lang/String;

.field private returnCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qwapi/adclient/android/utils/HttpResponse;->response:Ljava/lang/String;

    iput p2, p0, Lcom/qwapi/adclient/android/utils/HttpResponse;->returnCode:I

    return-void
.end method


# virtual methods
.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/utils/HttpResponse;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    iget v0, p0, Lcom/qwapi/adclient/android/utils/HttpResponse;->returnCode:I

    return v0
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/utils/HttpResponse;->response:Ljava/lang/String;

    return-void
.end method

.method public setReturnCode(I)V
    .locals 0

    iput p1, p0, Lcom/qwapi/adclient/android/utils/HttpResponse;->returnCode:I

    return-void
.end method
