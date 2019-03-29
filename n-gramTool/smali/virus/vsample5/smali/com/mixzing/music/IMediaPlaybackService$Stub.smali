.class public abstract Lcom/mixzing/music/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/mixzing/music/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixzing/music/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixzing/music/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mixzing.music.IMediaPlaybackService"

.field static final TRANSACTION_addMusicListener:I = 0x3c

.field static final TRANSACTION_cancelRating:I = 0x3b

.field static final TRANSACTION_dumpQueue:I = 0x38

.field static final TRANSACTION_duration:I = 0x1c

.field static final TRANSACTION_enqueue:I = 0x27

.field static final TRANSACTION_getAlbumId:I = 0x22

.field static final TRANSACTION_getAlbumName:I = 0x21

.field static final TRANSACTION_getArtistAlbumId:I = 0x25

.field static final TRANSACTION_getArtistId:I = 0x24

.field static final TRANSACTION_getArtistName:I = 0x23

.field static final TRANSACTION_getArtwork:I = 0x26

.field static final TRANSACTION_getAudioId:I = 0x2d

.field static final TRANSACTION_getExtTrackNum:I = 0x10

.field static final TRANSACTION_getMeta:I = 0x3e

.field static final TRANSACTION_getNextAudioId:I = 0x2f

.field static final TRANSACTION_getPath:I = 0x2b

.field static final TRANSACTION_getPathname:I = 0x2c

.field static final TRANSACTION_getPlaylistId:I = 0xa

.field static final TRANSACTION_getQueue:I = 0x28

.field static final TRANSACTION_getQueueLength:I = 0x14

.field static final TRANSACTION_getQueuePosition:I = 0x13

.field static final TRANSACTION_getRecMode:I = 0xc

.field static final TRANSACTION_getRepeatMode:I = 0x36

.field static final TRANSACTION_getSelection:I = 0x8

.field static final TRANSACTION_getSelectionKey:I = 0x6

.field static final TRANSACTION_getShuffleMode:I = 0x31

.field static final TRANSACTION_getState:I = 0xe

.field static final TRANSACTION_getTrackName:I = 0x20

.field static final TRANSACTION_getUniqueAudioId:I = 0x2e

.field static final TRANSACTION_hasEQ:I = 0x43

.field static final TRANSACTION_isArtPending:I = 0x3f

.field static final TRANSACTION_isDerivedTitle:I = 0x1f

.field static final TRANSACTION_isPlaying:I = 0x15

.field static final TRANSACTION_moveQueueItem:I = 0x29

.field static final TRANSACTION_next:I = 0x1b

.field static final TRANSACTION_open:I = 0x4

.field static final TRANSACTION_openAsync:I = 0x3

.field static final TRANSACTION_openfile:I = 0x1

.field static final TRANSACTION_openfileAsync:I = 0x2

.field static final TRANSACTION_pause:I = 0x17

.field static final TRANSACTION_play:I = 0x18

.field static final TRANSACTION_position:I = 0x1d

.field static final TRANSACTION_prev:I = 0x19

.field static final TRANSACTION_prevSeek:I = 0x1a

.field static final TRANSACTION_reloadQueue:I = 0x37

.field static final TRANSACTION_removeMusicListener:I = 0x3d

.field static final TRANSACTION_removeTrack:I = 0x34

.field static final TRANSACTION_removeTracks:I = 0x32

.field static final TRANSACTION_removeTracksInMap:I = 0x33

.field static final TRANSACTION_requestArt:I = 0x40

.field static final TRANSACTION_resetCursor:I = 0x41

.field static final TRANSACTION_resumeNotification:I = 0x3a

.field static final TRANSACTION_seek:I = 0x1e

.field static final TRANSACTION_setEQ:I = 0x42

.field static final TRANSACTION_setExtTrackNum:I = 0xf

.field static final TRANSACTION_setPlaylistId:I = 0x9

.field static final TRANSACTION_setQueuePosition:I = 0x2a

.field static final TRANSACTION_setRatingEnabled:I = 0x11

.field static final TRANSACTION_setRecMode:I = 0xb

.field static final TRANSACTION_setRepeatMode:I = 0x35

.field static final TRANSACTION_setScrobblingEnabled:I = 0x12

.field static final TRANSACTION_setSelection:I = 0x7

.field static final TRANSACTION_setSelectionKey:I = 0x5

.field static final TRANSACTION_setShuffleMode:I = 0x30

.field static final TRANSACTION_setState:I = 0xd

.field static final TRANSACTION_stop:I = 0x16

.field static final TRANSACTION_suspendNotification:I = 0x39


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mixzing/music/IMediaPlaybackService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 39
    :goto_0
    return-object v1

    .line 35
    :cond_0
    const-string v1, "com.mixzing.music.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mixzing/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/mixzing/music/IMediaPlaybackService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 39
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mixzing/music/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "com.mixzing.music.IMediaPlaybackService"

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 640
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 51
    :sswitch_0
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 52
    goto :goto_0

    .line 56
    :sswitch_1
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->openfile(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 61
    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->openfileAsync(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 70
    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->openAsync(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 79
    goto :goto_0

    .line 83
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 87
    .local v0, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->open([II)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 90
    goto :goto_0

    .line 94
    .end local v0    # "_arg0":[I
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setSelectionKey(I)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 99
    goto :goto_0

    .line 103
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getSelectionKey()I

    move-result v4

    .line 105
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 107
    goto :goto_0

    .line 111
    .end local v4    # "_result":I
    :sswitch_7
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setSelection(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 116
    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 124
    goto/16 :goto_0

    .line 128
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 131
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setPlaylistId(J)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 133
    goto/16 :goto_0

    .line 137
    .end local v0    # "_arg0":J
    :sswitch_a
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getPlaylistId()J

    move-result-wide v4

    .line 139
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v7, v8

    .line 141
    goto/16 :goto_0

    .line 145
    .end local v4    # "_result":J
    :sswitch_b
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setRecMode(I)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 150
    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getRecMode()I

    move-result v4

    .line 156
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 158
    goto/16 :goto_0

    .line 162
    .end local v4    # "_result":I
    :sswitch_d
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setState(I)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 167
    goto/16 :goto_0

    .line 171
    .end local v0    # "_arg0":I
    :sswitch_e
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getState()I

    move-result v4

    .line 173
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 175
    goto/16 :goto_0

    .line 179
    .end local v4    # "_result":I
    :sswitch_f
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setExtTrackNum(I)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 184
    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getExtTrackNum()I

    move-result v4

    .line 190
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 192
    goto/16 :goto_0

    .line 196
    .end local v4    # "_result":I
    :sswitch_11
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v0, v8

    .line 200
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v8

    .line 201
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setRatingEnabled(ZZ)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 203
    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_0
    move v0, v10

    .line 198
    goto :goto_1

    .restart local v0    # "_arg0":Z
    :cond_1
    move v2, v10

    .line 200
    goto :goto_2

    .line 207
    .end local v0    # "_arg0":Z
    :sswitch_12
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v8

    .line 210
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setScrobblingEnabled(Z)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 212
    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v10

    .line 209
    goto :goto_3

    .line 216
    :sswitch_13
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v4

    .line 218
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 220
    goto/16 :goto_0

    .line 224
    .end local v4    # "_result":I
    :sswitch_14
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getQueueLength()I

    move-result v4

    .line 226
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 228
    goto/16 :goto_0

    .line 232
    .end local v4    # "_result":I
    :sswitch_15
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v4

    .line 234
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v4, :cond_3

    move v7, v8

    :goto_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 236
    goto/16 :goto_0

    :cond_3
    move v7, v10

    .line 235
    goto :goto_4

    .line 240
    .end local v4    # "_result":Z
    :sswitch_16
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->stop()V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 243
    goto/16 :goto_0

    .line 247
    :sswitch_17
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->pause()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 250
    goto/16 :goto_0

    .line 254
    :sswitch_18
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->play()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 257
    goto/16 :goto_0

    .line 261
    :sswitch_19
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->prev()V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 264
    goto/16 :goto_0

    .line 268
    :sswitch_1a
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->prevSeek()V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 271
    goto/16 :goto_0

    .line 275
    :sswitch_1b
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->next()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 278
    goto/16 :goto_0

    .line 282
    :sswitch_1c
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v4

    .line 284
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v7, v8

    .line 286
    goto/16 :goto_0

    .line 290
    .end local v4    # "_result":J
    :sswitch_1d
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->position()J

    move-result-wide v4

    .line 292
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v7, v8

    .line 294
    goto/16 :goto_0

    .line 298
    .end local v4    # "_result":J
    :sswitch_1e
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 301
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v4

    .line 302
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v7, v8

    .line 304
    goto/16 :goto_0

    .line 308
    .end local v0    # "_arg0":J
    .end local v4    # "_result":J
    :sswitch_1f
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->isDerivedTitle()Z

    move-result v4

    .line 310
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v4, :cond_4

    move v7, v8

    :goto_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 312
    goto/16 :goto_0

    :cond_4
    move v7, v10

    .line 311
    goto :goto_5

    .line 316
    .end local v4    # "_result":Z
    :sswitch_20
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 320
    goto/16 :goto_0

    .line 324
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    .line 326
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 328
    goto/16 :goto_0

    .line 332
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getAlbumId()I

    move-result v4

    .line 334
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 336
    goto/16 :goto_0

    .line 340
    .end local v4    # "_result":I
    :sswitch_23
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 344
    goto/16 :goto_0

    .line 348
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getArtistId()I

    move-result v4

    .line 350
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 352
    goto/16 :goto_0

    .line 356
    .end local v4    # "_result":I
    :sswitch_25
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getArtistAlbumId()J

    move-result-wide v4

    .line 358
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v7, v8

    .line 360
    goto/16 :goto_0

    .line 364
    .end local v4    # "_result":J
    :sswitch_26
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getArtwork()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 366
    .local v4, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v4, :cond_5

    .line 368
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    invoke-virtual {v4, p3, v8}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    move v7, v8

    .line 374
    goto/16 :goto_0

    .line 372
    :cond_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 378
    .end local v4    # "_result":Landroid/graphics/Bitmap;
    :sswitch_27
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 382
    .local v0, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->enqueue([II)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 385
    goto/16 :goto_0

    .line 389
    .end local v0    # "_arg0":[I
    .end local v2    # "_arg1":I
    :sswitch_28
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getQueue()[I

    move-result-object v4

    .line 391
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v7, v8

    .line 393
    goto/16 :goto_0

    .line 397
    .end local v4    # "_result":[I
    :sswitch_29
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 401
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 402
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 404
    goto/16 :goto_0

    .line 408
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_2a
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 411
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 413
    goto/16 :goto_0

    .line 417
    .end local v0    # "_arg0":I
    :sswitch_2b
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 421
    goto/16 :goto_0

    .line 425
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getPathname()Ljava/lang/String;

    move-result-object v4

    .line 427
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 429
    goto/16 :goto_0

    .line 433
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getAudioId()I

    move-result v4

    .line 435
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 437
    goto/16 :goto_0

    .line 441
    .end local v4    # "_result":I
    :sswitch_2e
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getUniqueAudioId()J

    move-result-wide v4

    .line 443
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v7, v8

    .line 445
    goto/16 :goto_0

    .line 449
    .end local v4    # "_result":J
    :sswitch_2f
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getNextAudioId()I

    move-result v4

    .line 451
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 453
    goto/16 :goto_0

    .line 457
    .end local v4    # "_result":I
    :sswitch_30
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v0, v8

    .line 460
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setShuffleMode(Z)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 462
    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v10

    .line 459
    goto :goto_7

    .line 466
    :sswitch_31
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getShuffleMode()Z

    move-result v4

    .line 468
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v4, :cond_7

    move v7, v8

    :goto_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 470
    goto/16 :goto_0

    :cond_7
    move v7, v10

    .line 469
    goto :goto_8

    .line 474
    .end local v4    # "_result":Z
    :sswitch_32
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 480
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    move v3, v8

    .line 481
    .local v3, "_arg2":Z
    :goto_9
    invoke-virtual {p0, v0, v2, v3}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->removeTracks(IIZ)I

    move-result v4

    .line 482
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 484
    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    .end local v4    # "_result":I
    :cond_8
    move v3, v10

    .line 480
    goto :goto_9

    .line 488
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_33
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 491
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 492
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->removeTracksInMap(Ljava/util/Map;)I

    move-result v4

    .line 493
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 495
    goto/16 :goto_0

    .line 499
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":I
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    :sswitch_34
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 503
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v2, v8

    .line 504
    .local v2, "_arg1":Z
    :goto_a
    invoke-virtual {p0, v0, v2}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->removeTrack(IZ)I

    move-result v4

    .line 505
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 507
    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v4    # "_result":I
    :cond_9
    move v2, v10

    .line 503
    goto :goto_a

    .line 511
    .end local v0    # "_arg0":I
    :sswitch_35
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 514
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 516
    goto/16 :goto_0

    .line 520
    .end local v0    # "_arg0":I
    :sswitch_36
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v4

    .line 522
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 524
    goto/16 :goto_0

    .line 528
    .end local v4    # "_result":I
    :sswitch_37
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->reloadQueue()V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 531
    goto/16 :goto_0

    .line 535
    :sswitch_38
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->dumpQueue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 541
    goto/16 :goto_0

    .line 545
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->suspendNotification()V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 548
    goto/16 :goto_0

    .line 552
    :sswitch_3a
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->resumeNotification()V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 555
    goto/16 :goto_0

    .line 559
    :sswitch_3b
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->cancelRating()V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 562
    goto/16 :goto_0

    .line 566
    :sswitch_3c
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mixzing/music/IMusicListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mixzing/music/IMusicListener;

    move-result-object v0

    .line 569
    .local v0, "_arg0":Lcom/mixzing/music/IMusicListener;
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->addMusicListener(Lcom/mixzing/music/IMusicListener;)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 571
    goto/16 :goto_0

    .line 575
    .end local v0    # "_arg0":Lcom/mixzing/music/IMusicListener;
    :sswitch_3d
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mixzing/music/IMusicListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mixzing/music/IMusicListener;

    move-result-object v0

    .line 578
    .restart local v0    # "_arg0":Lcom/mixzing/music/IMusicListener;
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->removeMusicListener(Lcom/mixzing/music/IMusicListener;)V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 580
    goto/16 :goto_0

    .line 584
    .end local v0    # "_arg0":Lcom/mixzing/music/IMusicListener;
    :sswitch_3e
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->getMeta()Lcom/mixzing/data/MetaData;

    move-result-object v4

    .line 586
    .local v4, "_result":Lcom/mixzing/data/MetaData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v4, :cond_a

    .line 588
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    invoke-virtual {v4, p3, v8}, Lcom/mixzing/data/MetaData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    move v7, v8

    .line 594
    goto/16 :goto_0

    .line 592
    :cond_a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 598
    .end local v4    # "_result":Lcom/mixzing/data/MetaData;
    :sswitch_3f
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->isArtPending()Z

    move-result v4

    .line 600
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    if-eqz v4, :cond_b

    move v7, v8

    :goto_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 602
    goto/16 :goto_0

    :cond_b
    move v7, v10

    .line 601
    goto :goto_c

    .line 606
    .end local v4    # "_result":Z
    :sswitch_40
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 609
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->requestArt(I)V

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 611
    goto/16 :goto_0

    .line 615
    .end local v0    # "_arg0":I
    :sswitch_41
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->resetCursor(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 620
    goto/16 :goto_0

    .line 624
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_42
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 627
    .local v0, "_arg0":[F
    invoke-virtual {p0, v0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->setEQ([F)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 629
    goto/16 :goto_0

    .line 633
    .end local v0    # "_arg0":[F
    :sswitch_43
    const-string v7, "com.mixzing.music.IMediaPlaybackService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/mixzing/music/IMediaPlaybackService$Stub;->hasEQ()Z

    move-result v4

    .line 635
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v4, :cond_c

    move v7, v8

    :goto_d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 637
    goto/16 :goto_0

    :cond_c
    move v7, v10

    .line 636
    goto :goto_d

    .line 47
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
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
