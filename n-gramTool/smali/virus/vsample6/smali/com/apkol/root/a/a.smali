.class public Lcom/apkol/root/a/a;
.super Ljava/lang/Object;
.source "DownLoadTool.java"

# interfaces
.implements Lcom/apkol/utils/e/h$a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final k:I = 0x400


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/apkol/root/a/e;

.field private g:Lcom/apkol/utils/e/b$c;

.field private final h:I

.field private final i:I

.field private j:Ljava/lang/String;

.field private l:Lcom/apkol/root/AssistConst;

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/apkol/root/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/root/a/a;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apkol/root/a/e;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/apkol/root/a/a;->h:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/a;->i:I

    .line 47
    iput-object v1, p0, Lcom/apkol/root/a/a;->j:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/apkol/root/a/a;->l:Lcom/apkol/root/AssistConst;

    .line 53
    new-instance v0, Lcom/apkol/root/a/b;

    invoke-direct {v0, p0}, Lcom/apkol/root/a/b;-><init>(Lcom/apkol/root/a/a;)V

    iput-object v0, p0, Lcom/apkol/root/a/a;->m:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/apkol/root/a/a;->b:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/apkol/root/a/a;->c:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/apkol/root/a/a;->d:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/apkol/root/a/a;->e:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/apkol/root/a/a;->f:Lcom/apkol/root/a/e;

    .line 83
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/a;->l:Lcom/apkol/root/AssistConst;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/a/a;)Lcom/apkol/root/AssistConst;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/apkol/root/a/a;->l:Lcom/apkol/root/AssistConst;

    return-object v0
.end method

.method static synthetic a(Lcom/apkol/root/a/a;Lcom/apkol/utils/e/b$c;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/apkol/root/a/a;->g:Lcom/apkol/utils/e/b$c;

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/a/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/apkol/root/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 167
    :cond_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 168
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    return-void

    .line 169
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 170
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v4, Ljava/lang/String;

    const-string v5, "8859_1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v5, "GB2312"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 177
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 179
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 181
    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 182
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 184
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_4

    .line 187
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 188
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 185
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 210
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 211
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Lcom/apkol/utils/i;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apkol/utils/i;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 214
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/apkol/utils/i;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/apkol/root/a/a;->d()V

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    iget-object v3, p0, Lcom/apkol/root/a/a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/apkol/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v2, v3}, Lcom/apkol/utils/i;->b(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/apkol/root/a/a;->d()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/apkol/root/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/apkol/root/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/apkol/root/a/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apkol/root/a/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/apkol/root/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/apkol/root/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/apkol/root/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/apkol/root/a/a;->g:Lcom/apkol/utils/e/b$c;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/apkol/root/a/a;->g:Lcom/apkol/utils/e/b$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apkol/utils/e/b$c;->f:Z

    .line 231
    :cond_0
    const-string v0, "Space Fail"

    iput-object v0, p0, Lcom/apkol/root/a/a;->j:Ljava/lang/String;

    .line 239
    return-void
.end method

.method static synthetic e(Lcom/apkol/root/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/apkol/root/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/apkol/root/a/a;)Lcom/apkol/utils/e/b$c;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/apkol/root/a/a;->g:Lcom/apkol/utils/e/b$c;

    return-object v0
.end method

.method static synthetic g(Lcom/apkol/root/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/apkol/root/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/apkol/root/a/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/apkol/root/a/a;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/apkol/root/a/a;)Lcom/apkol/root/a/e;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/apkol/root/a/a;->f:Lcom/apkol/root/a/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/c;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/c;-><init>(Lcom/apkol/root/a/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 201
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_1

    .line 202
    invoke-direct {p0, p2}, Lcom/apkol/root/a/a;->a(Ljava/lang/Object;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/16 v0, 0x1005

    if-ne p1, v0, :cond_0

    .line 204
    const-string v0, "NetFail"

    iput-object v0, p0, Lcom/apkol/root/a/a;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/apkol/root/a/a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apkol/root/a/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/apkol/root/a/d;-><init>(Lcom/apkol/root/a/a;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/apkol/root/a/a;->g:Lcom/apkol/utils/e/b$c;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/apkol/root/a/a;->g:Lcom/apkol/utils/e/b$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apkol/utils/e/b$c;->f:Z

    .line 196
    :cond_0
    return-void
.end method
