.class Lcom/yr/sxmn3/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/HomePageFragment;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/HomePageFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/t;->a:Lcom/yr/sxmn3/HomePageFragment;

    iput-object p2, p0, Lcom/yr/sxmn3/t;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/yr/sxmn3/t;->a:Lcom/yr/sxmn3/HomePageFragment;

    invoke-static {v0}, Lcom/yr/sxmn3/HomePageFragment;->w(Lcom/yr/sxmn3/HomePageFragment;)Lcom/yr/sxmn3/Image3DSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yr/sxmn3/Image3DSwitchView;->a()V

    iget-object v0, p0, Lcom/yr/sxmn3/t;->b:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
