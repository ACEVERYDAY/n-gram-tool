.class Lcom/yr/sxmn3/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/am;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/am;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/an;->a:Lcom/yr/sxmn3/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/an;->a:Lcom/yr/sxmn3/am;

    invoke-static {v0}, Lcom/yr/sxmn3/am;->a(Lcom/yr/sxmn3/am;)Lcom/yr/sxmn3/PlayerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/yr/sxmn3/PlayerActivity;->d:Lcom/yr/sxmn3/a/k;

    invoke-virtual {v0}, Lcom/yr/sxmn3/a/k;->show()V

    const/4 v0, 0x1

    return v0
.end method
