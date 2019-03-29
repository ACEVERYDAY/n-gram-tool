.class Lcom/apkol/root/u;
.super Ljava/lang/Object;
.source "RootActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/apkol/root/RootActivity;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/apkol/root/RootActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/apkol/root/u;->a:Lcom/apkol/root/RootActivity;

    iput-object p2, p0, Lcom/apkol/root/u;->b:Landroid/app/AlertDialog;

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/apkol/root/u;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 730
    iget-object v0, p0, Lcom/apkol/root/u;->a:Lcom/apkol/root/RootActivity;

    invoke-static {v0}, Lcom/apkol/root/RootActivity;->c(Lcom/apkol/root/RootActivity;)V

    .line 731
    return-void
.end method
