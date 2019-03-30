.class public Lcom/tencent/bugly/lejiagu/crashreport/crash/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/bugly/lejiagu/crashreport/crash/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->a:J

    .line 14
    iput-wide v2, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->c:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->d:Z

    .line 17
    iput-boolean v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->e:Z

    .line 18
    iput v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->f:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/lejiagu/crashreport/crash/a;)I
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iget-wide v1, p0, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    iget-wide v3, p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->b:J

    sub-long/2addr v1, v3

    .line 28
    cmp-long v3, v1, v5

    if-lez v3, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    cmp-long v0, v1, v5

    if-gez v0, :cond_2

    .line 31
    const/4 v0, -0x1

    goto :goto_0

    .line 33
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/a;->a(Lcom/tencent/bugly/lejiagu/crashreport/crash/a;)I

    move-result v0

    return v0
.end method
