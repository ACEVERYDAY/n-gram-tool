.class Lcom/yr/sxmn3/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/AccountFragment;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/AccountFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/d;->a:Lcom/yr/sxmn3/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yr/sxmn3/d;->a:Lcom/yr/sxmn3/AccountFragment;

    invoke-static {v1}, Lcom/yr/sxmn3/AccountFragment;->a(Lcom/yr/sxmn3/AccountFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yr/sxmn3/KeyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/yr/sxmn3/d;->a:Lcom/yr/sxmn3/AccountFragment;

    invoke-virtual {v1, v0}, Lcom/yr/sxmn3/AccountFragment;->a(Landroid/content/Intent;)V

    return-void
.end method
