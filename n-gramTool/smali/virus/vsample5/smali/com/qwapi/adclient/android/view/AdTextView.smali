.class public Lcom/qwapi/adclient/android/view/AdTextView;
.super Landroid/widget/TextView;


# instance fields
.field private clickUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/AdTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/qwapi/adclient/android/view/AdTextView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/qwapi/adclient/android/view/AdTextView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdTextView;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x3

    const v0, 0x1060003

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdTextView;->setTextColor(I)V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/qwapi/adclient/android/view/AdTextView;->setPadding(IIII)V

    new-instance v0, Lcom/qwapi/adclient/android/view/AdTextView$1;

    invoke-direct {v0, p0}, Lcom/qwapi/adclient/android/view/AdTextView$1;-><init>(Lcom/qwapi/adclient/android/view/AdTextView;)V

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/view/AdTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdTextView;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/AdTextView;->clickUrl:Ljava/lang/String;

    return-void
.end method
