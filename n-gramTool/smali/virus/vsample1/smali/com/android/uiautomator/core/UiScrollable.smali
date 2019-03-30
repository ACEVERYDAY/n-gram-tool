.class public Lcom/android/uiautomator/core/UiScrollable;
.super Lcom/android/uiautomator/core/UiCollection;
.source "UiScrollable.java"


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 2
    .param p1, "container"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 5
    const/4 v0, 0x0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiCollection;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected exists(Lcom/android/uiautomator/core/UiSelector;)Z
    .locals 2
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flingBackward()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flingForward()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flingToBeginning(I)Z
    .locals 2
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flingToEnd(I)Z
    .locals 2
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowScrollSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;Z)Lcom/android/uiautomator/core/UiObject;
    .locals 2
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowScrollSearch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxSearchSwipes()I
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSwipeDeadZonePercentage()D
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollBackward()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollBackward(I)Z
    .locals 2
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollDescriptionIntoView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollForward()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollForward(I)Z
    .locals 2
    .param p1, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollIntoView(Lcom/android/uiautomator/core/UiObject;)Z
    .locals 2
    .param p1, "obj"    # Lcom/android/uiautomator/core/UiObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollIntoView(Lcom/android/uiautomator/core/UiSelector;)Z
    .locals 2
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollTextIntoView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollToBeginning(I)Z
    .locals 2
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollToBeginning(II)Z
    .locals 2
    .param p1, "maxSwipes"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollToEnd(I)Z
    .locals 2
    .param p1, "maxSwipes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollToEnd(II)Z
    .locals 2
    .param p1, "maxSwipes"    # I
    .param p2, "steps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsHorizontalList()Lcom/android/uiautomator/core/UiScrollable;
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsVerticalList()Lcom/android/uiautomator/core/UiScrollable;
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxSearchSwipes(I)Lcom/android/uiautomator/core/UiScrollable;
    .locals 2
    .param p1, "swipes"    # I

    .prologue
    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSwipeDeadZonePercentage(D)Lcom/android/uiautomator/core/UiScrollable;
    .locals 2
    .param p1, "swipeDeadZonePercentage"    # D

    .prologue
    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
