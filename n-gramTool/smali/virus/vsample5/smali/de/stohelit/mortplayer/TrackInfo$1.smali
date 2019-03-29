.class Lde/stohelit/mortplayer/TrackInfo$1;
.super Ljava/lang/Object;
.source "TrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/stohelit/mortplayer/TrackInfo;
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
        "Lde/stohelit/mortplayer/TrackInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lde/stohelit/mortplayer/TrackInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    new-instance v0, Lde/stohelit/mortplayer/TrackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lde/stohelit/mortplayer/TrackInfo;-><init>(Landroid/os/Parcel;Lde/stohelit/mortplayer/TrackInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lde/stohelit/mortplayer/TrackInfo$1;->createFromParcel(Landroid/os/Parcel;)Lde/stohelit/mortplayer/TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lde/stohelit/mortplayer/TrackInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 23
    new-array v0, p1, [Lde/stohelit/mortplayer/TrackInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lde/stohelit/mortplayer/TrackInfo$1;->newArray(I)[Lde/stohelit/mortplayer/TrackInfo;

    move-result-object v0

    return-object v0
.end method
