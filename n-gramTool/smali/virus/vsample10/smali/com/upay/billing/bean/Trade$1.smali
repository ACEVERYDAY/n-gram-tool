.class final Lcom/upay/billing/bean/Trade$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/upay/billing/bean/Trade;
    .locals 3

    new-instance v0, Lcom/upay/billing/bean/Trade;

    invoke-direct {v0}, Lcom/upay/billing/bean/Trade;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/upay/billing/bean/Trade;->channelKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/upay/billing/bean/Trade;->price:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/upay/billing/bean/Trade;->paid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/upay/billing/bean/Trade;->ctime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/upay/billing/bean/Trade;->extra:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v1

    iput-object v1, v0, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/upay/billing/bean/Trade;->state:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/upay/billing/bean/Trade$1;->createFromParcel(Landroid/os/Parcel;)Lcom/upay/billing/bean/Trade;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/upay/billing/bean/Trade;
    .locals 1

    new-array v0, p1, [Lcom/upay/billing/bean/Trade;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/upay/billing/bean/Trade$1;->newArray(I)[Lcom/upay/billing/bean/Trade;

    move-result-object v0

    return-object v0
.end method
