.class public Landroid/support/v4/content/b;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/content/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/content/b;->a:Ljava/lang/String;

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

    sget-object v0, Landroid/support/v4/content/b;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/a;->a()Landroid/support/v4/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->c(Landroid/content/Context;)Z

    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/m;->b(Landroid/content/Context;)Z

    return-void
.end method
