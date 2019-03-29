.class Lcom/yr/sxmn3/ah;
.super Landroid/support/v4/app/u;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yr/sxmn3/MainActivity;Landroid/support/v4/app/m;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/ah;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/u;-><init>(Landroid/support/v4/app/m;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-instance v0, Lcom/yr/sxmn3/HomePageFragment;

    invoke-direct {v0}, Lcom/yr/sxmn3/HomePageFragment;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    new-instance v0, Lcom/yr/sxmn3/ZhuBoFragment;

    invoke-direct {v0}, Lcom/yr/sxmn3/ZhuBoFragment;-><init>()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    new-instance v0, Lcom/yr/sxmn3/AccountFragment;

    invoke-direct {v0}, Lcom/yr/sxmn3/AccountFragment;-><init>()V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/yr/sxmn3/ah;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-static {v0}, Lcom/yr/sxmn3/MainActivity;->i(Lcom/yr/sxmn3/MainActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
