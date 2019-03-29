.class Lcom/yr/sxmn3/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/aj;->a:Lcom/yr/sxmn3/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/aj;->a:Lcom/yr/sxmn3/PlayerActivity;

    iget-object v0, v0, Lcom/yr/sxmn3/PlayerActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
