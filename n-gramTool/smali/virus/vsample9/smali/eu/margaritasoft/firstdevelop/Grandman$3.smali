.class Leu/margaritasoft/firstdevelop/Grandman$3;
.super Ljava/lang/Object;
.source "Grandman.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/margaritasoft/firstdevelop/Grandman;->setstartdisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/margaritasoft/firstdevelop/Grandman;


# direct methods
.method constructor <init>(Leu/margaritasoft/firstdevelop/Grandman;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Leu/margaritasoft/firstdevelop/Grandman$3;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Leu/margaritasoft/firstdevelop/Grandman$3;->this$0:Leu/margaritasoft/firstdevelop/Grandman;

    invoke-virtual {v0}, Leu/margaritasoft/firstdevelop/Grandman;->setroolsdisplay()V

    .line 146
    return-void
.end method
