.class Lcom/qwapi/adclient/android/AdRequestor$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/AdRequestor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/AdRequestor;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/AdRequestor;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/AdRequestor$3;->this$0:Lcom/qwapi/adclient/android/AdRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v1, 0x0

    const v4, 0x7f080006

    const/4 v7, 0x0

    const-string v3, "text/html"

    const-string v8, "</td><td>"

    iget-object v0, p0, Lcom/qwapi/adclient/android/AdRequestor$3;->this$0:Lcom/qwapi/adclient/android/AdRequestor;

    const/high16 v2, 0x7f080000

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->getCachedBatchAds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/qwapi/adclient/android/AdRequestor$3;->this$0:Lcom/qwapi/adclient/android/AdRequestor;

    invoke-virtual {v0, v4}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearView()V

    const-string v0, "<div style=\'font-size : 10px;\'>Batch Mode Not Enabled</div>"

    const-string v1, "text/html"

    const-string v1, "UTF-8"

    invoke-virtual {p0, v0, v3, v1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qwapi/adclient/android/AdRequestor$3;->this$0:Lcom/qwapi/adclient/android/AdRequestor;

    invoke-virtual {v0, v4}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "<table style=\'font-size:10px;\' border=\'1\'><tr><td><b>AdId</b></td><td><b>AdType</b></td><td><b>Impression Count</b></td></tr>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qwapi/adclient/android/data/AdResponse;

    const-string v5, "<tr><td>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v7}, Lcom/qwapi/adclient/android/data/AdResponse;->getAd(I)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qwapi/adclient/android/data/Ad;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "</td><td>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v7}, Lcom/qwapi/adclient/android/data/AdResponse;->getAd(I)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qwapi/adclient/android/data/Ad;->getAdType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "expandablebanner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "expandable"

    :cond_1
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "</td><td>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v7}, Lcom/qwapi/adclient/android/data/AdResponse;->getAd(I)Lcom/qwapi/adclient/android/data/Ad;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qwapi/adclient/android/data/Ad;->getImpressions()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, "</td></tr>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v6, "animatedbanner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "animated"

    goto :goto_2

    :cond_3
    const-string v2, "</table>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
