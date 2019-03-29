.class public abstract Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMusicPlaybackService.java"

# interfaces
.implements Lorg/iii/romulus/meridian/IMusicPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/iii/romulus/meridian/IMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.iii.romulus.meridian.IMusicPlaybackService"

.field static final TRANSACTION_duration:I = 0x8

.field static final TRANSACTION_getAlbumId:I = 0xd

.field static final TRANSACTION_getAlbumName:I = 0xc

.field static final TRANSACTION_getArtistName:I = 0xe

.field static final TRANSACTION_getComposerName:I = 0xf

.field static final TRANSACTION_getMediaMountedCount:I = 0x16

.field static final TRANSACTION_getPath:I = 0x11

.field static final TRANSACTION_getRating:I = 0x10

.field static final TRANSACTION_getRepeatMode:I = 0x15

.field static final TRANSACTION_getShuffleMode:I = 0x13

.field static final TRANSACTION_getTrackName:I = 0xb

.field static final TRANSACTION_isPlaying:I = 0x2

.field static final TRANSACTION_next:I = 0x7

.field static final TRANSACTION_openfile:I = 0x1

.field static final TRANSACTION_pause:I = 0x4

.field static final TRANSACTION_play:I = 0x5

.field static final TRANSACTION_position:I = 0x9

.field static final TRANSACTION_prev:I = 0x6

.field static final TRANSACTION_seek:I = 0xa

.field static final TRANSACTION_setQueue:I = 0x19

.field static final TRANSACTION_setRating:I = 0x17

.field static final TRANSACTION_setRepeatMode:I = 0x14

.field static final TRANSACTION_setShuffleMode:I = 0x12

.field static final TRANSACTION_setStopTime:I = 0x18

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p0, p0, v0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/iii/romulus/meridian/IMusicPlaybackService;
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
    const-string v1, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/iii/romulus/meridian/IMusicPlaybackService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lorg/iii/romulus/meridian/IMusicPlaybackService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x1

    const-string v8, "org.iii.romulus.meridian.IMusicPlaybackService"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 48
    :sswitch_0
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->openfile(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 58
    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->isPlaying()Z

    move-result v4

    .line 64
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 66
    goto :goto_0

    .line 65
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 70
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->stop()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 73
    goto :goto_0

    .line 77
    :sswitch_4
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->pause()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 80
    goto :goto_0

    .line 84
    :sswitch_5
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->play()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 87
    goto :goto_0

    .line 91
    :sswitch_6
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->prev()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 94
    goto :goto_0

    .line 98
    :sswitch_7
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->next()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 101
    goto :goto_0

    .line 105
    :sswitch_8
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->duration()J

    move-result-wide v4

    .line 107
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 109
    goto :goto_0

    .line 113
    .end local v4    # "_result":J
    :sswitch_9
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->position()J

    move-result-wide v4

    .line 115
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 117
    goto/16 :goto_0

    .line 121
    .end local v4    # "_result":J
    :sswitch_a
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 124
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->seek(J)J

    move-result-wide v4

    .line 125
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 127
    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":J
    .end local v4    # "_result":J
    :sswitch_b
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 135
    goto/16 :goto_0

    .line 139
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

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
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getAlbumId()J

    move-result-wide v4

    .line 149
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 151
    goto/16 :goto_0

    .line 155
    .end local v4    # "_result":J
    :sswitch_e
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 159
    goto/16 :goto_0

    .line 163
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getComposerName()Ljava/lang/String;

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
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getRating()I

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
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 183
    goto/16 :goto_0

    .line 187
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 190
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->setShuffleMode(I)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 192
    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":I
    :sswitch_13
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getShuffleMode()I

    move-result v4

    .line 198
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 200
    goto/16 :goto_0

    .line 204
    .end local v4    # "_result":I
    :sswitch_14
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->setRepeatMode(I)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 209
    goto/16 :goto_0

    .line 213
    .end local v0    # "_arg0":I
    :sswitch_15
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getRepeatMode()I

    move-result v4

    .line 215
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 217
    goto/16 :goto_0

    .line 221
    .end local v4    # "_result":I
    :sswitch_16
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->getMediaMountedCount()I

    move-result v4

    .line 223
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 225
    goto/16 :goto_0

    .line 229
    .end local v4    # "_result":I
    :sswitch_17
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->setRating(I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 234
    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 241
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->setStopTime(J)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 243
    goto/16 :goto_0

    .line 247
    .end local v0    # "_arg0":J
    :sswitch_19
    const-string v6, "org.iii.romulus.meridian.IMusicPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lorg/iii/romulus/meridian/IMusicPlaybackService$Stub;->setQueue(ILjava/lang/String;[Ljava/lang/String;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 256
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
