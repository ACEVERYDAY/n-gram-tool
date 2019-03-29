.class public final Lcom/ipaynow/plugin/a/b/c/c;
.super Ljava/lang/Object;


# instance fields
.field private aG:Landroid/graphics/Bitmap;

.field private aH:Ljava/lang/String;

.field private aI:Ljava/lang/String;

.field final synthetic aJ:Lcom/ipaynow/plugin/a/b/c/b;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ipaynow/plugin/a/b/c/c;->aJ:Lcom/ipaynow/plugin/a/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->aG:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->aH:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->aI:Ljava/lang/String;

    iput-object p2, p0, Lcom/ipaynow/plugin/a/b/c/c;->aG:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/ipaynow/plugin/a/b/c/c;->aH:Ljava/lang/String;

    iput-object p4, p0, Lcom/ipaynow/plugin/a/b/c/c;->aI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->aI:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->aG:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->aH:Ljava/lang/String;

    return-object v0
.end method
