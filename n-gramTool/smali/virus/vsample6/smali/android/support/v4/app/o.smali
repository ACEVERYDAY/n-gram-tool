.class public Landroid/support/v4/app/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Landroid/support/v4/app/o;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/app/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/o;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Landroid/support/v4/app/o;
    .locals 1

    sget-object v0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/o;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V

    sput-object v0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/o;

    :cond_0
    sget-object v0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/o;

    return-object v0
.end method

.method private b()V
    .locals 3

    sget-object v0, Landroid/support/v4/app/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startNext size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/o;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Landroid/support/v4/app/o;->a:Ljava/lang/String;

    const-string v1, "push"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/o;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/o;->b()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Landroid/support/v4/app/o;->a:Ljava/lang/String;

    const-string v1, "didComplete"

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/n;

    iget v1, v0, Landroid/support/v4/app/n;->a:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/support/v4/app/n;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/support/v4/app/n;->a:I

    :cond_0
    iget v0, v0, Landroid/support/v4/app/n;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/o;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/app/o;->b()V

    return-void
.end method
