.class public abstract Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IPlaybackService.java"

# interfaces
.implements Lde/stohelit/folderplayer/playback/IPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/stohelit/folderplayer/playback/IPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/stohelit/folderplayer/playback/IPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "de.stohelit.folderplayer.playback.IPlaybackService"

.field static final TRANSACTION_cancelSleepTimer:I = 0x35

.field static final TRANSACTION_cleanup:I = 0x10

.field static final TRANSACTION_deleteFile:I = 0x1b

.field static final TRANSACTION_findFolder:I = 0x14

.field static final TRANSACTION_getCurrentFiles:I = 0x1f

.field static final TRANSACTION_getCurrentFolderInfo:I = 0x1e

.field static final TRANSACTION_getCurrentFolderPath:I = 0x1c

.field static final TRANSACTION_getCurrentFolderPid:I = 0x1d

.field static final TRANSACTION_getCurrentPosition:I = 0x2d

.field static final TRANSACTION_getCurrentState:I = 0x2c

.field static final TRANSACTION_getFilesOfFolder:I = 0x19

.field static final TRANSACTION_getFolderCount:I = 0x12

.field static final TRANSACTION_getFolderInfo:I = 0x15

.field static final TRANSACTION_getFoldersWithFiles:I = 0x13

.field static final TRANSACTION_getLastUpdateTime:I = 0xf

.field static final TRANSACTION_getNextFolderId:I = 0x17

.field static final TRANSACTION_getNextTrackInfo:I = 0x24

.field static final TRANSACTION_getPlayMode:I = 0xe

.field static final TRANSACTION_getPrevFolderId:I = 0x18

.field static final TRANSACTION_getRepeatMode:I = 0xd

.field static final TRANSACTION_getRootFolderInfo:I = 0x11

.field static final TRANSACTION_getShuffleMode:I = 0xc

.field static final TRANSACTION_getSleepTimer:I = 0x33

.field static final TRANSACTION_getSleepTimerTrackFinish:I = 0x34

.field static final TRANSACTION_getSubFolders:I = 0x16

.field static final TRANSACTION_getTrackCover:I = 0x22

.field static final TRANSACTION_getTrackInfo:I = 0x20

.field static final TRANSACTION_getTrackLength:I = 0x23

.field static final TRANSACTION_getTrackPath:I = 0x21

.field static final TRANSACTION_gotoFirstFolder:I = 0x7

.field static final TRANSACTION_gotoFolder:I = 0x28

.field static final TRANSACTION_gotoNextFolder:I = 0x26

.field static final TRANSACTION_gotoNextTrack:I = 0x29

.field static final TRANSACTION_gotoPrevFolder:I = 0x27

.field static final TRANSACTION_gotoPrevTrack:I = 0x2a

.field static final TRANSACTION_gotoTrack:I = 0x2b

.field static final TRANSACTION_isInitialized:I = 0x4

.field static final TRANSACTION_pause:I = 0x2f

.field static final TRANSACTION_play:I = 0x2e

.field static final TRANSACTION_registerOnTrackChanged:I = 0x1

.field static final TRANSACTION_removeOnTrackChanged:I = 0x2

.field static final TRANSACTION_searchFile:I = 0x1a

.field static final TRANSACTION_seek:I = 0x31

.field static final TRANSACTION_setHasVisibleActivity:I = 0x3

.field static final TRANSACTION_setNextTrack:I = 0x25

.field static final TRANSACTION_setPlayMode:I = 0xa

.field static final TRANSACTION_setRepeatMode:I = 0x9

.field static final TRANSACTION_setShuffleMode:I = 0x8

.field static final TRANSACTION_setSleepTimer:I = 0x32

.field static final TRANSACTION_setSortMode:I = 0xb

.field static final TRANSACTION_setStartFile:I = 0x5

.field static final TRANSACTION_stop:I = 0x30

.field static final TRANSACTION_updateFolderInfos:I = 0x6

.field static final TRANSACTION_updateWakelock:I = 0x36


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p0, p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lde/stohelit/folderplayer/playback/IPlaybackService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v1, 0x0

    .line 43
    :goto_0
    return-object v1

    .line 39
    :cond_0
    const-string v1, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lde/stohelit/folderplayer/playback/IPlaybackService;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lde/stohelit/folderplayer/playback/IPlaybackService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 43
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
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
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 559
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 55
    :sswitch_0
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v8, 0x1

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lde/stohelit/mortplayer/IOnTrackChanged$Stub;->asInterface(Landroid/os/IBinder;)Lde/stohelit/mortplayer/IOnTrackChanged;

    move-result-object v0

    .line 63
    .local v0, "_arg0":Lde/stohelit/mortplayer/IOnTrackChanged;
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->registerOnTrackChanged(Lde/stohelit/mortplayer/IOnTrackChanged;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v8, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lde/stohelit/mortplayer/IOnTrackChanged;
    :sswitch_2
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lde/stohelit/mortplayer/IOnTrackChanged$Stub;->asInterface(Landroid/os/IBinder;)Lde/stohelit/mortplayer/IOnTrackChanged;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Lde/stohelit/mortplayer/IOnTrackChanged;
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->removeOnTrackChanged(Lde/stohelit/mortplayer/IOnTrackChanged;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    const/4 v8, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Lde/stohelit/mortplayer/IOnTrackChanged;
    :sswitch_3
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v0, v8

    .line 81
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->setHasVisibleActivity(Z)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v8, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Z
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    .line 87
    :sswitch_4
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->isInitialized()Z

    move-result v4

    .line 89
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v4, :cond_1

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v8, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 95
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->setStartFile(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v8, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lde/stohelit/mortplayer/IOnFolderLoadFinished$Stub;->asInterface(Landroid/os/IBinder;)Lde/stohelit/mortplayer/IOnFolderLoadFinished;

    move-result-object v3

    .line 111
    .local v3, "_arg2":Lde/stohelit/mortplayer/IOnFolderLoadFinished;
    invoke-virtual {p0, v0, v2, v3}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->updateFolderInfos(Ljava/lang/String;ILde/stohelit/mortplayer/IOnFolderLoadFinished;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lde/stohelit/mortplayer/IOnFolderLoadFinished;
    :sswitch_7
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->gotoFirstFolder()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 124
    :sswitch_8
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->setShuffleMode(I)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 133
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->setRepeatMode(I)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->setPlayMode(I)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 151
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->setSortMode(I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getShuffleMode()I

    move-result v4

    .line 162
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 168
    .end local v4    # "_result":I
    :sswitch_d
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getRepeatMode()I

    move-result v4

    .line 170
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 176
    .end local v4    # "_result":I
    :sswitch_e
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getPlayMode()I

    move-result v4

    .line 178
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 184
    .end local v4    # "_result":I
    :sswitch_f
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getLastUpdateTime()J

    move-result-wide v4

    .line 186
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 192
    .end local v4    # "_result":J
    :sswitch_10
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->cleanup()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 199
    :sswitch_11
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getRootFolderInfo()Lde/stohelit/mortplayer/FolderInfo;

    move-result-object v4

    .line 201
    .local v4, "_result":Lde/stohelit/mortplayer/FolderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v4, :cond_2

    .line 203
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v8, 0x1

    invoke-virtual {v4, p3, v8}, Lde/stohelit/mortplayer/FolderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 209
    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 207
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 213
    .end local v4    # "_result":Lde/stohelit/mortplayer/FolderInfo;
    :sswitch_12
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getFolderCount()I

    move-result v4

    .line 215
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 221
    .end local v4    # "_result":I
    :sswitch_13
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getFoldersWithFiles()Ljava/util/List;

    move-result-object v6

    .line 223
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/FolderInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 225
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 229
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/FolderInfo;>;"
    :sswitch_14
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->findFolder(Ljava/lang/String;)J

    move-result-wide v4

    .line 233
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :sswitch_15
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 242
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getFolderInfo(J)Lde/stohelit/mortplayer/FolderInfo;

    move-result-object v4

    .line 243
    .local v4, "_result":Lde/stohelit/mortplayer/FolderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v4, :cond_3

    .line 245
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v8, 0x1

    invoke-virtual {v4, p3, v8}, Lde/stohelit/mortplayer/FolderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    :goto_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 249
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 255
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Lde/stohelit/mortplayer/FolderInfo;
    :sswitch_16
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 258
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getSubFolders(J)Ljava/util/List;

    move-result-object v6

    .line 259
    .restart local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/FolderInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 261
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 265
    .end local v0    # "_arg0":J
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/FolderInfo;>;"
    :sswitch_17
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 268
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getNextFolderId(J)J

    move-result-wide v4

    .line 269
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 275
    .end local v0    # "_arg0":J
    .end local v4    # "_result":J
    :sswitch_18
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 278
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getPrevFolderId(J)J

    move-result-wide v4

    .line 279
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 285
    .end local v0    # "_arg0":J
    .end local v4    # "_result":J
    :sswitch_19
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 288
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getFilesOfFolder(J)Ljava/util/List;

    move-result-object v7

    .line 289
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/TrackInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 291
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":J
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/TrackInfo;>;"
    :sswitch_1a
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 299
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->searchFile(JILjava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 303
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 305
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 309
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_1b
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 313
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->deleteFile(JLjava/lang/String;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 320
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getCurrentFolderPath()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 328
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getCurrentFolderPid()J

    move-result-wide v4

    .line 330
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 336
    .end local v4    # "_result":J
    :sswitch_1e
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getCurrentFolderInfo()Lde/stohelit/mortplayer/FolderInfo;

    move-result-object v4

    .line 338
    .local v4, "_result":Lde/stohelit/mortplayer/FolderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v4, :cond_4

    .line 340
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v8, 0x1

    invoke-virtual {v4, p3, v8}, Lde/stohelit/mortplayer/FolderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 344
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 350
    .end local v4    # "_result":Lde/stohelit/mortplayer/FolderInfo;
    :sswitch_1f
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getCurrentFiles()Ljava/util/List;

    move-result-object v7

    .line 352
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/TrackInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 354
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 358
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lde/stohelit/mortplayer/TrackInfo;>;"
    :sswitch_20
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getTrackInfo()Lde/stohelit/mortplayer/TrackInfo;

    move-result-object v4

    .line 360
    .local v4, "_result":Lde/stohelit/mortplayer/TrackInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v4, :cond_5

    .line 362
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v8, 0x1

    invoke-virtual {v4, p3, v8}, Lde/stohelit/mortplayer/TrackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 368
    :goto_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 366
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 372
    .end local v4    # "_result":Lde/stohelit/mortplayer/TrackInfo;
    :sswitch_21
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getTrackPath()Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 380
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getTrackCover()Ljava/lang/String;

    move-result-object v4

    .line 382
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 388
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getTrackLength()I

    move-result v4

    .line 390
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 396
    .end local v4    # "_result":I
    :sswitch_24
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getNextTrackInfo()Lde/stohelit/mortplayer/TrackInfo;

    move-result-object v4

    .line 398
    .local v4, "_result":Lde/stohelit/mortplayer/TrackInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    if-eqz v4, :cond_6

    .line 400
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    const/4 v8, 0x1

    invoke-virtual {v4, p3, v8}, Lde/stohelit/mortplayer/TrackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 406
    :goto_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 404
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 410
    .end local v4    # "_result":Lde/stohelit/mortplayer/TrackInfo;
    :sswitch_25
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 414
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 415
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v1, v2}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->setNextTrack(JI)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 421
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :sswitch_26
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->gotoNextFolder()V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 428
    :sswitch_27
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->gotoPrevFolder()V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 435
    :sswitch_28
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 439
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 440
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v1, v2}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->gotoFolder(JI)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 446
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :sswitch_29
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->gotoNextTrack()V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 453
    :sswitch_2a
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->gotoPrevTrack()V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 460
    :sswitch_2b
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 464
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 466
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 467
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->gotoTrack(JII)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 473
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_2c
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getCurrentState()I

    move-result v4

    .line 475
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 481
    .end local v4    # "_result":I
    :sswitch_2d
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getCurrentPosition()I

    move-result v4

    .line 483
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 489
    .end local v4    # "_result":I
    :sswitch_2e
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->play()V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 496
    :sswitch_2f
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->pause()V

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 503
    :sswitch_30
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->stop()V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 510
    :sswitch_31
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 513
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->seek(I)V

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 519
    .end local v0    # "_arg0":I
    :sswitch_32
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 523
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    move v2, v8

    .line 524
    .local v2, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v0, v1, v2}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->setSleepTimer(JZ)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 523
    .end local v2    # "_arg1":Z
    :cond_7
    const/4 v8, 0x0

    move v2, v8

    goto :goto_8

    .line 530
    .end local v0    # "_arg0":J
    :sswitch_33
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getSleepTimer()J

    move-result-wide v4

    .line 532
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 534
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 538
    .end local v4    # "_result":J
    :sswitch_34
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->getSleepTimerTrackFinish()Z

    move-result v4

    .line 540
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    if-eqz v4, :cond_8

    const/4 v8, 0x1

    :goto_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 541
    :cond_8
    const/4 v8, 0x0

    goto :goto_9

    .line 546
    .end local v4    # "_result":Z
    :sswitch_35
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->cancelSleepTimer()V

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 553
    :sswitch_36
    const-string v8, "de.stohelit.folderplayer.playback.IPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lde/stohelit/folderplayer/playback/IPlaybackService$Stub;->updateWakelock()V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 51
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
