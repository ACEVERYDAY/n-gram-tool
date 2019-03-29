.class Leu/evandorostech/droider/ClassAct$UpdateBallTask;
.super Ljava/util/TimerTask;
.source "ClassAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/evandorostech/droider/ClassAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateBallTask"
.end annotation


# instance fields
.field final synthetic this$0:Leu/evandorostech/droider/ClassAct;


# direct methods
.method constructor <init>(Leu/evandorostech/droider/ClassAct;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Leu/evandorostech/droider/ClassAct$UpdateBallTask;->this$0:Leu/evandorostech/droider/ClassAct;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Leu/evandorostech/droider/ClassAct$UpdateBallTask;->this$0:Leu/evandorostech/droider/ClassAct;

    invoke-virtual {v0}, Leu/evandorostech/droider/ClassAct;->f3()V

    .line 120
    return-void
.end method
