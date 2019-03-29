.class public final Lc/aguoqkle/n/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/aguoqkle/n/l;->a:Landroid/telephony/TelephonyManager;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lc/aguoqkle/n/l;->a:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/aguoqkle/n/l;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lc/aguoqkle/n/l;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/aguoqkle/n/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lc/aguoqkle/n/l;->b:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/l;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/l;->b:Ljava/lang/String;

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/l;->b:Ljava/lang/String;

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/l;->b:Ljava/lang/String;

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/l;->b:Ljava/lang/String;

    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/l;->b:Ljava/lang/String;

    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/l;->b:Ljava/lang/String;

    const-string v1, "46011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0

    :cond_4
    const-string v0, "\u672a\u77e5\u8fd0\u8425\u5546"

    goto :goto_0

    :cond_5
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/aguoqkle/n/l;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
