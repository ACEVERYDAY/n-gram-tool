.class public Ldl/hp/xx/fm/b/a;
.super Ljava/lang/Object;
.source "f"


# static fields
.field public static final B:Ljava/lang/String;

.field static final c:Z

.field static pDvqLhYe:Z


# instance fields
.field g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".BnI`J/ZyZ"

    invoke-static {v1}, Ldl/hp/xx/fm/b/G;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldl/hp/xx/fm/b/a;->B:Ljava/lang/String;

    .line 50
    sput-boolean v2, Ldl/hp/xx/fm/b/a;->pDvqLhYe:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Ldl/hp/xx/fm/b/a;->g:Ljava/lang/Class;

    .line 48
    return-void
.end method

.method public static pDvqLhYe(Ljava/lang/Class;)Ldl/hp/xx/fm/b/a;
    .locals 1
    .param p0, "arg0"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ldl/hp/xx/fm/b/a;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ldl/hp/xx/fm/b/a;

    invoke-direct {v0, p0}, Ldl/hp/xx/fm/b/a;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static pDvqLhYe(Z)V
    .locals 0
    .param p0, "arg0"    # Z

    .prologue
    .line 39
    sput-boolean p0, Ldl/hp/xx/fm/b/a;->pDvqLhYe:Z

    .line 224
    return-void
.end method


# virtual methods
.method public J(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-boolean v0, Ldl/hp/xx/fm/b/a;->pDvqLhYe:Z

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "<^;O"

    invoke-static {v0}, Ldl/hp/xx/fm/b/k;->pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void
.end method

.method public pDvqLhYe(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Exception;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 238
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method public pDvqLhYe(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-boolean v0, Ldl/hp/xx/fm/b/a;->pDvqLhYe:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Ldl/hp/xx/fm/b/a;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method public varargs pDvqLhYe(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # [Ljava/lang/Object;

    .prologue
    .line 190
    sget-boolean v0, Ldl/hp/xx/fm/b/a;->pDvqLhYe:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Ldl/hp/xx/fm/b/a;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    return-void
.end method
