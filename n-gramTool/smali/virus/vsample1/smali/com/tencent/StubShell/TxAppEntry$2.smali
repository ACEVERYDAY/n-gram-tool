.class Lcom/tencent/StubShell/TxAppEntry$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/StubShell/TxAppEntry;->attachBaseContext(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/tencent/StubShell/TxAppEntry$2;->this$0:Lcom/tencent/StubShell/TxAppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/tencent/StubShell/SystemInfoException;

    invoke-static {}, Lcom/tencent/StubShell/TxAppEntry;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/StubShell/TxAppEntry;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/StubShell/SystemInfoException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    return-void
.end method
