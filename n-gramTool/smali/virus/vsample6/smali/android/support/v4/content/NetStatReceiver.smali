.class public Landroid/support/v4/content/NetStatReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/content/NetStatReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/content/NetStatReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Landroid/support/v4/content/NetStatReceiver;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/app/Support;->a(Landroid/content/Context;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/v4/app/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/app/e;->b(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Landroid/support/v4/app/a;->a()Landroid/support/v4/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method
