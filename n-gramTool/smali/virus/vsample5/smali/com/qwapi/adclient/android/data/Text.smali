.class public Lcom/qwapi/adclient/android/data/Text;
.super Ljava/lang/Object;


# instance fields
.field private bodyText:Ljava/lang/String;

.field private headline:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Text;->bodyText:Ljava/lang/String;

    iput-object p2, p0, Lcom/qwapi/adclient/android/data/Text;->headline:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBodyText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Text;->bodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Text;->headline:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Text;->bodyText:Ljava/lang/String;

    return-void
.end method

.method public setHeadline(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Text;->headline:Ljava/lang/String;

    return-void
.end method
