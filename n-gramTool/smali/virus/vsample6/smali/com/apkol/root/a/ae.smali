.class public Lcom/apkol/root/a/ae;
.super Lcom/apkol/root/a/y;
.source "RunRootShell.java"

# interfaces
.implements Lcom/apkol/root/a/e;
.implements Lcom/apkol/root/a/x;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Landroid/content/res/Resources;

.field private h:Lcom/apkol/root/a/al;

.field private i:Lcom/apkol/root/a/ad;

.field private j:Ljava/lang/String;

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:Lcom/apkol/utils/c/c;

.field private p:Lcom/apkol/root/a/am;

.field private q:Lcom/apkol/root/a/an;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private final t:I

.field private final u:I

.field private v:Ljava/util/Timer;

.field private w:Ljava/lang/Thread;

.field private x:Lcom/apkol/root/AssistConst;

.field private y:Landroid/os/Handler;

.field private z:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/apkol/root/a/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apkol/root/a/ad;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1}, Lcom/apkol/root/a/y;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/apkol/root/a/ae;->k:I

    .line 54
    iput v2, p0, Lcom/apkol/root/a/ae;->l:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/apkol/root/a/ae;->m:I

    .line 56
    const/4 v0, -0x2

    iput v0, p0, Lcom/apkol/root/a/ae;->n:I

    .line 62
    iput-object v1, p0, Lcom/apkol/root/a/ae;->r:Ljava/util/List;

    .line 65
    iput v2, p0, Lcom/apkol/root/a/ae;->t:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/ae;->u:I

    .line 69
    iput-object v1, p0, Lcom/apkol/root/a/ae;->v:Ljava/util/Timer;

    .line 71
    iput-object v1, p0, Lcom/apkol/root/a/ae;->w:Ljava/lang/Thread;

    .line 73
    iput-object v1, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    .line 75
    new-instance v0, Lcom/apkol/root/a/af;

    invoke-direct {v0, p0}, Lcom/apkol/root/a/af;-><init>(Lcom/apkol/root/a/ae;)V

    iput-object v0, p0, Lcom/apkol/root/a/ae;->y:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/apkol/root/a/ag;

    invoke-direct {v0, p0}, Lcom/apkol/root/a/ag;-><init>(Lcom/apkol/root/a/ae;)V

    iput-object v0, p0, Lcom/apkol/root/a/ae;->z:Ljava/util/TimerTask;

    .line 152
    iput-object p1, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/ae;->g:Landroid/content/res/Resources;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/apkol/root/a/ae;->j:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/apkol/root/a/ae;->i:Lcom/apkol/root/a/ad;

    .line 159
    new-instance v0, Lcom/apkol/root/a/al;

    invoke-direct {v0}, Lcom/apkol/root/a/al;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/ae;->h:Lcom/apkol/root/a/al;

    .line 161
    iput v2, p0, Lcom/apkol/root/a/ae;->s:I

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/ae;->r:Ljava/util/List;

    .line 165
    invoke-static {}, Lcom/apkol/root/AssistConst;->a()Lcom/apkol/root/AssistConst;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/a/ae;)Lcom/apkol/root/AssistConst;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    return-object v0
.end method

.method static synthetic a(Lcom/apkol/root/a/ae;I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/apkol/root/a/ae;->s:I

    return-void
.end method

.method static synthetic a(Lcom/apkol/root/a/ae;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/apkol/root/a/ae;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 212
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 213
    iget-object v0, p0, Lcom/apkol/root/a/ae;->h:Lcom/apkol/root/a/al;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/apkol/root/a/al;->c:Ljava/util/List;

    .line 214
    const/4 v1, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/utils/k;->a([B)Ljava/io/InputStream;

    move-result-object v0

    .line 218
    const-string v3, "UTF-8"

    .line 216
    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 219
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 220
    :goto_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 279
    :goto_1
    return-void

    .line 221
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 228
    :try_start_1
    const-string v0, "IsExist"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/apkol/root/a/ae;->h:Lcom/apkol/root/a/al;

    .line 230
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lcom/apkol/root/a/al;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 258
    :catch_0
    move-exception v0

    .line 260
    :try_start_2
    sget-object v4, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tagName ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 272
    :catch_1
    move-exception v0

    .line 274
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 231
    :cond_2
    :try_start_3
    const-string v0, "Message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/apkol/root/a/ae;->h:Lcom/apkol/root/a/al;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/apkol/root/a/al;->b:Ljava/lang/String;

    goto :goto_2

    .line 233
    :cond_3
    const-string v0, "Runrootshell"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    new-instance v0, Lcom/apkol/root/a/al$a;

    invoke-direct {v0}, Lcom/apkol/root/a/al$a;-><init>()V

    move-object v1, v0

    .line 235
    goto :goto_2

    :cond_4
    const-string v0, "RunRootID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/apkol/root/a/al$a;->a:J

    goto :goto_2

    .line 238
    :cond_5
    const-string v0, "model"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apkol/root/a/al$a;->b:Ljava/lang/String;

    goto/16 :goto_2

    .line 240
    :cond_6
    const-string v0, "displayid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/apkol/root/a/al$a;->c:Ljava/lang/String;

    goto/16 :goto_2

    .line 242
    :cond_7
    const-string v0, "prepare_kernel_cred"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/apkol/root/a/al$a;->d:J

    goto/16 :goto_2

    .line 245
    :cond_8
    const-string v0, "commit_creds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 247
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/apkol/root/a/al$a;->e:J

    goto/16 :goto_2

    .line 248
    :cond_9
    const-string v0, "remap_pfn_range"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 250
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/apkol/root/a/al$a;->f:J

    goto/16 :goto_2

    .line 251
    :cond_a
    const-string v0, "vmalloc_exec"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 253
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/apkol/root/a/al$a;->g:J

    goto/16 :goto_2

    .line 254
    :cond_b
    const-string v0, "ptmx_fops"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/apkol/root/a/al$a;->h:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 265
    :pswitch_2
    :try_start_4
    const-string v0, "Runrootshell"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/apkol/root/a/ae;->h:Lcom/apkol/root/a/al;

    iget-object v0, v0, Lcom/apkol/root/a/al;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 275
    :catch_2
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/apkol/root/a/al$a;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    .line 433
    const/4 v1, 0x1

    .line 434
    :try_start_0
    new-instance v2, Lcom/apkol/root/a/am;

    iget-object v3, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/apkol/root/a/am;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    .line 435
    new-instance v2, Lcom/apkol/root/a/an;

    iget-object v3, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/apkol/root/a/an;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/apkol/root/a/ae;->q:Lcom/apkol/root/a/an;

    .line 437
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 438
    const-string v3, "device_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string v3, "device"

    iget-object v4, p1, Lcom/apkol/root/a/al$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v3, "build_id"

    iget-object v4, p1, Lcom/apkol/root/a/al$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v3, "check_property_name"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v3, "check_property_value"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v3, p0, Lcom/apkol/root/a/ae;->q:Lcom/apkol/root/a/an;

    invoke-virtual {v3}, Lcom/apkol/root/a/an;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/apkol/root/a/ae;->q:Lcom/apkol/root/a/an;

    invoke-virtual {v4}, Lcom/apkol/root/a/an;->b()Ljava/lang/String;

    move-result-object v4

    .line 444
    const/4 v5, 0x0

    .line 443
    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 446
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 447
    const-string v3, "device_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->d:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_0

    .line 449
    const-string v1, "name"

    const-string v3, "prepare_kernel_cred"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v1, "value"

    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    iget-object v1, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v1}, Lcom/apkol/root/a/am;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v3}, Lcom/apkol/root/a/am;->b()Ljava/lang/String;

    move-result-object v3

    .line 452
    const/4 v4, 0x0

    .line 451
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 455
    :cond_0
    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->e:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_1

    .line 456
    const-string v1, "name"

    const-string v3, "commit_creds"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v1, "value"

    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 458
    iget-object v1, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v1}, Lcom/apkol/root/a/am;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v3}, Lcom/apkol/root/a/am;->b()Ljava/lang/String;

    move-result-object v3

    .line 459
    const/4 v4, 0x0

    .line 458
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 461
    :cond_1
    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->f:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_2

    .line 462
    const-string v1, "name"

    const-string v3, "remap_pfn_range"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "value"

    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    iget-object v1, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v1}, Lcom/apkol/root/a/am;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v3}, Lcom/apkol/root/a/am;->b()Ljava/lang/String;

    move-result-object v3

    .line 465
    const/4 v4, 0x0

    .line 464
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 467
    :cond_2
    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->h:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_3

    .line 468
    const-string v1, "name"

    const-string v3, "ptmx_fops"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v1, "value"

    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 470
    iget-object v1, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v1}, Lcom/apkol/root/a/am;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v3}, Lcom/apkol/root/a/am;->b()Ljava/lang/String;

    move-result-object v3

    .line 471
    const/4 v4, 0x0

    .line 470
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 473
    :cond_3
    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->g:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_4

    .line 474
    const-string v1, "name"

    const-string v3, "vmalloc_exec"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "value"

    iget-wide v3, p1, Lcom/apkol/root/a/al$a;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 476
    iget-object v1, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v1}, Lcom/apkol/root/a/am;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, p0, Lcom/apkol/root/a/ae;->p:Lcom/apkol/root/a/am;

    invoke-virtual {v3}, Lcom/apkol/root/a/am;->b()Ljava/lang/String;

    move-result-object v3

    .line 477
    const/4 v4, 0x0

    .line 476
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_4
    :goto_0
    return v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/a/ae;->a:Ljava/lang/String;

    .line 482
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/apkol/root/b/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/apkol/root/a/ae;)Lcom/apkol/root/a/al;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/apkol/root/a/ae;->h:Lcom/apkol/root/a/al;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 0777 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 506
    iget-object v3, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "onekeyrom.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "chmod 0777 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "onekeyroot"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "chmod 0777 "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 509
    iget-object v5, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "onekeyrootseckill.sh"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 508
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 511
    const-string v6, "./onekeyroot -c ./onekeyrootseckill.sh www_onekeyrom_com"

    .line 513
    invoke-static {}, Lcom/apkol/utils/l;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    move v2, v1

    :goto_0
    if-lt v2, v8, :cond_1

    .line 519
    :cond_0
    iget v2, p0, Lcom/apkol/root/a/ae;->s:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 522
    :try_start_0
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "chmodOneRom= "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/apkol/root/a/ae;->a(Ljava/lang/StackTraceElement;)V

    .line 524
    const/16 v1, 0x2710

    invoke-static {v3, v1}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    :goto_1
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmodOneKey= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :try_start_1
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/apkol/root/a/ae;->a(Ljava/lang/StackTraceElement;)V

    .line 533
    const/16 v1, 0x2710

    invoke-static {v4, v1}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 539
    :goto_2
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmodRootSh= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :try_start_2
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/apkol/root/a/ae;->a(Ljava/lang/StackTraceElement;)V

    .line 542
    const/16 v1, 0x2710

    invoke-static {v5, v1}, Lcom/apkol/utils/r;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 547
    :goto_3
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start execute rootCmd= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :try_start_3
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/apkol/root/a/ae;->a(Ljava/lang/StackTraceElement;)V

    .line 550
    const/4 v1, 0x0

    .line 551
    const/16 v2, 0x4e20

    .line 550
    invoke-static {v6, v1, p1, v2}, Lcom/apkol/utils/r;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 557
    :goto_4
    iput-object v0, p0, Lcom/apkol/root/a/ae;->a:Ljava/lang/String;

    .line 559
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end execute rootCmd= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 560
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {v1, v0}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-wide/16 v0, 0x7d0

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 563
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v1, "rootThread sleep suc"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 569
    :goto_5
    invoke-static {}, Lcom/apkol/root/b/k;->c()Z

    move-result v0

    .line 571
    :goto_6
    return v0

    .line 514
    :cond_1
    aget-object v9, v7, v2

    .line 515
    sget-object v10, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 525
    :catch_0
    move-exception v1

    .line 527
    sget-object v2, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "TimeoutException e="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 534
    :catch_1
    move-exception v1

    .line 536
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 543
    :catch_2
    move-exception v1

    .line 545
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_3

    .line 552
    :catch_3
    move-exception v1

    .line 554
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_4

    .line 564
    :catch_4
    move-exception v0

    .line 566
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 567
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rootThread sleep fail e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_2
    move v0, v1

    .line 571
    goto :goto_6
.end method

.method static synthetic c(Lcom/apkol/root/a/ae;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->j()V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 576
    iget-object v0, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/root/b/k;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apkol/root/a/ae;->j:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/apkol/root/a/ae;->o:Lcom/apkol/utils/c/c;

    invoke-virtual {v3}, Lcom/apkol/utils/c/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "onekeyrom.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    iget-object v4, p0, Lcom/apkol/root/a/ae;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 582
    iget-object v4, p0, Lcom/apkol/root/a/ae;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_0
    iget-object v3, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    .line 586
    iget-object v4, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "onekeyrom.com"

    .line 585
    invoke-static {v3, v0, v4}, Lcom/apkol/root/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 587
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "copyRootFile dataBaseBool= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "onekeyroot"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "onekeyroot"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v4, p0, Lcom/apkol/root/a/ae;->r:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 592
    iget-object v4, p0, Lcom/apkol/root/a/ae;->r:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 602
    :goto_0
    sget-object v4, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copyRootFile oneKeyBool= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "onekeyrootseckill.sh"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "onekeyrootseckill.sh"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 606
    iget-object v4, p0, Lcom/apkol/root/a/ae;->r:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 607
    iget-object v4, p0, Lcom/apkol/root/a/ae;->r:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    .line 617
    :goto_1
    sget-object v4, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copyRootFile oneKeySHBool= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    if-nez v2, :cond_4

    .line 621
    :cond_3
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v4

    .line 623
    iget-object v5, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/apkol/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 622
    invoke-virtual {v4, v5}, Lcom/apkol/utils/i;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 624
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "runshell\u62f7\u8d1d\u6587\u4ef6\u5931\u8d25 data="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " oneKeyBool="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 625
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " oneKeySHBool="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 626
    const-string v7, " availableSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 624
    iput-object v4, p0, Lcom/apkol/root/a/ae;->a:Ljava/lang/String;

    .line 628
    :cond_4
    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 598
    :cond_5
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "onekeyroot"

    .line 599
    iget-object v4, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "onekeyroot"

    .line 598
    invoke-direct {p0, v0, v4}, Lcom/apkol/root/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 613
    :cond_6
    iget-object v2, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "onekeyrootseckill.sh"

    .line 614
    iget-object v4, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "onekeyrootseckill.sh"

    .line 613
    invoke-direct {p0, v2, v4}, Lcom/apkol/root/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_1

    .line 628
    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method static synthetic d(Lcom/apkol/root/a/ae;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/apkol/root/a/ae;->s:I

    return v0
.end method

.method static synthetic e(Lcom/apkol/root/a/ae;)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->o()V

    return-void
.end method

.method static synthetic f(Lcom/apkol/root/a/ae;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/apkol/root/a/ae;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/apkol/root/a/ae;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/apkol/root/a/ae;)V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->n()V

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->aa:I

    .line 185
    const-string v1, "\u6267\u884cSHELL\u65b9\u6848"

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/ah;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/ah;-><init>(Lcom/apkol/root/a/ae;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 205
    return-void
.end method

.method static synthetic i(Lcom/apkol/root/a/ae;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->k()V

    return-void
.end method

.method static synthetic j(Lcom/apkol/root/a/ae;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/apkol/root/a/ae;->r:Ljava/util/List;

    return-object v0
.end method

.method private j()V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/apkol/root/a/ae;->d()V

    .line 295
    return-void
.end method

.method static synthetic k(Lcom/apkol/root/a/ae;)Lcom/apkol/utils/c/c;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/apkol/root/a/ae;->o:Lcom/apkol/utils/c/c;

    return-object v0
.end method

.method private k()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 319
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/apkol/root/a/ae;->h:Lcom/apkol/root/a/al;

    iget-object v3, v0, Lcom/apkol/root/a/al;->c:Ljava/util/List;

    .line 322
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "HandleRoot list.size ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 323
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-lt v2, v0, :cond_2

    move v0, v1

    .line 361
    :cond_0
    :goto_1
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v2, "HandleRoot list END"

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HandleRoot ROOT_SHELL_STATE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/apkol/root/a/ae;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget v1, p0, Lcom/apkol/root/a/ae;->s:I

    if-ne v1, v7, :cond_1

    .line 365
    iget-object v1, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iput-boolean v0, v1, Lcom/apkol/root/AssistConst;->a:Z

    .line 366
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget-boolean v0, v0, Lcom/apkol/root/AssistConst;->a:Z

    if-eqz v0, :cond_6

    .line 367
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v1, "Yes Root"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/apkol/utils/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    iput-object v0, p0, Lcom/apkol/root/a/ae;->a:Ljava/lang/String;

    .line 372
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 373
    iput v7, v0, Landroid/os/Message;->what:I

    .line 374
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 375
    iget-object v1, p0, Lcom/apkol/root/a/ae;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    :cond_1
    :goto_2
    :try_start_1
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->p()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 392
    :goto_3
    return-void

    .line 324
    :cond_2
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apkol/root/a/al$a;

    .line 325
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->l()Z

    move-result v4

    .line 327
    if-eqz v4, :cond_4

    .line 328
    sget-object v4, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HandleRoot Create i ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v0}, Lcom/apkol/root/a/ae;->a(Lcom/apkol/root/a/al$a;)Z

    move-result v0

    .line 331
    iget-object v4, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/apkol/utils/c/b;->a(Landroid/content/Context;)Lcom/apkol/utils/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apkol/utils/c/b;->c()V

    .line 333
    if-eqz v0, :cond_3

    .line 334
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->m()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 335
    if-nez v0, :cond_0

    .line 351
    :try_start_3
    iget v1, p0, Lcom/apkol/root/a/ae;->s:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 352
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v2, "HandleRoot OverTime SHELL_STATE_END break"

    invoke-static {v1, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 356
    :catch_0
    move-exception v1

    .line 357
    :goto_4
    sget-object v2, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HandleRoot Fail ex="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->ac:I

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 339
    :cond_3
    :try_start_4
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v2, "HandleRoot insert = Fail"

    invoke-static {v0, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ac:I

    .line 341
    const-string v2, "HandleRoot insert = Fail"

    .line 340
    invoke-virtual {p0, v0, v2}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    move v0, v1

    .line 342
    goto/16 :goto_1

    .line 345
    :cond_4
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v2, "HandleRoot isCreate = Fail"

    invoke-static {v0, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ac:I

    const-string v2, "\u521b\u5efa\u6570\u636e\u5e93\u5931\u8d25"

    invoke-virtual {p0, v0, v2}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/c/b;->a(Landroid/content/Context;)Lcom/apkol/utils/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apkol/utils/c/b;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 348
    goto/16 :goto_1

    .line 323
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 377
    :cond_6
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 378
    iput v7, v0, Landroid/os/Message;->what:I

    .line 379
    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 380
    const-string v1, "run shell fail"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lcom/apkol/root/a/ae;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v1, "No Root"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 388
    :catch_1
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 356
    :catch_2
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_4
.end method

.method static synthetic l(Lcom/apkol/root/a/ae;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/apkol/root/a/ae;->j:Ljava/lang/String;

    return-object v0
.end method

.method private l()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/apkol/utils/c/c;->a(Landroid/content/Context;)Lcom/apkol/utils/c/c;

    move-result-object v1

    iput-object v1, p0, Lcom/apkol/root/a/ae;->o:Lcom/apkol/utils/c/c;

    .line 397
    iget-object v1, p0, Lcom/apkol/root/a/ae;->o:Lcom/apkol/utils/c/c;

    const-string v2, "runshell.db"

    invoke-virtual {v1, v2}, Lcom/apkol/utils/c/c;->a(Ljava/lang/String;)V

    .line 398
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apkol/root/a/ae;->j:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    iget-object v3, p0, Lcom/apkol/root/a/ae;->o:Lcom/apkol/utils/c/c;

    invoke-virtual {v3}, Lcom/apkol/utils/c/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 405
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    sget-object v1, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createDB = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-static {v1, v2}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/apkol/root/a/ae;->o:Lcom/apkol/utils/c/c;

    .line 409
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apkol/utils/c/c;->c(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/apkol/root/a/ae;->o:Lcom/apkol/utils/c/c;

    const-class v2, Lcom/apkol/root/a/an;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apkol/utils/c/c;->b(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/apkol/root/a/ae;->o:Lcom/apkol/utils/c/c;

    const-class v2, Lcom/apkol/root/a/am;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apkol/utils/c/c;->b(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/apkol/utils/c/b;->a(Landroid/content/Context;)Lcom/apkol/utils/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apkol/utils/c/b;->a()V

    .line 418
    const/4 v0, 0x1

    .line 426
    :goto_0
    return v0

    .line 420
    :cond_1
    const-string v1, "\u65e0\u6cd5\u5220\u9664\u6570\u636e\u5e93"

    iput-object v1, p0, Lcom/apkol/root/a/ae;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u751f\u6210\u6570\u636e\u5e93\u5f02\u5e38\uff0cex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apkol/root/a/ae;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic m(Lcom/apkol/root/a/ae;)Lcom/apkol/root/a/ad;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/apkol/root/a/ae;->i:Lcom/apkol/root/a/ad;

    return-object v0
.end method

.method private m()Z
    .locals 5

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    iget-object v2, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/apkol/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-direct {p0, v0}, Lcom/apkol/root/a/ae;->c(Ljava/lang/String;)Z

    move-result v1

    .line 495
    sget-object v2, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HandleRootAct copy= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    if-eqz v1, :cond_0

    .line 497
    invoke-direct {p0, v0}, Lcom/apkol/root/a/ae;->b(Ljava/lang/String;)Z

    move-result v0

    .line 499
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 638
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v1, "start createTimer"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->o()V

    .line 640
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/a/ae;->v:Ljava/util/Timer;

    .line 641
    iget-object v0, p0, Lcom/apkol/root/a/ae;->v:Ljava/util/Timer;

    iget-object v1, p0, Lcom/apkol/root/a/ae;->z:Ljava/util/TimerTask;

    iget-object v2, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v2, v2, Lcom/apkol/root/AssistConst;->af:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 642
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/apkol/root/a/ae;->v:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 646
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v1, "cancleTimer Timer"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/apkol/root/a/ae;->v:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/a/ae;->v:Ljava/util/Timer;

    .line 650
    :cond_0
    return-void
.end method

.method private p()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    const-string v1, "cleanRootData"

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/aj;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/aj;-><init>(Lcom/apkol/root/a/ae;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 706
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 708
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/apkol/utils/n;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->i()V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ac:I

    .line 175
    const-string v1, "RunCheck isNetworkAvailable false"

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 735
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ab:I

    if-ne p1, v0, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/apkol/root/a/ae;->d()V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->ac:I

    if-ne p1, v0, :cond_3

    .line 658
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoadTool Fail obj ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    if-nez p2, :cond_2

    const-string p2, "LoadTool Fail"

    .line 662
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 663
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 664
    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 665
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 666
    iget-object v1, p0, Lcom/apkol/root/a/ae;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->aa:I

    if-ne p1, v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->aa:I

    invoke-virtual {p0, v0, p2}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/apkol/root/a/ae;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/apkol/root/a/ae;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apkol/root/a/ak;

    invoke-direct {v1, p0, p1, p2}, Lcom/apkol/root/a/ak;-><init>(Lcom/apkol/root/a/ae;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 716
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x2

    iput v0, p0, Lcom/apkol/root/a/ae;->s:I

    .line 722
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->o()V

    .line 724
    :try_start_0
    invoke-direct {p0}, Lcom/apkol/root/a/ae;->p()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 727
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/apkol/root/a/ae;->x:Lcom/apkol/root/AssistConst;

    iget v0, v0, Lcom/apkol/root/AssistConst;->aa:I

    .line 302
    const-string v1, "\u6b63\u5728\u9002\u914d\u673a\u578b\u5e93"

    .line 301
    invoke-virtual {p0, v0, v1}, Lcom/apkol/root/a/ae;->b(ILjava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/a/ai;

    invoke-direct {v1, p0}, Lcom/apkol/root/a/ai;-><init>(Lcom/apkol/root/a/ae;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/apkol/root/a/ae;->w:Ljava/lang/Thread;

    .line 315
    iget-object v0, p0, Lcom/apkol/root/a/ae;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 316
    return-void
.end method
