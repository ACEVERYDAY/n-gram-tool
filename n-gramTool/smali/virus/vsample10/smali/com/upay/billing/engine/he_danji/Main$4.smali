.class Lcom/upay/billing/engine/he_danji/Main$4;
.super Lcom/upay/billing/UpayActivityExt;


# instance fields
.field final synthetic this$0:Lcom/upay/billing/engine/he_danji/Main;

.field final synthetic val$bl_amount:Ljava/lang/String;

.field final synthetic val$bl_chargeId:Ljava/lang/String;

.field final synthetic val$bl_cid:Ljava/lang/String;

.field final synthetic val$bl_pid_cpa:Ljava/lang/String;

.field final synthetic val$bl_pid_pay:Ljava/lang/String;

.field final synthetic val$chargeEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$cmd:Lcom/upay/billing/bean/Cmd;

.field final synthetic val$payEvent:Lcom/upay/billing/utils/Json;

.field final synthetic val$sendNum:I

.field final synthetic val$serialNo:Ljava/lang/String;

.field final synthetic val$trade:Lcom/upay/billing/bean/Trade;


# direct methods
.method constructor <init>(Lcom/upay/billing/engine/he_danji/Main;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/upay/billing/bean/Trade;Lcom/upay/billing/bean/Cmd;Lcom/upay/billing/utils/Json;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/utils/Json;)V
    .locals 0

    iput-object p1, p0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iput-object p2, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_cid:Ljava/lang/String;

    iput-object p3, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_pid_cpa:Ljava/lang/String;

    iput-object p4, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_amount:Ljava/lang/String;

    iput-object p5, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_chargeId:Ljava/lang/String;

    iput p6, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$sendNum:I

    iput-object p7, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$trade:Lcom/upay/billing/bean/Trade;

    iput-object p8, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$cmd:Lcom/upay/billing/bean/Cmd;

    iput-object p9, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$payEvent:Lcom/upay/billing/utils/Json;

    iput-object p10, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_pid_pay:Ljava/lang/String;

    iput-object p11, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$serialNo:Ljava/lang/String;

    iput-object p12, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$chargeEvent:Lcom/upay/billing/utils/Json;

    invoke-direct {p0}, Lcom/upay/billing/UpayActivityExt;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostCreate(Lcom/upay/billing/UpayActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4;->val$bl_cid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/popgame/popcentersdk/N0Run;->ngamerun(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/upay/billing/engine/he_danji/Main;->initTimer:Ljava/util/Timer;

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$4$1;

    invoke-direct {v0, p0, p1}, Lcom/upay/billing/engine/he_danji/Main$4$1;-><init>(Lcom/upay/billing/engine/he_danji/Main$4;Lcom/upay/billing/UpayActivity;)V

    iget-object v1, p0, Lcom/upay/billing/engine/he_danji/Main$4;->this$0:Lcom/upay/billing/engine/he_danji/Main;

    iget-object v1, v1, Lcom/upay/billing/engine/he_danji/Main;->initTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v0, Lcom/upay/billing/engine/he_danji/Main$4$2;

    invoke-direct {v0, p0, p1}, Lcom/upay/billing/engine/he_danji/Main$4$2;-><init>(Lcom/upay/billing/engine/he_danji/Main$4;Lcom/upay/billing/UpayActivity;)V

    invoke-static {v0}, Lcom/popgame/popcentersdk/N0Run;->setCenterListener(Lcom/popgame/popcentersdk/business/PopSdkListener;)V

    return-void
.end method
