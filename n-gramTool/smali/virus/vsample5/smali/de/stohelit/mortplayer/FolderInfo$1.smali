.class Lde/stohelit/mortplayer/FolderInfo$1;
.super Ljava/lang/Object;
.source "FolderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/stohelit/mortplayer/FolderInfo;
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
        "Lde/stohelit/mortplayer/FolderInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lde/stohelit/mortplayer/FolderInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    new-instance v0, Lde/stohelit/mortplayer/FolderInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lde/stohelit/mortplayer/FolderInfo;-><init>(Landroid/os/Parcel;Lde/stohelit/mortplayer/FolderInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lde/stohelit/mortplayer/FolderInfo$1;->createFromParcel(Landroid/os/Parcel;)Lde/stohelit/mortplayer/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lde/stohelit/mortplayer/FolderInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 23
    new-array v0, p1, [Lde/stohelit/mortplayer/FolderInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lde/stohelit/mortplayer/FolderInfo$1;->newArray(I)[Lde/stohelit/mortplayer/FolderInfo;

    move-result-object v0

    return-object v0
.end method
