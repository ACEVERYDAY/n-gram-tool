.class public Lcom/upay/billing/bean/Trade;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public appKey:Ljava/lang/String;

.field public channelKey:Ljava/lang/String;

.field public ctime:J

.field public extra:Ljava/lang/String;

.field public goodsKey:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public paid:I

.field public pollingStartTime:J

.field public price:I

.field public state:I

.field public subTrades:Lcom/upay/billing/utils/Json;

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/upay/billing/bean/Trade$1;

    invoke-direct {v0}, Lcom/upay/billing/bean/Trade$1;-><init>()V

    sput-object v0, Lcom/upay/billing/bean/Trade;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/upay/billing/bean/Trade;->pollingStartTime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    iput-wide v2, p0, Lcom/upay/billing/bean/Trade;->uid:J

    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/bean/Trade;->channelKey:Ljava/lang/String;

    iput v1, p0, Lcom/upay/billing/bean/Trade;->price:I

    iput v1, p0, Lcom/upay/billing/bean/Trade;->paid:I

    iput-wide v2, p0, Lcom/upay/billing/bean/Trade;->ctime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/upay/billing/bean/Trade;->extra:Ljava/lang/String;

    const-string v0, "[]"

    invoke-static {v0}, Lcom/upay/billing/utils/Json;->parse(Ljava/lang/String;)Lcom/upay/billing/utils/Json;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    iput v1, p0, Lcom/upay/billing/bean/Trade;->state:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubTrade(Ljava/lang/String;)Lcom/upay/billing/utils/Json;
    .locals 3

    iget-object v0, p0, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->safeIter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upay/billing/utils/Json;

    const-string v2, "cmd_key"

    invoke-virtual {v0, v2}, Lcom/upay/billing/utils/Json;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trade(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",goodsKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",channelKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upay/billing/bean/Trade;->channelKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upay/billing/bean/Trade;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",paid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/upay/billing/bean/Trade;->paid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/bean/Trade;->channelKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/upay/billing/bean/Trade;->price:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/upay/billing/bean/Trade;->paid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/upay/billing/bean/Trade;->ctime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/upay/billing/bean/Trade;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/bean/Trade;->subTrades:Lcom/upay/billing/utils/Json;

    invoke-virtual {v0}, Lcom/upay/billing/utils/Json;->asArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/upay/billing/bean/Trade;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
