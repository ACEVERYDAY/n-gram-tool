.class public Lcom/apkol/utils/c/c;
.super Ljava/lang/Object;
.source "SQLiteDataBaseConfig.java"


# static fields
.field private static c:Lcom/apkol/utils/c/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/apkol/utils/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/utils/c/c;->a:Ljava/lang/String;

    .line 23
    const-string v0, "default.db"

    iput-object v0, p0, Lcom/apkol/utils/c/c;->d:Ljava/lang/String;

    .line 24
    const/4 v0, 0x6

    iput v0, p0, Lcom/apkol/utils/c/c;->e:I

    .line 29
    iput-object p1, p0, Lcom/apkol/utils/c/c;->b:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkol/utils/c/c;->g:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/apkol/utils/c/c;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/apkol/utils/c/c;->c:Lcom/apkol/utils/c/c;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/apkol/utils/c/c;

    invoke-direct {v0, p0}, Lcom/apkol/utils/c/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apkol/utils/c/c;->c:Lcom/apkol/utils/c/c;

    .line 37
    :cond_0
    sget-object v0, Lcom/apkol/utils/c/c;->c:Lcom/apkol/utils/c/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apkol/utils/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/apkol/utils/c/c;->e:I

    .line 52
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/apkol/utils/c/c;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/apkol/utils/c/c;->e:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/apkol/utils/c/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/apkol/utils/c/c;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/apkol/utils/c/c;->f:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/apkol/utils/c/c;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/apkol/utils/c/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/apkol/utils/c/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/apkol/utils/c/c;->c()Ljava/util/ArrayList;

    move-result-object v4

    .line 87
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/apkol/utils/c/c;->a:Ljava/lang/String;

    const-string v1, "TableList not set"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    .line 91
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/apkol/utils/c/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/apkol/utils/c/c;->f:Ljava/lang/String;

    move-object v1, v0

    .line 100
    :goto_1
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    move-object v0, v3

    .line 104
    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/apkol/utils/c/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method
