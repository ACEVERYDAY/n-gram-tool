.class Lcom/yr/sxmn3/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/a/k;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/l;->a:Lcom/yr/sxmn3/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/yr/sxmn3/a/l;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v0}, Lcom/yr/sxmn3/a/k;->k(Lcom/yr/sxmn3/a/k;)Lcom/yr/sxmn3/a/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/a/l;->a:Lcom/yr/sxmn3/a/k;

    invoke-static {v0}, Lcom/yr/sxmn3/a/k;->k(Lcom/yr/sxmn3/a/k;)Lcom/yr/sxmn3/a/n;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/yr/sxmn3/a/n;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
