.class public Lcom/apkol/utils/c/b;
.super Ljava/lang/Object;
.source "SQLiteDBUtil.java"


# static fields
.field private static b:Lcom/apkol/utils/c/b;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/apkol/utils/c/d;

.field private d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/apkol/utils/c/b;->b:Lcom/apkol/utils/c/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/apkol/utils/c/b;->c:Lcom/apkol/utils/c/d;

    .line 13
    iput-object v0, p0, Lcom/apkol/utils/c/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    iput-object p1, p0, Lcom/apkol/utils/c/b;->a:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/apkol/utils/c/b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/apkol/utils/c/b;->b:Lcom/apkol/utils/c/b;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/apkol/utils/c/b;

    invoke-direct {v0, p0}, Lcom/apkol/utils/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apkol/utils/c/b;->b:Lcom/apkol/utils/c/b;

    .line 23
    :cond_0
    sget-object v0, Lcom/apkol/utils/c/b;->b:Lcom/apkol/utils/c/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/apkol/utils/c/d;

    iget-object v1, p0, Lcom/apkol/utils/c/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/apkol/utils/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apkol/utils/c/b;->c:Lcom/apkol/utils/c/d;

    .line 28
    return-void
.end method

.method public b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/apkol/utils/c/b;->c:Lcom/apkol/utils/c/d;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/apkol/utils/c/b;->c:Lcom/apkol/utils/c/d;

    invoke-virtual {v0}, Lcom/apkol/utils/c/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/utils/c/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    iget-object v0, p0, Lcom/apkol/utils/c/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/apkol/utils/c/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apkol/utils/c/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/apkol/utils/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/c;->a(Landroid/content/Context;)Lcom/apkol/utils/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/utils/c/c;->d()V

    .line 41
    iget-object v0, p0, Lcom/apkol/utils/c/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 43
    :cond_0
    return-void
.end method
