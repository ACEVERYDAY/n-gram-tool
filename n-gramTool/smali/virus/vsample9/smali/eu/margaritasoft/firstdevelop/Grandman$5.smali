.class Leu/margaritasoft/firstdevelop/Grandman$5;
.super Ljava/lang/Object;
.source "Grandman.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/margaritasoft/firstdevelop/Grandman;->setresultdisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/margaritasoft/firstdevelop/Grandman;


# direct methods
.method constructor <init>(Leu/margaritasoft/firstdevelop/Grandman;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Leu/margaritasoft/firstdevelop/Grandman$5;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Leu/margaritasoft/firstdevelop/Grandman$5;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-static {v2}, Leu/margaritasoft/firstdevelop/Grandman;->access$5(Leu/margaritasoft/firstdevelop/Grandman;)Leu/evandorostech/droider/ClassAct;

    move-result-object v2

    iget-object v2, v2, Leu/evandorostech/droider/ClassAct;->q1:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Leu/margaritasoft/firstdevelop/Grandman$5;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-virtual {v1, v0}, Leu/margaritasoft/firstdevelop/Grandman;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method
