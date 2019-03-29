.class public Lcom/apkol/root/RootActivity$a;
.super Ljava/lang/Object;
.source "RootActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/root/RootActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/apkol/root/RootActivity$a;
    .locals 1

    .prologue
    .line 677
    new-instance v0, Lcom/apkol/root/RootActivity$a;

    invoke-direct {v0}, Lcom/apkol/root/RootActivity$a;-><init>()V

    .line 678
    return-object v0
.end method
