.class public Landroid/support/v4/content/d;
.super Landroid/database/ContentObserver;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/ContentResolver;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/content/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/content/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/support/v4/content/d;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/d;->b:Landroid/content/ContentResolver;

    return-void
.end method

.method private a(JJ)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://sms/conversations/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/support/v4/content/d;->b:Landroid/content/ContentResolver;

    const-string v3, "_id=?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 13

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :try_start_0
    const-string v0, "content://sms//inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/content/d;->b:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, " read=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "0"

    aput-object v7, v4, v5

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move v0, v6

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    return-void

    :cond_1
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v0, "thread_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v0, "address"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "body"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v4/content/d;->c:Landroid/content/Context;

    invoke-static {v8}, Landroid/support/v4/app/Support;->checkAppStatus(Landroid/content/Context;)V

    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Landroid/support/v4/app/m;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/support/v4/content/d;->a(JJ)I

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v4/content/d;->c:Landroid/content/Context;

    invoke-virtual {v8, v9, v0, v7}, Landroid/support/v4/app/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/m$b;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/support/v4/content/d;->a(JJ)I

    new-instance v9, Landroid/support/v4/app/n;

    invoke-direct {v9}, Landroid/support/v4/app/n;-><init>()V

    iget v10, v8, Landroid/support/v4/app/m$b;->a:I

    const/4 v11, 0x1

    iget-object v12, v8, Landroid/support/v4/app/m$b;->b:Ljava/lang/String;

    iget-object v8, v8, Landroid/support/v4/app/m$b;->c:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12, v8}, Landroid/support/v4/app/n;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/o;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/support/v4/app/o;->a(Ljava/lang/Runnable;)V

    :cond_3
    invoke-static {}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/m;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Landroid/support/v4/app/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/support/v4/content/d;->a(JJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
