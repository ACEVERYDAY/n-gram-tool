.class Leu/evandorostech/droider/ClassAct$3;
.super Ljava/lang/Object;
.source "ClassAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/evandorostech/droider/ClassAct;->f3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/evandorostech/droider/ClassAct;


# direct methods
.method constructor <init>(Leu/evandorostech/droider/ClassAct;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 162
    const/4 v2, 0x0

    .line 164
    .local v2, "otvet":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v7, v7, Leu/evandorostech/droider/ClassAct;->q3:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/stats/recheck3.php"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v7, v7, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Leu/evandorostech/droider/ClassAct;->doInBackground(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    :goto_0
    if-eqz v2, :cond_2

    .line 172
    iget-object v5, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u043e\u0442\u0432\u0435\u0442 \u0441\u0435\u0440\u0432\u0435\u0440\u0430 \u0434\u043b\u044f \u0443\u0442\u043e\u0447\u043d\u0435\u043d\u0438\u044f \u043a\u043e\u043b\u0432\u043e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Leu/evandorostech/droider/ClassAct;->L(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x15

    if-le v5, v6, :cond_1

    .line 174
    iget-object v5, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v5, v5, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    const-string v6, "ESLIABONENTTUPIT"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 175
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 176
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "countimer"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 177
    .local v4, "val":I
    add-int/lit8 v4, v4, 0x1

    .line 178
    const-string v5, "countimer"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    const/16 v5, 0x14

    if-le v4, v5, :cond_0

    .line 181
    iget-object v5, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v5, v5, Leu/evandorostech/droider/ClassAct;->timer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 182
    iget-object v5, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    const/4 v6, 0x0

    iput-object v6, v5, Leu/evandorostech/droider/ClassAct;->timer:Ljava/util/Timer;

    .line 184
    :cond_0
    iget-object v5, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    invoke-static {v5, v2}, Leu/evandorostech/droider/ClassAct;->access$0(Leu/evandorostech/droider/ClassAct;Ljava/lang/String;)V

    .line 190
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    .end local v4    # "val":I
    :cond_1
    :goto_1
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Leu/evandorostech/droider/ClassAct$3;->this$0:Leu/evandorostech/droider/ClassAct;

    const-string v6, "0"

    iput-object v6, v5, Leu/evandorostech/droider/ClassAct;->q10:Ljava/lang/String;

    goto :goto_1
.end method
