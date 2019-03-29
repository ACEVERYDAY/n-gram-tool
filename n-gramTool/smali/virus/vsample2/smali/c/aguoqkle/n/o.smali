.class public final Lc/aguoqkle/n/o;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lc/aguoqkle/n/r;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v3

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    :cond_0
    :goto_2
    iget-object v0, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    iget-object v0, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v3

    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    :goto_4
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method


# virtual methods
.method public final a()Lc/aguoqkle/n/r;
    .locals 1

    iget-object v0, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    return-object v0
.end method

.method public final a(Lc/aguoqkle/n/r;)V
    .locals 0

    iput-object p1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    return-void
.end method

.method public final characters([CII)V
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "update_type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->l(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    return-void

    :cond_1
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "classering"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "glassering"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "interval_day"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "userid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "buter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "down_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "user_agent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "game_down"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "intervaltime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "sms_marking_mt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "sms_key_word"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "statistics_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v2, "installurl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lc/aguoqkle/n/o;->b:Lc/aguoqkle/n/r;

    iget-object v2, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lc/aguoqkle/n/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/aguoqkle/n/r;->p(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final endDocument()V
    .locals 0

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "getserverinfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public final startDocument()V
    .locals 0

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    iput-object p2, p0, Lc/aguoqkle/n/o;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lc/aguoqkle/n/o;->c:Ljava/lang/String;

    const-string v0, "getserverinfo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
