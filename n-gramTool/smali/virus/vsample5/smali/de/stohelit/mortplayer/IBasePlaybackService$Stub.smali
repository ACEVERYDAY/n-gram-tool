.class public abstract Lde/stohelit/mortplayer/IBasePlaybackService$Stub;
.super Landroid/os/Binder;
.source "IBasePlaybackService.java"

# interfaces
.implements Lde/stohelit/mortplayer/IBasePlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/stohelit/mortplayer/IBasePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/stohelit/mortplayer/IBasePlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "de.stohelit.mortplayer.IBasePlaybackService"

.field static final TRANSACTION_cancelSleepTimer:I = 0x1

.field static final TRANSACTION_getCurrentFiles:I = 0x2

.field static final TRANSACTION_getCurrentFolderPath:I = 0x3

.field static final TRANSACTION_getCurrentPosition:I = 0x4

.field static final TRANSACTION_getCurrentState:I = 0x5

.field static final TRANSACTION_getFolderCount:I = 0x6

.field static final TRANSACTION_getNextTrackInfo:I = 0x7

.field static final TRANSACTION_getPlayMode:I = 0x8

.field static final TRANSACTION_getRepeatMode:I = 0x9

.field static final TRANSACTION_getShuffleMode:I = 0xa

.field static final TRANSACTION_getSleepTimer:I = 0xb

.field static final TRANSACTION_getSleepTimerTrackFinish:I = 0xc

.field static final TRANSACTION_getTrackCover:I = 0xd

.field static final TRANSACTION_getTrackInfo:I = 0xe

.field static final TRANSACTION_getTrackLength:I = 0xf

.field static final TRANSACTION_getTrackPath:I = 0x10

.field static final TRANSACTION_gotoNextFolder:I = 0x11

.field static final TRANSACTION_gotoNextTrack:I = 0x12

.field static final TRANSACTION_gotoPrevFolder:I = 0x13

.field static final TRANSACTION_gotoPrevTrack:I = 0x14

.field static final TRANSACTION_isInitialized:I = 0x15

.field static final TRANSACTION_pause:I = 0x16

.field static final TRANSACTION_play:I = 0x17

.field static final TRANSACTION_registerOnTrackChanged:I = 0x18

.field static final TRANSACTION_removeOnTrackChanged:I = 0x19

.field static final TRANSACTION_seek:I = 0x1a

.field static final TRANSACTION_setHasVisibleActivity:I = 0x1b

.field static final TRANSACTION_setPlayMode:I = 0x1c

.field static final TRANSACTION_setRepeatMode:I = 0x1d

.field static final TRANSACTION_setShuffleMode:I = 0x1e

.field static final TRANSACTION_setSleepTimer:I = 0x1f

.field static final TRANSACTION_stop:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p0, p0, v0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lde/stohelit/mortplayer/IBasePlaybackService;
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
    const-string v1, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lde/stohelit/mortplayer/IBasePlaybackService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lde/stohelit/mortplayer/IBasePlaybackService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lde/stohelit/mortplayer/IBasePlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v8, "de.stohelit.mortplayer.IBasePlaybackService"

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 49
    :sswitch_0
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->cancelSleepTimer()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 57
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getCurrentFiles()Ljava/util/List;

    move-result-object v5

    .line 63
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/TrackInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 65
    goto :goto_0

    .line 69
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/TrackInfo;>;"
    :sswitch_3
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getCurrentFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 73
    goto :goto_0

    .line 77
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getCurrentPosition()I

    move-result v3

    .line 79
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 81
    goto :goto_0

    .line 85
    .end local v3    # "_result":I
    :sswitch_5
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getCurrentState()I

    move-result v3

    .line 87
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 89
    goto :goto_0

    .line 93
    .end local v3    # "_result":I
    :sswitch_6
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getFolderCount()I

    move-result v3

    .line 95
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 97
    goto :goto_0

    .line 101
    .end local v3    # "_result":I
    :sswitch_7
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getNextTrackInfo()Lde/stohelit/mortplayer/TrackInfo;

    move-result-object v3

    .line 103
    .local v3, "_result":Lde/stohelit/mortplayer/TrackInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v3, p3, v7}, Lde/stohelit/mortplayer/TrackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v6, v7

    .line 111
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 115
    .end local v3    # "_result":Lde/stohelit/mortplayer/TrackInfo;
    :sswitch_8
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getPlayMode()I

    move-result v3

    .line 117
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 119
    goto/16 :goto_0

    .line 123
    .end local v3    # "_result":I
    :sswitch_9
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getRepeatMode()I

    move-result v3

    .line 125
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 127
    goto/16 :goto_0

    .line 131
    .end local v3    # "_result":I
    :sswitch_a
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getShuffleMode()I

    move-result v3

    .line 133
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 135
    goto/16 :goto_0

    .line 139
    .end local v3    # "_result":I
    :sswitch_b
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getSleepTimer()J

    move-result-wide v3

    .line 141
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 143
    goto/16 :goto_0

    .line 147
    .end local v3    # "_result":J
    :sswitch_c
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getSleepTimerTrackFinish()Z

    move-result v3

    .line 149
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v3, :cond_1

    move v6, v7

    :goto_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 151
    goto/16 :goto_0

    :cond_1
    move v6, v9

    .line 150
    goto :goto_2

    .line 155
    .end local v3    # "_result":Z
    :sswitch_d
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getTrackCover()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 159
    goto/16 :goto_0

    .line 163
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getTrackInfo()Lde/stohelit/mortplayer/TrackInfo;

    move-result-object v3

    .line 165
    .local v3, "_result":Lde/stohelit/mortplayer/TrackInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v3, p3, v7}, Lde/stohelit/mortplayer/TrackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v6, v7

    .line 173
    goto/16 :goto_0

    .line 171
    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 177
    .end local v3    # "_result":Lde/stohelit/mortplayer/TrackInfo;
    :sswitch_f
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getTrackLength()I

    move-result v3

    .line 179
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 181
    goto/16 :goto_0

    .line 185
    .end local v3    # "_result":I
    :sswitch_10
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->getTrackPath()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 189
    goto/16 :goto_0

    .line 193
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->gotoNextFolder()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 196
    goto/16 :goto_0

    .line 200
    :sswitch_12
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->gotoNextTrack()V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 203
    goto/16 :goto_0

    .line 207
    :sswitch_13
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->gotoPrevFolder()V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 210
    goto/16 :goto_0

    .line 214
    :sswitch_14
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->gotoPrevTrack()V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 217
    goto/16 :goto_0

    .line 221
    :sswitch_15
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->isInitialized()Z

    move-result v3

    .line 223
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v3, :cond_3

    move v6, v7

    :goto_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 225
    goto/16 :goto_0

    :cond_3
    move v6, v9

    .line 224
    goto :goto_4

    .line 229
    .end local v3    # "_result":Z
    :sswitch_16
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->pause()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 232
    goto/16 :goto_0

    .line 236
    :sswitch_17
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->play()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 239
    goto/16 :goto_0

    .line 243
    :sswitch_18
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lde/stohelit/mortplayer/IOnTrackChanged$Stub;->asInterface(Landroid/os/IBinder;)Lde/stohelit/mortplayer/IOnTrackChanged;

    move-result-object v0

    .line 246
    .local v0, "_arg0":Lde/stohelit/mortplayer/IOnTrackChanged;
    invoke-virtual {p0, v0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->registerOnTrackChanged(Lde/stohelit/mortplayer/IOnTrackChanged;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 248
    goto/16 :goto_0

    .line 252
    .end local v0    # "_arg0":Lde/stohelit/mortplayer/IOnTrackChanged;
    :sswitch_19
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lde/stohelit/mortplayer/IOnTrackChanged$Stub;->asInterface(Landroid/os/IBinder;)Lde/stohelit/mortplayer/IOnTrackChanged;

    move-result-object v0

    .line 255
    .restart local v0    # "_arg0":Lde/stohelit/mortplayer/IOnTrackChanged;
    invoke-virtual {p0, v0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->removeOnTrackChanged(Lde/stohelit/mortplayer/IOnTrackChanged;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 257
    goto/16 :goto_0

    .line 261
    .end local v0    # "_arg0":Lde/stohelit/mortplayer/IOnTrackChanged;
    :sswitch_1a
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->seek(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 266
    goto/16 :goto_0

    .line 270
    .end local v0    # "_arg0":I
    :sswitch_1b
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    move v0, v7

    .line 273
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->setHasVisibleActivity(Z)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 275
    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_4
    move v0, v9

    .line 272
    goto :goto_5

    .line 279
    :sswitch_1c
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->setPlayMode(I)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 284
    goto/16 :goto_0

    .line 288
    .end local v0    # "_arg0":I
    :sswitch_1d
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 291
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->setRepeatMode(I)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 293
    goto/16 :goto_0

    .line 297
    .end local v0    # "_arg0":I
    :sswitch_1e
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->setShuffleMode(I)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 302
    goto/16 :goto_0

    .line 306
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 310
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v7

    .line 311
    .local v2, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->setSleepTimer(JZ)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 313
    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_5
    move v2, v9

    .line 310
    goto :goto_6

    .line 317
    .end local v0    # "_arg0":J
    :sswitch_20
    const-string v6, "de.stohelit.mortplayer.IBasePlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IBasePlaybackService$Stub;->stop()V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 320
    goto/16 :goto_0

    .line 45
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
