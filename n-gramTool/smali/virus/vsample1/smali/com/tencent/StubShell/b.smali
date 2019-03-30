.class Lcom/tencent/StubShell/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/StubShell/TxAppEntry;


# direct methods
.method constructor <init>(Lcom/tencent/StubShell/TxAppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/StubShell/b;->a:Lcom/tencent/StubShell/TxAppEntry;

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
