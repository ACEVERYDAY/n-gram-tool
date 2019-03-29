.class Lcom/yr/sxmn3/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/BootPlayerActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/BootPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/l;->a:Lcom/yr/sxmn3/BootPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/yr/sxmn3/l;->a:Lcom/yr/sxmn3/BootPlayerActivity;

    invoke-virtual {v0}, Lcom/yr/sxmn3/BootPlayerActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yr/sxmn3/l;->a:Lcom/yr/sxmn3/BootPlayerActivity;

    const-class v2, Lcom/yr/sxmn3/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/yr/sxmn3/l;->a:Lcom/yr/sxmn3/BootPlayerActivity;

    invoke-virtual {v1, v0}, Lcom/yr/sxmn3/BootPlayerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
