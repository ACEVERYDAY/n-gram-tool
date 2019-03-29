.class public abstract Lde/stohelit/mortplayer/IOnFolderLoadFinished$Stub;
.super Landroid/os/Binder;
.source "IOnFolderLoadFinished.java"

# interfaces
.implements Lde/stohelit/mortplayer/IOnFolderLoadFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/stohelit/mortplayer/IOnFolderLoadFinished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/stohelit/mortplayer/IOnFolderLoadFinished$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "de.stohelit.mortplayer.IOnFolderLoadFinished"

.field static final TRANSACTION_onFolderLoadFinished:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "de.stohelit.mortplayer.IOnFolderLoadFinished"

    invoke-virtual {p0, p0, v0}, Lde/stohelit/mortplayer/IOnFolderLoadFinished$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lde/stohelit/mortplayer/IOnFolderLoadFinished;
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
    const-string v1, "de.stohelit.mortplayer.IOnFolderLoadFinished"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lde/stohelit/mortplayer/IOnFolderLoadFinished;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lde/stohelit/mortplayer/IOnFolderLoadFinished;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lde/stohelit/mortplayer/IOnFolderLoadFinished$Stub$Proxy;

    invoke-direct {v1, p0}, Lde/stohelit/mortplayer/IOnFolderLoadFinished$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v1, 0x1

    const-string v2, "de.stohelit.mortplayer.IOnFolderLoadFinished"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "de.stohelit.mortplayer.IOnFolderLoadFinished"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "de.stohelit.mortplayer.IOnFolderLoadFinished"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lde/stohelit/mortplayer/IOnFolderLoadFinished$Stub;->onFolderLoadFinished()V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 56
    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
