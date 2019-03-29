.class public Lcom/apkol/root/b/e;
.super Ljava/lang/Object;
.source "GetMachineInfoForC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkol/root/b/e$a;
    }
.end annotation


# static fields
.field private static b:Lcom/apkol/root/b/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Lcom/apkol/root/b/e$a;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/apkol/root/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/b/e;->a:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/apkol/root/b/e;->e:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/apkol/root/b/e$a;

    invoke-direct {v0, p0}, Lcom/apkol/root/b/e$a;-><init>(Lcom/apkol/root/b/e;)V

    iput-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/apkol/root/b/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apkol/root/b/e;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/apkol/root/b/e;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/apkol/root/b/e;->b:Lcom/apkol/root/b/e;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/apkol/root/b/e;

    invoke-direct {v0, p0}, Lcom/apkol/root/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apkol/root/b/e;->b:Lcom/apkol/root/b/e;

    .line 33
    :cond_0
    sget-object v0, Lcom/apkol/root/b/e;->b:Lcom/apkol/root/b/e;

    return-object v0
.end method

.method static synthetic a(Lcom/apkol/root/b/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/apkol/root/b/e;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    iput-boolean v6, v0, Lcom/apkol/root/b/e$a;->a:Z

    .line 63
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 66
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/apkol/utils/k;->a([B)Ljava/io/InputStream;

    move-result-object v0

    .line 67
    const-string v2, "UTF-8"

    .line 65
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 69
    :goto_0
    if-ne v0, v6, :cond_1

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 70
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_2
    :goto_2
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 77
    :try_start_1
    const-string v0, "RootNewOrderValue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/apkol/root/b/e$a;->j:Ljava/lang/String;

    .line 80
    :cond_3
    const-string v0, "CompanyID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/apkol/root/b/e$a;->b:J

    .line 83
    :cond_4
    const-string v0, "CompanyName"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/apkol/root/b/e$a;->c:Ljava/lang/String;

    .line 86
    :cond_5
    const-string v0, "MachineName"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/apkol/root/b/e$a;->e:Ljava/lang/String;

    .line 89
    :cond_6
    const-string v0, "ShowName"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/apkol/root/b/e$a;->f:Ljava/lang/String;

    .line 92
    :cond_7
    const-string v0, "MachineID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/apkol/root/b/e$a;->h:J

    .line 95
    :cond_8
    const-string v0, "MachineCode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/apkol/root/b/e$a;->g:Ljava/lang/String;

    .line 98
    :cond_9
    const-string v0, "RootOrderNum"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    .line 100
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/apkol/root/b/e$a;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 102
    :catch_0
    move-exception v0

    .line 104
    :try_start_2
    iget-object v3, p0, Lcom/apkol/root/b/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tagName ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 114
    :catch_1
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/apkol/root/b/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apkol/root/b/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/apkol/root/b/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/apkol/root/b/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/apkol/root/b/e;->a(Landroid/os/Handler;I)V

    .line 38
    return-void
.end method

.method public a(Landroid/os/Handler;I)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apkol/root/b/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/apkol/root/b/f;-><init>(Lcom/apkol/root/b/e;Landroid/os/Handler;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/apkol/root/b/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/apkol/root/b/e$a;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/apkol/root/b/e;->c:Lcom/apkol/root/b/e$a;

    return-object v0
.end method
