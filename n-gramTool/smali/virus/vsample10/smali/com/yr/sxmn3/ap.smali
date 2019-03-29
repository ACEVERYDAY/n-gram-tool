.class Lcom/yr/sxmn3/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yr/sxmn3/a/n;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/ap;->a:Lcom/yr/sxmn3/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/ap;->a:Lcom/yr/sxmn3/PlayerActivity;

    iget-object v0, v0, Lcom/yr/sxmn3/PlayerActivity;->d:Lcom/yr/sxmn3/a/k;

    invoke-virtual {v0}, Lcom/yr/sxmn3/a/k;->dismiss()V

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/yr/sxmn3/ap;->a:Lcom/yr/sxmn3/PlayerActivity;

    const-string v1, "wx_30"

    invoke-static {v0, v1}, Lcom/yr/sxmn3/PlayerActivity;->a(Lcom/yr/sxmn3/PlayerActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/ap;->a:Lcom/yr/sxmn3/PlayerActivity;

    const-string v1, "zfb_30"

    invoke-static {v0, v1}, Lcom/yr/sxmn3/PlayerActivity;->a(Lcom/yr/sxmn3/PlayerActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
