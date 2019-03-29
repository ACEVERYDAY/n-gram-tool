.class public Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;
.super Ljava/lang/Object;


# static fields
.field private static final ATTRIBUTE_NAME_BATCHID:Ljava/lang/String; = "batchid"

.field private static final ATTRIBUTE_NAME_CODE:Ljava/lang/String; = "code"

.field private static final ATTRIBUTE_NAME_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ATTRIBUTE_NAME_EXPIRY:Ljava/lang/String; = "expiry"

.field private static final ATTRIBUTE_NAME_ID:Ljava/lang/String; = "id"

.field private static final ATTRIBUTE_NAME_IMPRESSIONS:Ljava/lang/String; = "availableImpressions"

.field private static final ATTRIBUTE_NAME_TYPE:Ljava/lang/String; = "type"

.field private static final ELEMENT_NAME_ACTION_TEXT:Ljava/lang/String; = "actionText"

.field private static final ELEMENT_NAME_AD:Ljava/lang/String; = "ad"

.field private static final ELEMENT_NAME_ADS:Ljava/lang/String; = "ads"

.field private static final ELEMENT_NAME_ALT_TEXT:Ljava/lang/String; = "altText"

.field private static final ELEMENT_NAME_ANIMATED_BANNER:Ljava/lang/String; = "animatedbanner"

.field private static final ELEMENT_NAME_BANNER:Ljava/lang/String; = "banner"

.field private static final ELEMENT_NAME_BODY:Ljava/lang/String; = "body"

.field private static final ELEMENT_NAME_BODY_TEXT:Ljava/lang/String; = "bodyText"

.field private static final ELEMENT_NAME_CLICK_URL:Ljava/lang/String; = "clickUrl"

.field private static final ELEMENT_NAME_DATA:Ljava/lang/String; = "data"

.field private static final ELEMENT_NAME_EXPANDABLE:Ljava/lang/String; = "expandablebanner"

.field private static final ELEMENT_NAME_EXTERNALLY_HOSTED:Ljava/lang/String; = "externallyHosted"

.field private static final ELEMENT_NAME_HEALDINE:Ljava/lang/String; = "headline"

.field private static final ELEMENT_NAME_HEIGHT:Ljava/lang/String; = "height"

.field private static final ELEMENT_NAME_IMAGE:Ljava/lang/String; = "image"

.field private static final ELEMENT_NAME_INTERSTITIAL:Ljava/lang/String; = "interstitial"

.field private static final ELEMENT_NAME_ISBOT:Ljava/lang/String; = "isBot"

.field private static final ELEMENT_NAME_MESSAGE:Ljava/lang/String; = "message"

.field private static final ELEMENT_NAME_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ELEMENT_NAME_STATUS:Ljava/lang/String; = "status"

.field private static final ELEMENT_NAME_TEXT:Ljava/lang/String; = "text"

.field private static final ELEMENT_NAME_TRACKING_PIXELS:Ljava/lang/String; = "trackingPixels"

.field private static final ELEMENT_NAME_TRACKING_PIXEL_URL:Ljava/lang/String; = "trackingPixelUrl"

.field private static final ELEMENT_NAME_URL:Ljava/lang/String; = "url"

.field private static final ELEMENT_NAME_WIDTH:Ljava/lang/String; = "width"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdResponse(Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;
    .locals 1

    invoke-static {p0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->parseXmlResponse(Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;

    move-result-object v0

    return-object v0
.end method

.method private static getBooleanValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getIntValue(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const-string v3, ""

    const-string v0, ""

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    move v1, v2

    move-object v2, v3

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const-string v0, ""

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method private static getValues(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-static {p0, p1, v4}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static parseDocument(Lorg/w3c/dom/Document;)Lcom/qwapi/adclient/android/data/AdResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qwapi/adclient/android/service/InvalidAdResponseException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_7

    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-static {p0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->processStatusElement(Lorg/w3c/dom/Element;)Lcom/qwapi/adclient/android/data/Status;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/qwapi/adclient/android/data/Status;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ads"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_6

    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v0, "batchid"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "expiry"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    const-string v4, "ad"

    invoke-interface {p0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_6

    move v5, v6

    move-object v6, v10

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_3

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-static {p0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->processAd(Lorg/w3c/dom/Element;)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v7

    if-eqz v3, :cond_0

    invoke-virtual {v7, v2}, Lcom/qwapi/adclient/android/data/Ad;->setExpiry(Ljava/lang/String;)V

    const-string v8, "availableImpressions"

    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/qwapi/adclient/android/data/Ad;->setImpressionCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_3
    if-nez v6, :cond_2

    new-instance v6, Lcom/qwapi/adclient/android/data/AdResponse;

    invoke-direct {v6, v7, v1, v0}, Lcom/qwapi/adclient/android/data/AdResponse;-><init>(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move v3, v6

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v9, "invalid impression count"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    invoke-virtual {v6, v7}, Lcom/qwapi/adclient/android/data/AdResponse;->addAd(Lcom/qwapi/adclient/android/data/Ad;)V

    goto :goto_4

    :cond_3
    move-object v0, v6

    :goto_5
    if-nez v0, :cond_4

    new-instance v0, Lcom/qwapi/adclient/android/data/AdResponse;

    invoke-direct {v0, v10, v1}, Lcom/qwapi/adclient/android/data/AdResponse;-><init>(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;)V

    :cond_4
    :goto_6
    return-object v0

    :cond_5
    new-instance v0, Lcom/qwapi/adclient/android/data/AdResponse;

    invoke-direct {v0, v10, v1}, Lcom/qwapi/adclient/android/data/AdResponse;-><init>(Lcom/qwapi/adclient/android/data/Ad;Lcom/qwapi/adclient/android/data/Status;)V

    goto :goto_6

    :cond_6
    move-object v0, v10

    goto :goto_5

    :cond_7
    move-object v1, v10

    goto/16 :goto_0
.end method

.method private static parseXmlResponse(Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->parseDocument(Lorg/w3c/dom/Document;)Lcom/qwapi/adclient/android/data/AdResponse;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/qwapi/adclient/android/service/InvalidAdResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_0

    const-string v2, "Problem parsing response"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {v1}, Lcom/qwapi/adclient/android/data/AdResponse;->createParseErrorAdReseponse(Ljava/lang/String;)Lcom/qwapi/adclient/android/data/AdResponse;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/service/InvalidAdResponseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static processAd(Lorg/w3c/dom/Element;)Lcom/qwapi/adclient/android/data/Ad;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qwapi/adclient/android/service/InvalidAdResponseException;
        }
    .end annotation

    const-string v8, "text"

    const-string v7, "interstitial"

    const-string v6, "expandablebanner"

    const-string v5, "banner"

    const-string v4, "animatedbanner"

    new-instance v0, Lcom/qwapi/adclient/android/data/Ad;

    invoke-direct {v0}, Lcom/qwapi/adclient/android/data/Ad;-><init>()V

    const-string v1, "id"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setId(Ljava/lang/String;)V

    const-string v1, "isBot"

    invoke-static {p0, v1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getBooleanValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setBot(Z)V

    const-string v1, "clickUrl"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/data/Ad;->setClickUrl(Ljava/lang/String;)V

    const-string v1, "body"

    invoke-static {p0, v1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v2, "type"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Lcom/qwapi/adclient/android/utils/Utils;->isGoodString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/data/Ad;->setAdType(Ljava/lang/String;)V

    const-string v3, "banner"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "banner"

    invoke-static {v1, v5}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->processImageAdElement(Lcom/qwapi/adclient/android/data/Ad;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v3, "animatedbanner"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "animatedbanner"

    invoke-static {v1, v4}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->processImageAdElement(Lcom/qwapi/adclient/android/data/Ad;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "interstitial"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "interstitial"

    invoke-static {v1, v7}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->processImageAdElement(Lcom/qwapi/adclient/android/data/Ad;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "text"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "text"

    invoke-static {v1, v8}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->processTextElement(Lcom/qwapi/adclient/android/data/Ad;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_5
    const-string v3, "expandablebanner"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "expandablebanner"

    invoke-static {v1, v6}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->processExpandableElement(Lcom/qwapi/adclient/android/data/Ad;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/qwapi/adclient/android/service/InvalidAdResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adtype is invalid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qwapi/adclient/android/service/InvalidAdResponseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processExpandableElement(Lcom/qwapi/adclient/android/data/Ad;Lorg/w3c/dom/Element;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "url"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-static {v0, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getIntValue(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v2

    const-string v3, "height"

    invoke-static {v0, v3}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getIntValue(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/qwapi/adclient/android/data/Data;

    invoke-direct {v3, v1, v2, v0}, Lcom/qwapi/adclient/android/data/Data;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3}, Lcom/qwapi/adclient/android/data/Ad;->setData(Lcom/qwapi/adclient/android/data/Data;)V

    const-string v0, "trackingPixels"

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "trackingPixelUrl"

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getValues(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/data/Ad;->setTrackingPixels(Ljava/util/List;)V

    const-string v0, "externallyHosted"

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getBooleanValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/data/Ad;->setExternallyHosted(Z)V

    :cond_0
    return-void
.end method

.method private static processImageAdElement(Lcom/qwapi/adclient/android/data/Ad;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 5

    const-string v3, "banner"

    const-string v2, "animatedbanner"

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const-string v1, "banner"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "banner"

    invoke-static {p1, v3}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "url"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-static {v0, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getIntValue(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v2

    const-string v3, "height"

    invoke-static {v0, v3}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getIntValue(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v3

    const-string v4, "altText"

    invoke-static {v0, v4}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/qwapi/adclient/android/data/Image;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/qwapi/adclient/android/data/Image;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/qwapi/adclient/android/data/Image;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/qwapi/adclient/android/data/Ad;->setImage(Lcom/qwapi/adclient/android/data/Image;)V

    const-string v0, "trackingPixels"

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "trackingPixelUrl"

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getValues(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/data/Ad;->setTrackingPixels(Ljava/util/List;)V

    const-string v0, "actionText"

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/data/Ad;->setActionText(Ljava/lang/String;)V

    const-string v0, "externallyHosted"

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getBooleanValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/data/Ad;->setExternallyHosted(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "animatedbanner"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "animatedbanner"

    invoke-static {p1, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "interstitial"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "image"

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private static processStatusElement(Lorg/w3c/dom/Element;)Lcom/qwapi/adclient/android/data/Status;
    .locals 10

    const/4 v4, 0x0

    const-string v9, "code"

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v0, "code"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "messages"

    invoke-static {p0, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "message"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v6, "code"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    const-string v6, "description"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/qwapi/adclient/android/data/ErrorMessage;

    invoke-direct {v8, v5, v6, v7}, Lcom/qwapi/adclient/android/data/ErrorMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v7, "invalid msg code"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/qwapi/adclient/android/data/Status;

    invoke-direct {v2, v0, v1}, Lcom/qwapi/adclient/android/data/Status;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v2

    :cond_1
    return-object v0
.end method

.method private static processTextElement(Lcom/qwapi/adclient/android/data/Ad;Lorg/w3c/dom/Element;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "bodyText"

    invoke-static {p1, v0, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "headline"

    invoke-static {p1, v1, v2}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qwapi/adclient/android/data/Text;

    invoke-direct {v2, v0, v1}, Lcom/qwapi/adclient/android/data/Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/qwapi/adclient/android/data/Ad;->setText(Lcom/qwapi/adclient/android/data/Text;)V

    const-string v0, "trackingPixels"

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "trackingPixelUrl"

    invoke-static {v0, v1}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getValues(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/data/Ad;->setTrackingPixels(Ljava/util/List;)V

    const-string v0, "externallyHosted"

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/service/AdXmlResponseConverter;->getBooleanValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/data/Ad;->setExternallyHosted(Z)V

    :cond_0
    return-void
.end method
