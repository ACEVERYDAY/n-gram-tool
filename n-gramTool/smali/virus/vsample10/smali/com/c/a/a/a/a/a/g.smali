.class public final Lcom/c/a/a/a/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/c/a/a/a/a/a/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private d:[Ljava/io/File;

.field private final e:[Ljava/io/InputStream;

.field private final f:[J


# direct methods
.method private constructor <init>(Lcom/c/a/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/a/a/a/a/g;->a:Lcom/c/a/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/c/a/a/a/a/a/g;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/c/a/a/a/a/a/g;->c:J

    iput-object p5, p0, Lcom/c/a/a/a/a/a/g;->d:[Ljava/io/File;

    iput-object p6, p0, Lcom/c/a/a/a/a/a/g;->e:[Ljava/io/InputStream;

    iput-object p7, p0, Lcom/c/a/a/a/a/a/g;->f:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/c/a/a/a/a/a/b;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/c/a/a/a/a/a/g;-><init>(Lcom/c/a/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/a/a/a/g;->d:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    iget-object v1, p0, Lcom/c/a/a/a/a/a/g;->e:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/c/a/a/a/a/a/k;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
