.class public Ldl/hp/xx/fm/a/c;
.super Ljava/lang/Object;
.source "k"


# instance fields
.field private synthetic g:J

.field private synthetic pDvqLhYe:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pDvqLhYe()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Ldl/hp/xx/fm/a/c;->g:J

    return-wide v0
.end method

.method public pDvqLhYe()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Ldl/hp/xx/fm/a/c;->pDvqLhYe:Ljava/io/InputStream;

    return-object v0
.end method

.method public pDvqLhYe(J)V
    .locals 1
    .param p1, "arg0"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Ldl/hp/xx/fm/a/c;->g:J

    .line 48
    return-void
.end method

.method public pDvqLhYe(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/InputStream;

    .prologue
    .line 243
    iput-object p1, p0, Ldl/hp/xx/fm/a/c;->pDvqLhYe:Ljava/io/InputStream;

    .line 264
    return-void
.end method
