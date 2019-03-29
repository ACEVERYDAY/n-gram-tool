.class final Lc/aguoqkle/n/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lc/aguoqkle/n/CocoMi;


# direct methods
.method constructor <init>(Lc/aguoqkle/n/CocoMi;)V
    .locals 0

    iput-object p1, p0, Lc/aguoqkle/n/c;->a:Lc/aguoqkle/n/CocoMi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lc/aguoqkle/n/q;->c()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
