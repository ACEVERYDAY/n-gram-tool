.class public Lcom/phone/stop/b/a;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/phone/stop/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    sget-object v1, Lcom/phone/stop/a/a;->b:Landroid/net/Uri;

    const-string v5, "_id desc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/phone/stop/b/a;->a(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phone/stop/db/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/phone/stop/db/a;->a(Ljava/lang/String;)V

    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/phone/stop/b/a;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0, v3}, Lcom/phone/stop/b/a;->a(I)V

    invoke-direct {p0, v1, v2, v3}, Lcom/phone/stop/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/phone/stop/b/a;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/phone/stop/b/a;->b(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/phone/stop/b/a;->c(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/phone/stop/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/phone/stop/b/a;->a()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phone/stop/db/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v1

    const-string v4, "LJ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v1, v2, v0

    const-string v3, "ALL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phone/stop/db/a;->a(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-object v1, v2, v0

    const-string v3, "SOME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/phone/stop/db/a;->a(I)V

    goto :goto_0

    :cond_2
    aget-object v1, v2, v0

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/phone/stop/db/a;->a(I)V

    goto :goto_0

    :cond_3
    aget-object v3, v2, v1

    const-string v4, "LOOK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object v1, v2, v0

    const-string v3, "TIME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5230\u671f\u65f6\u95f4:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phone/stop/db/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/phone/stop/e/f;->b(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    aget-object v1, v2, v0

    const-string v2, "PHONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/phone/stop/e/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/phone/stop/e/f;->b(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    aget-object v1, v2, v1

    const-string v3, "SEND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/phone/stop/e/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\u5185\u5bb9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/phone/stop/e/f;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    sget-object v1, Lcom/phone/stop/a/a;->a:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/phone/stop/b/a;->b:Landroid/content/ContentResolver;

    :cond_0
    iget-object v0, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/phone/stop/db/PhoneApplication;->a()Lcom/phone/stop/db/PhoneApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/phone/stop/b/a;->a:Landroid/content/Context;

    :cond_1
    new-instance v0, Lcom/phone/stop/b/b;

    invoke-direct {v0, p0}, Lcom/phone/stop/b/b;-><init>(Lcom/phone/stop/b/a;)V

    invoke-virtual {v0}, Lcom/phone/stop/b/b;->start()V

    return-void
.end method
