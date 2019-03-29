.class Ldl/hp/xx/fm/J;
.super Ljava/lang/Object;
.source "l"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldl/hp/xx/fm/G;->pDvqLhYe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Z

.field final synthetic pDvqLhYe:Ldl/hp/xx/fm/G;


# direct methods
.method constructor <init>(Ldl/hp/xx/fm/G;Z)V
    .locals 0
    .param p1, "arg0"    # Ldl/hp/xx/fm/G;
    .param p2, "arg1"    # Z

    .prologue
    .line 60
    iput-object p1, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    iput-boolean p2, p0, Ldl/hp/xx/fm/J;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    invoke-static {v0}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    if-nez v0, :cond_3

    .line 160
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    invoke-static {v0}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "/VxT/OqE"

    invoke-static {v2}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    move v2, v3

    .line 203
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    if-ge v2, v8, :cond_2

    .line 217
    sget-object v2, Ldl/hp/xx/fm/G;->B:Ldl/hp/xx/fm/b/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eAv@mA`Jh@f\u000e"

    invoke-static {v5}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ldl/hp/xx/fm/b/a;->J(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 93
    :try_start_0
    iget-object v2, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    invoke-static {v2}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "iZu^;\u0001.JnYoBnOe\u0000b\u001fe\u001co\u0000bAl\u0001sZ.O`Lc\u0000bM"

    invoke-static {v4}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-static {v2, v4, v5}, Ldl/hp/xx/fm/a/A;->pDvqLhYe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    move-object v0, v1

    .line 190
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 164
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    .line 181
    invoke-static {v3}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    iget-object v5, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    .line 105
    invoke-static {v5}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 166
    invoke-static {v0, v2}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;Ldalvik/system/DexClassLoader;)Ldalvik/system/DexClassLoader;

    .line 157
    :cond_3
    iget-object v0, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    invoke-static {v0}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    :try_start_1
    iget-object v0, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    invoke-static {v0}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    const-string v1, "MnC/^nYd\\/|ukoIh@doqG"

    invoke-static {v1}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 259
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    const-string v2, "`MuGn@"

    invoke-static {v2}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 24
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 51
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    invoke-static {v4}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;)Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "J`Z`\u001e"

    invoke-static {v4}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Ldl/hp/xx/fm/J;->g:Z

    .line 171
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 161
    :catch_1
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    iget-object v0, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;Ldalvik/system/DexClassLoader;)Ldalvik/system/DexClassLoader;

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldl/hp/xx/fm/J;->pDvqLhYe:Ldl/hp/xx/fm/G;

    invoke-static {v1}, Ldl/hp/xx/fm/G;->pDvqLhYe(Ldl/hp/xx/fm/G;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/VxT/OqE"

    invoke-static {v2}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_1
.end method
