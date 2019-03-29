.class public Leu/margaritasoft/firstdevelop/Grandman;
.super Landroid/app/Activity;
.source "Grandman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/margaritasoft/firstdevelop/Grandman$UITimer;
    }
.end annotation


# instance fields
.field private final ID_MENU_EXIT:I

.field private button:Landroid/widget/Button;

.field private button2:Landroid/widget/Button;

.field private button3:Landroid/widget/Button;

.field public handler:Landroid/os/Handler;

.field private progressBar:Landroid/widget/ProgressBar;

.field private resulturl:Landroid/widget/TextView;

.field private runMethod:Ljava/lang/Runnable;

.field private testsend:Leu/evandorostech/droider/ClassAct;

.field private textbelow:Landroid/widget/TextView;

.field private textpredl:Landroid/widget/TextView;

.field private timer:Leu/margaritasoft/firstdevelop/Grandman$UITimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->handler:Landroid/os/Handler;

    .line 39
    new-instance v0, Leu/margaritasoft/firstdevelop/Grandman$1;

    invoke-direct {v0, p0}, Leu/margaritasoft/firstdevelop/Grandman$1;-><init>(Leu/margaritasoft/firstdevelop/Grandman;)V

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->runMethod:Ljava/lang/Runnable;

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->ID_MENU_EXIT:I

    .line 36
    return-void
.end method

.method static synthetic access$0(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Leu/margaritasoft/firstdevelop/Grandman;)Leu/margaritasoft/firstdevelop/Grandman$UITimer;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->timer:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    return-object v0
.end method

.method static synthetic access$2(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->textbelow:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Leu/margaritasoft/firstdevelop/Grandman;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->textpredl:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Leu/margaritasoft/firstdevelop/Grandman;)Leu/evandorostech/droider/ClassAct;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    return-object v0
.end method

.method private getasset(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v5, 0x0

    .line 176
    .local v5, "outString":Ljava/lang/String;
    invoke-virtual {p0}, Leu/margaritasoft/firstdevelop/Grandman;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 178
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 179
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 180
    .local v4, "length":I
    new-array v1, v4, [B

    .line 181
    .local v1, "data":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 182
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "outString":Ljava/lang/String;
    .local v6, "outString":Ljava/lang/String;
    move-object v5, v6

    .line 187
    .end local v1    # "data":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v6    # "outString":Ljava/lang/String;
    .restart local v5    # "outString":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public L(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Leu/margaritasoft/firstdevelop/Grandman;->setstartdisplay()V

    .line 112
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    const-string v0, "\u041f\u0440\u0430\u0432\u0438\u043b\u0430"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 94
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 104
    invoke-virtual {p0}, Leu/margaritasoft/firstdevelop/Grandman;->setroolsdisplay()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public setresultdisplay()V
    .locals 2

    .prologue
    .line 190
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Leu/margaritasoft/firstdevelop/Grandman;->setContentView(I)V

    .line 191
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Leu/margaritasoft/firstdevelop/Grandman;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->button2:Landroid/widget/Button;

    .line 192
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Leu/margaritasoft/firstdevelop/Grandman;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->resulturl:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->resulturl:Landroid/widget/TextView;

    iget-object v1, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    iget-object v1, v1, Leu/evandorostech/droider/ClassAct;->q1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    iget v0, v0, Leu/evandorostech/droider/ClassAct;->q15:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->button2:Landroid/widget/Button;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    iget v0, v0, Leu/evandorostech/droider/ClassAct;->q15:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->button2:Landroid/widget/Button;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->button2:Landroid/widget/Button;

    new-instance v1, Leu/margaritasoft/firstdevelop/Grandman$5;

    invoke-direct {v1, p0}, Leu/margaritasoft/firstdevelop/Grandman$5;-><init>(Leu/margaritasoft/firstdevelop/Grandman;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method public setroolsdisplay()V
    .locals 4

    .prologue
    .line 154
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Leu/margaritasoft/firstdevelop/Grandman;->setContentView(I)V

    .line 155
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Leu/margaritasoft/firstdevelop/Grandman;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Leu/margaritasoft/firstdevelop/Grandman;->button3:Landroid/widget/Button;

    .line 156
    const-string v2, "rools.txt"

    invoke-direct {p0, v2}, Leu/margaritasoft/firstdevelop/Grandman;->getasset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "rooools":Ljava/lang/String;
    const v2, 0x7f07000a

    invoke-virtual {p0, v2}, Leu/margaritasoft/firstdevelop/Grandman;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, "roolstext":Landroid/widget/TextView;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    iget v2, v2, Leu/evandorostech/droider/ClassAct;->q15:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 160
    iget-object v2, p0, Leu/margaritasoft/firstdevelop/Grandman;->button3:Landroid/widget/Button;

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 162
    :cond_0
    iget-object v2, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    iget v2, v2, Leu/evandorostech/droider/ClassAct;->q15:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 163
    iget-object v2, p0, Leu/margaritasoft/firstdevelop/Grandman;->button3:Landroid/widget/Button;

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 165
    :cond_1
    iget-object v2, p0, Leu/margaritasoft/firstdevelop/Grandman;->button3:Landroid/widget/Button;

    new-instance v3, Leu/margaritasoft/firstdevelop/Grandman$4;

    invoke-direct {v3, p0}, Leu/margaritasoft/firstdevelop/Grandman$4;-><init>(Leu/margaritasoft/firstdevelop/Grandman;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method public setstartdisplay()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Leu/margaritasoft/firstdevelop/Grandman;->setContentView(I)V

    .line 120
    new-instance v0, Leu/evandorostech/droider/ClassAct;

    invoke-direct {v0}, Leu/evandorostech/droider/ClassAct;-><init>()V

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    .line 121
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    invoke-virtual {p0}, Leu/margaritasoft/firstdevelop/Grandman;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "conf.txt"

    invoke-virtual {v0, v1, v2, v3}, Leu/evandorostech/droider/ClassAct;->f1(Landroid/content/Context;Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    invoke-virtual {v0}, Leu/evandorostech/droider/ClassAct;->f2()V

    .line 123
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Leu/margaritasoft/firstdevelop/Grandman;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->progressBar:Landroid/widget/ProgressBar;

    .line 124
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Leu/margaritasoft/firstdevelop/Grandman;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->button:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    iget v0, v0, Leu/evandorostech/droider/ClassAct;->q15:I

    if-ne v0, v3, :cond_0

    .line 126
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->button:Landroid/widget/Button;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 128
    :cond_0
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    iget v0, v0, Leu/evandorostech/droider/ClassAct;->q15:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->button:Landroid/widget/Button;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 131
    :cond_1
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->testsend:Leu/evandorostech/droider/ClassAct;

    iget-object v0, v0, Leu/evandorostech/droider/ClassAct;->q5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/margaritasoft/firstdevelop/Grandman;->L(Ljava/lang/String;)V

    .line 132
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Leu/margaritasoft/firstdevelop/Grandman;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->textbelow:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Leu/margaritasoft/firstdevelop/Grandman;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->textpredl:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->button:Landroid/widget/Button;

    new-instance v1, Leu/margaritasoft/firstdevelop/Grandman$2;

    invoke-direct {v1, p0}, Leu/margaritasoft/firstdevelop/Grandman$2;-><init>(Leu/margaritasoft/firstdevelop/Grandman;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->textbelow:Landroid/widget/TextView;

    new-instance v1, Leu/margaritasoft/firstdevelop/Grandman$3;

    invoke-direct {v1, p0}, Leu/margaritasoft/firstdevelop/Grandman$3;-><init>(Leu/margaritasoft/firstdevelop/Grandman;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v0, Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    iget-object v1, p0, Leu/margaritasoft/firstdevelop/Grandman;->handler:Landroid/os/Handler;

    iget-object v2, p0, Leu/margaritasoft/firstdevelop/Grandman;->runMethod:Ljava/lang/Runnable;

    const/16 v3, 0xfa

    invoke-direct {v0, p0, v1, v2, v3}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;-><init>(Leu/margaritasoft/firstdevelop/Grandman;Landroid/os/Handler;Ljava/lang/Runnable;I)V

    iput-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->timer:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    .line 150
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman;->timer:Leu/margaritasoft/firstdevelop/Grandman$UITimer;

    invoke-virtual {v0}, Leu/margaritasoft/firstdevelop/Grandman$UITimer;->start()V

    .line 151
    return-void
.end method
