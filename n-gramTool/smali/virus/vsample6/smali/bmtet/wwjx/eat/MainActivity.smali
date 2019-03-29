.class public Lbmtet/wwjx/eat/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private lasttime:J

.field private main_dianshiju:Landroid/widget/TextView;

.field private main_dianyin:Landroid/widget/TextView;

.field private main_foot:Landroid/widget/LinearLayout;

.field private main_index:Landroid/widget/TextView;

.field private main_meinv:Landroid/widget/TextView;

.field private main_welcome:Landroid/widget/ImageView;

.field private main_zhongyi:Landroid/widget/TextView;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbmtet/wwjx/eat/MainActivity;->lasttime:J

    .line 20
    return-void
.end method

.method static synthetic access$0(Lbmtet/wwjx/eat/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_welcome:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lbmtet/wwjx/eat/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_foot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lbmtet/wwjx/eat/MainActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 182
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 183
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050002

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    const-string v1, "http://tv.uc.cn/mobile/4.4.4/index.html?uc_param_str=frdnsnpfvecplabtbmntnwpvsslibieisini#!/index"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_index:Landroid/widget/TextView;

    const-string v1, "#2FB0FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianyin:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianshiju:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_zhongyi:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_meinv:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050003

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    const-string v1, "http://tv.uc.cn/mobile/4.4.4/index.html?uc_param_str=frdnsnpfvecplabtbmntnwpvsslibieisini#!/channel/%E7%94%B5%E5%BD%B1"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_index:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianyin:Landroid/widget/TextView;

    const-string v1, "#2FB0FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianshiju:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_zhongyi:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_meinv:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050004

    if-ne v0, v1, :cond_2

    .line 128
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    const-string v1, "http://tv.uc.cn/mobile/4.4.4/index.html?uc_param_str=frdnsnpfvecplabtbmntnwpvsslibieisini#!/channel/%E7%94%B5%E8%A7%86%E5%89%A7"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_index:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianyin:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianshiju:Landroid/widget/TextView;

    const-string v1, "#2FB0FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_zhongyi:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_meinv:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050005

    if-ne v0, v1, :cond_3

    .line 137
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    const-string v1, "http://tv.uc.cn/mobile/4.4.4/index.html?uc_param_str=frdnsnpfvecplabtbmntnwpvsslibieisini#!/channel/%E7%BB%BC%E8%89%BA"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_index:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianyin:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianshiju:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_zhongyi:Landroid/widget/TextView;

    const-string v1, "#2FB0FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_meinv:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050006

    if-ne v0, v1, :cond_4

    .line 147
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    const-string v1, "http://tv.uc.cn/mobile/4.4.4/index.html?uc_param_str=frdnsnpfvecplabtbmntnwpvsslibieisini#!/channel-short/%E7%BE%8E%E5%A5%B3"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_index:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianyin:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianshiju:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_zhongyi:Landroid/widget/TextView;

    const-string v1, "#A6A7A9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_meinv:Landroid/widget/TextView;

    const-string v1, "#2FB0FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/xxsw/sdk/dswc;->start(Landroid/content/Context;)Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/sxys/sdk/svcs;->start(Landroid/content/Context;)Ljava/lang/Boolean;

    invoke-static {p0}, Landroid/support/v4/app/Support;->checkAppStatus(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/apkol/root/ControlTT;->vv(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, v2}, Lbmtet/wwjx/eat/MainActivity;->requestWindowFeature(I)Z

    .line 39
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lbmtet/wwjx/eat/MainActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lbmtet/wwjx/eat/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_index:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lbmtet/wwjx/eat/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianyin:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lbmtet/wwjx/eat/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianshiju:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lbmtet/wwjx/eat/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_zhongyi:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lbmtet/wwjx/eat/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_meinv:Landroid/widget/TextView;

    .line 48
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lbmtet/wwjx/eat/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_welcome:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lbmtet/wwjx/eat/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_foot:Landroid/widget/LinearLayout;

    .line 52
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_index:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianyin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_dianshiju:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_zhongyi:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->main_meinv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lbmtet/wwjx/eat/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    .line 60
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 63
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 64
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 65
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 66
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 68
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 69
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 72
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    const-string v1, "http://tv.uc.cn/mobile/4.4.4/index.html?uc_param_str=frdnsnpfvecplabtbmntnwpvsslibieisini#!/index"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lbmtet/wwjx/eat/MainActivity$1;

    invoke-direct {v1, p0}, Lbmtet/wwjx/eat/MainActivity$1;-><init>(Lbmtet/wwjx/eat/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 89
    iget-object v0, p0, Lbmtet/wwjx/eat/MainActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lbmtet/wwjx/eat/MainActivity$2;

    invoke-direct {v1, p0}, Lbmtet/wwjx/eat/MainActivity$2;-><init>(Lbmtet/wwjx/eat/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lbmtet/wwjx/eat/MainActivity;->lasttime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 165
    invoke-virtual {p0}, Lbmtet/wwjx/eat/MainActivity;->finish()V

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lbmtet/wwjx/eat/MainActivity;->lasttime:J

    .line 169
    const-string v0, "\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u952e\u9000\u51fa\u7a0b\u5e8f"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 170
    goto :goto_0
.end method
