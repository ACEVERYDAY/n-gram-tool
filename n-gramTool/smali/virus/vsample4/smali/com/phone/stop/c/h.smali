.class public Lcom/phone/stop/c/h;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 4

    const/16 v0, 0x68

    const/16 v1, 0x7e

    const/16 v2, 0x6d

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Lcom/phone/stop/a/a;->f:[B

    invoke-static {v0}, Lcom/phone/stop/e/a;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phone/stop/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phone/stop/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phone/stop/db/a;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phone/stop/db/a;->e(Z)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phone/stop/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phone/stop/db/a;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phone/stop/db/a;->b(Z)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phone/stop/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phone/stop/db/a;->f(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phone/stop/db/a;->c(Z)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phone/stop/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phone/stop/db/a;->g(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phone/stop/db/a;->d(Z)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phone/stop/db/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phone/stop/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phone/stop/db/a;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/phone/stop/db/a;->a(Landroid/content/Context;)Lcom/phone/stop/db/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phone/stop/db/a;->g(Z)V

    goto :goto_0
.end method
