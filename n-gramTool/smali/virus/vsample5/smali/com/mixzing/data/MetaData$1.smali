.class Lcom/mixzing/data/MetaData$1;
.super Ljava/lang/Object;
.source "MetaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixzing/data/MetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mixzing/data/MetaData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mixzing/data/MetaData;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    new-instance v0, Lcom/mixzing/data/MetaData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mixzing/data/MetaData;-><init>(Landroid/os/Parcel;Lcom/mixzing/data/MetaData;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mixzing/data/MetaData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mixzing/data/MetaData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mixzing/data/MetaData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 23
    new-array v0, p1, [Lcom/mixzing/data/MetaData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/mixzing/data/MetaData$1;->newArray(I)[Lcom/mixzing/data/MetaData;

    move-result-object v0

    return-object v0
.end method
