.class Lcom/yr/sxmn3/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/yr/sxmn3/BootActivity;


# direct methods
.method constructor <init>(Lcom/yr/sxmn3/BootActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yr/sxmn3/i;->a:Lcom/yr/sxmn3/BootActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/yr/sxmn3/h;->a()Ljava/util/HashMap;

    invoke-static {}, Lcom/yr/sxmn3/h;->b()Ljava/util/List;

    return-void
.end method
