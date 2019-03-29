.class public interface abstract Lcom/mixzing/music/IMusicListener;
.super Ljava/lang/Object;
.source "IMusicListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixzing/music/IMusicListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMusicEvent(ILcom/mixzing/data/MetaData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
