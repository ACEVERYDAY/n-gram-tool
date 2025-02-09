.class public abstract Lcom/mixzing/music/IMusicListener$Stub;
.super Landroid/os/Binder;
.source "IMusicListener.java"

# interfaces
.implements Lcom/mixzing/music/IMusicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixzing/music/IMusicListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixzing/music/IMusicListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mixzing.music.IMusicListener"

.field static final TRANSACTION_onMusicEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.mixzing.music.IMusicListener"

    invoke-virtual {p0, p0, v0}, Lcom/mixzing/music/IMusicListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mixzing/music/IMusicListener;
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
    const-string v1, "com.mixzing.music.IMusicListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mixzing/music/IMusicListener;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/mixzing/music/IMusicListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mixzing/music/IMusicListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mixzing/music/IMusicListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    const-string v4, "com.mixzing.music.IMusicListener"

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string v2, "com.mixzing.music.IMusicListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "com.mixzing.music.IMusicListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/mixzing/data/MetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mixzing/data/MetaData;

    .line 64
    .local v1, "_arg1":Lcom/mixzing/data/MetaData;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/mixzing/music/IMusicListener$Stub;->onMusicEvent(ILcom/mixzing/data/MetaData;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 66
    goto :goto_0

    .line 62
    .end local v1    # "_arg1":Lcom/mixzing/data/MetaData;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mixzing/data/MetaData;
    goto :goto_1

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
