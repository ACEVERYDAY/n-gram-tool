.class Lcom/yr/sxmn3/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/Image3DSwitchView;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/Image3DSwitchView;I)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/z;->a:Lcom/yr/sxmn3/Image3DSwitchView;

    iput p2, p0, Lcom/yr/sxmn3/z;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/yr/sxmn3/z;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yr/sxmn3/z;->b:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yr/sxmn3/z;->a:Lcom/yr/sxmn3/Image3DSwitchView;

    invoke-static {v0, v1}, Lcom/yr/sxmn3/Image3DSwitchView;->a(Lcom/yr/sxmn3/Image3DSwitchView;Z)V

    iget-object v0, p0, Lcom/yr/sxmn3/z;->a:Lcom/yr/sxmn3/Image3DSwitchView;

    invoke-virtual {v0}, Lcom/yr/sxmn3/Image3DSwitchView;->requestLayout()V

    :cond_1
    return-void
.end method
