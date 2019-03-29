.class public Lcom/apkol/root/feature/v;
.super Lcom/apkol/utils/c/a;
.source "TableRomApk.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/apkol/utils/c/a;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "tblRomApk"

    iput-object v0, p0, Lcom/apkol/root/feature/v;->a:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/apkol/root/b/b;

    invoke-direct {v0}, Lcom/apkol/root/b/b;-><init>()V

    .line 48
    const-string v1, "ApkPackName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 47
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apkol/root/b/b;->g(Ljava/lang/String;)V

    .line 50
    const-string v1, "showname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 49
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    .line 52
    const-string v1, "SoftwareLevel"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 51
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    .line 54
    const-string v1, "SoftwareDescription"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 53
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    .line 56
    const-string v1, "SoftwareReviews"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 55
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    .line 59
    :try_start_0
    const-string v1, "lastdate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 58
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/apkol/root/b/b;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from tblRomApk where ApkPackName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/apkol/root/feature/v;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public a(Lcom/apkol/root/b/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v1

    invoke-virtual {p0}, Lcom/apkol/root/feature/v;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apkol/root/AssistConst;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 82
    const-string v3, "ApkPackName"

    invoke-virtual {p1}, Lcom/apkol/root/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v3, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/apkol/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, "Showname"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    const-string v3, "SoftwareLevel"

    iget-object v4, p1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v3, p1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/apkol/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    const-string v4, "SoftwareDescription"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    iget-object v3, p1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/apkol/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v3, "SoftwareReviews"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/apkol/root/feature/v;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/apkol/root/feature/v;->a()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 102
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 103
    const/4 v0, 0x1

    .line 105
    :cond_3
    return v0
.end method

.method public a(Lcom/apkol/utils/a/a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apkol/utils/a/a;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 146
    invoke-virtual {p0}, Lcom/apkol/root/feature/v;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p0}, Lcom/apkol/root/feature/v;->a()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    .line 147
    const-string v5, "packagename=?"

    .line 146
    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 148
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 151
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tblRomApk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    .line 40
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from tblRomApk where SoftwareLevel=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/apkol/root/feature/v;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public b(Lcom/apkol/root/b/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v1

    invoke-virtual {p0}, Lcom/apkol/root/feature/v;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apkol/root/AssistConst;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 112
    const-string v3, "ApkPackName"

    invoke-virtual {p1}, Lcom/apkol/root/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p1, Lcom/apkol/root/b/b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/apkol/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    const-string v4, "Showname"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    const-string v3, "SoftwareLevel"

    iget-object v4, p1, Lcom/apkol/root/b/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v3, p1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p1, Lcom/apkol/root/b/b;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/apkol/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    const-string v4, "SoftwareDescription"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_1
    iget-object v3, p1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p1, Lcom/apkol/root/b/b;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/apkol/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v3, "SoftwareReviews"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_2
    iget-object v1, p1, Lcom/apkol/root/b/b;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 131
    const-string v1, "lastdate"

    iget-object v3, p1, Lcom/apkol/root/b/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/apkol/root/feature/v;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/apkol/root/feature/v;->a()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 135
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 136
    const/4 v0, 0x1

    .line 138
    :cond_4
    return v0
.end method
