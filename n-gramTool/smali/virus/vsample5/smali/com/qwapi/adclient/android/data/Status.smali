.class public Lcom/qwapi/adclient/android/data/Status;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FAILURE:Ljava/lang/String; = "failure"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field private static final emptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qwapi/adclient/android/data/ErrorMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;

.field private errorMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qwapi/adclient/android/data/ErrorMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qwapi/adclient/android/data/Status;->emptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/qwapi/adclient/android/data/ErrorMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Status;->code:Ljava/lang/String;

    iput-object p2, p0, Lcom/qwapi/adclient/android/data/Status;->errorMessages:Ljava/util/List;

    return-void
.end method

.method public static final getSuccess()Lcom/qwapi/adclient/android/data/Status;
    .locals 3

    new-instance v0, Lcom/qwapi/adclient/android/data/Status;

    const-string v1, "success"

    sget-object v2, Lcom/qwapi/adclient/android/data/Status;->emptyList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/qwapi/adclient/android/data/Status;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Status;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qwapi/adclient/android/data/ErrorMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Status;->errorMessages:Ljava/util/List;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    const-string v0, "success"

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Status;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Status;->code:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qwapi/adclient/android/data/ErrorMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Status;->errorMessages:Ljava/util/List;

    return-void
.end method
