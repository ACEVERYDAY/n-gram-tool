.class public Lcom/variamobile/soundwave/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/variamobile/soundwave/MediaItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/variamobile/soundwave/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/variamobile/soundwave/MediaItem$1;

    invoke-direct {v0}, Lcom/variamobile/soundwave/MediaItem$1;-><init>()V

    sput-object v0, Lcom/variamobile/soundwave/MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/variamobile/soundwave/MediaItem;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/variamobile/soundwave/MediaItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/variamobile/soundwave/MediaItem;)I
    .locals 1
    .param p1, "another"    # Lcom/variamobile/soundwave/MediaItem;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/variamobile/soundwave/MediaItem;

    invoke-virtual {p0, p1}, Lcom/variamobile/soundwave/MediaItem;->compareTo(Lcom/variamobile/soundwave/MediaItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 15
    return-void
.end method
