.class Lcom/yr/sxmn3/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/ak;->a:Lcom/yr/sxmn3/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/ak;->a:Lcom/yr/sxmn3/PlayerActivity;

    iget-boolean v0, v0, Lcom/yr/sxmn3/PlayerActivity;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
