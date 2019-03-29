.class Lcom/phone/stop/c/e;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/phone/stop/c/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-boolean v0, Lcom/phone/stop/c/d;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/phone/stop/c/d;->a:Z

    iget-object v0, p0, Lcom/phone/stop/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/phone/stop/c/d;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/phone/stop/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/phone/stop/c/d;->c(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/phone/stop/c/d;->a:Z

    goto :goto_0
.end method
