.class Lru/atrant/shake2playnext/AccelService$2;
.super Ljava/lang/Object;
.source "AccelService.java"

# interfaces
.implements Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/atrant/shake2playnext/AccelService;->_startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/atrant/shake2playnext/AccelService;


# direct methods
.method constructor <init>(Lru/atrant/shake2playnext/AccelService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrongShake()V
    .locals 26

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 91
    .local v17, "prefs":Landroid/content/SharedPreferences;
    const/16 v20, 0x0

    .line 93
    .local v20, "res":Z
    const/4 v10, 0x0

    .line 94
    .local v10, "default_player":Z
    const/4 v9, 0x0

    .line 95
    .local v9, "default_hero_player":Z
    const/16 v16, 0x0

    .line 96
    .local v16, "mort_player":Z
    const/4 v15, 0x0

    .line 97
    .local v15, "mixzing_player":Z
    const/4 v14, 0x0

    .line 98
    .local v14, "meridian_player":Z
    const/4 v8, 0x0

    .line 99
    .local v8, "cubed_player":Z
    const/4 v4, 0x0

    .line 100
    .local v4, "andless_player":Z
    const/4 v6, 0x0

    .line 101
    .local v6, "btunes_player":Z
    const/4 v5, 0x0

    .line 102
    .local v5, "btunes16_player":Z
    const/16 v21, 0x0

    .line 103
    .local v21, "rhapsody_player":Z
    const/4 v13, 0x0

    .line 104
    .local v13, "lastfm_player":Z
    const/4 v11, 0x0

    .line 106
    .local v11, "doubletwist_player":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lru/atrant/shake2playnext/AccelService;->access$4(Lru/atrant/shake2playnext/AccelService;)Landroid/app/ActivityManager;

    move-result-object v22

    .line 107
    const/16 v23, 0x64

    invoke-virtual/range {v22 .. v23}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v18

    .line 109
    .local v18, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const-string v19, ""

    .line 110
    .local v19, "proc_name":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v22

    move v0, v12

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    .line 150
    if-eqz v10, :cond_0

    .line 151
    const-string v22, "default_player_enabled"

    .line 152
    const/16 v23, 0x1

    .line 151
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 153
    new-instance v12, Landroid/content/Intent;

    .end local v12    # "i":I
    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v12, "i":Landroid/content/Intent;
    const-string v22, "com.android.music"

    .line 155
    const-string v23, "com.android.music.MediaPlaybackService"

    .line 154
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    new-instance v7, Lru/atrant/shake2playnext/AccelService$MediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$MediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 157
    .local v7, "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v20

    .line 160
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_0
    if-eqz v9, :cond_1

    .line 162
    const-string v22, "default_hero_player_enabled"

    const/16 v23, 0x1

    .line 161
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 163
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 164
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "com.htc.music"

    .line 165
    const-string v23, "com.htc.music.MediaPlaybackService"

    .line 164
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    new-instance v7, Lru/atrant/shake2playnext/AccelService$HeroMediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$HeroMediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 167
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v20

    .line 176
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_1
    if-eqz v16, :cond_2

    .line 177
    const-string v22, "mort_player_enabled"

    .line 178
    const/16 v23, 0x0

    .line 177
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 179
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 181
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "de.stohelit.folderplayer"

    .line 182
    const-string v23, "de.stohelit.folderplayer.playback.PlaybackService"

    .line 181
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    new-instance v7, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$Mort2MediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 184
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v20

    .line 186
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_2
    if-eqz v15, :cond_3

    .line 187
    const-string v22, "mixzing_player_enabled"

    .line 188
    const/16 v23, 0x0

    .line 187
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 189
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 190
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "com.mixzing.basic"

    .line 191
    const-string v23, "com.mixzing.music.MediaPlaybackService"

    .line 190
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    new-instance v7, Lru/atrant/shake2playnext/AccelService$MixzingMediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$MixzingMediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 193
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v20

    .line 195
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_3
    if-eqz v8, :cond_4

    .line 196
    const-string v22, "cubed_player_enabled"

    .line 197
    const/16 v23, 0x0

    .line 196
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 198
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 200
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "org.abrantix.rockon.rockonnggl"

    .line 201
    const-string v23, "org.abrantix.rockon.rockonnggl.RockOnNextGenService"

    .line 200
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    new-instance v7, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$CubedMediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 203
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 205
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_4
    if-eqz v14, :cond_5

    .line 206
    const-string v22, "meridian_player_enabled"

    .line 207
    const/16 v23, 0x0

    .line 206
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 208
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 209
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "org.iii.romulus.meridian"

    .line 210
    const-string v23, "org.iii.romulus.meridian.MusicPlaybackService"

    .line 209
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    new-instance v7, Lru/atrant/shake2playnext/AccelService$MeridianMediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$MeridianMediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 212
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 214
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_5
    if-eqz v4, :cond_6

    .line 215
    const-string v22, "andless_player_enabled"

    .line 216
    const/16 v23, 0x0

    .line 215
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 217
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 218
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "net.avs234"

    const-string v23, "net.avs234.AndLessSrv"

    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    new-instance v7, Lru/atrant/shake2playnext/AccelService$AndlessMediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$AndlessMediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 220
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 222
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_6
    if-eqz v6, :cond_7

    .line 223
    const-string v22, "btunes_player_enabled"

    .line 224
    const/16 v23, 0x0

    .line 223
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 225
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 226
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "com.bmayers.bTunesRelease"

    .line 227
    const-string v23, "com.bmayers.bTunesRelease.PlayerService"

    .line 226
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    new-instance v7, Lru/atrant/shake2playnext/AccelService$BTunesMediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$BTunesMediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 229
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 231
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_7
    if-eqz v5, :cond_8

    .line 232
    const-string v22, "btunes16_player_enabled"

    .line 233
    const/16 v23, 0x0

    .line 232
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 234
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 235
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "com.bmayers.bTunesRelease16"

    .line 236
    const-string v23, "com.bmayers.bTunesRelease16.PlayerService"

    .line 235
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    new-instance v7, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$BTunes16MediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 238
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 240
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_8
    if-eqz v21, :cond_9

    .line 241
    const-string v22, "rhapsody_player_enabled"

    .line 242
    const/16 v23, 0x0

    .line 241
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 243
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 245
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "com.variamobile.soundwave"

    .line 246
    const-string v23, "com.variamobile.soundwave.player.MediaPlaybackService"

    .line 245
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    new-instance v7, Lru/atrant/shake2playnext/AccelService$RhapsodyMediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$RhapsodyMediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 248
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 250
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_9
    if-eqz v13, :cond_a

    .line 251
    const-string v22, "lastfm_player_enabled"

    .line 252
    const/16 v23, 0x0

    .line 251
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 253
    new-instance v12, Landroid/content/Intent;

    .line 254
    const-string v22, "com.smartmadsoft.openwatch.command.BUTTON_FF"

    .line 253
    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v12    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Lru/atrant/shake2playnext/AccelService;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const-string v23, "Last.fm"

    const v24, 0x7f040032

    invoke-static/range {v22 .. v24}, Lru/atrant/shake2playnext/AccelService;->access$1(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;I)V

    .line 258
    .end local v12    # "i":Landroid/content/Intent;
    :cond_a
    if-eqz v11, :cond_b

    .line 260
    const-string v22, "DOUBLETWIST_PLAYER_ENABLED"

    const/16 v23, 0x0

    .line 259
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 261
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 263
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "com.doubleTwist.androidPlayer"

    .line 264
    const-string v23, "com.doubleTwist.androidPlayer.MediaPlaybackService"

    .line 263
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    new-instance v7, Lru/atrant/shake2playnext/AccelService$DoubleTwistMediaPlayerServiceConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lru/atrant/shake2playnext/AccelService$DoubleTwistMediaPlayerServiceConnection;-><init>(Lru/atrant/shake2playnext/AccelService;)V

    .line 266
    .restart local v7    # "conn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lru/atrant/shake2playnext/AccelService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 269
    .end local v7    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "i":Landroid/content/Intent;
    :cond_b
    const-string v22, "SIMULATE_KEYDOWN_ENABLED"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lru/atrant/shake2playnext/AccelService;->access$5(Lru/atrant/shake2playnext/AccelService;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v22

    if-nez v22, :cond_c

    .line 272
    new-instance v12, Landroid/content/Intent;

    .line 273
    const-string v22, "android.intent.action.MEDIA_BUTTON"

    .line 272
    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "android.intent.extra.KEY_EVENT"

    new-instance v23, Landroid/view/KeyEvent;

    .line 275
    const/16 v24, 0x0

    .line 276
    const/16 v25, 0x57

    invoke-direct/range {v23 .. v25}, Landroid/view/KeyEvent;-><init>(II)V

    .line 274
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lru/atrant/shake2playnext/AccelService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const-string v23, "Media button"

    const v24, 0x7f040036

    invoke-static/range {v22 .. v24}, Lru/atrant/shake2playnext/AccelService;->access$1(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;I)V

    .line 282
    .end local v12    # "i":Landroid/content/Intent;
    :cond_c
    const-string v22, "SIMULATE_KEYUP_ENABLED"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lru/atrant/shake2playnext/AccelService;->access$5(Lru/atrant/shake2playnext/AccelService;)Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v22

    if-nez v22, :cond_d

    .line 285
    new-instance v12, Landroid/content/Intent;

    .line 286
    const-string v22, "android.intent.action.MEDIA_BUTTON"

    .line 285
    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v22, "android.intent.extra.KEY_EVENT"

    .line 288
    new-instance v23, Landroid/view/KeyEvent;

    const/16 v24, 0x1

    .line 289
    const/16 v25, 0x57

    .line 288
    invoke-direct/range {v23 .. v25}, Landroid/view/KeyEvent;-><init>(II)V

    .line 287
    move-object v0, v12

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object v1, v12

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lru/atrant/shake2playnext/AccelService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lru/atrant/shake2playnext/AccelService$2;->this$0:Lru/atrant/shake2playnext/AccelService;

    move-object/from16 v22, v0

    const-string v23, "Media button"

    const v24, 0x7f040037

    invoke-static/range {v22 .. v24}, Lru/atrant/shake2playnext/AccelService;->access$1(Lru/atrant/shake2playnext/AccelService;Ljava/lang/String;I)V

    .line 296
    .end local v12    # "i":Landroid/content/Intent;
    :cond_d
    return-void

    .line 111
    .local v12, "i":I
    :cond_e
    move-object/from16 v0, v18

    move v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object v0, v7

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 113
    const-string v22, "com.android.music.MediaPlaybackService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 114
    const/4 v10, 0x1

    .line 110
    :cond_f
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 116
    :cond_10
    const-string v22, "com.htc.music.MediaPlaybackService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 117
    const/4 v9, 0x1

    goto :goto_1

    .line 119
    :cond_11
    const-string v22, "de.stohelit.folderplayer.playback.PlaybackService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 120
    const/16 v16, 0x1

    goto :goto_1

    .line 122
    :cond_12
    const-string v22, "com.mixzing.music.MediaPlaybackService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 123
    const/4 v15, 0x1

    goto :goto_1

    .line 125
    :cond_13
    const-string v22, "org.abrantix.rockon.rockonnggl.RockOnNextGenService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 126
    const/4 v8, 0x1

    goto :goto_1

    .line 128
    :cond_14
    const-string v22, "org.iii.romulus.meridian.MusicPlaybackService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 129
    const/4 v14, 0x1

    goto :goto_1

    .line 130
    :cond_15
    const-string v22, "net.avs234.AndLessSrv"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 131
    const/4 v4, 0x1

    goto :goto_1

    .line 133
    :cond_16
    const-string v22, "com.bmayers.bTunesRelease.PlayerService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 134
    const/4 v6, 0x1

    goto :goto_1

    .line 136
    :cond_17
    const-string v22, "com.bmayers.bTunesRelease16.PlayerService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 137
    const/4 v5, 0x1

    goto :goto_1

    .line 139
    :cond_18
    const-string v22, "com.variamobile.soundwave.player.MediaPlaybackService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 140
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 142
    :cond_19
    const-string v22, "fm.last.android.player.RadioPlayerService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 143
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 145
    :cond_1a
    const-string v22, "com.doubleTwist.androidPlayer.MediaPlaybackService"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 146
    const/4 v11, 0x1

    goto/16 :goto_1
.end method
