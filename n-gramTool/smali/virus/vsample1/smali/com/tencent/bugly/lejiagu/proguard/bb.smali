.class public final Lcom/tencent/bugly/lejiagu/proguard/bb;
.super Lcom/tencent/bugly/lejiagu/proguard/m;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/bugly/lejiagu/proguard/ba;",
            ">;"
        }
    .end annotation
.end field

.field static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:B

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/bugly/lejiagu/proguard/ba;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/tencent/bugly/lejiagu/proguard/m;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->a:B

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->b:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->c:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->d:Ljava/util/ArrayList;

    .line 20
    iput-object v1, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->e:Ljava/util/Map;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/lejiagu/proguard/k;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 62
    iget-byte v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->a:B

    invoke-virtual {p1, v0, v3, v1}, Lcom/tencent/bugly/lejiagu/proguard/k;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->a:B

    .line 63
    invoke-virtual {p1, v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->b:Ljava/lang/String;

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/lejiagu/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->c:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/bb;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/bb;->f:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/tencent/bugly/lejiagu/proguard/ba;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/proguard/ba;-><init>()V

    .line 69
    sget-object v1, Lcom/tencent/bugly/lejiagu/proguard/bb;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/bb;->f:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/k;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->d:Ljava/util/ArrayList;

    .line 72
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/bb;->g:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/lejiagu/proguard/bb;->g:Ljava/util/Map;

    .line 75
    const-string v0, ""

    .line 76
    const-string v1, ""

    .line 77
    sget-object v2, Lcom/tencent/bugly/lejiagu/proguard/bb;->g:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_1
    sget-object v0, Lcom/tencent/bugly/lejiagu/proguard/bb;->g:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/lejiagu/proguard/k;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->e:Ljava/util/Map;

    .line 80
    return-void
.end method

.method public a(Lcom/tencent/bugly/lejiagu/proguard/l;)V
    .locals 2

    .prologue
    .line 38
    iget-byte v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/l;->b(BI)V

    .line 39
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/l;->a(Ljava/lang/String;I)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/l;->a(Ljava/lang/String;I)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->d:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/l;->a(Ljava/util/Collection;I)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->e:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/tencent/bugly/lejiagu/proguard/bb;->e:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/proguard/l;->a(Ljava/util/Map;I)V

    .line 55
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
