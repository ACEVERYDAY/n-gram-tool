.class public Lcom/upay/billing/engine/card/Main;
.super Lcom/upay/billing/Engine;


# static fields
.field public static cardPayUrl:Ljava/lang/String;


# instance fields
.field private cardParValue:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private cardTypeValue:Ljava/lang/String;

.field private card_value:[Ljava/lang/String;

.field private layout:Ljava/lang/String;

.field private mButton_pay:Landroid/widget/Button;

.field private mCardTypeRow:Landroid/widget/TableRow;

.field private mCardValueRow:Landroid/widget/TableRow;

.field private mEditText_number:Landroid/widget/EditText;

.field private mEditText_pw:Landroid/widget/EditText;

.field private mImageButton_backout:Landroid/widget/ImageButton;

.field private mTextView_amount:Landroid/widget/TextView;

.field private mTextView_cardType:Landroid/widget/TextView;

.field private mTextView_cardValue:Landroid/widget/TextView;

.field private mTextView_commodity_amount:Landroid/widget/TextView;

.field private mTextView_md:Landroid/widget/TextView;

.field private mTrade:Lcom/upay/billing/bean/Trade;

.field private productName:Ljava/lang/String;

.field private selectAmount:Ljava/lang/String;

.field private typeID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://card.upay360.com/request_v2.php"

    sput-object v0, Lcom/upay/billing/engine/card/Main;->cardPayUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/upay/billing/Engine;-><init>()V

    iput-object v1, p0, Lcom/upay/billing/engine/card/Main;->cardType:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/upay/billing/engine/card/Main;->typeID:I

    iput-object v1, p0, Lcom/upay/billing/engine/card/Main;->card_value:[Ljava/lang/String;

    const-string v0, "{\"window-no-title\":true,\"window-full-screen\":true,\"content-view\":{\"type\":\"relative-layout\",\"width\":\"fill\",\"height\":\"fill\"}}"

    iput-object v0, p0, Lcom/upay/billing/engine/card/Main;->layout:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/upay/billing/engine/card/Main;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mImageButton_backout:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$002(Lcom/upay/billing/engine/card/Main;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mImageButton_backout:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$100(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mTextView_md:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/upay/billing/engine/card/Main;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mButton_pay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/upay/billing/engine/card/Main;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mButton_pay:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$102(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mTextView_md:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/upay/billing/engine/card/Main;)Lcom/upay/billing/bean/Trade;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/upay/billing/engine/card/Main;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/card/Main;->logPay(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/card/Main;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/upay/billing/engine/card/Main;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/upay/billing/engine/card/Main;->logCharge(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/upay/billing/engine/card/Main;)I
    .locals 1

    iget v0, p0, Lcom/upay/billing/engine/card/Main;->typeID:I

    return v0
.end method

.method static synthetic access$1702(Lcom/upay/billing/engine/card/Main;I)I
    .locals 0

    iput p1, p0, Lcom/upay/billing/engine/card/Main;->typeID:I

    return p1
.end method

.method static synthetic access$1802(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->cardType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/upay/billing/engine/card/Main;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->card_value:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/upay/billing/engine/card/Main;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->card_value:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mTextView_amount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->selectAmount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mTextView_amount:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mTextView_commodity_amount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mTextView_commodity_amount:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mTextView_cardType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mTextView_cardType:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mTextView_cardValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/upay/billing/engine/card/Main;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mTextView_cardValue:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TableRow;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mCardTypeRow:Landroid/widget/TableRow;

    return-object v0
.end method

.method static synthetic access$602(Lcom/upay/billing/engine/card/Main;Landroid/widget/TableRow;)Landroid/widget/TableRow;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mCardTypeRow:Landroid/widget/TableRow;

    return-object p1
.end method

.method static synthetic access$700(Lcom/upay/billing/engine/card/Main;)Landroid/widget/TableRow;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mCardValueRow:Landroid/widget/TableRow;

    return-object v0
.end method

.method static synthetic access$702(Lcom/upay/billing/engine/card/Main;Landroid/widget/TableRow;)Landroid/widget/TableRow;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mCardValueRow:Landroid/widget/TableRow;

    return-object p1
.end method

.method static synthetic access$800(Lcom/upay/billing/engine/card/Main;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mEditText_number:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$802(Lcom/upay/billing/engine/card/Main;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mEditText_number:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$900(Lcom/upay/billing/engine/card/Main;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mEditText_pw:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$902(Lcom/upay/billing/engine/card/Main;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mEditText_pw:Landroid/widget/EditText;

    return-object p1
.end method

.method private logCharge(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "charge_handle"

    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "trade_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cmd_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "card"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bt_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "card"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "description"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    aput-object p2, v3, v4

    const/16 v4, 0xa

    const-string v5, "mt_msg"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "mt_num"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "result"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "sn"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "ts"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "price"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    iget-object v5, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget v5, v5, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logPay(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "trade_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v5, v5, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cmd_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "card"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bt_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "card"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "target"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "sn"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v6, v6, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "request"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "response"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    aput-object p2, v3, v4

    const/16 v4, 0x10

    const-string v5, "result"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "ts"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    invoke-static {}, Lcom/upay/billing/utils/Util;->getTs()J

    move-result-wide v5

    iget-object v7, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v7}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Time-Diff"

    invoke-static {v7, v8}, Lcom/upay/billing/utils/Util;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "price"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    iget-object v5, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget v5, v5, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    const-string v2, "common"

    const-string v3, ""

    invoke-virtual {v1, v2, p2, v3}, Lcom/upay/billing/UpayCore;->getPropString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public cardPay(Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mEditText_number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/card/Main;->cardTypeValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mEditText_pw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upay/billing/engine/card/Main;->cardParValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->cardType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->selectAmount:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "\u5145\u503c\u5361\u7c7b\u578b\u6216\u9762\u989d\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->cardTypeValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->cardParValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->cardType:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->selectAmount:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget v0, v0, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v1, v1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upay/billing/UpayCore;->getPlan(Ljava/lang/String;)Lcom/upay/billing/bean/Plan;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "upay_p_ui_n"

    invoke-virtual {v1, v0}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v3, "wait_verify_app"

    invoke-direct {p0, v2, v3}, Lcom/upay/billing/engine/card/Main;->verifyCondition(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "upay_p_ui_n"

    :goto_2
    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    const-string v3, "\u6b63\u5728\u652f\u4ed8\uff0c\u8bf7\u8010\u5fc3\u7b49\u5019..."

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/upay/billing/engine/card/Main;->showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "goodsName"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v3, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v4, v4, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/upay/billing/UpayCore;->getGoods(Ljava/lang/String;Ljava/lang/String;)Lcom/upay/billing/bean/Goods;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/bean/Goods;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget v2, v2, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extraInfo"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardNum1"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->cardTypeValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardNum2"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->cardParValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardType"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "selectAmount"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->selectAmount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apiKey"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v2, v2, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tradeId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v3, v3, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "did"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v2}, Lcom/upay/billing/UpayCore;->getUpayContext()Lcom/upay/billing/UpayContext;

    move-result-object v2

    iget-object v2, v2, Lcom/upay/billing/UpayContext;->os:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aid"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-wide v2, v2, Lcom/upay/billing/bean/Trade;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/upay/billing/engine/card/Main$2;

    sget-object v2, Lcom/upay/billing/engine/card/Main;->cardPayUrl:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/upay/billing/engine/card/Main$2;-><init>(Lcom/upay/billing/engine/card/Main;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/upay/billing/engine/card/Main$2;->setDoGet()Lcom/upay/billing/utils/HttpRunner;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/upay/billing/utils/HttpRunner;->addParams(Ljava/util/Map;Z)Lcom/upay/billing/utils/HttpRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    const-string v0, "upay_progress_ui"

    goto/16 :goto_2

    :cond_4
    const-string v0, "\u5145\u503c\u5361\u5361\u53f7\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public getOp()Lcom/upay/billing/bean/Op;
    .locals 1

    sget-object v0, Lcom/upay/billing/bean/Op;->NONE:Lcom/upay/billing/bean/Op;

    return-object v0
.end method

.method public getPriceType()Lcom/upay/billing/bean/PriceType;
    .locals 1

    sget-object v0, Lcom/upay/billing/bean/PriceType;->ANY:Lcom/upay/billing/bean/PriceType;

    return-object v0
.end method

.method public hasCustomConfirmUi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable(Lcom/upay/billing/bean/Op;ZZZZ)Z
    .locals 0

    return p3
.end method

.method public pay(Lcom/upay/billing/bean/Trade;Ljava/util/List;)V
    .locals 7

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/upay/billing/engine/card/Main;->mTrade:Lcom/upay/billing/bean/Trade;

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/upay/billing/engine/UpayMResource;

    iget-object v1, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/upay/billing/engine/UpayMResource;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upay_card_ui"

    iget-object v2, p0, Lcom/upay/billing/engine/card/Main;->layout:Ljava/lang/String;

    new-instance v3, Lcom/upay/billing/engine/card/Main$1;

    invoke-direct {v3, p0}, Lcom/upay/billing/engine/card/Main$1;-><init>(Lcom/upay/billing/engine/card/Main;)V

    invoke-static {v0, v1, v2, v5, v3}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    const/16 v1, 0x69

    invoke-virtual {v0, p1, v1}, Lcom/upay/billing/UpayCore;->paymentCompleted(Lcom/upay/billing/bean/Trade;I)V

    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    iget-object v1, p1, Lcom/upay/billing/bean/Trade;->appKey:Ljava/lang/String;

    const-string v2, "exec_pay"

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "trade_id"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "goods_key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/upay/billing/bean/Trade;->goodsKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cmd_key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "card"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bt_key"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "card"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "target"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "sn"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/upay/billing/bean/Trade;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "request"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, ""

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "response"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "card-no-network"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "price"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    iget v5, p1, Lcom/upay/billing/bean/Trade;->price:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "result"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const/16 v5, 0x79

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/upay/billing/utils/Json;->createObject([Ljava/lang/Object;)Lcom/upay/billing/utils/Json;

    move-result-object v3

    invoke-virtual {v3}, Lcom/upay/billing/utils/Json;->asObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/upay/billing/UpayCore;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public showProgressUi(Lcom/upay/billing/bean/Plan;Lcom/upay/billing/bean/Trade;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p3}, Lcom/upay/billing/bean/Plan;->getLocalResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/upay/billing/utils/Util;->loadLocalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v1}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/upay/billing/engine/card/Main$3;

    invoke-direct {v3, p0, p2, p4}, Lcom/upay/billing/engine/card/Main$3;-><init>(Lcom/upay/billing/engine/card/Main;Lcom/upay/billing/bean/Trade;Ljava/lang/String;)V

    invoke-static {v1, p3, v0, v2, v3}, Lcom/upay/billing/UpayActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/UpayActivityExt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/upay/billing/engine/card/Main;->core:Lcom/upay/billing/UpayCore;

    invoke-virtual {v0}, Lcom/upay/billing/UpayCore;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upay/billing/utils/Util;->loadAssetsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
