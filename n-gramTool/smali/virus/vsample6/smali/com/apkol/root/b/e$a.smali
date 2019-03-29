.class public Lcom/apkol/root/b/e$a;
.super Ljava/lang/Object;
.source "GetMachineInfoForC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/root/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:I

.field public j:Ljava/lang/String;

.field final synthetic k:Lcom/apkol/root/b/e;


# direct methods
.method public constructor <init>(Lcom/apkol/root/b/e;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 129
    iput-object p1, p0, Lcom/apkol/root/b/e$a;->k:Lcom/apkol/root/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v2, p0, Lcom/apkol/root/b/e$a;->a:Z

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apkol/root/b/e$a;->b:J

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/e$a;->c:Ljava/lang/String;

    .line 135
    iput-wide v3, p0, Lcom/apkol/root/b/e$a;->d:J

    .line 136
    const-string v0, "\u539f\u59cb\u5b89\u5353\u8bbe\u5907"

    iput-object v0, p0, Lcom/apkol/root/b/e$a;->e:Ljava/lang/String;

    .line 137
    const-string v0, "\u5b89\u5353\u624b\u673a"

    iput-object v0, p0, Lcom/apkol/root/b/e$a;->f:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/apkol/root/b/e$a;->g:Ljava/lang/String;

    .line 139
    iput-wide v3, p0, Lcom/apkol/root/b/e$a;->h:J

    .line 141
    iput v2, p0, Lcom/apkol/root/b/e$a;->i:I

    .line 142
    const-string v0, "84=9999|89=8000|87=7500|98=3|96=3|88=2|83=2|97=1|94=1|99=1|82=1"

    iput-object v0, p0, Lcom/apkol/root/b/e$a;->j:Ljava/lang/String;

    return-void
.end method
