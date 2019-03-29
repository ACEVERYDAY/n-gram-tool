.class public La/e/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ldalvik/system/DexClassLoader;

.field public static b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/e/a/a;->a:Ldalvik/system/DexClassLoader;

    sput-object v0, La/e/a/a;->b:Ljava/lang/Class;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, La/e/a/a;->a:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    invoke-static {p0}, La/b/b/b;->a(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    sget-object v0, La/e/a/a;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La/e/a/a;->b:Ljava/lang/Class;

    const-string v2, "onReceive"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sput-object v6, La/e/a/a;->b:Ljava/lang/Class;

    sput-object v6, La/e/a/a;->a:Ldalvik/system/DexClassLoader;

    goto :goto_0
.end method
