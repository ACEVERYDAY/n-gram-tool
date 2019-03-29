.class public Lcom/qwapi/adclient/android/AdRequestor;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private updatePreferences()V
    .locals 13

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    const-string v2, "batch"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/RequestMode;->batch:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    invoke-virtual {v0, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->setRequestMode(Lcom/qwapi/adclient/android/requestparams/RequestMode;)V

    :goto_0
    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->getMediaTypes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const-string v3, "banner"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "interstitial"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "text"

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "expandable"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "bannercount"

    const-string v7, "5"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v7, "interstitialcount"

    const-string v8, "5"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "textcount"

    const-string v9, "5"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "expandablecount"

    const-string v10, "5"

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v11, v9

    move v9, v2

    move v2, v11

    move v12, v7

    move v7, v8

    move v8, v12

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/MediaType;->banner:Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-virtual {v0, v3, v9}, Lcom/qwapi/adclient/android/view/QWAdView;->addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/MediaType;->interstitial:Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-virtual {v0, v3, v8}, Lcom/qwapi/adclient/android/view/QWAdView;->addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/MediaType;->text:Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-virtual {v0, v3, v7}, Lcom/qwapi/adclient/android/view/QWAdView;->addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/MediaType;->expandable:Lcom/qwapi/adclient/android/requestparams/MediaType;

    invoke-virtual {v0, v3, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->addMediaType(Lcom/qwapi/adclient/android/requestparams/MediaType;I)V

    :cond_3
    const-string v2, "placement"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v3, "None"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V

    :cond_4
    :goto_2
    const-string v2, "section"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setSection(Ljava/lang/String;)V

    :goto_3
    const-string v2, "animation"

    const-string v3, "Slide"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qwapi/adclient/android/requestparams/AnimationType;->slide:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/requestparams/AnimationType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/AnimationType;->slide:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v0, p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V

    :goto_4
    const-string v2, "testflag"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setTestMode(Z)V

    const-string v2, "pubilsherid"

    const-string v3, "b33eb94ffbce48bd8301a5476039cb63"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setPublisherId(Ljava/lang/String;)V

    const-string v2, "siteid"

    const-string v3, "itest3"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setSiteId(Ljava/lang/String;)V

    const-string v2, "display_mode"

    const-string v3, "normal"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "refreshinterval"

    const-string v4, "30"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1e

    if-eqz v3, :cond_19

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_5

    const/16 v3, 0x1e

    :cond_5
    :goto_5
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    sget-object v4, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->autoRotate:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    invoke-virtual {v4}, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->autoRotate:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setDisplayMode(Lcom/qwapi/adclient/android/requestparams/DisplayMode;)V

    invoke-virtual {v0, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->setAdInterval(I)V

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->resetAutoRefresh()V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_6
    const-string v2, "executionMode"

    const-string v3, "STAGING"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "STAGING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v2, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->STAGING:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    invoke-static {v2}, Lcom/qwapi/adclient/android/AdApiConfig;->setExecutionMode(Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;)V

    :goto_7
    const-string v2, "bgColor"

    const-string v3, "black"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_8
    const-string v2, "textColor"

    const-string v3, "blue"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_9
    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->displayNextAd()V

    return-void

    :cond_8
    sget-object v3, Lcom/qwapi/adclient/android/requestparams/RequestMode;->single:Lcom/qwapi/adclient/android/requestparams/RequestMode;

    invoke-virtual {v0, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->setRequestMode(Lcom/qwapi/adclient/android/requestparams/RequestMode;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "Top"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/Placement;->top:Lcom/qwapi/adclient/android/requestparams/Placement;

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V

    goto/16 :goto_2

    :cond_a
    const-string v3, "Middle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/Placement;->middle:Lcom/qwapi/adclient/android/requestparams/Placement;

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V

    goto/16 :goto_2

    :cond_b
    const-string v3, "Bottom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/Placement;->bottom:Lcom/qwapi/adclient/android/requestparams/Placement;

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V

    goto/16 :goto_2

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setPlacement(Lcom/qwapi/adclient/android/requestparams/Placement;)V

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setSection(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    sget-object v3, Lcom/qwapi/adclient/android/requestparams/AnimationType;->fade:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/requestparams/AnimationType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/AnimationType;->fade:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v0, p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V

    goto/16 :goto_4

    :cond_f
    sget-object v3, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushLeft:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/requestparams/AnimationType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushLeft:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v0, p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V

    goto/16 :goto_4

    :cond_10
    sget-object v3, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushUp:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/requestparams/AnimationType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/AnimationType;->pushUp:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v0, p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V

    goto/16 :goto_4

    :cond_11
    sget-object v3, Lcom/qwapi/adclient/android/requestparams/AnimationType;->hyperspace:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v3}, Lcom/qwapi/adclient/android/requestparams/AnimationType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/AnimationType;->hyperspace:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v0, p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V

    goto/16 :goto_4

    :cond_12
    sget-object v2, Lcom/qwapi/adclient/android/requestparams/AnimationType;->slide:Lcom/qwapi/adclient/android/requestparams/AnimationType;

    invoke-virtual {v0, p0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAnimationType(Landroid/content/Context;Lcom/qwapi/adclient/android/requestparams/AnimationType;)V

    goto/16 :goto_4

    :catch_0
    move-exception v3

    move v3, v4

    goto/16 :goto_5

    :cond_13
    sget-object v4, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->normal:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    invoke-virtual {v4}, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->normal:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setDisplayMode(Lcom/qwapi/adclient/android/requestparams/DisplayMode;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAdInterval(I)V

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->resetAutoRefresh()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    :cond_14
    sget-object v4, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->aged:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    invoke-virtual {v4}, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/qwapi/adclient/android/requestparams/DisplayMode;->aged:Lcom/qwapi/adclient/android/requestparams/DisplayMode;

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setDisplayMode(Lcom/qwapi/adclient/android/requestparams/DisplayMode;)V

    invoke-virtual {v0, v3}, Lcom/qwapi/adclient/android/view/QWAdView;->setAdInterval(I)V

    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->resetAutoRefresh()V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v0}, Lcom/qwapi/adclient/android/view/QWAdView;->resetAutoRefresh()V

    goto/16 :goto_6

    :cond_16
    const-string v3, "QA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v2, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->QA:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    invoke-static {v2}, Lcom/qwapi/adclient/android/AdApiConfig;->setExecutionMode(Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;)V

    goto/16 :goto_7

    :cond_17
    const-string v3, "LIVE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->LIVE:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    invoke-static {v2}, Lcom/qwapi/adclient/android/AdApiConfig;->setExecutionMode(Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;)V

    goto/16 :goto_7

    :cond_18
    sget-object v2, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->STAGING:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    invoke-static {v2}, Lcom/qwapi/adclient/android/AdApiConfig;->setExecutionMode(Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;)V

    goto/16 :goto_7

    :catch_1
    move-exception v2

    const-string v2, "QuattroWirelessSDK/2.1"

    const-string v3, "Invalid color format in preferences for background color defaulting to black"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setBackgroundColor(I)V

    goto/16 :goto_8

    :catch_2
    move-exception v1

    const-string v1, "QuattroWirelessSDK/2.1"

    const-string v2, "Invalid color format in preferences for textColor defaulting to blue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdView;->setTextColor(I)V

    goto/16 :goto_9

    :cond_19
    move v3, v4

    goto/16 :goto_5

    :cond_1a
    move v2, v10

    move v11, v9

    move v9, v7

    move v7, v11

    goto/16 :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/qwapi/adclient/android/AdRequestor;->updatePreferences()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x11

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f050000

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    sget-object v0, Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;->STAGING:Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;

    invoke-static {v0}, Lcom/qwapi/adclient/android/AdApiConfig;->setExecutionMode(Lcom/qwapi/adclient/android/AdApiConfig$ExecutionMode;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/AdRequestor;->setContentView(I)V

    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qwapi/adclient/android/view/QWAdView;

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setGravity(I)V

    new-instance v1, Lcom/qwapi/adclient/android/AdRequestor$1;

    invoke-direct {v1, p0}, Lcom/qwapi/adclient/android/AdRequestor$1;-><init>(Lcom/qwapi/adclient/android/AdRequestor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setGravity(I)V

    new-instance v1, Lcom/qwapi/adclient/android/AdRequestor$2;

    invoke-direct {v1, p0}, Lcom/qwapi/adclient/android/AdRequestor$2;-><init>(Lcom/qwapi/adclient/android/AdRequestor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setGravity(I)V

    new-instance v1, Lcom/qwapi/adclient/android/AdRequestor$3;

    invoke-direct {v1, p0}, Lcom/qwapi/adclient/android/AdRequestor$3;-><init>(Lcom/qwapi/adclient/android/AdRequestor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/qwapi/adclient/android/AdRequestor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Ljava/lang/String;

    const-string v2, "generate memory dump"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setGravity(I)V

    new-instance v1, Lcom/qwapi/adclient/android/AdRequestor$4;

    invoke-direct {v1, p0}, Lcom/qwapi/adclient/android/AdRequestor$4;-><init>(Lcom/qwapi/adclient/android/AdRequestor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/qwapi/adclient/android/AdRequestor;->updatePreferences()V

    return-void
.end method
