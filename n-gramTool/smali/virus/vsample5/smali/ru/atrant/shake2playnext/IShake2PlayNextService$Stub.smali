.class public abstract Lru/atrant/shake2playnext/IShake2PlayNextService$Stub;
.super Landroid/os/Binder;
.source "IShake2PlayNextService.java"

# interfaces
.implements Lru/atrant/shake2playnext/IShake2PlayNextService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/atrant/shake2playnext/IShake2PlayNextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/atrant/shake2playnext/IShake2PlayNextService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ru.atrant.shake2playnext.IShake2PlayNextService"

.field static final TRANSACTION_runKeepScreenOnThread:I = 0x2

.field static final TRANSACTION_setStatusBarNotifications:I = 0x3

.field static final TRANSACTION_setTreshold:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "ru.atrant.shake2playnext.IShake2PlayNextService"

    invoke-virtual {p0, p0, v0}, Lru/atrant/shake2playnext/IShake2PlayNextService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lru/atrant/shake2playnext/IShake2PlayNextService;
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
    const-string v1, "ru.atrant.shake2playnext.IShake2PlayNextService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lru/atrant/shake2playnext/IShake2PlayNextService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lru/atrant/shake2playnext/IShake2PlayNextService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lru/atrant/shake2playnext/IShake2PlayNextService$Stub$Proxy;

    invoke-direct {v1, p0}, Lru/atrant/shake2playnext/IShake2PlayNextService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "ru.atrant.shake2playnext.IShake2PlayNextService"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 48
    :sswitch_0
    const-string v1, "ru.atrant.shake2playnext.IShake2PlayNextService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v1, "ru.atrant.shake2playnext.IShake2PlayNextService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/IShake2PlayNextService$Stub;->setTreshold(I)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 58
    goto :goto_0

    .line 62
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v1, "ru.atrant.shake2playnext.IShake2PlayNextService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 65
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/IShake2PlayNextService$Stub;->runKeepScreenOnThread(Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 67
    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_0
    move v0, v4

    .line 64
    goto :goto_1

    .line 71
    :sswitch_3
    const-string v1, "ru.atrant.shake2playnext.IShake2PlayNextService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 74
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lru/atrant/shake2playnext/IShake2PlayNextService$Stub;->setStatusBarNotifications(Z)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 76
    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_1
    move v0, v4

    .line 73
    goto :goto_2

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
