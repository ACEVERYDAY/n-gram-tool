.class Lcom/yr/sxmn3/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/KeyActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/KeyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/ab;->a:Lcom/yr/sxmn3/KeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/yr/sxmn3/ab;->a:Lcom/yr/sxmn3/KeyActivity;

    const-string v1, "\u6fc0\u6d3b\u7801\u8f93\u5165\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
