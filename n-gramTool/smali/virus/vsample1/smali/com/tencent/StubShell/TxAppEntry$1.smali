.class Lcom/tencent/StubShell/TxAppEntry$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/StubShell/TxAppEntry;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/StubShell/TxAppEntry;


# direct methods
.method constructor <init>(Lcom/tencent/StubShell/TxAppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/StubShell/TxAppEntry$1;->this$0:Lcom/tencent/StubShell/TxAppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->closeNativeReport()V

    invoke-static {}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->closeCrashReport()V

    return-void
.end method
