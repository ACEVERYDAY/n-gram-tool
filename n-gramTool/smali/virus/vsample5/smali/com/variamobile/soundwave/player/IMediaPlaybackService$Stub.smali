.class public abstract Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/variamobile/soundwave/player/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/variamobile/soundwave/player/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.variamobile.soundwave.player.IMediaPlaybackService"

.field static final TRANSACTION_clearQueue:I = 0x19

.field static final TRANSACTION_clearStalled:I = 0x1c

.field static final TRANSACTION_duration:I = 0x6

.field static final TRANSACTION_enqueue:I = 0x11

.field static final TRANSACTION_enqueueAndPlay:I = 0x12

.field static final TRANSACTION_getAlbumId:I = 0xc

.field static final TRANSACTION_getAlbumName:I = 0xb

.field static final TRANSACTION_getArtistId:I = 0xe

.field static final TRANSACTION_getArtistName:I = 0xd

.field static final TRANSACTION_getChannelName:I = 0xf

.field static final TRANSACTION_getMediaMountedCount:I = 0x10

.field static final TRANSACTION_getQueueCursorId:I = 0x13

.field static final TRANSACTION_getQueueCursorPosition:I = 0x14

.field static final TRANSACTION_getQueueItemCount:I = 0x16

.field static final TRANSACTION_getState:I = 0x1b

.field static final TRANSACTION_getTrackId:I = 0xa

.field static final TRANSACTION_getTrackName:I = 0x9

.field static final TRANSACTION_isChannelMode:I = 0x1a

.field static final TRANSACTION_isStalled:I = 0x1d

.field static final TRANSACTION_moveQueueItem:I = 0x18

.field static final TRANSACTION_next:I = 0x5

.field static final TRANSACTION_pause:I = 0x2

.field static final TRANSACTION_play:I = 0x3

.field static final TRANSACTION_position:I = 0x7

.field static final TRANSACTION_prev:I = 0x4

.field static final TRANSACTION_removeQueueItemById:I = 0x17

.field static final TRANSACTION_seek:I = 0x8

.field static final TRANSACTION_setQueueCursorByListPosition:I = 0x15

.field static final TRANSACTION_stop:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/variamobile/soundwave/player/IMediaPlaybackService;
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
    const-string v1, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/variamobile/soundwave/player/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/variamobile/soundwave/player/IMediaPlaybackService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "com.variamobile.soundwave.player.IMediaPlaybackService"

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 49
    :sswitch_0
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->stop()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 57
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->pause()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 64
    goto :goto_0

    .line 68
    :sswitch_3
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->play()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 71
    goto :goto_0

    .line 75
    :sswitch_4
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->prev()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 78
    goto :goto_0

    .line 82
    :sswitch_5
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->next()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 85
    goto :goto_0

    .line 89
    :sswitch_6
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v4

    .line 91
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 93
    goto :goto_0

    .line 97
    .end local v4    # "_result":J
    :sswitch_7
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->position()J

    move-result-wide v4

    .line 99
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 101
    goto :goto_0

    .line 105
    .end local v4    # "_result":J
    :sswitch_8
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 108
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v4

    .line 109
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 111
    goto :goto_0

    .line 115
    .end local v0    # "_arg0":J
    .end local v4    # "_result":J
    :sswitch_9
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 119
    goto/16 :goto_0

    .line 123
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getTrackId()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 127
    goto/16 :goto_0

    .line 131
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    .line 133
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 135
    goto/16 :goto_0

    .line 139
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    .line 141
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 143
    goto/16 :goto_0

    .line 147
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 149
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 151
    goto/16 :goto_0

    .line 155
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getArtistId()Ljava/lang/String;

    move-result-object v4

    .line 157
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 159
    goto/16 :goto_0

    .line 163
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getChannelName()Ljava/lang/String;

    move-result-object v4

    .line 165
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 167
    goto/16 :goto_0

    .line 171
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v4

    .line 173
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 175
    goto/16 :goto_0

    .line 179
    .end local v4    # "_result":I
    :sswitch_11
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    sget-object v6, Lcom/variamobile/soundwave/MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 182
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/variamobile/soundwave/MediaItem;>;"
    invoke-virtual {p0, v2}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->enqueue(Ljava/util/List;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 184
    goto/16 :goto_0

    .line 188
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/variamobile/soundwave/MediaItem;>;"
    :sswitch_12
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    sget-object v6, Lcom/variamobile/soundwave/MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 192
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/variamobile/soundwave/MediaItem;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->enqueueAndPlay(Ljava/util/List;I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 195
    goto/16 :goto_0

    .line 199
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/variamobile/soundwave/MediaItem;>;"
    .end local v3    # "_arg1":I
    :sswitch_13
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getQueueCursorId()I

    move-result v4

    .line 201
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 203
    goto/16 :goto_0

    .line 207
    .end local v4    # "_result":I
    :sswitch_14
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getQueueCursorPosition()I

    move-result v4

    .line 209
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 211
    goto/16 :goto_0

    .line 215
    .end local v4    # "_result":I
    :sswitch_15
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->setQueueCursorByListPosition(I)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 220
    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":I
    :sswitch_16
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getQueueItemCount()I

    move-result v4

    .line 226
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 228
    goto/16 :goto_0

    .line 232
    .end local v4    # "_result":I
    :sswitch_17
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->removeQueueItemById(I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 237
    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 248
    goto/16 :goto_0

    .line 252
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_19
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->clearQueue()V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 255
    goto/16 :goto_0

    .line 259
    :sswitch_1a
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->isChannelMode()Z

    move-result v4

    .line 261
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v4, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 263
    goto/16 :goto_0

    :cond_0
    move v6, v9

    .line 262
    goto :goto_1

    .line 267
    .end local v4    # "_result":Z
    :sswitch_1b
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->getState()I

    move-result v4

    .line 269
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 271
    goto/16 :goto_0

    .line 275
    .end local v4    # "_result":I
    :sswitch_1c
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->clearStalled()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 278
    goto/16 :goto_0

    .line 282
    :sswitch_1d
    const-string v6, "com.variamobile.soundwave.player.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/variamobile/soundwave/player/IMediaPlaybackService$Stub;->isStalled()Z

    move-result v4

    .line 284
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v4, :cond_1

    move v6, v7

    :goto_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 286
    goto/16 :goto_0

    :cond_1
    move v6, v9

    .line 285
    goto :goto_2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
