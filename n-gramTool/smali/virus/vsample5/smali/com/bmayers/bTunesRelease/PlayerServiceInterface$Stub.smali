.class public abstract Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;
.super Landroid/os/Binder;
.source "PlayerServiceInterface.java"

# interfaces
.implements Lcom/bmayers/bTunesRelease/PlayerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bmayers/bTunesRelease/PlayerServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bmayers.bTunesRelease.PlayerServiceInterface"

.field static final TRANSACTION_GetSongGenreHashCount:I = 0x8

.field static final TRANSACTION_SetNowPlayingListBySongIds:I = 0x4

.field static final TRANSACTION_SetSongGenreHashTable:I = 0x5

.field static final TRANSACTION_clearNowPlaying:I = 0x1

.field static final TRANSACTION_getCurrentArtist:I = 0x14

.field static final TRANSACTION_getCurrentSong:I = 0x16

.field static final TRANSACTION_getCurrentSongIndex:I = 0xc

.field static final TRANSACTION_getCurrentSongProgress:I = 0xf

.field static final TRANSACTION_getCurrentTitle:I = 0x15

.field static final TRANSACTION_getExceptionMessage:I = 0x13

.field static final TRANSACTION_getNowPlayingList:I = 0xb

.field static final TRANSACTION_getNowPlayingListChanged:I = 0x17

.field static final TRANSACTION_getNowPlayingSongCount:I = 0xd

.field static final TRANSACTION_getRepeatMode:I = 0x11

.field static final TRANSACTION_isPlaying:I = 0x12

.field static final TRANSACTION_nextSong:I = 0x1d

.field static final TRANSACTION_notifyNowPlayingChanged:I = 0x2

.field static final TRANSACTION_pause:I = 0x1a

.field static final TRANSACTION_playFile:I = 0x9

.field static final TRANSACTION_prepareFile:I = 0xa

.field static final TRANSACTION_previousSong:I = 0x1e

.field static final TRANSACTION_removeCurrentSong:I = 0x7

.field static final TRANSACTION_removeSong:I = 0x6

.field static final TRANSACTION_saveNowPlayingList:I = 0x19

.field static final TRANSACTION_seekTo:I = 0x1f

.field static final TRANSACTION_seekToLocation:I = 0x20

.field static final TRANSACTION_setCurrentSongIndex:I = 0xe

.field static final TRANSACTION_setNowPlayingListBySongIds:I = 0x3

.field static final TRANSACTION_setRepeatMode:I = 0x10

.field static final TRANSACTION_setWiredHeadsetDelay:I = 0x18

.field static final TRANSACTION_stop:I = 0x1c

.field static final TRANSACTION_unpause:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bmayers/bTunesRelease/PlayerServiceInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_0
    return-object v1

    .line 33
    :cond_0
    const-string v1, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bmayers/bTunesRelease/PlayerServiceInterface;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/bmayers/bTunesRelease/PlayerServiceInterface;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 49
    :sswitch_0
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->clearNowPlaying()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 57
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->notifyNowPlayingChanged()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 64
    goto :goto_0

    .line 68
    :sswitch_3
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 71
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->setNowPlayingListBySongIds([I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 73
    goto :goto_0

    .line 77
    .end local v0    # "_arg0":[I
    :sswitch_4
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v6

    .line 83
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v6

    .line 84
    .local v2, "_arg2":Z
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->SetNowPlayingListBySongIds([IZZ)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 86
    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :cond_0
    move v1, v8

    .line 81
    goto :goto_1

    .restart local v1    # "_arg1":Z
    :cond_1
    move v2, v8

    .line 83
    goto :goto_2

    .line 90
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Z
    :sswitch_5
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 94
    .local v0, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->SetSongGenreHashTable([J[Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 97
    goto :goto_0

    .line 101
    .end local v0    # "_arg0":[J
    .end local v1    # "_arg1":[Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->removeSong(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 106
    goto :goto_0

    .line 110
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->removeCurrentSong()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 113
    goto/16 :goto_0

    .line 117
    :sswitch_8
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->GetSongGenreHashCount()I

    move-result v3

    .line 119
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 121
    goto/16 :goto_0

    .line 125
    .end local v3    # "_result":I
    :sswitch_9
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->playFile(I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 130
    goto/16 :goto_0

    .line 134
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->prepareFile(I)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 139
    goto/16 :goto_0

    .line 143
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getNowPlayingList()Ljava/util/List;

    move-result-object v4

    .line 145
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v5, v6

    .line 147
    goto/16 :goto_0

    .line 151
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_c
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getCurrentSongIndex()I

    move-result v3

    .line 153
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 155
    goto/16 :goto_0

    .line 159
    .end local v3    # "_result":I
    :sswitch_d
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getNowPlayingSongCount()I

    move-result v3

    .line 161
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 163
    goto/16 :goto_0

    .line 167
    .end local v3    # "_result":I
    :sswitch_e
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->setCurrentSongIndex(I)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 172
    goto/16 :goto_0

    .line 176
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getCurrentSongProgress()I

    move-result v3

    .line 178
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 180
    goto/16 :goto_0

    .line 184
    .end local v3    # "_result":I
    :sswitch_10
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->setRepeatMode(I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 189
    goto/16 :goto_0

    .line 193
    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getRepeatMode()I

    move-result v3

    .line 195
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 197
    goto/16 :goto_0

    .line 201
    .end local v3    # "_result":I
    :sswitch_12
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->isPlaying()Z

    move-result v3

    .line 203
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v3, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 205
    goto/16 :goto_0

    :cond_2
    move v5, v8

    .line 204
    goto :goto_3

    .line 209
    .end local v3    # "_result":Z
    :sswitch_13
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getExceptionMessage()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 213
    goto/16 :goto_0

    .line 217
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getCurrentArtist()Ljava/lang/String;

    move-result-object v3

    .line 219
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 221
    goto/16 :goto_0

    .line 225
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getCurrentTitle()Ljava/lang/String;

    move-result-object v3

    .line 227
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 229
    goto/16 :goto_0

    .line 233
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getCurrentSong()Ljava/util/List;

    move-result-object v4

    .line 235
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v5, v6

    .line 237
    goto/16 :goto_0

    .line 241
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_17
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->getNowPlayingListChanged()Z

    move-result v3

    .line 243
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v3, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 245
    goto/16 :goto_0

    :cond_3
    move v5, v8

    .line 244
    goto :goto_4

    .line 249
    .end local v3    # "_result":Z
    :sswitch_18
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->setWiredHeadsetDelay(I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 254
    goto/16 :goto_0

    .line 258
    .end local v0    # "_arg0":I
    :sswitch_19
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->saveNowPlayingList()V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 261
    goto/16 :goto_0

    .line 265
    :sswitch_1a
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->pause()V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 268
    goto/16 :goto_0

    .line 272
    :sswitch_1b
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->unpause()V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 275
    goto/16 :goto_0

    .line 279
    :sswitch_1c
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->stop()V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 282
    goto/16 :goto_0

    .line 286
    :sswitch_1d
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->nextSong()V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 289
    goto/16 :goto_0

    .line 293
    :sswitch_1e
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->previousSong()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 296
    goto/16 :goto_0

    .line 300
    :sswitch_1f
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 303
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->seekTo(I)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 305
    goto/16 :goto_0

    .line 309
    .end local v0    # "_arg0":I
    :sswitch_20
    const-string v5, "com.bmayers.bTunesRelease.PlayerServiceInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/bmayers/bTunesRelease/PlayerServiceInterface$Stub;->seekToLocation(I)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 314
    goto/16 :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
