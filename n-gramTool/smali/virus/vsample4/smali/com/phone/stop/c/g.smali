.class public Lcom/phone/stop/c/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "address"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "person"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "body"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "date"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "type"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "thread_id"

    aput-object v3, v2, v1

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/phone/stop/c/g;->a(Landroid/database/Cursor;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "person"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "address"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "body"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "type"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "thread_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v7, Lcom/phone/stop/d/a;

    invoke-direct {v7}, Lcom/phone/stop/d/a;-><init>()V

    iput-object v0, v7, Lcom/phone/stop/d/a;->c:Ljava/lang/String;

    int-to-long v10, v6

    iput-wide v10, v7, Lcom/phone/stop/d/a;->f:J

    iput v2, v7, Lcom/phone/stop/d/a;->e:I

    iput-object v8, v7, Lcom/phone/stop/d/a;->a:Ljava/lang/String;

    iput-object v9, v7, Lcom/phone/stop/d/a;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/phone/stop/e/c;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/phone/stop/d/a;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    new-instance v0, Lcom/phone/stop/d/b;

    invoke-direct {v0}, Lcom/phone/stop/d/b;-><init>()V

    int-to-long v4, v6

    iput-wide v4, v0, Lcom/phone/stop/d/b;->a:J

    iget-object v2, v0, Lcom/phone/stop/d/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v8, v0, Lcom/phone/stop/d/b;->b:Ljava/lang/String;

    iput-object v9, v0, Lcom/phone/stop/d/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phone/stop/d/b;

    int-to-long v10, v6

    iget-wide v12, v0, Lcom/phone/stop/d/b;->a:J

    cmp-long v5, v10, v12

    if-nez v5, :cond_2

    iget-object v2, v0, Lcom/phone/stop/d/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v8, v0, Lcom/phone/stop/d/b;->b:Ljava/lang/String;

    iput-object v9, v0, Lcom/phone/stop/d/b;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
