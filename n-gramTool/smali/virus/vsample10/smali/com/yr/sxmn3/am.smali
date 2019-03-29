.class Lcom/yr/sxmn3/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/am;->a:Lcom/yr/sxmn3/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/am;)Lcom/yr/sxmn3/PlayerActivity;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/am;->a:Lcom/yr/sxmn3/PlayerActivity;

    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/yr/sxmn3/am;->a:Lcom/yr/sxmn3/PlayerActivity;

    iget-object v0, v0, Lcom/yr/sxmn3/PlayerActivity;->d:Lcom/yr/sxmn3/a/k;

    invoke-virtual {v0}, Lcom/yr/sxmn3/a/k;->show()V

    iget-object v0, p0, Lcom/yr/sxmn3/am;->a:Lcom/yr/sxmn3/PlayerActivity;

    const-string v1, "\u8bd5\u7528\u65f6\u95f4\u5230\uff0c\u4ed8\u8d39\u4f1a\u5458\u53ef\u89c2\u770b\u5b8c\u6574\u7248\uff0c\u4eab\u53d7\u6d77\u91cf\u8d44\u6e90"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/yr/sxmn3/am;->a:Lcom/yr/sxmn3/PlayerActivity;

    iget-object v0, v0, Lcom/yr/sxmn3/PlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/yr/sxmn3/an;

    invoke-direct {v1, p0}, Lcom/yr/sxmn3/an;-><init>(Lcom/yr/sxmn3/am;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
