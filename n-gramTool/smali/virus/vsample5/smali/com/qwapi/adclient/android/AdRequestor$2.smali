.class Lcom/qwapi/adclient/android/AdRequestor$2;
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

    iput-object p1, p0, Lcom/qwapi/adclient/android/AdRequestor$2;->this$0:Lcom/qwapi/adclient/android/AdRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.qwapi.adclient.android"

    const-string v2, "com.qwapi.adclient.android.AdRequestorPreferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/qwapi/adclient/android/AdRequestor$2;->this$0:Lcom/qwapi/adclient/android/AdRequestor;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/qwapi/adclient/android/AdRequestor;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
