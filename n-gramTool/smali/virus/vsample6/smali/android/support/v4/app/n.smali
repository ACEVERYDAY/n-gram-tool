.class public Landroid/support/v4/app/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/app/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/n;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/app/n;->c:I

    iput p2, p0, Landroid/support/v4/app/n;->a:I

    iput-object p3, p0, Landroid/support/v4/app/n;->e:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/app/n;->f:Ljava/lang/String;

    iput p5, p0, Landroid/support/v4/app/n;->d:I

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    sget-object v0, Landroid/support/v4/app/Support;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/app/n;->f:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/n;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Support;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/n;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/support/v4/app/Support;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/o;->b(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
