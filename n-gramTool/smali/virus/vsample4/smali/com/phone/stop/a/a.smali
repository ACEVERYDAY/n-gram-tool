.class public Lcom/phone/stop/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static e:Ljava/lang/String;

.field public static f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/phone/stop/a/a;->a:Landroid/net/Uri;

    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/phone/stop/a/a;->b:Landroid/net/Uri;

    const-string v0, "content://sms/conversations/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/phone/stop/a/a;->c:Landroid/net/Uri;

    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/phone/stop/a/a;->d:Landroid/net/Uri;

    const-string v0, "staker"

    sput-object v0, Lcom/phone/stop/a/a;->e:Ljava/lang/String;

    const-string v0, "staker"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/phone/stop/a/a;->f:[B

    return-void
.end method
