.class public abstract Lcom/htc/music/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/htc/music/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.music.IMediaPlaybackService"

.field static final TRANSACTION_activityGoSleep:I = 0x27

.field static final TRANSACTION_activityWakeup:I = 0x28

.field static final TRANSACTION_duration:I = 0xd

.field static final TRANSACTION_endAnimation:I = 0x23

.field static final TRANSACTION_enqueue:I = 0x15

.field static final TRANSACTION_getAlbumId:I = 0x12

.field static final TRANSACTION_getAlbumName:I = 0x11

.field static final TRANSACTION_getAlbumQueue:I = 0x25

.field static final TRANSACTION_getAlbumQueuePosition:I = 0x26

.field static final TRANSACTION_getAlbumQueueSize:I = 0x2a

.field static final TRANSACTION_getArtistId:I = 0x14

.field static final TRANSACTION_getArtistName:I = 0x13

.field static final TRANSACTION_getAudioId:I = 0x1a

.field static final TRANSACTION_getMediaMountedCount:I = 0x21

.field static final TRANSACTION_getPath:I = 0x19

.field static final TRANSACTION_getQueue:I = 0x16

.field static final TRANSACTION_getQueuePosition:I = 0x6

.field static final TRANSACTION_getQueueSize:I = 0x29

.field static final TRANSACTION_getRepeatMode:I = 0x20

.field static final TRANSACTION_getShuffleMode:I = 0x1c

.field static final TRANSACTION_getSongInfo:I = 0x1

.field static final TRANSACTION_getTrackName:I = 0x10

.field static final TRANSACTION_isPlaying:I = 0x7

.field static final TRANSACTION_isSystemReady:I = 0x2d

.field static final TRANSACTION_moveQueueItem:I = 0x17

.field static final TRANSACTION_next:I = 0xc

.field static final TRANSACTION_nextAlbum:I = 0x2c

.field static final TRANSACTION_open:I = 0x5

.field static final TRANSACTION_openfile:I = 0x3

.field static final TRANSACTION_openfileAsync:I = 0x4

.field static final TRANSACTION_pause:I = 0x9

.field static final TRANSACTION_play:I = 0xa

.field static final TRANSACTION_playAlbum:I = 0x2

.field static final TRANSACTION_position:I = 0xe

.field static final TRANSACTION_prev:I = 0xb

.field static final TRANSACTION_prevAlbum:I = 0x2b

.field static final TRANSACTION_reloadQueue:I = 0x2e

.field static final TRANSACTION_removeTrack:I = 0x1e

.field static final TRANSACTION_removeTracks:I = 0x1d

.field static final TRANSACTION_seek:I = 0xf

.field static final TRANSACTION_setAlbumQueue:I = 0x24

.field static final TRANSACTION_setMediaMode:I = 0x2f

.field static final TRANSACTION_setQueuePosition:I = 0x18

.field static final TRANSACTION_setRepeatMode:I = 0x1f

.field static final TRANSACTION_setShuffleMode:I = 0x1b

.field static final TRANSACTION_startAnimation:I = 0x22

.field static final TRANSACTION_stop:I = 0x8

.field static final TRANSACTION_syncNowPlayingQueue:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "com.htc.music.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/htc/music/IMediaPlaybackService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/htc/music/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/htc/music/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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

    const-string v7, "com.htc.music.IMediaPlaybackService"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 453
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getSongInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 59
    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->playAlbum(I)I

    move-result v3

    .line 67
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 69
    goto :goto_0

    .line 73
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_3
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->openfile(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 78
    goto :goto_0

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->openfileAsync(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 87
    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 95
    .local v0, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->open([II)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 98
    goto :goto_0

    .line 102
    .end local v0    # "_arg0":[I
    .end local v2    # "_arg1":I
    :sswitch_6
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v3

    .line 104
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 106
    goto :goto_0

    .line 110
    .end local v3    # "_result":I
    :sswitch_7
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v3

    .line 112
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v3, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 114
    goto/16 :goto_0

    :cond_0
    move v5, v8

    .line 113
    goto :goto_1

    .line 118
    .end local v3    # "_result":Z
    :sswitch_8
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->stop()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 121
    goto/16 :goto_0

    .line 125
    :sswitch_9
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->pause()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 128
    goto/16 :goto_0

    .line 132
    :sswitch_a
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->play()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 135
    goto/16 :goto_0

    .line 139
    :sswitch_b
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->prev()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 142
    goto/16 :goto_0

    .line 146
    :sswitch_c
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->next()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 149
    goto/16 :goto_0

    .line 153
    :sswitch_d
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v3

    .line 155
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 157
    goto/16 :goto_0

    .line 161
    .end local v3    # "_result":J
    :sswitch_e
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->position()J

    move-result-wide v3

    .line 163
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 165
    goto/16 :goto_0

    .line 169
    .end local v3    # "_result":J
    :sswitch_f
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 172
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/htc/music/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v3

    .line 173
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 175
    goto/16 :goto_0

    .line 179
    .end local v0    # "_arg0":J
    .end local v3    # "_result":J
    :sswitch_10
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 183
    goto/16 :goto_0

    .line 187
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 189
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 191
    goto/16 :goto_0

    .line 195
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumId()I

    move-result v3

    .line 197
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 199
    goto/16 :goto_0

    .line 203
    .end local v3    # "_result":I
    :sswitch_13
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 207
    goto/16 :goto_0

    .line 211
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getArtistId()I

    move-result v3

    .line 213
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 215
    goto/16 :goto_0

    .line 219
    .end local v3    # "_result":I
    :sswitch_15
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 223
    .local v0, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->enqueue([II)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 226
    goto/16 :goto_0

    .line 230
    .end local v0    # "_arg0":[I
    .end local v2    # "_arg1":I
    :sswitch_16
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getQueue()[I

    move-result-object v3

    .line 232
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    move v5, v6

    .line 234
    goto/16 :goto_0

    .line 238
    .end local v3    # "_result":[I
    :sswitch_17
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 243
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 245
    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_18
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 254
    goto/16 :goto_0

    .line 258
    .end local v0    # "_arg0":I
    :sswitch_19
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 262
    goto/16 :goto_0

    .line 266
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAudioId()I

    move-result v3

    .line 268
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 270
    goto/16 :goto_0

    .line 274
    .end local v3    # "_result":I
    :sswitch_1b
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 279
    goto/16 :goto_0

    .line 283
    .end local v0    # "_arg0":I
    :sswitch_1c
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v3

    .line 285
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 287
    goto/16 :goto_0

    .line 291
    .end local v3    # "_result":I
    :sswitch_1d
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/htc/music/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v3

    .line 297
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 299
    goto/16 :goto_0

    .line 303
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_1e
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->removeTrack(I)I

    move-result v3

    .line 307
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 309
    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_1f
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 316
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 318
    goto/16 :goto_0

    .line 322
    .end local v0    # "_arg0":I
    :sswitch_20
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v3

    .line 324
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 326
    goto/16 :goto_0

    .line 330
    .end local v3    # "_result":I
    :sswitch_21
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v3

    .line 332
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 334
    goto/16 :goto_0

    .line 338
    .end local v3    # "_result":I
    :sswitch_22
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->startAnimation()V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 341
    goto/16 :goto_0

    .line 345
    :sswitch_23
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->endAnimation()V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 348
    goto/16 :goto_0

    .line 352
    :sswitch_24
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 355
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setAlbumQueue([I)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 357
    goto/16 :goto_0

    .line 361
    .end local v0    # "_arg0":[I
    :sswitch_25
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumQueue()[I

    move-result-object v3

    .line 363
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    move v5, v6

    .line 365
    goto/16 :goto_0

    .line 369
    .end local v3    # "_result":[I
    :sswitch_26
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumQueuePosition()I

    move-result v3

    .line 371
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 373
    goto/16 :goto_0

    .line 377
    .end local v3    # "_result":I
    :sswitch_27
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->activityGoSleep()V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 380
    goto/16 :goto_0

    .line 384
    :sswitch_28
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->activityWakeup()V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 387
    goto/16 :goto_0

    .line 391
    :sswitch_29
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getQueueSize()I

    move-result v3

    .line 393
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 395
    goto/16 :goto_0

    .line 399
    .end local v3    # "_result":I
    :sswitch_2a
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->getAlbumQueueSize()I

    move-result v3

    .line 401
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 403
    goto/16 :goto_0

    .line 407
    .end local v3    # "_result":I
    :sswitch_2b
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->prevAlbum()V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 410
    goto/16 :goto_0

    .line 414
    :sswitch_2c
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->nextAlbum()V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 417
    goto/16 :goto_0

    .line 421
    :sswitch_2d
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->isSystemReady()Z

    move-result v3

    .line 423
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    if-eqz v3, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 425
    goto/16 :goto_0

    :cond_1
    move v5, v8

    .line 424
    goto :goto_2

    .line 429
    .end local v3    # "_result":Z
    :sswitch_2e
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;->reloadQueue()V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 432
    goto/16 :goto_0

    .line 436
    :sswitch_2f
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v6

    .line 439
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->setMediaMode(Z)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 441
    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v8

    .line 438
    goto :goto_3

    .line 445
    :sswitch_30
    const-string v5, "com.htc.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 448
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lcom/htc/music/IMediaPlaybackService$Stub;->syncNowPlayingQueue([I)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 450
    goto/16 :goto_0

    .line 44
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
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
