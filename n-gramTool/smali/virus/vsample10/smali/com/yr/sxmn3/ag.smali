.class Lcom/yr/sxmn3/ag;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/MainActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/ag;->a:Lcom/yr/sxmn3/MainActivity;

    iput-object p2, p0, Lcom/yr/sxmn3/ag;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/yr/sxmn3/ag;->a:Lcom/yr/sxmn3/MainActivity;

    iget-object v1, p0, Lcom/yr/sxmn3/ag;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yr/sxmn3/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
