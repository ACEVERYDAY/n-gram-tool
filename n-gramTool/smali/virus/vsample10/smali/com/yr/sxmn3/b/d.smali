.class Lcom/yr/sxmn3/b/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/b/c;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/b/c;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    iput-object p2, p0, Lcom/yr/sxmn3/b/d;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    iget-object v1, p0, Lcom/yr/sxmn3/b/d;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/yr/sxmn3/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yr/sxmn3/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    iget-object v1, p0, Lcom/yr/sxmn3/b/d;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/yr/sxmn3/b/c;->a(Lcom/yr/sxmn3/b/c;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yr/sxmn3/b/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yr/sxmn3/b/d;->b:Landroid/app/Activity;

    const-string v1, "SP_SETTINGS"

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    const-string v2, "SP_FIRST"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/yr/sxmn3/b/c;->a(Lcom/yr/sxmn3/b/c;Z)V

    iget-object v1, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    invoke-static {v1}, Lcom/yr/sxmn3/b/c;->a(Lcom/yr/sxmn3/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yr/sxmn3/b/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    iget-object v2, p0, Lcom/yr/sxmn3/b/d;->b:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/yr/sxmn3/b/c;->b(Lcom/yr/sxmn3/b/c;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yr/sxmn3/b/c;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    iget-object v2, p0, Lcom/yr/sxmn3/b/d;->b:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/yr/sxmn3/b/c;->c(Lcom/yr/sxmn3/b/c;Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/yr/sxmn3/b/c;->a(I)V

    iget-object v1, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    invoke-static {v1}, Lcom/yr/sxmn3/b/c;->b(Lcom/yr/sxmn3/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yr/sxmn3/b/c;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    iget-object v2, p0, Lcom/yr/sxmn3/b/d;->b:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/yr/sxmn3/b/c;->a(Lcom/yr/sxmn3/b/c;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yr/sxmn3/b/c;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    iget-object v2, p0, Lcom/yr/sxmn3/b/d;->b:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/yr/sxmn3/b/c;->d(Lcom/yr/sxmn3/b/c;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yr/sxmn3/b/c;->g(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SP_CHANNEL"

    invoke-static {}, Lcom/yr/sxmn3/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "SP_MAC"

    invoke-static {}, Lcom/yr/sxmn3/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "SP_FIRST"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "SP_SINAJSON_DQ"

    invoke-static {}, Lcom/yr/sxmn3/b/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    iget-object v0, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    invoke-static {v0}, Lcom/yr/sxmn3/b/c;->c(Lcom/yr/sxmn3/b/c;)V

    iget-object v0, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    invoke-static {v0}, Lcom/yr/sxmn3/b/c;->d(Lcom/yr/sxmn3/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/b/d;->a:Lcom/yr/sxmn3/b/c;

    invoke-static {v0}, Lcom/yr/sxmn3/b/c;->e(Lcom/yr/sxmn3/b/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
