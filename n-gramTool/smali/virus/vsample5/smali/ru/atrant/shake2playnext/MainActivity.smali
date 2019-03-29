.class public Lru/atrant/shake2playnext/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;
    }
.end annotation


# instance fields
.field mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

.field private mShaker:Lru/atrant/shake2playnext/ShakeListener;

.field private mTb:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v0, p0, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    .line 43
    iput-object v0, p0, Lru/atrant/shake2playnext/MainActivity;->mShaker:Lru/atrant/shake2playnext/ShakeListener;

    .line 44
    iput-object v0, p0, Lru/atrant/shake2playnext/MainActivity;->mTb:Landroid/widget/ToggleButton;

    .line 40
    return-void
.end method

.method private Exit()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->SaveSettings()V

    .line 214
    invoke-virtual {p0}, Lru/atrant/shake2playnext/MainActivity;->finish()V

    .line 216
    return-void
.end method

.method private LoadSettings()V
    .locals 6

    .prologue
    .line 185
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const v4, 0x7f070008

    invoke-virtual {p0, v4}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 187
    .local v2, "tb":Landroid/widget/ToggleButton;
    const-string v4, "service_enabled"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 189
    const-string v4, "accel_sensitivity"

    .line 190
    const/16 v5, 0x7d0

    .line 189
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 192
    .local v3, "tmp_i":I
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 193
    .local v1, "sb":Landroid/widget/SeekBar;
    const/16 v4, 0x3e8

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 195
    return-void
.end method

.method private PlaySound()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 385
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 386
    .local v0, "alert":Landroid/net/Uri;
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 388
    .local v4, "mMediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v4, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lru/atrant/shake2playnext/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 393
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 395
    invoke-virtual {v4, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 397
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 398
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 399
    iget-object v5, p0, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    const v6, 0x7f040016

    .line 400
    const/4 v7, 0x0

    .line 399
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 400
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v3

    .line 390
    .local v3, "e1":Ljava/lang/Exception;
    goto :goto_0

    .line 401
    .end local v3    # "e1":Ljava/lang/Exception;
    .restart local v1    # "audioManager":Landroid/media/AudioManager;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 402
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private SaveSettings()V
    .locals 5

    .prologue
    .line 199
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 202
    .local v2, "spe":Landroid/content/SharedPreferences$Editor;
    const-string v4, "service_enabled"

    .line 203
    const v3, 0x7f070008

    invoke-virtual {p0, v3}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 204
    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    .line 202
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 206
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 207
    .local v1, "sb":Landroid/widget/SeekBar;
    const-string v3, "accel_sensitivity"

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    add-int/lit16 v4, v4, 0x3e8

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method private ShowAdvert()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method static synthetic access$0(Lru/atrant/shake2playnext/MainActivity;)Lru/atrant/shake2playnext/ShakeListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lru/atrant/shake2playnext/MainActivity;->mShaker:Lru/atrant/shake2playnext/ShakeListener;

    return-object v0
.end method

.method static synthetic access$1(Lru/atrant/shake2playnext/MainActivity;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->PlaySound()V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-virtual {p0}, Lru/atrant/shake2playnext/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shake2PlayNext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    const/4 v2, 0x0

    .line 447
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 449
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const-class v3, Lru/atrant/shake2playnext/AccelService;

    const-string v2, "ru.atrant.shake2playnext.AccelService"

    .line 409
    if-eqz p2, :cond_0

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/atrant/shake2playnext/AccelService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ru.atrant.shake2playnext.AccelService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 419
    :goto_0
    return-void

    .line 414
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/atrant/shake2playnext/AccelService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v1, "ru.atrant.shake2playnext.AccelService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/MainActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const-string v9, "ads_clicked"

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 223
    :sswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 225
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "ads_clicked"

    const/4 v8, 0x0

    invoke-interface {v4, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, "ads_clicked":I
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 227
    .local v5, "spe":Landroid/content/SharedPreferences$Editor;
    const-string v8, "ads_clicked"

    add-int/lit8 v8, v0, 0x1

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    const v8, 0x7f04000b

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 232
    .local v6, "t":Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    .end local v0    # "ads_clicked":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "spe":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "t":Landroid/widget/Toast;
    :sswitch_1
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->SaveSettings()V

    .line 239
    new-instance v3, Landroid/app/ProgressDialog;

    .line 240
    iget-object v8, p0, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    .line 239
    invoke-direct {v3, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 242
    .local v3, "pbarDialog":Landroid/app/ProgressDialog;
    iget-object v8, p0, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    invoke-virtual {v8}, Lru/atrant/shake2playnext/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 243
    const v9, 0x7f040013

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v3, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 245
    new-instance v8, Lru/atrant/shake2playnext/MainActivity$2;

    invoke-direct {v8, p0}, Lru/atrant/shake2playnext/MainActivity$2;-><init>(Lru/atrant/shake2playnext/MainActivity;)V

    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 253
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 255
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 257
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    const-string v8, "accel_sensitivity"

    .line 258
    const/16 v9, 0x7d0

    .line 257
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 259
    .local v7, "user_level":I
    new-instance v8, Lru/atrant/shake2playnext/ShakeListener;

    invoke-direct {v8, p0, v7}, Lru/atrant/shake2playnext/ShakeListener;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lru/atrant/shake2playnext/MainActivity;->mShaker:Lru/atrant/shake2playnext/ShakeListener;

    .line 260
    iget-object v8, p0, Lru/atrant/shake2playnext/MainActivity;->mShaker:Lru/atrant/shake2playnext/ShakeListener;

    new-instance v9, Lru/atrant/shake2playnext/MainActivity$3;

    invoke-direct {v9, p0, v3, v7}, Lru/atrant/shake2playnext/MainActivity$3;-><init>(Lru/atrant/shake2playnext/MainActivity;Landroid/app/ProgressDialog;I)V

    invoke-virtual {v8, v9}, Lru/atrant/shake2playnext/ShakeListener;->setOnShakeListener(Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;)V

    goto :goto_0

    .line 286
    .end local v3    # "pbarDialog":Landroid/app/ProgressDialog;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "user_level":I
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v8, "tunewiki.intent.action.SKIP_NEXT"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "i":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    .line 288
    const-string v8, "com.tunewiki.lyricplayer.android"

    .line 289
    const-string v9, "com.tunewiki.lyricplayer.android.service.TuneWikiMPD"

    .line 287
    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v2, "n":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v1}, Lru/atrant/shake2playnext/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070005 -> :sswitch_0
        0x7f07000c -> :sswitch_1
        0x7f07000d -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 53
    .local v12, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lru/atrant/shake2playnext/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 54
    .local v10, "extras":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 55
    .local v8, "advert":Z
    if-eqz v10, :cond_0

    .line 56
    const-string v18, "popup_for_advert"

    const/16 v19, 0x0

    move-object v0, v10

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 59
    :cond_0
    const v18, 0x7f030001

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lru/atrant/shake2playnext/MainActivity;->setContentView(I)V

    .line 60
    if-eqz v8, :cond_1

    .line 62
    const v18, 0x7f070004

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 63
    .local v7, "ad_textview":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lru/atrant/shake2playnext/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f04000a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "ad_text":Ljava/lang/String;
    const-string v18, "%s1"

    .line 65
    const-string v19, "nexted_times"

    const/16 v20, 0x0

    .line 64
    move-object v0, v12

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    const-string v18, "%s2"

    .line 67
    const/16 v19, 0x14

    .line 68
    const-string v20, "ads_clicked"

    const/16 v21, 0x0

    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 67
    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 66
    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .end local v6    # "ad_text":Ljava/lang/String;
    .end local v7    # "ad_textview":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    .line 76
    invoke-direct/range {p0 .. p0}, Lru/atrant/shake2playnext/MainActivity;->LoadSettings()V

    .line 78
    const-string v18, "ads_clicked"

    const/16 v19, 0x0

    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 80
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "emulator"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 82
    const-string v20, "501978F844133087939C8EA0285A6448"

    aput-object v20, v18, v19

    .line 80
    invoke-static/range {v18 .. v18}, Lcom/admob/android/ads/AdManager;->setTestDevices([Ljava/lang/String;)V

    .line 87
    const v18, 0x7f070005

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/admob/android/ads/AdView;

    .line 89
    .local v4, "ad":Lcom/admob/android/ads/AdView;
    const/16 v18, 0x8

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 91
    const/16 v18, 0x0

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 92
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v5, Lru/atrant/shake2playnext/AdListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AdListener;-><init>(Landroid/app/Activity;)V

    .line 96
    .local v5, "adListener":Lru/atrant/shake2playnext/AdListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    move-object/from16 v18, v0

    .line 97
    const v19, 0x7f070006

    invoke-virtual/range {v18 .. v19}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 96
    check-cast v13, Lcom/qwapi/adclient/android/view/QWAdView;

    .line 98
    .local v13, "qwAdView":Lcom/qwapi/adclient/android/view/QWAdView;
    const/16 v18, 0x0

    move-object v0, v13

    move-object v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/qwapi/adclient/android/view/QWAdView;->setAdEventsListener(Lcom/qwapi/adclient/android/view/AdEventsListener;Z)V

    .line 110
    .end local v5    # "adListener":Lru/atrant/shake2playnext/AdListener;
    :goto_0
    const v18, 0x7f07000c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 111
    .local v9, "b":Landroid/widget/Button;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v18, 0x7f07000d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "b":Landroid/widget/Button;
    check-cast v9, Landroid/widget/Button;

    .line 113
    .restart local v9    # "b":Landroid/widget/Button;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v18, 0x7f070008

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    check-cast p1, Landroid/widget/ToggleButton;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lru/atrant/shake2playnext/MainActivity;->mTb:Landroid/widget/ToggleButton;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/MainActivity;->mTb:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/MainActivity;->mTb:Landroid/widget/ToggleButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lru/atrant/shake2playnext/MainActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 117
    const v18, 0x7f07000b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/SeekBar;

    .line 118
    .local v14, "sb":Landroid/widget/SeekBar;
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 120
    const-string v18, "first_start"

    const/16 v19, 0x1

    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 121
    .local v11, "first_start":Z
    if-eqz v11, :cond_2

    .line 122
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 123
    .local v15, "spe":Landroid/content/SharedPreferences$Editor;
    const-string v18, "first_start"

    const/16 v19, 0x0

    move-object v0, v15

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    new-instance v17, Lru/atrant/shake2playnext/MainActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/MainActivity$1;-><init>(Lru/atrant/shake2playnext/MainActivity;)V

    .line 138
    .local v17, "vibra_run":Ljava/lang/Runnable;
    const v18, 0x7f04001a

    .line 139
    const/16 v19, 0x1

    .line 138
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    .line 139
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 140
    new-instance v16, Ljava/lang/Thread;

    const/16 v18, 0x0

    const-string v19, "s2pnThread"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 141
    .local v16, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 144
    .end local v15    # "spe":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "thread":Ljava/lang/Thread;
    .end local v17    # "vibra_run":Ljava/lang/Runnable;
    :cond_2
    return-void

    .line 102
    .end local v4    # "ad":Lcom/admob/android/ads/AdView;
    .end local v9    # "b":Landroid/widget/Button;
    .end local v11    # "first_start":Z
    .end local v13    # "qwAdView":Lcom/qwapi/adclient/android/view/QWAdView;
    .end local v14    # "sb":Landroid/widget/SeekBar;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_3
    const v18, 0x7f070005

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/admob/android/ads/AdView;

    .line 103
    .restart local v4    # "ad":Lcom/admob/android/ads/AdView;
    const/16 v18, 0x8

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 104
    const/16 v18, 0x0

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    move-object/from16 v18, v0

    .line 106
    const v19, 0x7f070006

    invoke-virtual/range {v18 .. v19}, Lru/atrant/shake2playnext/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 105
    check-cast v13, Lcom/qwapi/adclient/android/view/QWAdView;

    .line 107
    .restart local v13    # "qwAdView":Lcom/qwapi/adclient/android/view/QWAdView;
    const/16 v18, 0x8

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qwapi/adclient/android/view/QWAdView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 306
    invoke-virtual {p0}, Lru/atrant/shake2playnext/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 307
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 308
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->Exit()V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v5, v9

    .line 354
    :goto_0
    return v5

    .line 314
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lru/atrant/shake2playnext/About;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/MainActivity;->startActivity(Landroid/content/Intent;)V

    move v5, v8

    .line 316
    goto :goto_0

    .line 318
    .end local v2    # "i":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->Exit()V

    move v5, v8

    .line 319
    goto :goto_0

    .line 321
    :pswitch_2
    invoke-virtual {p0}, Lru/atrant/shake2playnext/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 322
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 325
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lru/atrant/shake2playnext/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 324
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 329
    :goto_1
    new-instance v1, Landroid/content/Intent;

    .line 330
    const-string v5, "android.intent.action.SEND"

    .line 329
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, "emailIntent":Landroid/content/Intent;
    const-string v5, "plain/text"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v5, "android.intent.extra.EMAIL"

    .line 333
    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "atrant.sg@gmail.com"

    aput-object v7, v6, v9

    .line 332
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v5, "android.intent.extra.SUBJECT"

    .line 335
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Shake2PlayNext version "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bugreport"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 334
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v5, "android.intent.extra.TEXT"

    .line 337
    invoke-virtual {p0}, Lru/atrant/shake2playnext/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 336
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0}, Lru/atrant/shake2playnext/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 339
    const v6, 0x7f040008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lru/atrant/shake2playnext/MainActivity;->startActivity(Landroid/content/Intent;)V

    move v5, v8

    .line 340
    goto :goto_0

    .line 326
    .end local v1    # "emailIntent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 327
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 343
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :pswitch_3
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .line 344
    const-string v7, "market://details?id=ru.atrant.shake2playnext"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    invoke-virtual {p0, v5}, Lru/atrant/shake2playnext/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v5, v8

    .line 348
    goto/16 :goto_0

    .line 345
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lru/atrant/shake2playnext/Settings;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .restart local v2    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/MainActivity;->startActivity(Landroid/content/Intent;)V

    move v5, v8

    .line 352
    goto/16 :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x7f070035
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 149
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->SaveSettings()V

    .line 151
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 360
    if-eqz p3, :cond_0

    iget-object v2, p0, Lru/atrant/shake2playnext/MainActivity;->mTb:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "ru.atrant.shake2playnext"

    .line 363
    const-string v3, "ru.atrant.shake2playnext.AccelService"

    .line 362
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-class v2, Lru/atrant/shake2playnext/IShake2PlayNextService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    new-instance v0, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;

    invoke-direct {v0, p0}, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;-><init>(Lru/atrant/shake2playnext/MainActivity;)V

    .line 366
    .local v0, "conn":Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;
    mul-int/lit8 v2, p2, 0x64

    add-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;->setTr(I)V

    .line 367
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lru/atrant/shake2playnext/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 373
    .end local v0    # "conn":Lru/atrant/shake2playnext/MainActivity$MyServiceConnection;
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->SaveSettings()V

    goto :goto_0
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 169
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->LoadSettings()V

    .line 170
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->LoadSettings()V

    .line 164
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 377
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 156
    invoke-direct {p0}, Lru/atrant/shake2playnext/MainActivity;->SaveSettings()V

    .line 158
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 381
    return-void
.end method
