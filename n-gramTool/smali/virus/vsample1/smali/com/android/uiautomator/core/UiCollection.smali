.class public Lcom/android/uiautomator/core/UiCollection;
.super Lcom/android/uiautomator/core/UiObject;
.source "UiCollection.java"


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .locals 2
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 5
    const/4 v0, 0x0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
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
    .line 6
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
    .line 7
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
    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildCount(Lcom/android/uiautomator/core/UiSelector;)I
    .locals 2
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
