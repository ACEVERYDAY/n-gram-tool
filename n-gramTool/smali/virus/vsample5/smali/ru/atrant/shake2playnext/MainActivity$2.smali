.class Lru/atrant/shake2playnext/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/atrant/shake2playnext/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/atrant/shake2playnext/MainActivity;


# direct methods
.method constructor <init>(Lru/atrant/shake2playnext/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lru/atrant/shake2playnext/MainActivity$2;->this$0:Lru/atrant/shake2playnext/MainActivity;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 249
    iget-object v0, p0, Lru/atrant/shake2playnext/MainActivity$2;->this$0:Lru/atrant/shake2playnext/MainActivity;

    invoke-static {v0}, Lru/atrant/shake2playnext/MainActivity;->access$0(Lru/atrant/shake2playnext/MainActivity;)Lru/atrant/shake2playnext/ShakeListener;

    move-result-object v0

    invoke-virtual {v0}, Lru/atrant/shake2playnext/ShakeListener;->pause()V

    .line 251
    return-void
.end method
