.class Lcom/qwapi/adclient/android/AdRequestor$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/AdRequestor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/AdRequestor;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/AdRequestor;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/AdRequestor$4;->this$0:Lcom/qwapi/adclient/android/AdRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    return-void
.end method
