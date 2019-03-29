.class Lcom/by/ac/loader/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/by/ac/loader/b;

.field private final synthetic b:Ljava/io/File;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/by/ac/loader/Loader$InitListener;


# direct methods
.method constructor <init>(Lcom/by/ac/loader/b;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/by/ac/loader/Loader$InitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/by/ac/loader/c;->a:Lcom/by/ac/loader/b;

    iput-object p2, p0, Lcom/by/ac/loader/c;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/by/ac/loader/c;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/by/ac/loader/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/by/ac/loader/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/by/ac/loader/c;->f:Lcom/by/ac/loader/Loader$InitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/by/ac/loader/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/by/ac/loader/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/by/ac/loader/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/by/ac/loader/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/by/ac/loader/c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/by/ac/loader/c;->f:Lcom/by/ac/loader/Loader$InitListener;

    invoke-static {v0, v1, v2, v3}, Lcom/by/ac/loader/Loader;->initLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/by/ac/loader/Loader$InitListener;)Z

    return-void
.end method
