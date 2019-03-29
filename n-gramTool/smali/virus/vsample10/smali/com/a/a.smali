.class public Lcom/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/a/b;

    iget-object v1, p0, Lcom/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a;->b:Lcom/a/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    iget-object v0, p0, Lcom/a/a;->b:Lcom/a/b;

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p2}, Lcom/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
