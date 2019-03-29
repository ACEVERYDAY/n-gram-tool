.class public Lcom/apkol/utils/c/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/utils/c/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/apkol/utils/q;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {p1}, Lcom/apkol/utils/c/c;->a(Landroid/content/Context;)Lcom/apkol/utils/c/c;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/apkol/utils/c/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/apkol/utils/c/c;->a(Landroid/content/Context;)Lcom/apkol/utils/c/c;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/apkol/utils/c/c;->b()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    iput-object p1, p0, Lcom/apkol/utils/c/d;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/apkol/utils/c/d;->a:Landroid/content/Context;

    .line 33
    invoke-static {v1}, Lcom/apkol/utils/c/c;->a(Landroid/content/Context;)Lcom/apkol/utils/c/c;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/apkol/utils/c/c;->f()Ljava/util/ArrayList;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 36
    new-instance v1, Lcom/apkol/utils/q;

    invoke-direct {v1}, Lcom/apkol/utils/q;-><init>()V

    iput-object v1, p0, Lcom/apkol/utils/c/d;->b:Lcom/apkol/utils/q;

    move v1, v0

    .line 37
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 52
    :cond_0
    return-void

    .line 40
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/apkol/utils/c/d;->b:Lcom/apkol/utils/q;

    .line 41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/apkol/utils/c/d;->a:Landroid/content/Context;

    aput-object v6, v4, v5

    .line 43
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    .line 41
    invoke-virtual {v3, v0, v4, v5}, Lcom/apkol/utils/q;->a(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Lcom/apkol/utils/c/d$a;

    .line 44
    invoke-interface {v0, p1}, Lcom/apkol/utils/c/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/apkol/utils/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/c;->a(Landroid/content/Context;)Lcom/apkol/utils/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/utils/c/c;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/apkol/utils/c/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    return-void

    .line 59
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
