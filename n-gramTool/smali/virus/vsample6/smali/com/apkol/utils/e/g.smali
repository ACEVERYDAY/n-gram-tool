.class Lcom/apkol/utils/e/g;
.super Ljava/lang/Object;
.source "HttpRequestUtilObser.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/apkol/utils/e/e$b;


# direct methods
.method constructor <init>(Lcom/apkol/utils/e/e$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/utils/e/g;->a:Lcom/apkol/utils/e/e$b;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 638
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 646
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return-object v0
.end method
