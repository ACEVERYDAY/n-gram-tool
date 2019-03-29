.class public final Lc/aguoqkle/n/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lc/aguoqkle/n/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    iget-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    if-nez v0, :cond_0

    new-instance v0, Lc/aguoqkle/n/j;

    invoke-direct {v0, p1}, Lc/aguoqkle/n/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    invoke-virtual {v0}, Lc/aguoqkle/n/j;->a()Lc/aguoqkle/n/j;

    iget-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    const-string v1, "sysetting_data"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/j;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    invoke-virtual {v0}, Lc/aguoqkle/n/j;->b()V

    return-object v1

    :cond_0
    new-instance v2, Lc/aguoqkle/n/r;

    invoke-direct {v2}, Lc/aguoqkle/n/r;-><init>()V

    const-string v3, "PhoneNum"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->a(Ljava/lang/String;)V

    const-string v3, "FirstLogin"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->b(Ljava/lang/String;)V

    const-string v3, "RecipientDown"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->c(Ljava/lang/String;)V

    const-string v3, "Smskeyword"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->d(Ljava/lang/String;)V

    const-string v3, "UserAgent"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->e(Ljava/lang/String;)V

    const-string v3, "DomainUrl"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->f(Ljava/lang/String;)V

    const-string v3, "BackupUrl"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->g(Ljava/lang/String;)V

    const-string v3, "StartTime"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->h(Ljava/lang/String;)V

    const-string v3, "InterDay"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    const-string v3, "Intervaltime"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->j(Ljava/lang/String;)V

    const-string v3, "DownSize"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/aguoqkle/n/r;->k(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0
.end method

.method public final a([Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    invoke-virtual {v0}, Lc/aguoqkle/n/j;->a()Lc/aguoqkle/n/j;

    iget-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    sget-object v1, Lc/aguoqkle/n/s;->a:[Ljava/lang/String;

    const-string v2, "sysetting_data"

    invoke-virtual {v0, v1, p1, v2}, Lc/aguoqkle/n/j;->a([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    invoke-virtual {v1}, Lc/aguoqkle/n/j;->b()V

    return v0
.end method

.method public final a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    invoke-virtual {v0}, Lc/aguoqkle/n/j;->a()Lc/aguoqkle/n/j;

    iget-object v0, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    const-string v1, "sysetting_data"

    const-string v2, "FirstLogin=0"

    invoke-virtual {v0, p1, p2, v1, v2}, Lc/aguoqkle/n/j;->a([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lc/aguoqkle/n/m;->a:Lc/aguoqkle/n/j;

    invoke-virtual {v1}, Lc/aguoqkle/n/j;->b()V

    return v0
.end method
