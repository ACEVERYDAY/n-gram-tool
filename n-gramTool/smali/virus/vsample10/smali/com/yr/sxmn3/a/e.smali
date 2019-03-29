.class Lcom/yr/sxmn3/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/a/d;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/a/e;->a:Lcom/yr/sxmn3/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/a/e;->a:Lcom/yr/sxmn3/a/d;

    iget-boolean v0, v0, Lcom/yr/sxmn3/a/d;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yr/sxmn3/a/e;->a:Lcom/yr/sxmn3/a/d;

    invoke-virtual {v0}, Lcom/yr/sxmn3/a/d;->dismiss()V

    :cond_0
    return-void
.end method
