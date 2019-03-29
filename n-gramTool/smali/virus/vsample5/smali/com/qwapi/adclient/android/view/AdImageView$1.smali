.class Lcom/qwapi/adclient/android/view/AdImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qwapi/adclient/android/view/AdImageView;->init(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qwapi/adclient/android/view/AdImageView;

.field final synthetic val$clickUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qwapi/adclient/android/view/AdImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qwapi/adclient/android/view/AdImageView$1;->this$0:Lcom/qwapi/adclient/android/view/AdImageView;

    iput-object p2, p0, Lcom/qwapi/adclient/android/view/AdImageView$1;->val$clickUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/qwapi/adclient/android/view/AdImageView$1;->val$clickUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/qwapi/adclient/android/utils/Utils;->invokeLandingPage(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
