.class final Lc/aguoqkle/n/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# instance fields
.field final synthetic a:Lc/aguoqkle/n/a;


# direct methods
.method constructor <init>(Lc/aguoqkle/n/a;)V
    .locals 0

    iput-object p1, p0, Lc/aguoqkle/n/b;->a:Lc/aguoqkle/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
