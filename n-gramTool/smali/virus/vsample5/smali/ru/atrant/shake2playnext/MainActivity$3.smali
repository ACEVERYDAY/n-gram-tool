.class Lru/atrant/shake2playnext/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lru/atrant/shake2playnext/ShakeListener$OnShakeListener;


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

.field private final synthetic val$pbarDialog:Landroid/app/ProgressDialog;

.field private final synthetic val$user_level:I


# direct methods
.method constructor <init>(Lru/atrant/shake2playnext/MainActivity;Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lru/atrant/shake2playnext/MainActivity$3;->this$0:Lru/atrant/shake2playnext/MainActivity;

    iput-object p2, p0, Lru/atrant/shake2playnext/MainActivity$3;->val$pbarDialog:Landroid/app/ProgressDialog;

    iput p3, p0, Lru/atrant/shake2playnext/MainActivity$3;->val$user_level:I

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrongShake()V
    .locals 5

    .prologue
    const-string v4, ": "

    .line 263
    iget-object v0, p0, Lru/atrant/shake2playnext/MainActivity$3;->val$pbarDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lru/atrant/shake2playnext/MainActivity$3;->this$0:Lru/atrant/shake2playnext/MainActivity;

    iget-object v2, v2, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    invoke-virtual {v2}, Lru/atrant/shake2playnext/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 264
    const v3, 0x7f040014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v2, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 266
    iget v2, p0, Lru/atrant/shake2playnext/MainActivity$3;->val$user_level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lru/atrant/shake2playnext/MainActivity$3;->this$0:Lru/atrant/shake2playnext/MainActivity;

    iget-object v2, v2, Lru/atrant/shake2playnext/MainActivity;->mMainActivity_handler:Lru/atrant/shake2playnext/MainActivity;

    invoke-virtual {v2}, Lru/atrant/shake2playnext/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 269
    const v3, 0x7f040015

    .line 268
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    const-string v2, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lru/atrant/shake2playnext/MainActivity$3;->this$0:Lru/atrant/shake2playnext/MainActivity;

    invoke-static {v2}, Lru/atrant/shake2playnext/MainActivity;->access$0(Lru/atrant/shake2playnext/MainActivity;)Lru/atrant/shake2playnext/ShakeListener;

    move-result-object v2

    iget v2, v2, Lru/atrant/shake2playnext/ShakeListener;->mLastSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lru/atrant/shake2playnext/MainActivity$3;->this$0:Lru/atrant/shake2playnext/MainActivity;

    invoke-static {v0}, Lru/atrant/shake2playnext/MainActivity;->access$1(Lru/atrant/shake2playnext/MainActivity;)V

    .line 274
    return-void
.end method
