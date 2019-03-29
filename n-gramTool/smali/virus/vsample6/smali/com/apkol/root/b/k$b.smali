.class public Lcom/apkol/root/b/k$b;
.super Ljava/lang/Object;
.source "UtilAss.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkol/root/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    .line 137
    iput-object v0, p0, Lcom/apkol/root/b/k$b;->d:Landroid/widget/TextView;

    .line 141
    iput-object p1, p0, Lcom/apkol/root/b/k$b;->b:Landroid/content/Context;

    .line 142
    iput p2, p0, Lcom/apkol/root/b/k$b;->a:I

    .line 143
    iput-object p3, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    .line 144
    iput-object p4, p0, Lcom/apkol/root/b/k$b;->d:Landroid/widget/TextView;

    .line 145
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 152
    :pswitch_0
    iget v0, p0, Lcom/apkol/root/b/k$b;->a:I

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    :goto_1
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/apkol/root/b/k$b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 164
    const v2, 0x7f060035

    .line 163
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 154
    :cond_0
    iget v0, p0, Lcom/apkol/root/b/k$b;->a:I

    if-ne v0, v2, :cond_1

    .line 155
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 156
    :cond_1
    iget v0, p0, Lcom/apkol/root/b/k$b;->a:I

    if-ne v0, v3, :cond_2

    .line 157
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 158
    :cond_2
    iget v0, p0, Lcom/apkol/root/b/k$b;->a:I

    if-ne v0, v4, :cond_3

    .line 159
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 167
    :pswitch_1
    iget v0, p0, Lcom/apkol/root/b/k$b;->a:I

    if-ne v0, v1, :cond_4

    .line 168
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 178
    :goto_2
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/apkol/root/b/k$b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 179
    const v2, 0x7f060036

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 169
    :cond_4
    iget v0, p0, Lcom/apkol/root/b/k$b;->a:I

    if-ne v0, v2, :cond_5

    .line 170
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 171
    :cond_5
    iget v0, p0, Lcom/apkol/root/b/k$b;->a:I

    if-ne v0, v3, :cond_6

    .line 172
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 173
    :cond_6
    iget v0, p0, Lcom/apkol/root/b/k$b;->a:I

    if-ne v0, v4, :cond_7

    .line 174
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/apkol/root/b/k$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
