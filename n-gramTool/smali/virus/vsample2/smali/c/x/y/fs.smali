.class public Lc/x/y/fs;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/x/y/fs;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lc/x/y/fs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lc/x/y/fs;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    invoke-virtual {p0}, Lc/x/y/fs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc/x/y/fs;->a:Landroid/content/Context;

    iget-object v0, p0, Lc/x/y/fs;->a:Landroid/content/Context;

    invoke-static {v0}, La/e/a/b;->a(Landroid/content/Context;)V

    return-void
.end method
