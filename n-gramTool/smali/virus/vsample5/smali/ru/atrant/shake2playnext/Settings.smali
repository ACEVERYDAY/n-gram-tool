.class public Lru/atrant/shake2playnext/Settings;
.super Landroid/app/Activity;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/atrant/shake2playnext/Settings$MyServiceConnection;,
        Lru/atrant/shake2playnext/Settings$MyServiceConnection2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private LoadSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 120
    .local v0, "cb":Landroid/widget/CheckBox;
    const-string v2, "mort_player_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    const v2, 0x7f070018

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 124
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "mixzing_player_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    const v2, 0x7f07001b

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 129
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "meridian_player_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    const v2, 0x7f07001e

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 133
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "andless_player_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 137
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "cubed_player_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    const v2, 0x7f070024

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 140
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "btunes_player_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 144
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "btunes16_player_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    const v2, 0x7f070012

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 147
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "default_player_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    const v2, 0x7f070013

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 150
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "default_hero_player_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 155
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "rhapsody_player_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 154
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 159
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "KEEP_SCREEN_ON_ENABLED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 164
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "STATUSBAR_NOTIFICATIONS_ENABLED"

    .line 163
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 167
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "lastfm_player_enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 170
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "DOUBLETWIST_PLAYER_ENABLED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    const v2, 0x7f070033

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 173
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "SIMULATE_KEYDOWN_ENABLED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 175
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cb":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 178
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    const-string v2, "SIMULATE_KEYUP_ENABLED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 180
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    return-void
.end method

.method private SaveSettings()V
    .locals 4

    .prologue
    .line 185
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 188
    .local v1, "spe":Landroid/content/SharedPreferences$Editor;
    const-string v3, "mort_player_enabled"

    .line 189
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 188
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v3, "mixzing_player_enabled"

    .line 191
    const v2, 0x7f070018

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 190
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v3, "meridian_player_enabled"

    .line 193
    const v2, 0x7f07001b

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 192
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v3, "andless_player_enabled"

    .line 195
    const v2, 0x7f07001e

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 194
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v3, "cubed_player_enabled"

    .line 197
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 196
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    const-string v3, "btunes_player_enabled"

    .line 199
    const v2, 0x7f070024

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 198
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    const-string v3, "btunes16_player_enabled"

    .line 201
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 200
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    const-string v3, "default_player_enabled"

    .line 203
    const v2, 0x7f070012

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 202
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    const-string v3, "default_hero_player_enabled"

    .line 205
    const v2, 0x7f070013

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 206
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 204
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string v3, "rhapsody_player_enabled"

    .line 208
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 207
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 209
    const-string v3, "KEEP_SCREEN_ON_ENABLED"

    .line 210
    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 209
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string v3, "STATUSBAR_NOTIFICATIONS_ENABLED"

    .line 214
    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 215
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 212
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v3, "lastfm_player_enabled"

    .line 217
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 216
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 218
    const-string v3, "DOUBLETWIST_PLAYER_ENABLED"

    .line 219
    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 218
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 220
    const-string v3, "SIMULATE_KEYDOWN_ENABLED"

    .line 221
    const v2, 0x7f070033

    invoke-virtual {p0, v2}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 220
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v2, "SIMULATE_KEYUP_ENABLED"

    .line 223
    const v3, 0x7f070034

    invoke-virtual {p0, v3}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0    # "this":Lru/atrant/shake2playnext/Settings;
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 222
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    return-void
.end method

.method private openMarket(Ljava/lang/String;)V
    .locals 5
    .param p1, "publisher"    # Ljava/lang/String;

    .prologue
    .line 78
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://search?q=pub:\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    invoke-virtual {p0, v1}, Lru/atrant/shake2playnext/Settings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x0

    const-class v8, Lru/atrant/shake2playnext/IShake2PlayNextService;

    const-string v7, "ru.atrant.shake2playnext.AccelService"

    const-string v6, "ru.atrant.shake2playnext"

    .line 87
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f070010

    if-ne v3, v4, :cond_2

    .line 88
    if-eqz p2, :cond_0

    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, "adb":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f04002e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 91
    const v3, 0x7f04002f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 92
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 97
    .end local v0    # "adb":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "ru.atrant.shake2playnext"

    .line 99
    const-string v3, "ru.atrant.shake2playnext.AccelService"

    .line 98
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-class v3, Lru/atrant/shake2playnext/IShake2PlayNextService;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    new-instance v1, Lru/atrant/shake2playnext/Settings$MyServiceConnection;

    invoke-direct {v1, p0}, Lru/atrant/shake2playnext/Settings$MyServiceConnection;-><init>(Lru/atrant/shake2playnext/Settings;)V

    .line 102
    .local v1, "conn":Lru/atrant/shake2playnext/Settings$MyServiceConnection;
    invoke-virtual {v1, p2}, Lru/atrant/shake2playnext/Settings$MyServiceConnection;->runThread(Z)V

    .line 103
    invoke-virtual {p0, v2, v1, v5}, Lru/atrant/shake2playnext/Settings;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 113
    .end local v1    # "conn":Lru/atrant/shake2playnext/Settings$MyServiceConnection;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lru/atrant/shake2playnext/Settings;->SaveSettings()V

    .line 114
    return-void

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f070011

    if-ne v3, v4, :cond_1

    .line 105
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 106
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v3, "ru.atrant.shake2playnext"

    .line 107
    const-string v3, "ru.atrant.shake2playnext.AccelService"

    .line 106
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-class v3, Lru/atrant/shake2playnext/IShake2PlayNextService;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    new-instance v1, Lru/atrant/shake2playnext/Settings$MyServiceConnection2;

    invoke-direct {v1, p0}, Lru/atrant/shake2playnext/Settings$MyServiceConnection2;-><init>(Lru/atrant/shake2playnext/Settings;)V

    .line 110
    .local v1, "conn":Lru/atrant/shake2playnext/Settings$MyServiceConnection2;
    invoke-virtual {v1, p2}, Lru/atrant/shake2playnext/Settings$MyServiceConnection2;->enableNotifications(Z)V

    .line 111
    invoke-virtual {p0, v2, v1, v5}, Lru/atrant/shake2playnext/Settings;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 44
    :sswitch_0
    const-string v0, "sto-helit.de"

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/Settings;->openMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "MixZing"

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/Settings;->openMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_2
    const-string v0, "III - Romulus Urakagi Ts\'ai"

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/Settings;->openMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_3
    const-string v0, "skvalex"

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/Settings;->openMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_4
    const-string v0, "Filipe Abrantes"

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/Settings;->openMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :sswitch_5
    const-string v0, "Brandon Ayers"

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/Settings;->openMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :sswitch_6
    const-string v0, "Rhapsody International Inc."

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/Settings;->openMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :sswitch_7
    const-string v0, "Last.fm Ltd."

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/Settings;->openMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :sswitch_8
    const-string v0, "doubleTwist Corp"

    invoke-direct {p0, v0}, Lru/atrant/shake2playnext/Settings;->openMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x7f070016 -> :sswitch_0
        0x7f070019 -> :sswitch_1
        0x7f07001c -> :sswitch_2
        0x7f07001f -> :sswitch_3
        0x7f070022 -> :sswitch_6
        0x7f070025 -> :sswitch_5
        0x7f070028 -> :sswitch_5
        0x7f07002b -> :sswitch_7
        0x7f07002e -> :sswitch_8
        0x7f070031 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->setContentView(I)V

    .line 26
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-direct {p0}, Lru/atrant/shake2playnext/Settings;->LoadSettings()V

    .line 38
    return-void
.end method
