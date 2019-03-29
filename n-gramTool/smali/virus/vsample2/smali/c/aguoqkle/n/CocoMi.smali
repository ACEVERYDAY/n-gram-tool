.class public Lc/aguoqkle/n/CocoMi;
.super Landroid/app/Service;


# instance fields
.field private A:Ljava/util/Timer;

.field private B:Ljava/util/TimerTask;

.field private C:Lc/aguoqkle/n/CocoRev;

.field private D:Ljava/lang/StringBuffer;

.field private E:I

.field private F:I

.field private G:Ljava/util/List;

.field private H:I

.field private I:Ljava/lang/String;

.field private J:I

.field private K:[B

.field private L:I

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Lc/aguoqkle/n/a;

.field private Y:I

.field private Z:I

.field public a:Ljava/util/List;

.field private aa:I

.field private ab:Ljava/lang/Thread;

.field private ac:Lc/aguoqkle/n/w;

.field private ad:Landroid/os/Handler;

.field private ae:Landroid/content/BroadcastReceiver;

.field private af:Landroid/content/BroadcastReceiver;

.field public b:Lc/aguoqkle/n/NetworkChangeReceiver;

.field public c:Lc/aguoqkle/n/r;

.field public d:I

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Landroid/content/Context;

.field u:Ljava/lang/Runnable;

.field private v:Lc/aguoqkle/n/m;

.field private w:Ljava/util/List;

.field private x:Ljava/util/List;

.field private y:Ljava/util/List;

.field private z:Lc/aguoqkle/n/x;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->v:Lc/aguoqkle/n/m;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->w:Ljava/util/List;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->x:Ljava/util/List;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->y:Ljava/util/List;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->z:Lc/aguoqkle/n/x;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->A:Ljava/util/Timer;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->B:Ljava/util/TimerTask;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->C:Lc/aguoqkle/n/CocoRev;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->b:Lc/aguoqkle/n/NetworkChangeReceiver;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->E:I

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->F:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->G:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->H:I

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->J:I

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->K:[B

    const/4 v0, -0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->L:I

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->M:I

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->N:Ljava/lang/String;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->O:Ljava/lang/String;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->P:Ljava/lang/String;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->Q:Ljava/lang/String;

    const-string v0, "text/plain"

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->R:Ljava/lang/String;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->S:Ljava/lang/String;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->T:Ljava/lang/String;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->U:Ljava/lang/String;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->V:Ljava/lang/String;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->W:Ljava/lang/String;

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->g:I

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    const-string v0, ""

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->h:Ljava/lang/String;

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->Y:I

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->i:I

    iput-boolean v3, p0, Lc/aguoqkle/n/CocoMi;->j:Z

    iput-boolean v2, p0, Lc/aguoqkle/n/CocoMi;->k:Z

    iput-boolean v3, p0, Lc/aguoqkle/n/CocoMi;->l:Z

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->Z:I

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->m:I

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->o:I

    const-string v0, ""

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->q:Ljava/lang/String;

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    const-string v0, "SENT_SMS_ACTION"

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->r:Ljava/lang/String;

    const-string v0, "DELIVERED_SMS_ACTION"

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->s:Ljava/lang/String;

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->t:Landroid/content/Context;

    new-instance v0, Lc/aguoqkle/n/c;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/c;-><init>(Lc/aguoqkle/n/CocoMi;)V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->ad:Landroid/os/Handler;

    new-instance v0, Lc/aguoqkle/n/d;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/d;-><init>(Lc/aguoqkle/n/CocoMi;)V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->u:Ljava/lang/Runnable;

    new-instance v0, Lc/aguoqkle/n/e;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/e;-><init>(Lc/aguoqkle/n/CocoMi;)V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->ae:Landroid/content/BroadcastReceiver;

    new-instance v0, Lc/aguoqkle/n/f;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/f;-><init>(Lc/aguoqkle/n/CocoMi;)V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->af:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lc/aguoqkle/n/CocoMi;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->ad:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1, p1}, Lc/aguoqkle/n/a;->a(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v1}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    invoke-static {p0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-lez v1, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    sget v1, Lc/aguoqkle/n/n;->c:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->a()V

    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lc/aguoqkle/n/a;->a(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    new-instance v1, Lc/aguoqkle/n/a;

    invoke-direct {v1, p1, p0}, Lc/aguoqkle/n/a;-><init>(Ljava/lang/String;Lc/aguoqkle/n/CocoMi;)V

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    goto :goto_0

    :cond_3
    sget v1, Lc/aguoqkle/n/n;->e:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->b()V

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_b

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_a

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_9

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_0

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v5

    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    move-object v0, v9

    :goto_4
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v0, v9

    goto :goto_3

    :cond_1
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v7, :cond_8

    if-eq v3, v7, :cond_8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_6

    move-object v0, v9

    goto :goto_4

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_3
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v7, :cond_8

    if-eq v3, v7, :cond_8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v7, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_8

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_5
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_8

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_7

    const/16 v2, 0x8

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_7
    move-object v0, v1

    goto :goto_7

    :cond_8
    move-object v1, v9

    goto/16 :goto_6

    :cond_9
    move-object v4, v9

    goto/16 :goto_2

    :cond_a
    move-object v3, v9

    goto/16 :goto_1

    :cond_b
    move-object v1, v9

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1, p1}, Lc/aguoqkle/n/a;->a(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v1}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    invoke-static {p0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-lez v1, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    sget v1, Lc/aguoqkle/n/n;->c:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->a()V

    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1, p2, p3, p4}, Lc/aguoqkle/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    new-instance v1, Lc/aguoqkle/n/a;

    invoke-direct {v1, p1, p0}, Lc/aguoqkle/n/a;-><init>(Ljava/lang/String;Lc/aguoqkle/n/CocoMi;)V

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    goto :goto_0

    :cond_3
    sget v1, Lc/aguoqkle/n/n;->e:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->b()V

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1, p1}, Lc/aguoqkle/n/a;->a(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v1}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    invoke-static {p0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-lez v1, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    sget v1, Lc/aguoqkle/n/n;->c:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->a()V

    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1, p2, p3, p4}, Lc/aguoqkle/n/a;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    new-instance v1, Lc/aguoqkle/n/a;

    invoke-direct {v1, p1, p0}, Lc/aguoqkle/n/a;-><init>(Ljava/lang/String;Lc/aguoqkle/n/CocoMi;)V

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    goto :goto_0

    :cond_3
    sget v1, Lc/aguoqkle/n/n;->e:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->b()V

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1, p1}, Lc/aguoqkle/n/a;->a(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v1}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    invoke-static {p0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-lez v1, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    sget v1, Lc/aguoqkle/n/n;->c:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->a()V

    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1, p2, p3, p4}, Lc/aguoqkle/n/a;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    new-instance v1, Lc/aguoqkle/n/a;

    invoke-direct {v1, p1, p0}, Lc/aguoqkle/n/a;-><init>(Ljava/lang/String;Lc/aguoqkle/n/CocoMi;)V

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    goto :goto_0

    :cond_3
    sget v1, Lc/aguoqkle/n/n;->e:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->b()V

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3
.end method

.method private a(JJ)V
    .locals 6

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->A:Ljava/util/Timer;

    if-nez v0, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->A:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->B:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    new-instance v0, Lc/aguoqkle/n/i;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/i;-><init>(Lc/aguoqkle/n/CocoMi;)V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->B:Ljava/util/TimerTask;

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->A:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->B:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    :try_start_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->A:Ljava/util/Timer;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->B:Ljava/util/TimerTask;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lc/aguoqkle/n/CocoMi;I)V
    .locals 0

    iput p1, p0, Lc/aguoqkle/n/CocoMi;->J:I

    return-void
.end method

.method static synthetic a(Lc/aguoqkle/n/CocoMi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/aguoqkle/n/CocoMi;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    const/4 v3, -0x1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_1
    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_2
    move-object v1, p0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Lc/aguoqkle/n/CocoMi;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->H:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lc/aguoqkle/n/o;

    invoke-direct {v1}, Lc/aguoqkle/n/o;-><init>()V

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/o;->a(Lc/aguoqkle/n/r;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v1}, Lc/aguoqkle/n/o;->a()Lc/aguoqkle/n/r;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->f()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->x()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->o()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/aguoqkle/n/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|*@V_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->h(Ljava/lang/String;)V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->i()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lc/aguoqkle/n/CocoMi;)I
    .locals 1

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->F:I

    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-wide/16 v7, 0x7530

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->c()V

    iput-object p1, p0, Lc/aguoqkle/n/CocoMi;->p:Ljava/lang/String;

    iput-object p2, p0, Lc/aguoqkle/n/CocoMi;->q:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lc/aguoqkle/n/CocoMi;->r:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lc/aguoqkle/n/CocoMi;->s:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x46

    if-le v1, v3, :cond_1

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-direct {p0, v7, v8, v7, v8}, Lc/aguoqkle/n/CocoMi;->a(JJ)V

    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 10

    const/16 v1, 0x9

    const/16 v7, 0x40

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const-string v0, "request empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    move v0, v9

    :goto_0
    return v0

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_c

    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    move v0, v9

    goto :goto_0

    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    move v0, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v6, :cond_a

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v6, :cond_9

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_9

    iget-object v4, p0, Lc/aguoqkle/n/CocoMi;->x:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc/aguoqkle/n/CocoMi;->y:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc/aguoqkle/n/CocoMi;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lc/aguoqkle/n/CocoMi;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_3
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-static {v4}, Lc/aguoqkle/n/CocoMi;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lc/aguoqkle/n/CocoMi;->x:Ljava/util/List;

    iget-object v5, p0, Lc/aguoqkle/n/CocoMi;->x:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_7

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-static {v4}, Lc/aguoqkle/n/CocoMi;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lc/aguoqkle/n/CocoMi;->y:Ljava/util/List;

    iget-object v4, p0, Lc/aguoqkle/n/CocoMi;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v8

    :goto_2
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_5

    invoke-direct {p0, v3, v5, v4, v2}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_4
    const-string v1, "Nokia5800"

    move-object v2, v1

    goto/16 :goto_1

    :cond_5
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->x:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->y:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    move v0, v9

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iput-object v4, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v0, v2}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    :cond_9
    move v0, v9

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, p1}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_b
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    move v0, v9

    goto/16 :goto_0

    :cond_c
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    move v0, v9

    goto/16 :goto_0

    :cond_d
    const-string v0, "SmsAnaly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->m()V

    move v0, v9

    goto/16 :goto_0

    :cond_e
    const-string v0, "ReRunTask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|*@V_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->h(Ljava/lang/String;)V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->i()V

    move v0, v9

    goto/16 :goto_0

    :cond_f
    const-string v0, "ReGetTask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_10
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    move v0, v9

    goto/16 :goto_0

    :cond_11
    const-string v0, "ImgTask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->j(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->K:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->K:[B

    if-eqz v0, :cond_12

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->K:[B

    array-length v0, v0

    if-lez v0, :cond_12

    const-string v0, ""

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_12
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    move v0, v9

    goto/16 :goto_0

    :cond_13
    move v0, v8

    goto/16 :goto_0
.end method

.method static synthetic d(Lc/aguoqkle/n/CocoMi;)I
    .locals 1

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->M:I

    return v0
.end method

.method private static d(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/16 v5, 0x7c

    const/4 v4, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v6, v2

    move-object v2, v1

    move v1, v6

    :goto_1
    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_2
    move-object v2, p0

    goto :goto_1
.end method

.method static synthetic e(Lc/aguoqkle/n/CocoMi;)I
    .locals 1

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->J:I

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc/aguoqkle/n/CocoMi;->L:I

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->L:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->M:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->M:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/aguoqkle/n/CocoMi;->N:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->N:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->O:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->O:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_0
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    return-void
.end method

.method private f()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PhoneNum"

    aput-object v1, v0, v3

    const-string v1, "FirstLogin"

    aput-object v1, v0, v4

    const-string v1, "RecipientDown"

    aput-object v1, v0, v5

    const-string v1, "Smskeyword"

    aput-object v1, v0, v6

    const-string v1, "UserAgent"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "DomainUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BackupUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "StartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "InterDay"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Intervaltime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DownSize"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->o()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget-object v3, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->r()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->s()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->v()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->v:Lc/aguoqkle/n/m;

    invoke-virtual {v2, v0, v1}, Lc/aguoqkle/n/m;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lc/aguoqkle/n/CocoMi;)V
    .locals 0

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->k()V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1, v0}, Lc/aguoqkle/n/r;->h(Ljava/lang/String;)V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->f()V

    return-void
.end method

.method static synthetic g(Lc/aguoqkle/n/CocoMi;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, -0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lc/aguoqkle/n/y;->a([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&ntyps="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v0, ""

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->W:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "http://www.wapforum.org/DTD/wml_1.1.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_1

    const-string v1, "go href="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->Z:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->Z:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->Z:I

    iput-boolean v3, p0, Lc/aguoqkle/n/CocoMi;->l:Z

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->b()V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    goto/16 :goto_0

    :cond_1
    iput v3, p0, Lc/aguoqkle/n/CocoMi;->Z:I

    const-string v1, "getserverinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_2

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "likebefor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_4

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_3

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->W:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->k()V

    goto :goto_1

    :cond_4
    const-string v1, "@V_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_5

    const-string v1, "likebefor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_5

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    if-lt v0, v5, :cond_6

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    iput-boolean v3, p0, Lc/aguoqkle/n/CocoMi;->l:Z

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->b()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1, v0}, Lc/aguoqkle/n/r;->g(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    if-lt v0, v5, :cond_8

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    iput-boolean v3, p0, Lc/aguoqkle/n/CocoMi;->l:Z

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->b()V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1, v0}, Lc/aguoqkle/n/r;->g(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_1
.end method

.method private g(Ljava/lang/String;)V
    .locals 5

    const/4 v3, -0x1

    const-string v0, "@V_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    const-string v0, "@V_"

    invoke-static {p1, v0}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :goto_0
    const-string v1, "@T_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "@T_"

    invoke-static {p1, v1}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :goto_1
    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v4}, Lc/aguoqkle/n/r;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lc/aguoqkle/n/CocoMi;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->F:I

    invoke-static {v1}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc/aguoqkle/n/CocoMi;->M:I

    invoke-direct {p0, v2, v0}, Lc/aguoqkle/n/CocoMi;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->M:I

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(I)V

    :cond_0
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method private h()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lc/aguoqkle/n/y;->a([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&ntyps="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    if-lt v0, v4, :cond_0

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    iput-boolean v3, p0, Lc/aguoqkle/n/CocoMi;->l:Z

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1, v0}, Lc/aguoqkle/n/r;->g(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v1, "getserverinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    if-lt v0, v4, :cond_3

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->aa:I

    iput-boolean v3, p0, Lc/aguoqkle/n/CocoMi;->l:Z

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->b()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "11"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1, v0}, Lc/aguoqkle/n/r;->g(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method private h(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v0, 0x0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const-string v1, "|*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    move-object v1, p1

    :goto_0
    const-string v2, "|*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    return-void

    :cond_0
    const-string v2, "|*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lc/aguoqkle/n/t;

    invoke-direct {v3}, Lc/aguoqkle/n/t;-><init>()V

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_1

    move-object v0, v1

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_1
    if-eq v2, v4, :cond_2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_2
    const-string v2, "@T_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_4

    const-string v2, "@T_"

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->k:Ljava/lang/String;

    iget-object v2, v3, Lc/aguoqkle/n/t;->k:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :goto_1
    const-string v2, "@D_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_5

    const-string v2, "@D_"

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->l:Ljava/lang/String;

    iget-object v2, v3, Lc/aguoqkle/n/t;->l:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :goto_2
    const-string v2, "@V_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_6

    const-string v2, "@V_"

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    iget-object v2, v3, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :goto_3
    const-string v2, "@P"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_8

    iput-boolean v6, v3, Lc/aguoqkle/n/t;->n:Z

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    const-string v2, "@CT_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_7

    const-string v2, "@CT_"

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->j:Ljava/lang/String;

    iget-object v2, v3, Lc/aguoqkle/n/t;->j:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :goto_4
    const-string v2, "@S_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_9

    const-string v2, "@S_"

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->h:Ljava/lang/String;

    iget-object v2, v3, Lc/aguoqkle/n/t;->h:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :goto_5
    const-string v2, "@PD_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_a

    const-string v2, "@PD_"

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->i:Ljava/lang/String;

    :goto_6
    const-string v2, "@A_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_b

    const-string v2, "@A_"

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->b:Ljava/lang/String;

    iget-object v2, v3, Lc/aguoqkle/n/t;->b:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :goto_7
    const-string v2, "@AP_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_c

    const-string v2, "@AP_"

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->d:Ljava/lang/String;

    :goto_8
    const-string v2, "@J"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_d

    iput-boolean v6, v3, Lc/aguoqkle/n/t;->o:Z

    :goto_9
    const-string v2, "@C_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_e

    iput-boolean v6, v3, Lc/aguoqkle/n/t;->p:Z

    :goto_a
    const-string v2, "@Img_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_f

    iput-boolean v6, v3, Lc/aguoqkle/n/t;->u:Z

    :goto_b
    const-string v2, "@Ref_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_12

    const-string v2, "@Ref_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_10

    iput v6, v3, Lc/aguoqkle/n/t;->q:I

    :cond_3
    :goto_c
    const-string v2, "@Xrw_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_13

    iput-boolean v6, v3, Lc/aguoqkle/n/t;->r:Z

    :goto_d
    const-string v2, "@WN_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_14

    iput-boolean v6, v3, Lc/aguoqkle/n/t;->s:Z

    :goto_e
    const-string v2, "@RGT_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_15

    iput-boolean v6, v3, Lc/aguoqkle/n/t;->t:Z

    :goto_f
    const-string v2, "@Goh_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_16

    iput-boolean v6, v3, Lc/aguoqkle/n/t;->m:Z

    :goto_10
    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_17

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    :goto_11
    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_18

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->c:Ljava/lang/String;

    :goto_12
    const-string v2, "@O_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_19

    const-string v2, "@O_"

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->e:Ljava/lang/String;

    :goto_13
    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1a

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lc/aguoqkle/n/t;->g:Ljava/lang/String;

    :goto_14
    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->k:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->l:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->j:Ljava/lang/String;

    goto/16 :goto_4

    :cond_8
    iput-boolean v5, v3, Lc/aguoqkle/n/t;->n:Z

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    goto/16 :goto_4

    :cond_9
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->h:Ljava/lang/String;

    goto/16 :goto_5

    :cond_a
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->i:Ljava/lang/String;

    goto/16 :goto_6

    :cond_b
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->b:Ljava/lang/String;

    goto/16 :goto_7

    :cond_c
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->d:Ljava/lang/String;

    goto/16 :goto_8

    :cond_d
    iput-boolean v5, v3, Lc/aguoqkle/n/t;->o:Z

    goto/16 :goto_9

    :cond_e
    iput-boolean v5, v3, Lc/aguoqkle/n/t;->p:Z

    goto/16 :goto_a

    :cond_f
    iput-boolean v5, v3, Lc/aguoqkle/n/t;->u:Z

    goto/16 :goto_b

    :cond_10
    const-string v2, "@Ref_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_11

    const/4 v2, 0x2

    iput v2, v3, Lc/aguoqkle/n/t;->q:I

    goto/16 :goto_c

    :cond_11
    const-string v2, "@Ref_3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_3

    const/4 v2, 0x3

    iput v2, v3, Lc/aguoqkle/n/t;->q:I

    goto/16 :goto_c

    :cond_12
    iput v5, v3, Lc/aguoqkle/n/t;->q:I

    goto/16 :goto_c

    :cond_13
    iput-boolean v5, v3, Lc/aguoqkle/n/t;->r:Z

    goto/16 :goto_d

    :cond_14
    iput-boolean v5, v3, Lc/aguoqkle/n/t;->s:Z

    goto/16 :goto_e

    :cond_15
    iput-boolean v5, v3, Lc/aguoqkle/n/t;->t:Z

    goto/16 :goto_f

    :cond_16
    iput-boolean v5, v3, Lc/aguoqkle/n/t;->m:Z

    goto/16 :goto_10

    :cond_17
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    goto/16 :goto_11

    :cond_18
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->c:Ljava/lang/String;

    goto/16 :goto_12

    :cond_19
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->e:Ljava/lang/String;

    goto/16 :goto_13

    :cond_1a
    const-string v2, ""

    iput-object v2, v3, Lc/aguoqkle/n/t;->g:Ljava/lang/String;

    goto/16 :goto_14
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->k:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->k:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    const/4 v0, 0x3

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->F:I

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->k:Ljava/lang/String;

    invoke-static {v0}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(I)V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    :goto_0
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    return-void

    :cond_0
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->j()V

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/aguoqkle/n/t;

    iget-object v0, p0, Lc/aguoqkle/n/t;->f:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->c:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->m()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->n:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    const-string v2, ""

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v3, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->i:Ljava/lang/String;

    const-string v3, ""

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v3, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->i:Ljava/lang/String;

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v3, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->h:Ljava/lang/String;

    const-string v3, ""

    if-eq v0, v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?bluesky="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&val="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v3, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-object v2, v0

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    :cond_5
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v3, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->j:Ljava/lang/String;

    const-string v3, ""

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v3, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v3, v0, Lc/aguoqkle/n/t;->j:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v4, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->j:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :goto_3
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v4, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->u:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->K:[B

    array-length v0, v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->K:[B

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->K:[B

    invoke-direct {p0, v2, v0, v3, v1}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "Nokia5800"

    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_2

    :cond_8
    const-string v0, "text/plain"

    move-object v3, v0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3, v1}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_1f

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->o:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const-string v1, "MIDlet-Jar-URL:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_10

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->P:Ljava/lang/String;

    const-string v1, "MIDlet-Install-Notify:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_c

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->Q:Ljava/lang/String;

    :goto_5
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->P:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->Q:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->P:Ljava/lang/String;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    invoke-direct {p0, v0, v1}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    :try_start_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->Q:Ljava/lang/String;

    const-string v1, "900 Success"

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->R:Ljava/lang/String;

    iget-object v3, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v3}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->Q:Ljava/lang/String;

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_10
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->b:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->g:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_1c

    :cond_12
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->g:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->g:Ljava/lang/String;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_14

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_29

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    :goto_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_1b

    const-string v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1b

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_13
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->l:Ljava/lang/String;

    const-string v2, ""

    if-eq v0, v2, :cond_19

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->l:Ljava/lang/String;

    invoke-static {v0}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-direct {p0, v1, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move-object v0, v7

    goto :goto_8

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_29

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_16
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v6, :cond_29

    if-eq v0, v6, :cond_29

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_17
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_9

    :cond_18
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_19
    invoke-direct {p0, v1}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_1b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_1c
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->h:Ljava/lang/String;

    const-string v2, ""

    if-eq v0, v2, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?bluesky="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&val="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_1e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->l:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v1, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->l:Ljava/lang/String;

    invoke-static {v0}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-direct {p0, v1, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_20

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v1, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->h:Ljava/lang/String;

    const-string v2, ""

    if-eq v0, v2, :cond_22

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "bluesky="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&val="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_22
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->t:Z

    if-eqz v0, :cond_25

    invoke-direct {p0, v1}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_24
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_25
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->u:Z

    if-eqz v0, :cond_27

    :try_start_1
    invoke-direct {p0, v1}, Lc/aguoqkle/n/CocoMi;->j(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->K:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_b
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->K:[B

    if-eqz v0, :cond_26

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->K:[B

    array-length v0, v0

    if-lez v0, :cond_26

    const-string v0, ""

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :cond_26
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_27
    invoke-direct {p0, v1}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_28

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_29
    move-object v0, v7

    goto/16 :goto_7
.end method

.method private j(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1, p1}, Lc/aguoqkle/n/a;->a(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v1}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    invoke-static {p0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-lez v1, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    sget v1, Lc/aguoqkle/n/n;->c:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->a()V

    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->c()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    new-instance v1, Lc/aguoqkle/n/a;

    invoke-direct {v1, p1, p0}, Lc/aguoqkle/n/a;-><init>(Ljava/lang/String;Lc/aguoqkle/n/CocoMi;)V

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    goto :goto_0

    :cond_3
    sget v1, Lc/aguoqkle/n/n;->e:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->b()V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1, p1}, Lc/aguoqkle/n/a;->a(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v1}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    invoke-static {p0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-lez v1, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    sget v1, Lc/aguoqkle/n/n;->c:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->a()V

    :cond_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->d()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Lc/aguoqkle/n/q;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    new-instance v1, Lc/aguoqkle/n/a;

    invoke-direct {v1, p1, p0}, Lc/aguoqkle/n/a;-><init>(Ljava/lang/String;Lc/aguoqkle/n/CocoMi;)V

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    goto :goto_0

    :cond_3
    sget v1, Lc/aguoqkle/n/n;->e:I

    iget v2, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v1}, Lc/aguoqkle/n/a;->b()V

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3
.end method

.method private k()V
    .locals 10

    const/16 v9, 0xb

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    :cond_0
    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&phonenum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&phonenum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    :goto_0
    invoke-direct {v0}, Lc/aguoqkle/n/CocoMi;->h()V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    iget-object v3, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v4, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v4}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->G:Ljava/util/List;

    iget v2, v0, Lc/aguoqkle/n/CocoMi;->E:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/CocoMi;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->G:Ljava/util/List;

    iget v3, v0, Lc/aguoqkle/n/CocoMi;->E:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "mobile="

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " -->"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    iget-object v3, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lc/aguoqkle/n/r;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "86"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, v0, Lc/aguoqkle/n/CocoMi;->E:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lc/aguoqkle/n/CocoMi;->E:I

    iget v1, v0, Lc/aguoqkle/n/CocoMi;->E:I

    if-ne v1, v8, :cond_0

    iput v6, v0, Lc/aguoqkle/n/CocoMi;->E:I

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->W:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_9

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->W:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc/aguoqkle/n/CocoMi;->g(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->G:Ljava/util/List;

    iget v3, v0, Lc/aguoqkle/n/CocoMi;->E:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "mobile-no="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_4

    iget-object v3, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    add-int/lit8 v4, v2, 0xb

    add-int/lit8 v2, v2, 0xb

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lc/aguoqkle/n/r;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->G:Ljava/util/List;

    iget v3, v0, Lc/aguoqkle/n/CocoMi;->E:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "@139.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_4

    sub-int v3, v2, v9

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/aguoqkle/n/CocoMi;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v2, "value="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_4

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_8

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Net still get phonenum suc--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v9, :cond_4

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2, v1}, Lc/aguoqkle/n/r;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&phonenum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_a

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&phonenum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-direct {v0}, Lc/aguoqkle/n/CocoMi;->h()V

    goto/16 :goto_1

    :cond_b
    iput v6, v0, Lc/aguoqkle/n/CocoMi;->E:I

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&phonenum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_c

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&phonenum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    invoke-direct {v0}, Lc/aguoqkle/n/CocoMi;->f()V

    invoke-direct {v0}, Lc/aguoqkle/n/CocoMi;->h()V

    goto/16 :goto_1

    :cond_c
    iget-object v1, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    iget-object v3, v0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v4, v0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v4}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_d
    iput-boolean v6, v0, Lc/aguoqkle/n/CocoMi;->l:Z

    invoke-virtual {v0}, Lc/aguoqkle/n/CocoMi;->b()V

    goto/16 :goto_1
.end method

.method private l()V
    .locals 2

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->o:I

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->u:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->ab:Ljava/lang/Thread;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->ab:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    return-void
.end method

.method private m()V
    .locals 1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->L:I

    if-ltz v0, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v0, 0x7

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->F:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->L:I

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(I)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/aguoqkle/n/CocoMi;->k:Z

    new-instance v0, Lc/aguoqkle/n/h;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/h;-><init>(Lc/aguoqkle/n/CocoMi;)V

    invoke-virtual {v0}, Lc/aguoqkle/n/h;->start()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    :goto_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget-boolean v0, p0, Lc/aguoqkle/n/CocoMi;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->o:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-lez v0, :cond_1

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->o:I

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->c()V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->n()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lc/aguoqkle/n/CocoMi;->Y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->Y:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->Y:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->l()V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lc/aguoqkle/n/CocoMi;->k:Z

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->Y:I

    iput-boolean v2, p0, Lc/aguoqkle/n/CocoMi;->l:Z

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->b()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    if-lez p1, :cond_1

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lc/aguoqkle/n/CocoMi;->a(JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->d()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lc/aguoqkle/n/CocoMi;->l:Z

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lc/aguoqkle/n/CocoMi;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lc/aguoqkle/n/CocoMi;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->d:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iput-object p1, p0, Lc/aguoqkle/n/CocoMi;->I:Ljava/lang/String;

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->d:I

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->y:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {}, Lc/aguoqkle/n/q;->d()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-boolean v0, v0, Lc/aguoqkle/n/t;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {}, Lc/aguoqkle/n/q;->d()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->b:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->k:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->e:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->k:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->F:I

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget v1, p0, Lc/aguoqkle/n/CocoMi;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->k:Ljava/lang/String;

    invoke-static {v0}, Lc/aguoqkle/n/y;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(I)V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->j()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/t;

    iget-object v0, v0, Lc/aguoqkle/n/t;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc/aguoqkle/n/CocoMi;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Lc/aguoqkle/n/CocoMi;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    invoke-virtual {v0}, Lc/aguoqkle/n/a;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->X:Lc/aguoqkle/n/a;

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->L:I

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "Nokia5800"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->f()V

    return-void

    :cond_4
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->A:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->A:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->A:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->B:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->B:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->B:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lc/aguoqkle/n/CocoMi;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->n()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lc/aguoqkle/n/CocoMi;->F:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->F:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->F:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->H:I

    const/4 v0, -0x1

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->L:I

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->M:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lc/aguoqkle/n/CocoMi;->H:I

    if-ne v0, v3, :cond_3

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->H:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->j()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lc/aguoqkle/n/CocoMi;->F:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->F:I

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->h()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lc/aguoqkle/n/CocoMi;->F:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->F:I

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iput v4, p0, Lc/aguoqkle/n/CocoMi;->F:I

    iput v3, p0, Lc/aguoqkle/n/CocoMi;->H:I

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->O:Ljava/lang/String;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->N:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc/aguoqkle/n/CocoMi;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    new-instance v0, Lc/aguoqkle/n/p;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/p;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-static {p0}, Lc/aguoqkle/n/p;->a(Landroid/content/Context;)V

    :goto_1
    :pswitch_2
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-static {}, Lc/aguoqkle/n/p;->a()V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-static {p0}, Lc/aguoqkle/n/p;->a(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    const v8, 0x7fffffff

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lc/aguoqkle/n/w;

    new-instance v2, Lc/aguoqkle/n/u;

    invoke-direct {v2, p0}, Lc/aguoqkle/n/u;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2, p0}, Lc/aguoqkle/n/w;-><init>(Landroid/content/ContentResolver;Lc/aguoqkle/n/u;Lc/aguoqkle/n/CocoMi;)V

    iput-object v1, p0, Lc/aguoqkle/n/CocoMi;->ac:Lc/aguoqkle/n/w;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->ac:Lc/aguoqkle/n/w;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lc/aguoqkle/n/CocoRev;

    invoke-direct {v0}, Lc/aguoqkle/n/CocoRev;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->C:Lc/aguoqkle/n/CocoRev;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->C:Lc/aguoqkle/n/CocoRev;

    invoke-virtual {v0, p0}, Lc/aguoqkle/n/CocoRev;->a(Lc/aguoqkle/n/CocoMi;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->C:Lc/aguoqkle/n/CocoRev;

    invoke-virtual {p0, v1, v0}, Lc/aguoqkle/n/CocoMi;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lc/aguoqkle/n/r;

    invoke-direct {v0}, Lc/aguoqkle/n/r;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->G:Ljava/util/List;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->G:Ljava/util/List;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->G:Ljava/util/List;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    new-instance v0, Lc/aguoqkle/n/x;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->z:Lc/aguoqkle/n/x;

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->ae:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->r:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lc/aguoqkle/n/CocoMi;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->af:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->s:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lc/aguoqkle/n/CocoMi;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lc/aguoqkle/n/CocoMi;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "City_cha"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ring_Channle0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ring_Channle:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->a()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-static {v0}, Lc/aguoqkle/n/q;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v1, "&version=17.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput-object p0, p0, Lc/aguoqkle/n/CocoMi;->t:Landroid/content/Context;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->b:Lc/aguoqkle/n/NetworkChangeReceiver;

    if-eqz v0, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->b:Lc/aguoqkle/n/NetworkChangeReceiver;

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v0, Lc/aguoqkle/n/NetworkChangeReceiver;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/NetworkChangeReceiver;-><init>(Lc/aguoqkle/n/CocoMi;)V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->b:Lc/aguoqkle/n/NetworkChangeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->b:Lc/aguoqkle/n/NetworkChangeReceiver;

    invoke-virtual {p0, v1, v0}, Lc/aguoqkle/n/CocoMi;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lc/aguoqkle/n/l;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lc/aguoqkle/n/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, p0, Lc/aguoqkle/n/CocoMi;->S:Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v2, p0, Lc/aguoqkle/n/CocoMi;->g:I

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lc/aguoqkle/n/CocoMi;->T:Ljava/lang/String;

    invoke-virtual {v0}, Lc/aguoqkle/n/l;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/aguoqkle/n/CocoMi;->U:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->U:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->U:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lc/aguoqkle/n/q;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/syseConfig.dat"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/aguoqkle/n/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/aguoqkle/n/CocoMi;->U:Ljava/lang/String;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->U:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    :cond_2
    :goto_2
    invoke-virtual {v0}, Lc/aguoqkle/n/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->V:Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->S:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->T:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->U:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->V:Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&imei="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->U:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&imsi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->V:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&sdk="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->S:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&ua="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_7

    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "yd"

    iput v4, p0, Lc/aguoqkle/n/CocoMi;->i:I

    :goto_3
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v2, "&card="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lc/aguoqkle/n/m;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->v:Lc/aguoqkle/n/m;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->v:Lc/aguoqkle/n/m;

    invoke-virtual {v0}, Lc/aguoqkle/n/m;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->w:Ljava/util/List;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "00000000000"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "10086|10086901|10658830|10658830901|10658080|10658099839|1065889955|10668899"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "\u70b9\u64ad|\u5f00\u901a|\u4f7f\u7528|\u9009\u7528|\u8d44\u8d39|\u5c0f\u65f6\u5185|\u5143/|\u8d2d\u4e70|\u8ba2\u8d2d|\u9605\u8bfb|\u52a8\u6f2b|\u6f2b\u753b|\u6e38\u620f\u70b9\u6570|\u6263\u8d39\u63d0\u9192|\u4e2d\u56fd\u79fb\u52a8|10086|10086901|400"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "Nokia5800"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->k(Ljava/lang/String;)V

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->l()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->m()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->n()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x3

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->o()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->p()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->q()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->r()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->s()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->u()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Lc/aguoqkle/n/r;->v()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->v:Lc/aguoqkle/n/m;

    invoke-virtual {v1, v0}, Lc/aguoqkle/n/m;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    :cond_3
    :goto_4
    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->o()V

    return-void

    :cond_4
    :try_start_2
    const-string v0, "20000"
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->D:Ljava/lang/StringBuffer;

    const-string v1, "20000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    goto/16 :goto_2

    :cond_7
    if-eqz v1, :cond_8

    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "lt"

    iput v5, p0, Lc/aguoqkle/n/CocoMi;->i:I

    goto/16 :goto_3

    :cond_8
    if-eqz v1, :cond_9

    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dx"

    iput v7, p0, Lc/aguoqkle/n/CocoMi;->i:I

    goto/16 :goto_3

    :cond_9
    const-string v0, "wk"

    const/4 v1, -0x1

    iput v1, p0, Lc/aguoqkle/n/CocoMi;->i:I

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->w:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/aguoqkle/n/r;

    iput-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->r()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->af:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lc/aguoqkle/n/CocoMi;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    const-wide/16 v9, 0x7530

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->s()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->g()V

    move v0, v7

    :cond_0
    :goto_0
    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    if-lez v0, :cond_1

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v8, :cond_1

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->f()V

    :cond_1
    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v0}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v8, :cond_4

    :cond_2
    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    :goto_1
    return v6

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->g()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->g()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lc/aguoqkle/n/r;->o(Ljava/lang/String;)V

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->i:I

    invoke-static {p0, v0}, Lc/aguoqkle/n/n;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lc/aguoqkle/n/CocoMi;->n:I

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->n:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    iget v0, p0, Lc/aguoqkle/n/CocoMi;->n:I

    if-le v0, v6, :cond_6

    new-instance v0, Lc/aguoqkle/n/g;

    invoke-direct {v0, p0}, Lc/aguoqkle/n/g;-><init>(Lc/aguoqkle/n/CocoMi;)V

    invoke-virtual {v0}, Lc/aguoqkle/n/g;->start()V

    :cond_5
    :goto_2
    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "I will be coming here on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/aguoqkle/n/CocoMi;->c:Lc/aguoqkle/n/r;

    invoke-virtual {v1}, Lc/aguoqkle/n/r;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "days"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lc/aguoqkle/n/q;->b()V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v9, v10, v9, v10}, Lc/aguoqkle/n/CocoMi;->a(JJ)V

    iput-boolean v6, p0, Lc/aguoqkle/n/CocoMi;->k:Z

    iput v7, p0, Lc/aguoqkle/n/CocoMi;->Y:I

    invoke-direct {p0}, Lc/aguoqkle/n/CocoMi;->l()V

    goto :goto_2
.end method
