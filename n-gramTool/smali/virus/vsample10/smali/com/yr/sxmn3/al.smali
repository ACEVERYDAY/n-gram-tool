.class Lcom/yr/sxmn3/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/al;->a:Lcom/yr/sxmn3/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/yr/sxmn3/al;->a:Lcom/yr/sxmn3/PlayerActivity;

    const-string v1, "\u89c6\u9891\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/yr/sxmn3/al;->a:Lcom/yr/sxmn3/PlayerActivity;

    invoke-virtual {v0}, Lcom/yr/sxmn3/PlayerActivity;->finish()V

    return v2
.end method
