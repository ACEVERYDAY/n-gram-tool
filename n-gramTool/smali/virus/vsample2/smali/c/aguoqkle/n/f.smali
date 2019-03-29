.class final Lc/aguoqkle/n/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lc/aguoqkle/n/CocoMi;


# direct methods
.method constructor <init>(Lc/aguoqkle/n/CocoMi;)V
    .locals 0

    iput-object p1, p0, Lc/aguoqkle/n/f;->a:Lc/aguoqkle/n/CocoMi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lc/aguoqkle/n/q;->a()V

    invoke-virtual {p0}, Lc/aguoqkle/n/f;->getResultCode()I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    invoke-virtual {p0}, Lc/aguoqkle/n/f;->getResultCode()I

    return-void
.end method
