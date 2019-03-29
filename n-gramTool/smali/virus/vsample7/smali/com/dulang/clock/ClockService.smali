.class public Lcom/dulang/clock/ClockService;
.super Landroid/app/Service;
.source "ClockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dulang/clock/ClockService$100000000;
    }
.end annotation


# static fields
.field private static isAdded:Z

.field private static params:Landroid/view/WindowManager$LayoutParams;

.field private static wm:Landroid/view/WindowManager;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/dulang/clock/ClockService;->isAdded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createFloatView(Landroid/view/ViewGroup;IIII)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v0

    invoke-virtual {v8}, Lcom/dulang/clock/ClockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    sput-object v8, Lcom/dulang/clock/ClockService;->wm:Landroid/view/WindowManager;

    .line 65
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v8, Lcom/dulang/clock/ClockService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 67
    sget-object v8, Lcom/dulang/clock/ClockService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v9, 0x7da

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 72
    sget-object v8, Lcom/dulang/clock/ClockService;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 75
    sget-object v8, Lcom/dulang/clock/ClockService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v9, 0x400

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 76
    move-object v8, v0

    const/high16 v9, 0x7f060000

    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v8

    move-object v6, v8

    .line 77
    move-object v8, v6

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 78
    move-object v8, v6

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->start()V

    .line 84
    sget-object v8, Lcom/dulang/clock/ClockService;->params:Landroid/view/WindowManager$LayoutParams;

    move v9, v2

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    sget-object v8, Lcom/dulang/clock/ClockService;->params:Landroid/view/WindowManager$LayoutParams;

    move v9, v3

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    sget-object v8, Lcom/dulang/clock/ClockService;->params:Landroid/view/WindowManager$LayoutParams;

    move v9, v4

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 87
    sget-object v8, Lcom/dulang/clock/ClockService;->params:Landroid/view/WindowManager$LayoutParams;

    move v9, v5

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 88
    sget-object v8, Lcom/dulang/clock/ClockService;->wm:Landroid/view/WindowManager;

    move-object v9, v1

    sget-object v10, Lcom/dulang/clock/ClockService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v8, v9, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const/4 v8, 0x1

    sput-boolean v8, Lcom/dulang/clock/ClockService;->isAdded:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    move-object v0, v3

    return-object v0
.end method

.method public onCreate()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    sget-boolean v5, Lcom/dulang/clock/ClockService;->isAdded:Z

    if-nez v5, :cond_0

    .line 35
    move-object v5, v0

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/dulang/clock/ClockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    move-object v1, v5

    .line 37
    move-object v5, v1

    const/high16 v6, 0x7f030000

    const/4 v7, 0x0

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v2, v5

    .line 39
    move-object v5, v0

    move-object v6, v2

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/dulang/clock/ClockService;->createFloatView(Landroid/view/ViewGroup;IIII)V

    .line 41
    move-object v5, v2

    const v6, 0x7f0a0002

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object v3, v5

    .line 43
    move-object v5, v3

    new-instance v6, Lcom/dulang/clock/ClockService$100000000;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/dulang/clock/ClockService$100000000;-><init>(Lcom/dulang/clock/ClockService;Landroid/view/ViewGroup;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_0
    move-object v5, v0

    invoke-super {v5}, Landroid/app/Service;->onCreate()V

    return-void
.end method
