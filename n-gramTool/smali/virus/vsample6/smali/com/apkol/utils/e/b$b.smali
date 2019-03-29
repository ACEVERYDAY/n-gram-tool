.class public abstract Lcom/apkol/utils/e/b$b;
.super Ljava/lang/Object;
.source "HttpRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/utils/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apkol/utils/e/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/apkol/utils/e/h$a;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apkol/utils/e/b$b;->f:Z

    .line 816
    return-void
.end method
