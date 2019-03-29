.class public Lcom/apkol/utils/g/b;
.super Ljava/lang/Object;
.source "SdcardInfo.java"


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v1, p0, Lcom/apkol/utils/g/b;->h:Z

    .line 15
    iput-boolean v1, p0, Lcom/apkol/utils/g/b;->a:Z

    .line 16
    iput-wide v2, p0, Lcom/apkol/utils/g/b;->b:J

    .line 17
    iput-wide v2, p0, Lcom/apkol/utils/g/b;->c:J

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/apkol/utils/g/b;->e:Z

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apkol/utils/g/b;->h:Z

    .line 27
    iput-boolean v1, p0, Lcom/apkol/utils/g/b;->a:Z

    .line 28
    iput-wide v2, p0, Lcom/apkol/utils/g/b;->b:J

    .line 29
    iput-wide v2, p0, Lcom/apkol/utils/g/b;->c:J

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/utils/g/b;->d:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/apkol/utils/g/b;->e:Z

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/utils/g/b;->f:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/utils/g/b;->g:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/apkol/utils/g/b;->h:Z

    return v0
.end method
