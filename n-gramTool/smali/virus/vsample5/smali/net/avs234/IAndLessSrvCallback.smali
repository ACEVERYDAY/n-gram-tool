.class public interface abstract Lnet/avs234/IAndLessSrvCallback;
.super Ljava/lang/Object;
.source "IAndLessSrvCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/avs234/IAndLessSrvCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract errorReported(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract playItemChanged(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
