.class Lcom/yr/sxmn3/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/AccountFragment;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/AccountFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/e;->a:Lcom/yr/sxmn3/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yr/sxmn3/e;)Lcom/yr/sxmn3/AccountFragment;
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/e;->a:Lcom/yr/sxmn3/AccountFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/yr/sxmn3/a/j;

    const-string v2, "\u5fae\u4fe1\t\t  30\u5143"

    const v3, 0x7f020053

    invoke-direct {v1, v2, v3}, Lcom/yr/sxmn3/a/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yr/sxmn3/a/j;

    const-string v2, "\u652f\u4ed8\u5b9d\t\t30\u5143"

    const v3, 0x7f020002

    invoke-direct {v1, v2, v3}, Lcom/yr/sxmn3/a/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yr/sxmn3/a/k;

    iget-object v2, p0, Lcom/yr/sxmn3/e;->a:Lcom/yr/sxmn3/AccountFragment;

    invoke-static {v2}, Lcom/yr/sxmn3/AccountFragment;->a(Lcom/yr/sxmn3/AccountFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/yr/sxmn3/a/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/yr/sxmn3/a/h;

    invoke-direct {v0}, Lcom/yr/sxmn3/a/h;-><init>()V

    new-instance v2, Lcom/yr/sxmn3/a/o;

    invoke-direct {v2}, Lcom/yr/sxmn3/a/o;-><init>()V

    const-string v3, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f\uff1a\uff08\u5305\u5e74\u4f1a\u5458\uff09"

    invoke-virtual {v1, v3}, Lcom/yr/sxmn3/a/k;->a(Ljava/lang/String;)Lcom/yr/sxmn3/a/k;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yr/sxmn3/a/d;->b(Lcom/yr/sxmn3/a/a;)Lcom/yr/sxmn3/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yr/sxmn3/a/d;->show()V

    new-instance v0, Lcom/yr/sxmn3/f;

    invoke-direct {v0, p0, v1}, Lcom/yr/sxmn3/f;-><init>(Lcom/yr/sxmn3/e;Lcom/yr/sxmn3/a/k;)V

    invoke-virtual {v1, v0}, Lcom/yr/sxmn3/a/k;->a(Lcom/yr/sxmn3/a/n;)V

    return-void
.end method
