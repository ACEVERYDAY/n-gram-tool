.class Lcom/yr/sxmn3/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/PlayerActivity;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/PlayerActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/ao;->a:Lcom/yr/sxmn3/PlayerActivity;

    iput-object p2, p0, Lcom/yr/sxmn3/ao;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/yr/sxmn3/ao;->a:Lcom/yr/sxmn3/PlayerActivity;

    iget-object v0, v0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/ao;->a:Lcom/yr/sxmn3/PlayerActivity;

    iget-object v0, v0, Lcom/yr/sxmn3/PlayerActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bd5\u64ad\u8fd8\u5269\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yr/sxmn3/ao;->a:Lcom/yr/sxmn3/PlayerActivity;

    iget-object v2, v2, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/yr/sxmn3/ao;->a:Lcom/yr/sxmn3/PlayerActivity;

    iget-object v3, v3, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/ao;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x384

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
