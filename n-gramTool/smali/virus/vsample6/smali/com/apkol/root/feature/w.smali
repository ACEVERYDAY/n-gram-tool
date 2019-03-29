.class public Lcom/apkol/root/feature/w;
.super Lcom/apkol/utils/c/a;
.source "TableUninstall.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/apkol/utils/c/a;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "sys_uninstall"

    iput-object v0, p0, Lcom/apkol/root/feature/w;->a:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apkol/root/feature/w;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apkol/root/AssistConst;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/apkol/root/b/b;

    invoke-direct {v1}, Lcom/apkol/root/b/b;-><init>()V

    .line 55
    const-string v2, "ApkPackName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 54
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apkol/root/b/b;->g(Ljava/lang/String;)V

    .line 57
    const-string v2, "showname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 56
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 58
    iget-object v2, v1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apkol/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 60
    const-string v2, "SoftwareLevel"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 59
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    .line 62
    const-string v2, "SoftwareDescription"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 61
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    .line 63
    iget-object v2, v1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apkol/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    .line 65
    const-string v2, "SoftwareReviews"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 64
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    .line 66
    iget-object v2, v1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/apkol/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    .line 67
    const-string v0, "appTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apkol/root/b/b;->i(Ljava/lang/String;)V

    .line 69
    const-string v0, "appsize"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apkol/root/b/b;->b:Ljava/lang/String;

    .line 70
    const-string v0, "ver"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apkol/root/b/b;->c(Ljava/lang/String;)V

    .line 72
    return-object v1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 26
    const-string v0, "create table sys_uninstall(id INTEGER PRIMARY KEY AUTOINCREMENT, ApkPackName text not null, showname text, SoftwareLevel text, SoftwareDescription text, SoftwareReviews text, appTime text, appsize text, ver text)"

    .line 33
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public a(Lcom/apkol/root/b/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v1

    invoke-virtual {p0}, Lcom/apkol/root/feature/w;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apkol/root/AssistConst;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 78
    const-string v3, "ApkPackName"

    invoke-virtual {p1}, Lcom/apkol/root/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v3, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/apkol/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    const-string v4, "showname"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "SoftwareLevel"

    iget-object v4, p1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v3, p1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/apkol/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, "SoftwareDescription"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/apkol/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v3, "SoftwareReviews"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "ver"

    invoke-virtual {p1}, Lcom/apkol/root/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "appTime"

    invoke-virtual {p1}, Lcom/apkol/root/b/b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "appsize"

    iget-object v3, p1, Lcom/apkol/root/b/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/apkol/root/feature/w;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/apkol/root/feature/w;->a()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    .line 95
    const/4 v4, 0x0

    .line 94
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 96
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :cond_0
    return v0
.end method

.method public a(Lcom/apkol/utils/a/a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apkol/utils/a/a;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 107
    invoke-virtual {p0}, Lcom/apkol/root/feature/w;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p0}, Lcom/apkol/root/feature/w;->a()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    .line 108
    const-string v5, "ApkPackName=?"

    .line 107
    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 109
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 112
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sys_uninstall"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    .line 46
    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
