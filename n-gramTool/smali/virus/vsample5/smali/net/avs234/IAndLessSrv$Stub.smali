.class public abstract Lnet/avs234/IAndLessSrv$Stub;
.super Landroid/os/Binder;
.source "IAndLessSrv.java"

# interfaces
.implements Lnet/avs234/IAndLessSrv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/avs234/IAndLessSrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/avs234/IAndLessSrv$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "net.avs234.IAndLessSrv"

.field static final TRANSACTION_add_to_playlist:I = 0x2

.field static final TRANSACTION_dec_vol:I = 0xa

.field static final TRANSACTION_get_cue_from_flac:I = 0x1b

.field static final TRANSACTION_get_cur_dir:I = 0x10

.field static final TRANSACTION_get_cur_mode:I = 0xf

.field static final TRANSACTION_get_cur_pos:I = 0x11

.field static final TRANSACTION_get_cur_seconds:I = 0x13

.field static final TRANSACTION_get_cur_track_len:I = 0x15

.field static final TRANSACTION_get_cur_track_name:I = 0x17

.field static final TRANSACTION_get_cur_track_source:I = 0x12

.field static final TRANSACTION_get_cur_track_start:I = 0x16

.field static final TRANSACTION_get_track_duration:I = 0x14

.field static final TRANSACTION_inc_vol:I = 0x9

.field static final TRANSACTION_init_playlist:I = 0x1

.field static final TRANSACTION_initialized:I = 0xe

.field static final TRANSACTION_is_paused:I = 0xd

.field static final TRANSACTION_is_running:I = 0xc

.field static final TRANSACTION_pause:I = 0x7

.field static final TRANSACTION_play:I = 0x3

.field static final TRANSACTION_play_next:I = 0x5

.field static final TRANSACTION_play_prev:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x19

.field static final TRANSACTION_resume:I = 0x8

.field static final TRANSACTION_seek_to:I = 0x4

.field static final TRANSACTION_set_driver_mode:I = 0x18

.field static final TRANSACTION_shutdown:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "net.avs234.IAndLessSrv"

    invoke-virtual {p0, p0, v0}, Lnet/avs234/IAndLessSrv$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/avs234/IAndLessSrv;
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
    const-string v1, "net.avs234.IAndLessSrv"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/avs234/IAndLessSrv;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lnet/avs234/IAndLessSrv;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lnet/avs234/IAndLessSrv$Stub$Proxy;

    invoke-direct {v1, p0}, Lnet/avs234/IAndLessSrv$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v7, "net.avs234.IAndLessSrv"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lnet/avs234/IAndLessSrv$Stub;->init_playlist(Ljava/lang/String;I)Z

    move-result v4

    .line 59
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v4, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 61
    goto :goto_0

    :cond_0
    move v5, v8

    .line 60
    goto :goto_1

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/avs234/IAndLessSrv$Stub;->add_to_playlist(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    .line 75
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v4, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 77
    goto :goto_0

    :cond_1
    move v5, v8

    .line 76
    goto :goto_2

    .line 81
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lnet/avs234/IAndLessSrv$Stub;->play(II)Z

    move-result v4

    .line 87
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v4, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 89
    goto :goto_0

    :cond_2
    move v5, v8

    .line 88
    goto :goto_3

    .line 93
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lnet/avs234/IAndLessSrv$Stub;->seek_to(I)Z

    move-result v4

    .line 97
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v4, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 99
    goto/16 :goto_0

    :cond_3
    move v5, v8

    .line 98
    goto :goto_4

    .line 103
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->play_next()Z

    move-result v4

    .line 105
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v4, :cond_4

    move v5, v6

    :goto_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 107
    goto/16 :goto_0

    :cond_4
    move v5, v8

    .line 106
    goto :goto_5

    .line 111
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->play_prev()Z

    move-result v4

    .line 113
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v4, :cond_5

    move v5, v6

    :goto_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 115
    goto/16 :goto_0

    :cond_5
    move v5, v8

    .line 114
    goto :goto_6

    .line 119
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->pause()Z

    move-result v4

    .line 121
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v4, :cond_6

    move v5, v6

    :goto_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 123
    goto/16 :goto_0

    :cond_6
    move v5, v8

    .line 122
    goto :goto_7

    .line 127
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->resume()Z

    move-result v4

    .line 129
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v4, :cond_7

    move v5, v6

    :goto_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 131
    goto/16 :goto_0

    :cond_7
    move v5, v8

    .line 130
    goto :goto_8

    .line 135
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->inc_vol()Z

    move-result v4

    .line 137
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v4, :cond_8

    move v5, v6

    :goto_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 139
    goto/16 :goto_0

    :cond_8
    move v5, v8

    .line 138
    goto :goto_9

    .line 143
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->dec_vol()Z

    move-result v4

    .line 145
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v4, :cond_9

    move v5, v6

    :goto_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 147
    goto/16 :goto_0

    :cond_9
    move v5, v8

    .line 146
    goto :goto_a

    .line 151
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->shutdown()Z

    move-result v4

    .line 153
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v4, :cond_a

    move v5, v6

    :goto_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 155
    goto/16 :goto_0

    :cond_a
    move v5, v8

    .line 154
    goto :goto_b

    .line 159
    .end local v4    # "_result":Z
    :sswitch_c
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->is_running()Z

    move-result v4

    .line 161
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v4, :cond_b

    move v5, v6

    :goto_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 163
    goto/16 :goto_0

    :cond_b
    move v5, v8

    .line 162
    goto :goto_c

    .line 167
    .end local v4    # "_result":Z
    :sswitch_d
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->is_paused()Z

    move-result v4

    .line 169
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v4, :cond_c

    move v5, v6

    :goto_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 171
    goto/16 :goto_0

    :cond_c
    move v5, v8

    .line 170
    goto :goto_d

    .line 175
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->initialized()Z

    move-result v4

    .line 177
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v4, :cond_d

    move v5, v6

    :goto_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 179
    goto/16 :goto_0

    :cond_d
    move v5, v8

    .line 178
    goto :goto_e

    .line 183
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->get_cur_mode()I

    move-result v4

    .line 185
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 187
    goto/16 :goto_0

    .line 191
    .end local v4    # "_result":I
    :sswitch_10
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->get_cur_dir()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 195
    goto/16 :goto_0

    .line 199
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->get_cur_pos()I

    move-result v4

    .line 201
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 203
    goto/16 :goto_0

    .line 207
    .end local v4    # "_result":I
    :sswitch_12
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->get_cur_track_source()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 211
    goto/16 :goto_0

    .line 215
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->get_cur_seconds()I

    move-result v4

    .line 217
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 219
    goto/16 :goto_0

    .line 223
    .end local v4    # "_result":I
    :sswitch_14
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->get_track_duration()I

    move-result v4

    .line 225
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 227
    goto/16 :goto_0

    .line 231
    .end local v4    # "_result":I
    :sswitch_15
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->get_cur_track_len()I

    move-result v4

    .line 233
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 235
    goto/16 :goto_0

    .line 239
    .end local v4    # "_result":I
    :sswitch_16
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->get_cur_track_start()I

    move-result v4

    .line 241
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 243
    goto/16 :goto_0

    .line 247
    .end local v4    # "_result":I
    :sswitch_17
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lnet/avs234/IAndLessSrv$Stub;->get_cur_track_name()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 251
    goto/16 :goto_0

    .line 255
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lnet/avs234/IAndLessSrv$Stub;->set_driver_mode(I)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 260
    goto/16 :goto_0

    .line 264
    .end local v0    # "_arg0":I
    :sswitch_19
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lnet/avs234/IAndLessSrvCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnet/avs234/IAndLessSrvCallback;

    move-result-object v0

    .line 267
    .local v0, "_arg0":Lnet/avs234/IAndLessSrvCallback;
    invoke-virtual {p0, v0}, Lnet/avs234/IAndLessSrv$Stub;->registerCallback(Lnet/avs234/IAndLessSrvCallback;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 269
    goto/16 :goto_0

    .line 273
    .end local v0    # "_arg0":Lnet/avs234/IAndLessSrvCallback;
    :sswitch_1a
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lnet/avs234/IAndLessSrvCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnet/avs234/IAndLessSrvCallback;

    move-result-object v0

    .line 276
    .restart local v0    # "_arg0":Lnet/avs234/IAndLessSrvCallback;
    invoke-virtual {p0, v0}, Lnet/avs234/IAndLessSrv$Stub;->unregisterCallback(Lnet/avs234/IAndLessSrvCallback;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 278
    goto/16 :goto_0

    .line 282
    .end local v0    # "_arg0":Lnet/avs234/IAndLessSrvCallback;
    :sswitch_1b
    const-string v5, "net.avs234.IAndLessSrv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/avs234/IAndLessSrv$Stub;->get_cue_from_flac(Ljava/lang/String;)[I

    move-result-object v4

    .line 286
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v5, v6

    .line 288
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
