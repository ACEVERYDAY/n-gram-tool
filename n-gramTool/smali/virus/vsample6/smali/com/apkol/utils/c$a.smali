.class Lcom/apkol/utils/c$a;
.super Ljava/io/FilterInputStream;
.source "AsyncBmLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 160
    move-wide v2, v4

    .line 161
    :goto_0
    cmp-long v0, v2, p1

    if-ltz v0, :cond_1

    .line 173
    :cond_0
    return-wide v2

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/apkol/utils/c$a;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 163
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/apkol/utils/c$a;->read()I

    move-result v0

    .line 165
    if-ltz v0, :cond_0

    .line 168
    const-wide/16 v0, 0x1

    .line 171
    :cond_2
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method
