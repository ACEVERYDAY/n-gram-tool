.class public Lcom/apkol/root/b/g;
.super Ljava/lang/Object;
.source "MountUtil.java"


# static fields
.field private static b:Lcom/apkol/root/b/g;


# instance fields
.field private a:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/apkol/root/b/g;->b:Lcom/apkol/root/b/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/apkol/root/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/g;->a:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lcom/apkol/root/b/g;->c:[Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/apkol/root/b/g;->d:[Ljava/lang/String;

    .line 28
    const/4 v3, 0x0

    .line 30
    const-string v0, "/proc/mounts"

    .line 31
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/apkol/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 35
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    :try_start_1
    invoke-direct {p0, v1}, Lcom/apkol/root/b/g;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 43
    :goto_0
    if-nez v0, :cond_0

    .line 45
    :try_start_2
    const-string v0, "mount"

    const/16 v2, 0x7d0

    invoke-static {v0, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 50
    :goto_1
    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lcom/apkol/root/b/g;->a(Ljava/lang/String;)Z

    .line 54
    :cond_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 40
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v0, v3

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 39
    :catch_2
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v1, v2

    move v0, v3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/apkol/root/b/g;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/apkol/root/b/g;->b:Lcom/apkol/root/b/g;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/apkol/root/b/g;

    invoke-direct {v0, p0}, Lcom/apkol/root/b/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apkol/root/b/g;->b:Lcom/apkol/root/b/g;

    .line 24
    :cond_0
    sget-object v0, Lcom/apkol/root/b/g;->b:Lcom/apkol/root/b/g;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 57
    .line 60
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 61
    array-length v7, v6

    move v5, v4

    move-object v2, v1

    :goto_0
    if-lt v5, v7, :cond_2

    .line 70
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 71
    const-string v0, "\\s+"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    array-length v2, v0

    if-le v2, v10, :cond_0

    .line 76
    iput-object v0, p0, Lcom/apkol/root/b/g;->c:[Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/apkol/root/b/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "sysMountArr[0] = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/apkol/root/b/g;->c:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/apkol/root/b/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "sysMountArr[1] = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/apkol/root/b/g;->c:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/apkol/root/b/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "sysMountArr[2] = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/apkol/root/b/g;->c:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    const-string v0, "\\s+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v10, :cond_1

    .line 87
    iput-object v0, p0, Lcom/apkol/root/b/g;->d:[Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/apkol/root/b/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataMountArr[0] = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/b/g;->d:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/apkol/root/b/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataMountArr[1] = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/b/g;->d:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/apkol/root/b/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataMountArr[2] = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/b/g;->d:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/b/g;->c:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apkol/root/b/g;->d:[Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v3

    .line 96
    :goto_1
    return v0

    .line 61
    :cond_2
    aget-object v0, v6, v5

    .line 62
    const-string v8, "/system"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v2, v0

    .line 65
    :cond_3
    const-string v8, "/data"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 61
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    move v0, v4

    .line 96
    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/apkol/root/b/g;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/apkol/root/b/g;->d:[Ljava/lang/String;

    return-object v0
.end method
