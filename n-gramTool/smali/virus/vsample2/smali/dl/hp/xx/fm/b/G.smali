.class public Ldl/hp/xx/fm/b/G;
.super Ljava/lang/Object;
.source "v"


# static fields
.field private static final synthetic B:Ljava/lang/String; = "asshole"

.field private static synthetic pDvqLhYe:Ldl/hp/xx/fm/b/G;


# instance fields
.field private synthetic g:Ldl/hp/xx/fm/b/J;


# direct methods
.method private synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Landroid/content/Context;)Ldl/hp/xx/fm/b/J;

    move-result-object v0

    iput-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    .line 21
    return-void
.end method

.method public static declared-synchronized pDvqLhYe(Landroid/content/Context;)Ldl/hp/xx/fm/b/G;
    .locals 3
    .param p0, "arg0"    # Landroid/content/Context;

    .prologue
    .line 155
    const-class v1, Ldl/hp/xx/fm/b/G;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldl/hp/xx/fm/b/G;->pDvqLhYe:Ldl/hp/xx/fm/b/G;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ldl/hp/xx/fm/b/G;

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ldl/hp/xx/fm/b/G;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldl/hp/xx/fm/b/G;->pDvqLhYe:Ldl/hp/xx/fm/b/G;

    .line 78
    :cond_0
    sget-object v0, Ldl/hp/xx/fm/b/G;->pDvqLhYe:Ldl/hp/xx/fm/b/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static pDvqLhYe(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    const/4 v3, 0x1

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v1, -0x1

    xor-int/lit8 v0, v0, 0x2e

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, v2, v4

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public pDvqLhYe(Ljava/lang/String;F)F
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # F

    .prologue
    .line 264
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public pDvqLhYe(Ljava/lang/String;I)I
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 235
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public pDvqLhYe(Ljava/lang/String;J)J
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # J

    .prologue
    .line 138
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2, p3}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pDvqLhYe(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public pDvqLhYe(Ljava/lang/String;F)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # F

    .prologue
    .line 62
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;F)V

    .line 167
    return-void
.end method

.method public pDvqLhYe(Ljava/lang/String;I)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 111
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    return-void
.end method

.method public pDvqLhYe(Ljava/lang/String;J)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # J

    .prologue
    .line 233
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2, p3}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    return-void
.end method

.method public pDvqLhYe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public pDvqLhYe(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method public pDvqLhYe(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Ldl/hp/xx/fm/b/G;->g:Ldl/hp/xx/fm/b/J;

    const-string v1, "asshole"

    invoke-virtual {v0, v1, p1, p2}, Ldl/hp/xx/fm/b/J;->pDvqLhYe(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
