.class final Lc/aguoqkle/n/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lc/aguoqkle/n/CocoMi;


# direct methods
.method constructor <init>(Lc/aguoqkle/n/CocoMi;)V
    .locals 0

    iput-object p1, p0, Lc/aguoqkle/n/g;->a:Lc/aguoqkle/n/CocoMi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/aguoqkle/n/g;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v0, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "save\'s num is"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/aguoqkle/n/g;->a:Lc/aguoqkle/n/CocoMi;

    iget-object v1, v1, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/g;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->f(Lc/aguoqkle/n/CocoMi;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/g;->a:Lc/aguoqkle/n/CocoMi;

    invoke-static {v0}, Lc/aguoqkle/n/CocoMi;->g(Lc/aguoqkle/n/CocoMi;)V

    goto :goto_0
.end method
