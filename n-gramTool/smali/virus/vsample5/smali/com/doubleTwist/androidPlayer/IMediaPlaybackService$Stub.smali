.class public abstract Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/doubleTwist/androidPlayer/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doubleTwist/androidPlayer/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.doubleTwist.androidPlayer.IMediaPlaybackService"

.field static final TRANSACTION_duration:I = 0xb

.field static final TRANSACTION_enqueue:I = 0x13

.field static final TRANSACTION_getAlbumId:I = 0x10

.field static final TRANSACTION_getAlbumName:I = 0xf

.field static final TRANSACTION_getArtistId:I = 0x12

.field static final TRANSACTION_getArtistName:I = 0x11

.field static final TRANSACTION_getAudioId:I = 0x18

.field static final TRANSACTION_getMediaMountedCount:I = 0x1f

.field static final TRANSACTION_getPath:I = 0x17

.field static final TRANSACTION_getQueue:I = 0x14

.field static final TRANSACTION_getQueuePosition:I = 0x4

.field static final TRANSACTION_getRepeatMode:I = 0x1e

.field static final TRANSACTION_getShuffleMode:I = 0x1a

.field static final TRANSACTION_getTrackName:I = 0xe

.field static final TRANSACTION_isPlaying:I = 0x5

.field static final TRANSACTION_moveQueueItem:I = 0x15

.field static final TRANSACTION_next:I = 0xa

.field static final TRANSACTION_open:I = 0x3

.field static final TRANSACTION_openFile:I = 0x1

.field static final TRANSACTION_openFileAsync:I = 0x2

.field static final TRANSACTION_pause:I = 0x7

.field static final TRANSACTION_play:I = 0x8

.field static final TRANSACTION_position:I = 0xc

.field static final TRANSACTION_prev:I = 0x9

.field static final TRANSACTION_removeTrack:I = 0x1c

.field static final TRANSACTION_removeTracks:I = 0x1b

.field static final TRANSACTION_seek:I = 0xd

.field static final TRANSACTION_setQueuePosition:I = 0x16

.field static final TRANSACTION_setRepeatMode:I = 0x1d

.field static final TRANSACTION_setShuffleMode:I = 0x19

.field static final TRANSACTION_stop:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/doubleTwist/androidPlayer/IMediaPlaybackService;
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
    const-string v1, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v7, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v6

    .line 58
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->openFile(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 60
    goto :goto_0

    .end local v2    # "_arg1":Z
    :cond_0
    move v2, v8

    .line 57
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->openFileAsync()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 67
    goto :goto_0

    .line 71
    :sswitch_3
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 75
    .local v0, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->open([JI)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 78
    goto :goto_0

    .line 82
    .end local v0    # "_arg0":[J
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v3

    .line 84
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 86
    goto :goto_0

    .line 90
    .end local v3    # "_result":I
    :sswitch_5
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v3

    .line 92
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v3, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 94
    goto :goto_0

    :cond_1
    move v5, v8

    .line 93
    goto :goto_2

    .line 98
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->stop()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 101
    goto :goto_0

    .line 105
    :sswitch_7
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->pause()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 108
    goto/16 :goto_0

    .line 112
    :sswitch_8
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->play()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 115
    goto/16 :goto_0

    .line 119
    :sswitch_9
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->prev()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 122
    goto/16 :goto_0

    .line 126
    :sswitch_a
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->next()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 129
    goto/16 :goto_0

    .line 133
    :sswitch_b
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v3

    .line 135
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 137
    goto/16 :goto_0

    .line 141
    .end local v3    # "_result":J
    :sswitch_c
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->position()J

    move-result-wide v3

    .line 143
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 145
    goto/16 :goto_0

    .line 149
    .end local v3    # "_result":J
    :sswitch_d
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 152
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v3

    .line 153
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 155
    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":J
    .end local v3    # "_result":J
    :sswitch_e
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 163
    goto/16 :goto_0

    .line 167
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 169
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 171
    goto/16 :goto_0

    .line 175
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getAlbumId()J

    move-result-wide v3

    .line 177
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 179
    goto/16 :goto_0

    .line 183
    .end local v3    # "_result":J
    :sswitch_11
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 187
    goto/16 :goto_0

    .line 191
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getArtistId()J

    move-result-wide v3

    .line 193
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 195
    goto/16 :goto_0

    .line 199
    .end local v3    # "_result":J
    :sswitch_13
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 203
    .local v0, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->enqueue([JI)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 206
    goto/16 :goto_0

    .line 210
    .end local v0    # "_arg0":[J
    .end local v2    # "_arg1":I
    :sswitch_14
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getQueue()[J

    move-result-object v3

    .line 212
    .local v3, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    move v5, v6

    .line 214
    goto/16 :goto_0

    .line 218
    .end local v3    # "_result":[J
    :sswitch_15
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 225
    goto/16 :goto_0

    .line 229
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_16
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 234
    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":I
    :sswitch_17
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 242
    goto/16 :goto_0

    .line 246
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getAudioId()J

    move-result-wide v3

    .line 248
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 250
    goto/16 :goto_0

    .line 254
    .end local v3    # "_result":J
    :sswitch_19
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 259
    goto/16 :goto_0

    .line 263
    .end local v0    # "_arg0":I
    :sswitch_1a
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v3

    .line 265
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 267
    goto/16 :goto_0

    .line 271
    .end local v3    # "_result":I
    :sswitch_1b
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v3

    .line 277
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 279
    goto/16 :goto_0

    .line 283
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_1c
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 286
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->removeTrack(J)I

    move-result v3

    .line 287
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 289
    goto/16 :goto_0

    .line 293
    .end local v0    # "_arg0":J
    .end local v3    # "_result":I
    :sswitch_1d
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 298
    goto/16 :goto_0

    .line 302
    .end local v0    # "_arg0":I
    :sswitch_1e
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v3

    .line 304
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 306
    goto/16 :goto_0

    .line 310
    .end local v3    # "_result":I
    :sswitch_1f
    const-string v5, "com.doubleTwist.androidPlayer.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/doubleTwist/androidPlayer/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v3

    .line 312
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 314
    goto/16 :goto_0

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
