.class public Lcom/qwapi/adclient/android/data/Ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AD_TYPE_ANIMATED_BANNER:Ljava/lang/String; = "animatedbanner"

.field public static final AD_TYPE_BANNER:Ljava/lang/String; = "banner"

.field public static final AD_TYPE_EXPANDABLE_BANNER:Ljava/lang/String; = "expandablebanner"

.field public static final AD_TYPE_INTERSTITIAL:Ljava/lang/String; = "interstitial"

.field public static final AD_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final ANCHOR_IMAGE_AD:Ljava/lang/String; = "<html><head><style type=\"text/css\">body \'{\' margin:0px;padding:0px \'}\'</style></head><body><div align=\"center\"> <a href=\"{0}\"><img src=\"{1}\" alt=\"{2}\"  width=\"{3}\" height=\"{4}\" /></a></div>{5}</body></head>"

.field private static final ANCHOR_IMAGE_AD_WITH_ACTION:Ljava/lang/String; = "<style type=\"text/css\">a:link\'{\'color:rgb({6});\'}\'</style><div align=\"center\"> <a href=\"{0}\"><img src=\"{1}\" alt=\"{2}\"  width=\"{3}\" height=\"{4}\" /></a><br /><br/><a href=\"{0}\">{7}</a> </div>"

.field private static final ANCHOR_TEXT_AD:Ljava/lang/String; = "<html><head><style type=\"text/css\">body \'{\' margin:0px;padding:0px \'}\' a:link\'{\'color:rgb({2});\'}\'</style></head><body><div align=\"center\"><a href=\"{0}\">{1}</a></div>{3}</body></html>"

.field private static final ANCHOR_TEXT_AD_WITH_HEADLINE:Ljava/lang/String; = "<html><head><style type=\'text/css\'>body \'{\' margin:0px;padding:0px \'}\' a:link\'{\'color:rgb({3});\'}\'</style><div align=\"center\"><a href=\"{0}\"><b>{1}</b><br/>{2}</a></div>{4}</body></html>"

.field private static final PIXEL_TRACKING_URL_0:Ljava/lang/String; = "<img border=\"0\" src=\""

.field private static final PIXEL_TRACKING_URL_1:Ljava/lang/String; = "\" height=\"1\" width=\"1\"/>"


# instance fields
.field private actionText:Ljava/lang/String;

.field private adText:Ljava/lang/String;

.field private adType:Ljava/lang/String;

.field private clickUrl:Ljava/lang/String;

.field private data:Lcom/qwapi/adclient/android/data/Data;

.field private dbid:I

.field private expiry:Ljava/util/GregorianCalendar;

.field private externallyHosted:Z

.field private id:Ljava/lang/String;

.field private image:Lcom/qwapi/adclient/android/data/Image;

.field private impressions:I

.field private isBot:Z

.field private lastServed:J

.field private transient status:Lcom/qwapi/adclient/android/data/Status;

.field private text:Lcom/qwapi/adclient/android/data/Text;

.field private trackingPixels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/qwapi/adclient/android/data/Ad;->impressions:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qwapi/adclient/android/data/Ad;->lastServed:J

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->expiry:Ljava/util/GregorianCalendar;

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->expiry:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    return-void
.end method

.method private getBannerXhtmlAdContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qwapi/adclient/android/data/Ad;->getBannerXhtmlAdContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBannerXhtmlAdContent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v1, "<html><head><style type=\"text/css\">body \'{\' margin:0px;padding:0px \'}\'</style></head><body><div align=\"center\"> <a href=\"{0}\"><img src=\"{1}\" alt=\"{2}\"  width=\"{3}\" height=\"{4}\" /></a></div>{5}</body></head>"

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->actionText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "<html><head><style type=\"text/css\">body \'{\' margin:0px;padding:0px \'}\'</style></head><body><div align=\"center\"> <a href=\"{0}\"><img src=\"{1}\" alt=\"{2}\"  width=\"{3}\" height=\"{4}\" /></a></div>{5}</body></head>"

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/qwapi/adclient/android/data/Ad;->getBannerAdObjects(Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "<html><head><style type=\"text/css\">body \'{\' margin:0px;padding:0px \'}\'</style></head><body><div align=\"center\"> <a href=\"{0}\"><img src=\"{1}\" alt=\"{2}\"  width=\"{3}\" height=\"{4}\" /></a></div>{5}</body></head>"

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private getTextXhtmlAdContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/data/Ad;->getText()Lcom/qwapi/adclient/android/data/Text;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/data/Ad;->getText()Lcom/qwapi/adclient/android/data/Text;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/Text;->getHeadline()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "<html><head><style type=\'text/css\'>body \'{\' margin:0px;padding:0px \'}\' a:link\'{\'color:rgb({3});\'}\'</style><div align=\"center\"><a href=\"{0}\"><b>{1}</b><br/>{2}</a></div>{4}</body></html>"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/qwapi/adclient/android/data/Ad;->getTextAdObjects(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "<html><head><style type=\"text/css\">body \'{\' margin:0px;padding:0px \'}\' a:link\'{\'color:rgb({2});\'}\'</style></head><body><div align=\"center\"><a href=\"{0}\">{1}</a></div>{3}</body></html>"

    goto :goto_0
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->actionText:Ljava/lang/String;

    return-object v0
.end method

.method public getAdText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->adText:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->adType:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerAdObjects(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/data/Ad;->getBannerAdObjects(Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBannerAdObjects(Ljava/lang/String;Z)[Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, ""

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->actionText:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->clickUrl:Ljava/lang/String;

    aput-object v1, v0, v2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Image;->getAltText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Image;->getHeight()I

    move-result v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/data/Ad;->getPixelHtmlTags()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_2
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height=225"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/16 v3, 0xe1

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->clickUrl:Ljava/lang/String;

    aput-object v1, v0, v2

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Image;->getAltText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/data/Image;->getHeight()I

    move-result v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/data/Ad;->getPixelHtmlTags()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    invoke-virtual {v2}, Lcom/qwapi/adclient/android/data/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height=225"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/16 v3, 0xe1

    goto :goto_4

    :cond_5
    new-array v0, v2, [Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/qwapi/adclient/android/data/Data;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->data:Lcom/qwapi/adclient/android/data/Data;

    return-object v0
.end method

.method public getDbId()I
    .locals 1

    iget v0, p0, Lcom/qwapi/adclient/android/data/Ad;->dbid:I

    return v0
.end method

.method public getExpires()J
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->expiry:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/qwapi/adclient/android/data/Image;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    return-object v0
.end method

.method public getImpressions()I
    .locals 1

    iget v0, p0, Lcom/qwapi/adclient/android/data/Ad;->impressions:I

    return v0
.end method

.method public getLastServed()J
    .locals 2

    iget-wide v0, p0, Lcom/qwapi/adclient/android/data/Ad;->lastServed:J

    return-wide v0
.end method

.method public getPixelHtmlTags()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->trackingPixels:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->trackingPixels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "<img border=\"0\" src=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" height=\"1\" width=\"1\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public getStatus()Lcom/qwapi/adclient/android/data/Status;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->status:Lcom/qwapi/adclient/android/data/Status;

    return-object v0
.end method

.method public getText()Lcom/qwapi/adclient/android/data/Text;
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->text:Lcom/qwapi/adclient/android/data/Text;

    return-object v0
.end method

.method public getTextAdObjects(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->text:Lcom/qwapi/adclient/android/data/Text;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->text:Lcom/qwapi/adclient/android/data/Text;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/data/Text;->getHeadline()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->clickUrl:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->text:Lcom/qwapi/adclient/android/data/Text;

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Text;->getBodyText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->text:Lcom/qwapi/adclient/android/data/Text;

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Text;->getHeadline()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/data/Ad;->getPixelHtmlTags()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->clickUrl:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->text:Lcom/qwapi/adclient/android/data/Text;

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Text;->getBodyText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    invoke-virtual {p0}, Lcom/qwapi/adclient/android/data/Ad;->getPixelHtmlTags()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getTrackingPixels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->trackingPixels:Ljava/util/List;

    return-object v0
.end method

.method public getXhtmlAdContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/qwapi/adclient/android/data/Ad;->getXhtmlAdContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXhtmlAdContent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    const-string v0, ""

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->adType:Ljava/lang/String;

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/qwapi/adclient/android/data/Ad;->getBannerXhtmlAdContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->adType:Ljava/lang/String;

    const-string v2, "interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/qwapi/adclient/android/data/Ad;->getBannerXhtmlAdContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->adType:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/qwapi/adclient/android/data/Ad;->getTextXhtmlAdContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isBot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/data/Ad;->isBot:Z

    return v0
.end method

.method public isExpired()Z
    .locals 2

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->expiry:Ljava/util/GregorianCalendar;

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isExternallyHosted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qwapi/adclient/android/data/Ad;->externallyHosted:Z

    return v0
.end method

.method public served()I
    .locals 2

    iget v0, p0, Lcom/qwapi/adclient/android/data/Ad;->impressions:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/qwapi/adclient/android/data/Ad;->impressions:I

    iget v0, p0, Lcom/qwapi/adclient/android/data/Ad;->impressions:I

    return v0
.end method

.method public setActionText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->actionText:Ljava/lang/String;

    return-void
.end method

.method public setAdText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->adText:Ljava/lang/String;

    return-void
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->adType:Ljava/lang/String;

    return-void
.end method

.method public setBot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qwapi/adclient/android/data/Ad;->isBot:Z

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/qwapi/adclient/android/data/Data;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->data:Lcom/qwapi/adclient/android/data/Data;

    return-void
.end method

.method public setDbId(I)V
    .locals 0

    iput p1, p0, Lcom/qwapi/adclient/android/data/Ad;->dbid:I

    return-void
.end method

.method public setExpiry(J)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/data/Ad;->expiry:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public setExpiry(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qwapi/adclient/android/data/Ad;->expiry:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "expiry parse error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setExternallyHosted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qwapi/adclient/android/data/Ad;->externallyHosted:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Lcom/qwapi/adclient/android/data/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->image:Lcom/qwapi/adclient/android/data/Image;

    return-void
.end method

.method public setImpressionCount(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/qwapi/adclient/android/data/Ad;->impressions:I

    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public setLastServed(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/qwapi/adclient/android/data/Ad;->lastServed:J

    return-void
.end method

.method protected setStatus(Lcom/qwapi/adclient/android/data/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->status:Lcom/qwapi/adclient/android/data/Status;

    return-void
.end method

.method public setText(Lcom/qwapi/adclient/android/data/Text;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->text:Lcom/qwapi/adclient/android/data/Text;

    return-void
.end method

.method public setTrackingPixels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qwapi/adclient/android/data/Ad;->trackingPixels:Ljava/util/List;

    return-void
.end method
