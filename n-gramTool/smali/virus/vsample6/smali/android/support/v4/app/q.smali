.class public Landroid/support/v4/app/q;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Landroid/support/v4/app/q;


# instance fields
.field private b:Ljava/util/List;

.field private c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/app/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/q;->c:Ljava/util/List;

    return-void
.end method

.method public static a()Landroid/support/v4/app/q;
    .locals 1

    sget-object v0, Landroid/support/v4/app/q;->d:Landroid/support/v4/app/q;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/q;

    invoke-direct {v0}, Landroid/support/v4/app/q;-><init>()V

    sput-object v0, Landroid/support/v4/app/q;->d:Landroid/support/v4/app/q;

    :cond_0
    sget-object v0, Landroid/support/v4/app/q;->d:Landroid/support/v4/app/q;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/support/v4/app/q;->a:Ljava/lang/String;

    const-string v1, "startNext"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/q;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/support/v4/app/q;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/q;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Landroid/support/v4/app/q;->a:Ljava/lang/String;

    const-string v1, "push"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/q;->c()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Landroid/support/v4/app/q;->a:Ljava/lang/String;

    const-string v1, "didComplete"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/q;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/support/v4/app/q;->c()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
