.class Lcom/phone/stop/b/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/phone/stop/b/a;


# direct methods
.method constructor <init>(Lcom/phone/stop/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/phone/stop/b/b;->a:Lcom/phone/stop/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/phone/stop/b/b;->a:Lcom/phone/stop/b/a;

    invoke-static {v0}, Lcom/phone/stop/b/a;->a(Lcom/phone/stop/b/a;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phone/stop/e/a;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/phone/stop/b/b;->a:Lcom/phone/stop/b/a;

    invoke-static {v0}, Lcom/phone/stop/b/a;->a(Lcom/phone/stop/b/a;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phone/stop/e/a;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/phone/stop/b/b;->a:Lcom/phone/stop/b/a;

    invoke-static {v0}, Lcom/phone/stop/b/a;->b(Lcom/phone/stop/b/a;)V

    return-void
.end method
