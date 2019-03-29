.class Lcom/yr/sxmn3/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/MainActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/af;->a:Lcom/yr/sxmn3/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/af;->a:Lcom/yr/sxmn3/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yr/sxmn3/MainActivity;->a(Lcom/yr/sxmn3/MainActivity;I)V

    return-void
.end method
