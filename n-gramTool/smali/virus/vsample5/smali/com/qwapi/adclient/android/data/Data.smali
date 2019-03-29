.class public Lcom/qwapi/adclient/android/data/Data;
.super Ljava/lang/Object;


# instance fields
.field private height:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Data;->url:Ljava/lang/String;

    iput p2, p0, Lcom/qwapi/adclient/android/data/Data;->width:I

    iput p3, p0, Lcom/qwapi/adclient/android/data/Data;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/qwapi/adclient/android/data/Data;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Data;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/qwapi/adclient/android/data/Data;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/qwapi/adclient/android/data/Data;->height:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Data;->url:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/qwapi/adclient/android/data/Data;->width:I

    return-void
.end method
